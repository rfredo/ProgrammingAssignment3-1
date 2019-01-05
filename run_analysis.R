## peer review assignment week 4 getting and cleaning data

#initialize libraries
library(dplyr)
library(data.table)

#check for target directory
if(!file.exists("./AssignmentCleaningData")) {
  dir.create("./AssignmentCleaningData")
}

#download file
FprojectUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
outDir <- "./AssignmentCleaningData"
download.file(FprojectUrl, destfile = "FprojectData.zip", method = "curl")

#unzip the file
unzip("FprojectData.zip", exdir = outDir)

#read metadata files
featureData <- fread("./AssignmentCleaningData/UCI HAR Dataset/features.txt", select = 2)
activityData <- fread("./AssignmentCleaningData/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))
subject_test <- fread("./AssignmentCleaningData/UCI HAR Dataset/test/subject_test.txt")
subject_train <- fread("./AssignmentCleaningData/UCI HAR Dataset/train/subject_train.txt", col.names = "subject_id")

#read training and testing data
testData_x <- fread("./AssignmentCleaningData/UCI HAR Dataset/test/X_test.txt")
testData_y <- fread("./AssignmentCleaningData/UCI HAR Dataset/test/y_test.txt")
trainData_x <- fread("./AssignmentCleaningData/UCI HAR Dataset/train/X_train.txt", col.names = featureData$V2)
trainData_y <- fread("./AssignmentCleaningData/UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")

#merge metadata, training and testing data
train_test <- rbindlist(list(trainData_x, testData_x))
train_test <- cbind(rbindlist(list(subject_train, subject_test)),rbindlist(list(trainData_y, testData_y)), train_test)

#subset only mean and std columns
meansd <- grep("mean\\b|std\\b", names(train_test))
train_testmeansd <- train_test[, c(1, 2, meansd), with = FALSE]

#replace activity ids with descriptive names- given as a part of the data
train_testmeansd <- join(activityData, train_testmeansd, type = "right")
train_testmeansd <- train_testmeansd[, -1, with = FALSE]

#rename labels with descriptive var names
rename_labels <- function(vector) {
  gsub("BodyBody", "Body", vector)
}

#remove parentheses from columns headers
remove_parentheses <- function(vector) {
  gsub("\\()", "", vector)
}

#run the rename and remove function on the dataset
names(train_testmeansd) <- sapply(names(train_testmeansd), rename_labels)
names(train_testmeansd) <- sapply(names(train_testmeansd), remove_parentheses)

#group and summarize mean values for all variables for subjects and for activities
meanby_sub_act <- train_testmeansd %>% group_by(subject_id, activity_name) %>% summarize_all(funs(mean))
names(meanby_sub_act) <- c(names(meanby_sub_act[c(1,2)]), paste0("average-", names(meanby_sub_act[3:length(names(meanby_sub_act))])))
