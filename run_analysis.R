
# Assumption : The data zip file is downloaded and available in directory called "UCI HAR Dataset" 
# run_analysis.R script resides in the same parent directory as "UCI HAR Dataset" 

## loads the Libraries required for the script to work 
library(data.table)
library(dplyr)
library(reshape2)

# Reading the feature name from features.txt
featureNames <- read.table("UCI HAR Dataset/features.txt", header=FALSE)

# Reading the activity labels from activity_labels.txt
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Reading the Feature Data, Activity Labels, and Subjext info for test data set

featuresTest <- read.table("UCI HAR Dataset/test/x_test.txt", header=FALSE)
labelsTest <- read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)

# Reading the Feature Data, Activity Labels, and Subjext info for traing data set
featuresTrain <- read.table("UCI HAR Dataset/train/x_train.txt", header=FALSE)
labelsTrain <-  read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)

# Row binding the subject, activity labels and features from both training and test data 
allSubject <- rbind(subjectTrain, subjectTest)
allLabels <- rbind(labelsTrain, labelsTest)
allFeatures <- rbind(featuresTrain, featuresTest)

# Updating feature names of columns from feature data
colnames(allFeatures) <- t(featureNames[2])

# updating column names for Subject and Activity data set also
colnames(allSubject) <- "Subject"
colnames(allLabels) <- "Activity"

# Merging all data from Subject, Activity and Feature data sets
mergeData <- cbind(allSubject,allLabels,allFeatures)

# Extracting Column Data numbers which have feature name with either Mean or STD
colMeanSD <- grep(".*Mean.*|.*Std.*", names(mergeData), ignore.case=TRUE)

# Including Activity, and Subject Column number also to column list for extraction
allColumns <- c(1,2,colMeanSD)

# making a new dataset only with the extracted columns
extractedData <- mergeData[,allColumns]


#Replacing activity values with description in the activity set
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
    extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}

# Renaming all column names with descriptive names wherever applicable
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("fBody", "FrequencyBody", names(extractedData))
names(extractedData)<-gsub("tgravity", "TimeGravity", names(extractedData), ignore.case=TRUE)
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))
names(extractedData)<-gsub("bodybody", "Body", names(extractedData),ignore.case=TRUE)

# Converting Subject column to factor
extractedData$Subject <- as.factor(extractedData$Subject)


# Reshaping the data set to get mean for each measurement per subject, per activity
meltedData <- melt(extractedData,id=c("Subject","Activity"))
tidyData <- dcast(meltedData, Subject+Activity ~variable, mean)

# Writing Tidy Dataset to "Tidy.txt"
write.table(tidyData, file = "Tidy.txt", row.names=FALSE)
