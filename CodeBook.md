#Code Book

The original data set is 6 text files with data (3 on each test and training sets).
This Code merges two data sets (test and training), selects only the measurements on the mean and standard deviation for each measurement and creates a tidy data set with the average of each
variable for each activity and each subject from the original sets of data. 
1. First, it downloads and extracts files from the given link (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Second, it reads and combines "test" and "training" data sets, creating a newDataSet.
3. Next, it extracts only the measurements containing "mean" or "std" (standard deviation).
4. Names properly all the variables.
5. The last step - it calculates average values of every selected maesurement (for every Subject and every activity). 
Resulting tidy data set is a 180x88 table, where each subject performs each (6) activities and all the means of selected measurements are calculated.

##Data Dictionary:

1 SudjectID:
	1-30 - Unique identifier assigned to each volunteer

2 Activity
	Types of activities performed by each Subject:
	WALKING

	WALKING_UPSTAIRS

	WALKING_DOWNSTAIRS

	SITTING

	STANDING

	LAYING


Columns 3-88 - Average values of the following measurenents for each activity for each subject:

3-5 tBodyAcc.mean...XYZ - mean value of average body acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
6-8 tBodyAcc.std...XYZ - mean value of standard deviation of body acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
9-11 tGravityAcc.mean...XYZ - mean value of average gravity acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
12-14 tGravityAcc.std...XYZ - mean value of standard deviation of gravity acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
15-17 tBodyAccJerk.mean...XYZ - mean value of average body linear acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
18-20 tBodyAccJerk.std...XYZ - mean value of standard deviation of body linear acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
21-23 tBodyGyro.mean...X - mean value of average signal taken from gyroscope XYZ-axle measurments in a time domain for each activity and each subject
24-26 tBodyGyro.std...X - mean value of standard deviation of signal taken from gyroscope XYZ-axle measurments in a time domain for each activity and each subject
27-29 tBodyGyroJerk.mean...X - mean value of average body angular velocity XYZ-axle measurments taken in a time domain for each activity and each subject
30-32 tBodyGyroJerk.std...X - mean value of standard deviation of body angular velocity XYZ-axle measurments taken in a time domain for each activity and each subject
33 tBodyAccMag.mean.. - mean value of average magnitude of body acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
34 tBodyAccMag.std.. - mean value of standard deviation of magnitude of body acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
35 tGravityAccMag.mean.. - mean value of average magnitude of gravity acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
36 tGravityAccMag.std.. - mean value of standard deviation of magnitude of gravity acceleration XYZ-axle measurments taken in a time domain for each activity and each subject
37 tBodyAccJerkMag.mean.. - average tBodyAccJerkMag.mean.. for each activity and each subject
38 tBodyAccJerkMag.std.. - average tBodyAccJerkMag.std.. for each activity and each subject
39 tBodyGyroMag.mean.. - average tBodyGyroMag.mean.. for each activity and each subject
40 tBodyGyroMag.std.. - average tBodyGyroMag.std.. for each activity and each subject
41 tBodyGyroJerkMag.mean.. - average tBodyGyroJerkMag.mean.. for each activity and each subject
42 tBodyGyroJerkMag.std.. - average tBodyGyroJerkMag.std.. for each activity and each subject
43-45 fBodyAcc.mean...XYZ - average fBodyAcc.mean...XYZ for each activity and each subject
46-48 fBodyAcc.std...XYZ - average fBodyAcc.std...XYZ for each activity and each subject
49-51 fBodyAcc.meanFreq...XYZ - average fBodyAcc.meanFreq...XYZ for each activity and each subject
52-54 fBodyAccJerk.mean...XYZ - average fBodyAccJerk.mean...XYZ for each activity and each subject
55-57 fBodyAccJerk.std...XYZ - average fBodyAccJerk.std...XYZ for each activity and each subject
58-60 fBodyAccJerk.meanFreq...XYZ - average fBodyAccJerk.meanFreq...XYZ for each activity and each subject
61-63 fBodyGyro.mean...XYZ - average fBodyGyro.mean...XYZ for each activity and each subject
64-66 fBodyGyro.std...XYZ - average fBodyGyro.std...XYZ for each activity and each subject
67-69 fBodyGyro.meanFreq...XYZ - average fBodyGyro.meanFreq...XYZ for each activity and each subject
70 fBodyAccMag.mean.. - average fBodyAccMag.mean.. for each activity and each subject
71 fBodyAccMag.std.. - average fBodyAccMag.std.. for each activity and each subject
72 fBodyAccMag.meanFreq.. - average fBodyAccMag.meanFreq.. for each activity and each subject
73 fBodyBodyAccJerkMag.mean.. - average fBodyBodyAccJerkMag.mean.. for each activity and each subject
74 fBodyBodyAccJerkMag.std.. - average fBodyBodyAccJerkMag.std.. for each activity and each subject
75 fBodyBodyAccJerkMag.meanFreq.. - average fBodyBodyAccJerkMag.meanFreq.. for each activity and each subject
76 fBodyBodyGyroMag.mean.. - average fBodyBodyGyroMag.mean.. for each activity and each subject
77 fBodyBodyGyroMag.std.. - average fBodyBodyGyroMag.std.. for each activity and each subject
78 fBodyBodyGyroMag.meanFreq.. - average fBodyBodyGyroMag.meanFreq.. for each activity and each subject
79 fBodyBodyGyroJerkMag.mean.. - average fBodyBodyGyroJerkMag.mean.. for each activity and each subject
80 fBodyBodyGyroJerkMag.std.. - average fBodyBodyGyroJerkMag.std.. for each activity and each subject
81 fBodyBodyGyroJerkMag.meanFreq.. - average XXXXX for each activity and each subject
82 angle.tBodyAccMean.gravity. - average angle.tBodyAccMean.gravity. for each activity and each subject
83 angle.tBodyAccJerkMean..gravityMean. - average angle.tBodyAccJerkMean..gravityMean. for each activity and each subject
84 angle.tBodyGyroMean.gravityMean. - average angle.tBodyGyroMean.gravityMean. for each activity and each subject
85 angle.tBodyGyroJerkMean.gravityMean. - average angle.tBodyGyroJerkMean.gravityMean. for each activity and each subject
86-88 angle.XYZ.gravityMean. - average angle.XYZ.gravityMean. for each activity and each subject
