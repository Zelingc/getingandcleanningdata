   
                                        Week 4 Assignment for Getting and Cleaning Data 
    
Overview
========
The purpose of this project is to practice what have learned from the course for collecting, working with, and cleaning a data set. The goal is to prepare tidy data that can be used for later analysis.

Data for this project collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

Files in Repository
===================
1. tidydata.txt: 
2. run_analysis.R: The Github repo contains the required scripts.
3. Coodbook.MD: modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and     any other relevant information.
4. README.MD: Explains the analysis files

The process to get tidydata file
================================
1. Download and unzip source data if it doesn't exist from the source provied for this project.
2. Read data.
3. Merges the training and the test sets to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement.
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive variable names.
7. From the data set in step 4, creates a second, independent tidy data set with the average of   
   each variable for each activity and each subject.
