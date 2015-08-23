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
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. 
- 
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
- Merging is done to merge the subject, labels and features for both test and train
- Colnames of features are updated based on featureNames
- The featurs, activity and subject data are merged into "mergeData" set 
- Colnames with "mean" and "std" are extracted along with subject and activity columns to form new dataset -> extractedData
- Activity column is replaced with info from activityLabels Data
- Acronyms in variable names in `extractedData`, like 'Acc', 'Gyro', 'Mag', 't' and 'f' are replaced with descriptive labels such as 'Accelerometer', 'Gyroscpoe', 'Magnitude', 'Time' and 'Frequency'.
- `tidyData` is created as with average for each activity and subject of `extractedData`.


##Output Data Set

The output data is stored in a Text File called Tidy.txt. 
It contains the mean and standard deviation of all measurements for each subject and activity.

##Activity Labels

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test

