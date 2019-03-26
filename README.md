Getting and Cleaning Data - Course Project
This repository contains the R code and documentation files for the course project of "Getting and Cleaning data".

The dataset being used is: Human Activity Recognition Using Smartphones

This repository contains the following files:

README.md, this file, which provides an overview of the data set and how it was created.
tidy_data.txt, which contains the data set.
CodeBook.md, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
run_analysis.R, the R script that was used to create the data set (see the Creating the data set section below)

Design Process

First step of the code merges the training and test data for creating one dataset. In the second step, the measurements on the mean and standard deviation were extracted for each measurement, and then the mean of each measurement were taken by each subject and activity,resulting in the final data set. The final dataset contains all the average measures for each subject and activity type (30 subjects * 6 activities = 180 rows). 

These step can be listed as follows.

Read data.
Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set.
Appropriately label the data set with descriptive variable names.
Create a second, independent tidy set with the average of each variable for each activity and each subject.
Write the data set to the tidy_data.txt file.


