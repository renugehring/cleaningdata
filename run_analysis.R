# set your working directory
#setwd ("c:/Data Science/R")

gettidy <- function(){
library(data.table)

# load test data  
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
data_test = read.table("UCI HAR Dataset/test/X_test.txt")
act_test = read.table("UCI HAR Dataset/test/Y_test.txt")
  
# load training data
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
data_train = read.table("UCI HAR Dataset/train/X_train.txt")
act_train = read.table("UCI HAR Dataset/train/Y_train.txt")
  
# load lookup information
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)

# row bind test and training data and then name them
subject <- rbind(subject_test, subject_train)
names(subject) <- "subjectId"
data <- rbind(data_test, data_train)
data <- data[, includedFeatures]
names(data) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
act <- rbind(act_test, act_train)
names(act) = "activityId"
activitytemp=merge(act, activities, by="activityId")
activity <- activitytemp$activityLabel

# column bind data frames of different columns to form one data table
data2 <- cbind(subject, data, activity)
write.table(data2, "tidy_data_merged.txt")
  
# create a dataset grouped by subject and activity 
# after applying standard deviation and average calculations
dataDT <- data.table(data2)
calculatedData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
write.table(calculatedData, "tidy_data_calculated.txt")
}

gettidy()
