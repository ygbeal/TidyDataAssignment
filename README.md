run_analysis.R
===================
This program document the process to clean up a very messy dataset.
The goal is to have a tidy dataset which can be used for later analysis.

Here are the steps:

1. Merges the training and the test sets to create one data set.
  	* Read in the training data (X_train.txt, y_train.txt, and
    subject_train.txt) with the read.table() function
	* With cbind function, combine the training data together
	* Read in the test data (X_test.txt, y_test.txt, subject_test.txt)
    with the read.table()	function
	* With cbind function, combine the test data together
	* With rbind() function, combine the training and test dataset

2. Extracts only the measurements on the mean and standard deviation
  for each measurement.
	* Read in the feature names from the features.txt file with
    read.table() function
	* Assign (replace) names (from features.txt) to the column of
    the merged_data dataframe
	* grep the feature names contain "mean()" and "std()" using
    regular expression
	* subset the data set with only the mean() and std() measurement
    columns, this reduces the number of columns of the merged_data
    dataset from 561 to 66

3. Uses descriptive activity names to name the activities in the data set
	* Read in the activity names from the activity_labels.txt file with
    the read.table() function
	* Replace the activity number in the activity_labels column with
    activity name

4. Appropriately labels the data set with descriptive variable names.
	* Remove white spaces, "-", "_", and "()" from the column name
	
5. Creates a second, independent tidy data set with the average of each 
  variable for each activity and each subject.
	* Use aggregate to calculate the column means by first change the
    subset_data DF into a data table
	* After the data is created, use write.table to write out to a .txt file

================
Input:

1. link to the dataset -- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    
2. link to the description -- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
    
3. Make sure that the data is stored in your working directory under the /data/CourseProject/ folder, otherwise
 adjust the path in the program.
  
=================
Output:

1. tidy_data.txt file will be stored in your working directory under the /data/CourseProject/ folder.
		
=================
R package required:

read.table
	
=================
This program is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse.

July 23, 2014