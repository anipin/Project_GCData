## CodeBook for Project in Getting and Cleaning Data
---------------------------------------------------------------

## Information on Dataset Used

This data is obtained from "Human Activity Recognition Using Smartphones Data Set". 
The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The data set used can be downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>. 

###Input Data Files are described as below

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 

###Description of variables

- subject -> Identifier of a volunteer. There are 30 volunteers within an age bracket of 19-48 year
- activity -> One of six activities: WALKING, WALKINGUPSTAIRS, WALKINGDOWNSTAIRS, SITTING, STANDING, LAYING
- tBodyAccmeanX -> Mean of time domain signals from accelerometer subtracting the gravity in X direction.
- tBodyAccmeanY ->  Mean of time domain signals from accelerometer subtracting the gravity in Y direction.
- tBodyAccmeanZ -> Mean of time domain signals from accelerometer subtracting the gravity in Z direction.
- tBodyAccstdX -> Standard deviation of time domain signals from accelerometer subtracting the gravity in X direction.
- tBodyAccstdY -> Standard deviation of time domain signals from accelerometer subtracting the gravity in Y direction.
- tBodyAccstdZ ->  Standard deviation of time domain signals from accelerometer subtracting the gravity in Z direction.
- tGravityAccmeanX -> Mean of time domain signals from accelerometer in standard gravity units in X direction.
- tGravityAccmeanY -> Mean of time domain signals from accelerometer in standard gravity units in Y direction.
- tGravityAccmeanZ -> Mean of time domain signals from accelerometer in standard gravity units in Z direction.
- tGravityAccstdX -> Standard deviation of time domain signals from accelerometer in standard gravity units in X direction.
- tGravityAccstdY -> Standard deviation of time domain signals from accelerometer in standard gravity units in Y direction.
- tGravityAccstdZ -> Standard deviation of time domain signals from accelerometer in standard gravity units in Z direction.
- tBodyAccJerkmeanX -> Mean of time domain Jerk signals from accelerometer subtracting the gravity in X direction.
- tBodyAccJerkmeanY -> Mean of time domain Jerk signals from accelerometer subtracting the gravity in Y direction.
- tBodyAccJerkmeanZ -> Mean of time domain Jerk signals from accelerometer subtracting the gravity in Z direction.
- tBodyAccJerkstdX -> Standard deviation of time domain Jerk signals from accelerometer subtracting the gravity in X direction.
- tBodyAccJerkstdY -> Standard deviation of time domain Jerk signals from accelerometer subtracting the gravity in Y direction.
- tBodyAccJerkstdZ -> Standard deviation of time domain Jerk signals from accelerometer subtracting the gravity in Z direction.
- tBodyGyromeanX -> Mean of time domain signals from gyroscope in X direction.
- tBodyGyromeanY -> Mean of time domain signals from gyroscope in Y direction.
- tBodyGyromeanZ -> Mean of time domain signals from gyroscope in Z direction.
- tBodyGyrostdX -> Standard deviation of time domain signals from gyroscope in X direction.
- tBodyGyrostdY -> Standard deviation of time domain signals from gyroscope in Y direction.
- tBodyGyrostdZ -> Standard deviation of time domain signals from gyroscope in Z direction.
- tBodyGyroJerkmeanX -> Mean of time domain Jerk signals from gyroscope in X direction.
- tBodyGyroJerkmeanY -> Mean of time domain Jerk signals from gyroscope in Y direction.
- tBodyGyroJerkmeanZ -> Mean of time domain Jerk signals from gyroscope in Z direction.
- tBodyGyroJerkstdX -> Standard deviation of time domain Jerk signals from gyroscope in X direction.
- tBodyGyroJerkstdY -> Standard deviation of time domain Jerk signals from gyroscope in Y direction.
- tBodyGyroJerkstdZ -> Standard deviation of time domain Jerk signals from gyroscope in Z direction.
- tBodyAccMagmean -> Mean of the magnitude of time domain signals from accelerometer subtracting the gravity.
- tBodyAccMagstd -> Standard deviation of the magnitude of time domain signals from accelerometer subtracting the gravity.
- tGravityAccMagmean -> Mean of the magnitude of time domain signals from accelerometer in standard gravity units.
- tGravityAccMagstd -> Standard deviation of the magnitude of time domain signals from accelerometer in standard gravity units.
- tBodyAccJerkMagmean ->  Mean of the magnitude of time domain Jerk signals from accelerometer subtracting the gravity.
- tBodyAccJerkMagstd -> Standard deviation of the magnitude of time domain Jerk signals from accelerometer subtracting the gravity.
- tBodyGyroMagmean -> Mean of the magnitude of time domain signals from gyroscope.
- tBodyGyroMagstd -> Standard deviation of the magnitude of time domain signals from gyroscope.
- tBodyGyroJerkMagmean -> Mean of the magnitude of time domain Jerk signals from gyroscope.
- tBodyGyroJerkMagstd -> Standard deviation of the magnitude of time domain Jerk signals from gyroscope.
- fBodyAccmeanX -> Mean of Fast Fourier Transform (FFT) of signals from accelerometer subtracting the gravity in X direction.
- fBodyAccmeanY -> Mean of Fast Fourier Transform (FFT) of signals from accelerometer subtracting the gravity in Y direction.
- fBodyAccmeanZ -> Mean of Fast Fourier Transform (FFT) of signals from accelerometer subtracting the gravity in Z direction.
- fBodyGyromeanX -> Mean of Fast Fourier Transform (FFT) of signals from gyroscope in X direction.
- fBodyGyromeanY -> Mean of Fast Fourier Transform (FFT) of signals from gyroscope in Y direction.
- fBodyGyromeanZ -> Mean of Fast Fourier Transform (FFT) of signals from gyroscope in Z direction.
- fBodyGyrostdX -> Standard deviation of Fast Fourier Transform (FFT) of signals from gyroscope in X direction.
- fBodyGyrostdY -> Standard deviation of Fast Fourier Transform (FFT) of signals from gyroscope in Y direction.
- fBodyGyrostdZ Standard deviation of Fast Fourier Transform (FFT) of signals from gyroscope in Z direction.
- fBodyBodyGyroMagmean -> Mean of the magnitude of Fast Fourier Transform (FFT) of signals from gyroscope.
- fBodyBodyGyroMagstd -> Standard deviation of the magnitude of Fast Fourier Transform (FFT) of signals from gyroscope.
- fBodyBodyGyroJerkMagmean ->  Mean of the magnitude of Fast Fourier Transform (FFT) of Jerk signals from gyroscope.
- fBodyBodyGyroJerkMagstd -> Standard deviation of the magnitude of Fast Fourier Transform (FFT) of Jerk signals from gyroscope.


