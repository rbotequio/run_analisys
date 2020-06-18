#set workdirectory

setwd("~/Desktop")

#Downloadfile 
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip",)

# Unzip datawd to /data directory
if (dir.exists("data") == TRUE){
  unzip(zipfile="./Dataset.zip", exdir="./data/")
} else {
  dir.create("data")
  unzip(zipfile="./Dataset.zip", exdir="./data/")
}

#Read Labraries
library(data.table)
library(dplyr)

#Read features activity Labels

features <- read.table("./data/UCI HAR Dataset/features.txt")
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

#Read training data
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
XTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)

#Read test data
subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
yTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
XTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)

#1 -Merge the training test sets to create one data set

subject <- rbind(subjectTrain, subjectTest)
Yactivity <- rbind(yTrain, yTest)
Xfeatures <- rbind(XTrain, XTest)

# Naming xfeatures columns using featuresnames trasposig features

colnames(Xfeatures) <- t(features[2])

#Merging  data in AllData

colnames(Yactivity) <- "Activity"
colnames(subject) <- "Subject"
colnames(activitylabels) <- c("Activity", "Activities")
ALLData <- cbind(subject, Yactivity, Xfeatures)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.
# with activity and Subject columns

STDMEAN <- ALLData[,grep("Activity|Subject|mean|std", colnames(ALLData))]

#3 Uses descriptive activity names to name the activities in the data set

STDMEAN <- inner_join(STDMEAN,activitylabels, by= "Activity")
STDMEAN <- select(STDMEAN, -Activity)                        

#4 - Appropriately labels the data set with descriptive variabl names
#The data set had The collumns named on lines 43, 47-49

#Clean columns names from "()" ans "-"
colnames(STDMEAN) <- gsub("[()]", "", colnames((STDMEAN)))
colnames(STDMEAN) <- gsub("[-]", "_", colnames((STDMEAN)))
#Reorder "ACtivities" colum to 1th place and change the name
STDMEAN <- STDMEAN[,c(81,1:80)]
colnames(STDMEAN)[1] = "activity"
colnames(STDMEAN)<-gsub("Acc", "Accelerometer", colnames(STDMEAN))
colnames(STDMEAN)<-gsub("Gyro", "Gyroscope", colnames(STDMEAN))
colnames(STDMEAN)<-gsub("BodyBody", "Body", colnames(STDMEAN))
colnames(STDMEAN)<-gsub("Mag", "Magnitude", colnames(STDMEAN))


#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Averages <- STDMEAN %>% group_by(Subject, activity) %>%
                    summarise_all(mean, na.rm = TRUE)
write.table(Averages, "averages.txt", row.name=FALSE)

