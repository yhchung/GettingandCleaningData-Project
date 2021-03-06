### Steps of Preparing the Data Set

1. Merges the training and the test sets to create one data set.
	* training sets (subject_train.txt, X_train.txt, y_train.txt)
	* test sets (subject_test.txt, X_test.txt, y_test.txt)
	* combind data set: dataframe "merged"
	* read.table, cbind, and rbind function used
2. Extracts only the measurements on the mean and standard deviation for each measurement.
	* using feature.txt
	* only included variables with std() or mean()
	* grep function used
3. Uses descriptive activity names to name the activities in the data set.
	* using activity_labels.txt
4. Appropriately labels the data set with descriptive activity names.
	* Column 1. Subject, Column 2. Activty, Column 3 ~. mean and standard deviation
	* colnames and as.vector function used
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	* melt and dcast function of reshape2 library used 

### Data Description

|Variable Name              |Variable Type|Values|Description|
|:----------------------------|-----------|------|-----------|
|Subject                      |integer|1~30|Subject ID numbers|
|Activity                     |factor|WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|Activity name|
|tBodyAcc-mean()-X            |float|(normalized and bounded within [-1,1])|Mean or standard deviation of the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration|
|tBodyAcc-mean()-Y            |same of above from this variable|.|.|
|tBodyAcc-mean()-Z            |
|tBodyAcc-std()-X             |
|tBodyAcc-std()-Y             |
|tBodyAcc-std()-Z             |
|tGravityAcc-mean()-X         |
|tGravityAcc-mean()-Y         |
|tGravityAcc-mean()-Z         |
|tGravityAcc-std()-X          |
|tGravityAcc-std()-Y          |
|tGravityAcc-std()-Z          |
|tBodyAccJerk-mean()-X        |
|tBodyAccJerk-mean()-Y        |
|tBodyAccJerk-mean()-Z        |
|tBodyAccJerk-std()-X         |
|tBodyAccJerk-std()-Y         |
|tBodyAccJerk-std()-Z         |
|tBodyGyro-mean()-X           |
|tBodyGyro-mean()-Y           |
|tBodyGyro-mean()-Z           |
|tBodyGyro-std()-X            |
|tBodyGyro-std()-Y            |
|tBodyGyro-std()-Z            |
|tBodyGyroJerk-mean()-X       |
|tBodyGyroJerk-mean()-Y       |
|tBodyGyroJerk-mean()-Z       |
|tBodyGyroJerk-std()-X        |
|tBodyGyroJerk-std()-Y        |
|tBodyGyroJerk-std()-Z        |
|tBodyAccMag-mean()           |
|tBodyAccMag-std()            |
|tGravityAccMag-mean()        |
|tGravityAccMag-std()         |
|tBodyAccJerkMag-mean()       |
|tBodyAccJerkMag-std()        |
|tBodyGyroMag-mean()          |
|tBodyGyroMag-std()           |
|tBodyGyroJerkMag-mean()      |
|tBodyGyroJerkMag-std()       |
|fBodyAcc-mean()-X            |
|fBodyAcc-mean()-Y            |
|fBodyAcc-mean()-Z            |
|fBodyAcc-std()-X             |
|fBodyAcc-std()-Y             |
|fBodyAcc-std()-Z             |
|fBodyAccJerk-mean()-X        |
|fBodyAccJerk-mean()-Y        |
|fBodyAccJerk-mean()-Z        |
|fBodyAccJerk-std()-X         |
|fBodyAccJerk-std()-Y         |
|fBodyAccJerk-std()-Z         |
|fBodyGyro-mean()-X           |
|fBodyGyro-mean()-Y           |
|fBodyGyro-mean()-Z           |
|fBodyGyro-std()-X            |
|fBodyGyro-std()-Y            |
|fBodyGyro-std()-Z            |
|fBodyAccMag-mean()           |
|fBodyAccMag-std()            |
|fBodyBodyAccJerkMag-mean()   |
|fBodyBodyAccJerkMag-std()    |
|fBodyBodyGyroMag-mean()      |
|fBodyBodyGyroMag-std()       |
|fBodyBodyGyroJerkMag-mean()  |
|fBodyBodyGyroJerkMag-std()   |






