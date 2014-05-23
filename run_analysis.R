# Coursera Getting and Cleaning Data Project

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of 
#     each variable for each activity and each subject.

# Load test sets
if(!file.exists("./data")){dir.create("./data")}
testSubject <- read.table("./data/test/subject_test.txt")
testValues <- read.table("./data/test/X_test.txt")
testActivity <- read.table("./data/test/y_test.txt")

# Column bind to make the test sets into a single table
test <- cbind(testSubject, testActivity, testValues)

# Load train sets
trainSubject <- read.table("./data/train/subject_train.txt")
trainValues <- read.table("./data/train/X_train.txt")
trainActivity <- read.table("./data/train/y_train.txt")

# Column bind to make the train sets into a signle table
train <- cbind(trainSubject, trainActivity, trainValues)

# Point 1: Row bind to combine test and training sets
merged <- rbind(test, train)

# Read features information 
features <- read.table("./data/features.txt")

# Extract only columns of mean and standard deviation
meanstd <- features[grep("std\\(\\)|mean\\(\\)", features[,2]), ]

# Make new data frame that has 
# Column 1. subject, Column 2. activty, Column 3 ~. mean and standard deviation
data <- merged[, c(1, 2, meanstd[,1]+2)]

# Substitute descriptive activity names on the Column 2
colnames(data) <- c("Subject", "Activity", as.vector(meanstd[,2]))

# Uses descriptive activity names to name the activities in the data set
data$Activity[data$Activity == 1] <- "WALKING"
data$Activity[data$Activity == 2] <- "WALKING_UPSTAIRS"
data$Activity[data$Activity == 3] <- "WALKING_DOWNSTAIRS"
data$Activity[data$Activity == 4] <- "SITTING"
data$Activity[data$Activity == 5] <- "STANDING"
data$Activity[data$Activity == 6] <- "LAYING"

# Export the data set into TXT file
write.csv(data, file="./data/combined.csv")

# 5. Creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject. 

library(reshape2)
data.melt <- melt(data, id.vars=c("Subject", "Activity"), 
                  measure.vars=names(data[3:68]),
                  variable.name="activity_variable", 
                  value.name="activity_value")

avgData <- dcast(data.melt, Subject + Activity ~ activity_variable, mean, 
                 value.var="activity_value")

write.table(avgData, file="./data/average.txt", sep = ",")

