

Download the source file from the given site - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

Following are data transformation performed on the given source data to achive the final clean data set:

	1. Load the training and test data set and merge it. It created three matrices:
		1. for X training (train/X_train.txt ) and test data(test/X_test.txt ) : Matrix of dimention 10299*66
		2. for Y training(train/y_train.txt) and test data(test/y_test.txt ) : Vector of  10299 element
		3. for Subject training(train/subject_train.txt ) and test data(test/subject_test.txt ): Vector of 10299 element

	2. Extracts only the measurements on the mean and standard deviation from the features.txt file. It give vector of size 66.

	3. Extracts the descriptive activity name from the activity_labels.txt. Following are the decriptive names:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

	4. Form final clean data set by combining three matrices ( X training and test data,descriptive activity name,Subject ) for those selected the mean and standard deviation. It is matrix of dimension 10299 * 68

	5. Group the final clean data set based on the subject and activity. For each grop, it calculates the means for each columns. This makes matrix of dimension 180*68. Data are stored in the file "tidyWithAverages.txt"

Columns :
	"Subject"
	 "Activity":
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
	 "tBodyAcc-mean()-X" 
	"tBodyAcc-mean()-Y" 
	"tBodyAcc-mean()-Z" 
	"tBodyAcc-std()-X" 
	"tBodyAcc-std()-Y" 
	"tBodyAcc-std()-Z" 
	"tGravityAcc-mean()-X" 
	"tGravityAcc-mean()-Y" 
	"tGravityAcc-mean()-Z" 
	"tGravityAcc-std()-X" 
	"tGravityAcc-std()-Y" 
	"tGravityAcc-std()-Z" 
	"tBodyAccJerk-mean()-X" 
	"tBodyAccJerk-mean()-Y" 
	"tBodyAccJerk-mean()-Z" 
	"tBodyAccJerk-std()-X" 
	"tBodyAccJerk-std()-Y" 
	"tBodyAccJerk-std()-Z" 
	"tBodyGyro-mean()-X" 
	"tBodyGyro-mean()-Y" 
	"tBodyGyro-mean()-Z" 
	"tBodyGyro-std()-X" 
	"tBodyGyro-std()-Y" 
	"tBodyGyro-std()-Z" 
	"tBodyGyroJerk-mean()-X" 
	"tBodyGyroJerk-mean()-Y" 
	"tBodyGyroJerk-mean()-Z" 
	"tBodyGyroJerk-std()-X" 
	"tBodyGyroJerk-std()-Y" 
	"tBodyGyroJerk-std()-Z" 
	"tBodyAccMag-mean()" 
	"tBodyAccMag-std()" 
	"tGravityAccMag-mean()" 
	"tGravityAccMag-std()" 
	"tBodyAccJerkMag-mean()" 
	"tBodyAccJerkMag-std()" 
	"tBodyGyroMag-mean()" 
	"tBodyGyroMag-std()" 
	"tBodyGyroJerkMag-mean()" 
	"tBodyGyroJerkMag-std()" 
	"fBodyAcc-mean()-X" 
	"fBodyAcc-mean()-Y" 
	"fBodyAcc-mean()-Z" 
	"fBodyAcc-std()-X" 
	"fBodyAcc-std()-Y" 
	"fBodyAcc-std()-Z" 
	"fBodyAccJerk-mean()-X" 
	"fBodyAccJerk-mean()-Y" 
	"fBodyAccJerk-mean()-Z" 
	"fBodyAccJerk-std()-X" 
	"fBodyAccJerk-std()-Y" 
	"fBodyAccJerk-std()-Z" 
	"fBodyGyro-mean()-X" 
	"fBodyGyro-mean()-Y" 
	"fBodyGyro-mean()-Z" 
	"fBodyGyro-std()-X" 
	"fBodyGyro-std()-Y" 
	"fBodyGyro-std()-Z" 
	"fBodyAccMag-mean()" 
	"fBodyAccMag-std()" 
	"fBodyBodyAccJerkMag-mean()" 
	"fBodyBodyAccJerkMag-std()" 
	"fBodyBodyGyroMag-mean()" 
	"fBodyBodyGyroMag-std()"
	 "fBodyBodyGyroJerkMag-mean()" 
	"fBodyBodyGyroJerkMag-std()"