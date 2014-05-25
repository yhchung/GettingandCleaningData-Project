Coursera Getting and Cleaning Data Project
==============================

GitHub repo: https://github.com/yhchung/GettingandCleaningData-Project


## Project Goal

The goal of this project is practicing the getting and cleaning a data set to prepare tidy data. It consists of both making a tidy data set as well as documentation.

## Data Description

The data in this project was gathered from sensors in the Samsung Galaxy S smartphone. A full description is at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## File Description

### README.md

This file. This file explains the project files and its relationship.

### CodeBook.md

It describes variables, data, and all work that performed to prepare the tiny data set.

### average.csv

A tiny data set file. More details in CodeBook.md.

### run_analysis.R

A R script file to prepare the tiny data set as described below:

1. Merges the training and the test sets to create one data set.
⋅⋅* training sets (subject_train.txt, X_train.txt, y_train.txt)
⋅⋅* test sets (subject_test.txt, X_test.txt, y_test.txt) 
⋅⋅* combind data set: dataframe "merged"
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

2. Another item
⋅⋅* Unordered sub-list. 


* data location for run_analysis.R: ./data/
* A line-by-line explanation of R script is commented on the R file.