## Data transformations done using run_analysis.R

Following are the transformations that were performed on the input dataset:

The following objects read data from the data files as described below:
- featureNames -> Features.txt
- activityLabels -> activity_labels.txt
- featuresTest -> test/x_test.txt
- labelsTest -> test/y_test.txt
- subjectTest -> test/subject_test.txt
- featuresTrain -> train/x_train.txt
- labelsTrain -> train/y_train.txt
- subjectTrain -> train/subject_train.txt

Other transformations which are done are as below:

- Merging is done to merge the subject, labels and features for both test and train
- Colnames of features are updated based on featureNames
- The featurs, activity and subject data are merged into "mergeData" set 
- Colnames with "mean" and "std" are extracted along with subject and activity columns to form new dataset -> extractedData
- Activity column is replaced with info from activityLabels Data
- Acronyms in variable names in `extractedData`, like 'Acc', 'Gyro', 'Mag', 't' and 'f' are replaced with descriptive labels such as 'Accelerometer', 'Gyroscpoe', 'Magnitude', 'Time' and 'Frequency'.
- `tidyData` is created with average for each activity and subject of `extractedData`.


##Output Data Set

The output data is stored in a Text File called Tidy.txt. 
It contains the mean and standard deviation of all measurements for each subject and activity.

##Activity Labels

- WALKING (value 1): subject was walking during the test
- WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
- WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
- SITTING (value 4): subject was sitting during the test
- STANDING (value 5): subject was standing during the test
- LAYING (value 6): subject was laying down during the test

