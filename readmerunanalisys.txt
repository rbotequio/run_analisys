==================================================================
This is a Review readme from:  

Human Activity Recognition Using Smartphones Dataset
Version 1.0 - included on https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It is part of Getting and Cleaning Data Course Project - from RBOTEQUIO

==================================================================
RUN_ANALISYS.R
==================================================================

According the project instruction we had to download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

And perform 5 step in R code: 

1 - Merges the training and the test sets to create one data set.
2 -Extracts only the measurements on the mean and standard deviation for each measurement.
3 - Uses descriptive activity names to name the activities in the data set
4- Appropriately labels the data set with descriptive variable names.
5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The original dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


* The inertial datasets were not merged on to this purpose.

======================================================
The R Script Run_analisys were developed as follows: 
======================================================

1- Was set the work directory to Desktop folder - (works on IOS) not tested in PC

2- Downloaded the file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip"

3- Unzip the Dataset to a directory named ./data

4- The files  features.txt, activity_labels.txt, subject_train.txt, y_train.txt, X_train.txt, subject_test.txt, y_test.txt, X_test.txt were assigned each not the variables

features, activitylabels, subjectTrain, yTrain, XTrain, subjectTest, yTest, XTest, 

5-  The training and test datas were merged in three datasets subject,Yactivity, Xfeatures 

6- The  xfeatures columns were named using featuresnames 

7- All datas were merge in variable AllData

8 - Were used grep function to Extracts only the measurements that contain mean and std strings columns, (the function select with contains does not worked once the AllDATA have columns with the same name).

9- Were Used the descriptive activity names from activity_labels.txt to name the activities in the data set

10 - The dataset contains the original variables names, except that was replaced the "()" and "-" by "_" and 
"Acc" by  "Accelerometer" 
"Gyro" by "Gyroscope"
"BodyBody" by "Body"
"Mag" by "Magnitude"

10 - At the to apply with  step 4, was created  a second, dataset named Averages - with the average of each variable for each activity and each subject and saved in a file named averages.txt"
