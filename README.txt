
Getting and Cleaning Data Assessment:
 
Follow that below steps to clean the given data and generate independent Tidy data set with average:

Step 1: 
	Download the file from the given site - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Unzip it in one of local drive location.
	This zip contains the Training and Test data set along with meta data files ( activity_labels.txt,features.txt and features_info.txt)

Step 2: 
	Open RStudio. Set the working set directory as 
	<Location where the zip file was extracted>/UCI HAR Dataset.
	Example: If the zip is extracted at F:/project, then working directory should be F:/project/UCI HAR Dataset.

Step 3:
	To run the R script file - DataCleaningScript.R, enter command source("DataCleaningScript.R") in the Console.

	As mentioned in assessment, it performs:

	1. Load the training and test data set and merge it. It created three matrices:
		1. for X training and test data : Matrix of dimention 10299*66
		2. for Y training and test data : Matrix of dimention 10299*1
		3. for Subject training and test data: Matrix of dimention 10299*1

	2. Extracts only the measurements on the mean and standard deviation from the features.txt file.

	3. Extracts the descriptive activity name from the activity_labels.txt.

	4. Form final clean data set by combining three matrices ( X training and test data,descriptive activity name,Subject ) for those selected the mean and standard deviation. It is matrix of dimension 10299 * 68

	5. Group the final clean data set based on the subject and activity. For each grop, it calculates the means for each columns. This makes matrix of dimension 180*68
	