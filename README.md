# Getting-and-Cleaning-Data-Course-Project

Getting and Cleaning Data Course Project.
The purpose of this project is to demonstrate the student ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

This project include following files:

README.md       : This doc.

CodeBooks.md    : It describes the variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R  : It contains the R code to perform the data clean up and anlysis.

HAR_df_mean_Table.txt : This is hte tidy data set with the average of each variable for each activity and each subject.



The raw data was collected from the accelerometers from the Samsung Galaxy S smartphone. It is available form the following URL: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full descrition of the raw data can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Steps to clean up the data:

1- Download the zip file with the raw data

2- Unzip the raw data onto the R working directory

3- Get the features and Activities Desciption 

4- Load the X and Y TEST files, select the features with the mean & stand dev, and assign feature names

5- Load the X and Y TRAIN files, select the features with the mean & stand dev, and assign feature names

6- Combine both TEST and TRAIN data frame into one data frame

7- Create the final tidy data set with the MEAN for each feature by Subject and Activity

