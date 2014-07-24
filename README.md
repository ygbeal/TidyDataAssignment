run_analysis.R
===================
This program document the process to clean up a very messy dataset.
The goal is to have a tidy dataset which can be used for later analysis.

**Here are the steps:**

1. Merges the training and the test sets to create one data set.
  - Read in the training data (X_train.txt, y_train.txt, and
  - With cbind function, combine the training data together
	- subject_train.txt) with the read.table() function
	- Read in the test data (X_test.txt, y_test.txt, subject_test.txt)
    with the read.table()	function
	- With cbind function, combine the test data together
	- With rbind() function, combine the training and test dataset

2. Extracts only the measurements on the mean and standard deviation
  for each measurement.
	- Read in the feature names from the features.txt file with
    read.table() function
	- Assign (replace) names (from features.txt) to the column of
    the merged_data dataframe
	- grep the feature names contain "mean()" and "std()" using
    regular expression
	- subset the data set with only the mean() and std() measurement
    columns, this reduces the number of columns of the merged_data
    dataset from 561 to 66

3. Uses descriptive activity names to name the activities in the data set
	- Read in the activity names from the activity_labels.txt file with
    the read.table() function
	- Replace the activity number in the activity_labels column with
    activity name

4. Appropriately labels the data set with descriptive variable names.
	- Remove white spaces, "-", "_", and "()" from the column name
	
5. Creates a second, independent tidy data set with the average of each 
  variable for each activity and each subject.
	- Use aggregate to calculate the column means by first change the
    subset_data DF into a data table
	- After the data is created, use write.table to write out to a .txt file

================
**Input:**

1. link to the dataset -- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    
2. link to the description -- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
    
3. Make sure that the data is stored in your working directory under the 
    /data/CourseProject/ folder, otherwise adjust the path in the program.
  
=================
**Output:**

1. tidy_data.txt file will be stored in your working directory under the /data/CourseProject/ folder.
		
=================
**R package required:**

1. read.table

=================
**General Information about the variable names** 

1. The features selected for this tidy dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

2. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

3. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

4.  These signals were used to estimate variables of the feature vector for each pattern:  
  - '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

5. The set of variables that were estimated from these signals are: 
  - mean(): Mean value
  - std(): Standard deviation

6. Please see the CodeBook.md in this repo for detail description of the variables
	
=================
*This program is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse.*

July 24, 2014