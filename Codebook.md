Run Analisys Final Assining DATA Cleaining
================

## Data Cleaning Run Analisys

This is a codebook to identify the final dataset of project Data
Cleaning Run Analisys

## STEP 1 - Data merged and mofications

The original files of datasets were download from
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The ZIP file contains a readme file thar explains the original content
and this project have a readme file with more detailed information about
transformations.

To apply the project conditions the train and test files wewre merged in
one dataset named AllDATA

the data coluns received the original names based the features.txt
file.

## STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

Columns that contain “mean” or “std”string were selected from the
dataset to a new dataset named
STDMEAN.

## STEP 3 - Uses descriptive activity names to name the activities in the data set

The activity identifiers were replaced with the activity labels based on
the activity\_labels.txt file.

\#\#STEP 4 - Appropriately labels the data set with descriptive variable
names.

Characters “()” and “-” ere replaced by "\_".

Also, “Acc” was replaced by “Accelerometer”, “Gyro” by “Gyroscope”,
“BodyBody” by “Body”, “Mag” by “Magnitude”.

\#\#STEP 5 - From the data set in step 4, creates a second, independent
tidy data set with the average of each variable for each activity and
each subject.

The STDMEAN dataset was grouped by Subject and activity columns and
calculates the average off all coluns with sumarise\_all and mean
function.

The final dataset was saved in “averages.txt” file.

\#\#VARIABLES

The final variable names of dataset averages:

1 Subject 2 activity 3 tBodyAccelerometer\_mean\_X 4
tBodyAccelerometer\_mean\_Y 5 tBodyAccelerometer\_mean\_Z 6
tBodyAccelerometer\_std\_X 7 tBodyAccelerometer\_std\_Y 8
tBodyAccelerometer\_std\_Z 9 tGravityAccelerometer\_mean\_X 10
tGravityAccelerometer\_mean\_Y 11 tGravityAccelerometer\_mean\_Z 12
tGravityAccelerometer\_std\_X 13 tGravityAccelerometer\_std\_Y 14
tGravityAccelerometer\_std\_Z 15 tBodyAccelerometerJerk\_mean\_X 16
tBodyAccelerometerJerk\_mean\_Y 17 tBodyAccelerometerJerk\_mean\_Z 18
tBodyAccelerometerJerk\_std\_X 19 tBodyAccelerometerJerk\_std\_Y 20
tBodyAccelerometerJerk\_std\_Z 21 tBodyGyroscope\_mean\_X 22
tBodyGyroscope\_mean\_Y 23 tBodyGyroscope\_mean\_Z 24
tBodyGyroscope\_std\_X 25 tBodyGyroscope\_std\_Y 26
tBodyGyroscope\_std\_Z 27 tBodyGyroscopeJerk\_mean\_X 28
tBodyGyroscopeJerk\_mean\_Y 29 tBodyGyroscopeJerk\_mean\_Z 30
tBodyGyroscopeJerk\_std\_X 31 tBodyGyroscopeJerk\_std\_Y 32
tBodyGyroscopeJerk\_std\_Z 33 tBodyAccelerometerMagnitude\_mean 34
tBodyAccelerometerMagnitude\_std 35 tGravityAccelerometerMagnitude\_mean
36 tGravityAccelerometerMagnitude\_std 37
tBodyAccelerometerJerkMagnitude\_mean 38
tBodyAccelerometerJerkMagnitude\_std 39 tBodyGyroscopeMagnitude\_mean 40
tBodyGyroscopeMagnitude\_std 41 tBodyGyroscopeJerkMagnitude\_mean 42
tBodyGyroscopeJerkMagnitude\_std 43 fBodyAccelerometer\_mean\_X 44
fBodyAccelerometer\_mean\_Y 45 fBodyAccelerometer\_mean\_Z 46
fBodyAccelerometer\_std\_X 47 fBodyAccelerometer\_std\_Y 48
fBodyAccelerometer\_std\_Z 49 fBodyAccelerometer\_meanFreq\_X 50
fBodyAccelerometer\_meanFreq\_Y 51 fBodyAccelerometer\_meanFreq\_Z 52
fBodyAccelerometerJerk\_mean\_X 53 fBodyAccelerometerJerk\_mean\_Y 54
fBodyAccelerometerJerk\_mean\_Z 55 fBodyAccelerometerJerk\_std\_X 56
fBodyAccelerometerJerk\_std\_Y 57 fBodyAccelerometerJerk\_std\_Z 58
fBodyAccelerometerJerk\_meanFreq\_X 59
fBodyAccelerometerJerk\_meanFreq\_Y 60
fBodyAccelerometerJerk\_meanFreq\_Z 61 fBodyGyroscope\_mean\_X 62
fBodyGyroscope\_mean\_Y 63 fBodyGyroscope\_mean\_Z 64
fBodyGyroscope\_std\_X 65 fBodyGyroscope\_std\_Y 66
fBodyGyroscope\_std\_Z 67 fBodyGyroscope\_meanFreq\_X 68
fBodyGyroscope\_meanFreq\_Y 69 fBodyGyroscope\_meanFreq\_Z 70
fBodyAccelerometerMagnitude\_mean 71 fBodyAccelerometerMagnitude\_std 72
fBodyAccelerometerMagnitude\_meanFreq 73
fBodyAccelerometerJerkMagnitude\_mean 74
fBodyAccelerometerJerkMagnitude\_std 75
fBodyAccelerometerJerkMagnitude\_meanFreq 76
fBodyGyroscopeMagnitude\_mean 77 fBodyGyroscopeMagnitude\_std 78
fBodyGyroscopeMagnitude\_meanFreq 79 fBodyGyroscopeJerkMagnitude\_mean
80 fBodyGyroscopeJerkMagnitude\_std 81
fBodyGyroscopeJerkMagnitude\_meanFreq

More detailed information about the original experiment and the data can
be found in the README.txt and features\_info.txt files included in zip
file.
