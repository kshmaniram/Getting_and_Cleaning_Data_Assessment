
# Read the training data set
xtraining <- read.table("train/X_train.txt");
subjecttraining <- read.table("train/subject_train.txt");
ytraining <- read.table("train/y_train.txt");

# Read the test data set
xtest <- read.table("test/X_test.txt");
subjecttest <- read.table("test/subject_test.txt");
ytest <- read.table("test/y_test.txt")

# 1. Merges the training and the test sets to create one data set.
measurement_X <- rbind(xtraining, xtest);
subject <- rbind(subjecttraining, subjecttest);
measurement_Y <- rbind(ytraining, ytest)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
measurement_X <- measurement_X[, indices]
names(measurement_X) <- features[indices, 2]

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")
measurement_Y[,1] = activities[measurement_Y[,1], 2]
names(measurement_Y) <- "Activity"

# 4. Appropriately labels the data set with descriptive activity names.
names(subject) <- "Subject"
finalData <- cbind(subject,measurement_Y,measurement_X)
write.table(finalData,"CleanData.txt");

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
uniqueSubjects = unique(subject)[,1]
numSubjects = length(unique(subject)[,1])
numActivities = length(activities[,1])
numCols = dim(finalData)[2]
result = finalData[1:(numSubjects*numActivities), ]

row = 1
for (s in 1:numSubjects) {
   for (a in 1:numActivities) {
      result[row, 1] = uniqueSubjects[s]
      result[row, 2] = activities[a, 2]
      tmp <-  finalData[which(tolower(finalData$Subject)==tolower(s) & tolower(finalData$Activity)==tolower(activities[a, 2])), ]
      result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
      row = row+1
   }
}
write.table(result, "tidyWithAverages.txt")
