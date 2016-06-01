# This CodeBook describes how you finish the assignment in Coursera Data Specialization Course 3
1.  Download the data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.  Unzip the data. You should now have the data in a directory called UCI HAR Dataset
3.  Open RStudio and run run_analysis.R This file creates two datasets, tidy_data_merged.txt and tidy_data_calculated.txt.

Data Dictionary for tidy_data_merged.txt

This is a tidy dataset that combines data and its metadata.  It has the following columns:
1 subjectId
2 tBodyAcc-mean-X
3 tBodyAcc-mean-Y
4 tBodyAcc-mean-Z
5 tBodyAcc-std-X
6 tBodyAcc-std-Y
7 tBodyAcc-std-Z
8 tGravityAcc-mean-X
9 tGravityAcc-mean-Y
10 tGravityAcc-mean-Z
11 tGravityAcc-std-X
12 tGravityAcc-std-Y
13 tGravityAcc-std-Z
14 tBodyAccJerk-mean-X
15 tBodyAccJerk-mean-Y
16 tBodyAccJerk-mean-Z
17 tBodyAccJerk-std-X
18 tBodyAccJerk-std-Y
19 tBodyAccJerk-std-Z
20 tBodyGyro-mean-X
21 tBodyGyro-mean-Y
22 tBodyGyro-mean-Z
23 tBodyGyro-std-X
24 tBodyGyro-std-Y
25 tBodyGyro-std-Z
26 tBodyGyroJerk-mean-X
27 tBodyGyroJerk-mean-Y
28 tBodyGyroJerk-mean-Z
29 tBodyGyroJerk-std-X
30 tBodyGyroJerk-std-Y
31 tBodyGyroJerk-std-Z
32 tBodyAccMag-mean
33 tBodyAccMag-std
34 tGravityAccMag-mean
35 tGravityAccMag-std
36 tBodyAccJerkMag-mean
37 tBodyAccJerkMag-std
38 tBodyGyroMag-mean
39 tBodyGyroMag-std
40 tBodyGyroJerkMag-mean
41 tBodyGyroJerkMag-std
42 fBodyAcc-mean-X
43 fBodyAcc-mean-Y
44 fBodyAcc-mean-Z
45 fBodyAcc-std-X
46 fBodyAcc-std-Y
47 fBodyAcc-std-Z
48 fBodyAccJerk-mean-X
49 fBodyAccJerk-mean-Y
50 fBodyAccJerk-mean-Z
51 fBodyAccJerk-std-X
52 fBodyAccJerk-std-Y
53 fBodyAccJerk-std-Z
54 fBodyGyro-mean-X
55 fBodyGyro-mean-Y
56 fBodyGyro-mean-Z
57 fBodyGyro-std-X
58 fBodyGyro-std-Y
59 fBodyGyro-std-Z
60 fBodyAccMag-mean
61 fBodyAccMag-std
62 fBodyBodyAccJerkMag-mean
63 fBodyBodyAccJerkMag-std
64 fBodyBodyGyroMag-mean
65 fBodyBodyGyroMag-std
66 fBodyBodyGyroJerkMag-mean
67 fBodyBodyGyroJerkMag-std
68 activity

Data Dictionary for tidy_data_calculated.txt

This is a tidy dataset that takes the mean of the columns in tidy_data_merged.txt with respect to subjectid and activity.  
It has the same columns as tidy_data_merged.txt.
