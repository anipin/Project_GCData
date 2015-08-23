# Project_GCData

Getting and Cleaning Data Project

This is the course project for the Getting and Cleaning Data Coursera course.

The data for this project is downloaded from the following link :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Project Data Folder Name : UCI HAR Dataset

The R script, run_analysis.R, does the following:
* Loads the FeatureNames, Activity Names
* Loads the Features, Labels, and subject info for both Test and Training Datasets
* Updates the feature names for Test and Training Data columns with info from Feature Name
* Extracts only those features with names matching Mean and standard Deviation
* Updates labels with descriptive feature names
* Creates a tidy data set with mean of each feature name corresponding to each subject and each activity
* Writes the Tidy data set to a text file named tidy.txt

Check the CodeBook.md for more info on the dataset
