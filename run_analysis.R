## script name: run_analysis.R
## The purpose of this program is to document the process of collect, work with,
## and clean a very messy dataset. The goal is to prepare tidy data that can be
## used for later analysis.
## The input is the data collected from the accelerometers from the Samsung Galaxy
## S smartphone.
## Each step is documented according to the function that needs to be accomplished. 
##
## Date: July 23, 2014

library(data.table)
###############
## Step 1 
##	merge training and test sets to create one data set
###############

## Read in the training data (X_train.txt, y_train.txt, and subject_train.txt) with
## the read.table() function
train_data <- read.table("./data/CourseProject/train/X_train.txt", header=FALSE)
train_label <- read.table("./data/CourseProject/train/y_train.txt", header=FALSE)
subject_train <- read.table("./data/CourseProject/train/subject_train.txt", header=FALSE)

## With cbind function, combine the training data together
train_set <- cbind(subject_train, train_label, train_data)


## Read in the test data (X_test.txt, y_test.txt, subject_test.txt) with
## the read.table() function
test_data <- read.table("./data/CourseProject/test/X_test.txt", header=FALSE)
test_label <- read.table("./data/CourseProject/test/y_test.txt", header=FALSE)
subject_test <- read.table("./data/CourseProject/test/subject_test.txt", header=FALSE)

## With cbind function, combine the test data together
test_set <- cbind(subject_test, test_label, test_data)


## With rbind() function, combine the training and test dataset
merged_data <- rbind(train_set, test_set)


###############
## Step 2
##    attach the column name to the merged dataset, then extract only the measurement
##    on the mean and standard deviation for each measurement.
###############

## Read in the feature names from the features.txt file with read.table() function 
feature_data <- read.table("./data/CourseProject/features.txt", header=FALSE)

## Assign (replace) names (from features.txt) to the column of the merged_data dataframe
names(merged_data) <- c("subject", "activity_labels", as.character(feature_data$V2))

## grep the feature names contain "mean()" and "std()" using regular expression
mean_and_std <- grep("mean\\(\\)|std\\(\\)", as.character(feature_data$V2),
   value=TRUE)
mean_std_act <- c("subject", "activity_labels" , mean_and_std)
 
## subset the data set with only the mean() and std() measurement columns, this
## reduces the number of columns of the merged_data dataset from 561 to 66
subset_data <- merged_data[ ,names(merged_data) %in% mean_std_act]  


###############
## Step 3
##    Replace the activity label from numeric to character names
###############

## Read in the activity names from the activity_labels.txt file with the read.table()
## function 
activity_names <- read.table("./data/CourseProject/activity_labels.txt", header=FALSE)

## Replace the activity number in the activity_labels column with activity name
n <- length(subset_data$activity_labels)
for(i in 1:n){ 
    subset_data$activity_labels[i] <- as.character(activity_names[subset_data$activity_labels[i], 2]) 
} 


###############
## step 4
##    Appropriately labels the data set with descriptive variable names
###############

## Remove white spaces, "-", "_", and "()"
names(subset_data) <- gsub(" ", "", names(subset_data))
names(subset_data) <- gsub("-", "", names(subset_data))
names(subset_data) <- gsub("\\(\\)", "", names(subset_data))
names(subset_data) <- gsub("_", "", names(subset_data))


###############
## Step 5
##    Create a second independent tidy dataset with the average of each variable 
##    for each activity and each subject
###############

## Use aggregate to calculate the column means by
## first change the subset_data DF into a data table
s1 <- data.table(subset_data)
tidy_data <- aggregate(. ~ subject + activitylabels, data=s1, FUN=mean)

## after the data is created, use write.table to write out to a .txt file
write.table(tidy_data,"./data/CourseProject/tidy_data.txt", row.names = FALSE, 
    append = FALSE, sep = " ") 
