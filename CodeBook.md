# Code Book:

This document describes the variables in used in this project and the variables in the tidy dataset "HAR_df_mean_Table.txt", and describe the steps taken to clean up the data

# Step to clean up the raw data:

**1-** Download the zip file with the raw data

   The file was downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**2-** Unzip the raw data onto the R working directory


**3-** Get the features and Activities Description

   The feature and activities are in a differents files (activity_labels.txt, features.txt). So this steps loads those two files
   and the requiried features (only mean and standard desviation features) are selected here.
   
   To get the features that measure the mean and standard desviation, the function "grep" was used with the following
   General Expression: ".*mean*.|.*std*."
   

**4-** Load the X and Y TEST files, select the features with the mean & stand dev, and assign feature names

   This step load the X and Y test files which are in seperated files (X_test.txt and y_test.txt) , selecting only the required
   features. Then assing the feature names and finnaly combine both files into one.

**5-** Load the X and Y TRAIN files, select the features with the mean & stand dev, and assign feature names

   This step load the X and Y training files which are in seperated files (X_train.txt and y_train.txt), selecting only the required
   features. Then assing the feature names and finnaly combine both files into one.

**6-** Combine both TEST and TRAIN data frame into one data frame

**7-** Create the final tidy data set with the MEAN for each feature by Subject and Activity

   To create the tidy data set, it was used the "melt" function defining the "Subject" and th e"Activity" as the keys IDs.
   Then it was used the "dcast" function to create the table like data set using the "mean" as the summary function.


# Final Report HAR_df_mean_Table (tidy datase):

   This file is the tidy data set required by the project that shows the average of each feature for each Activity and each Subject.
   
   The layout is as follows: Subject (1..30), Activity, and the "mean" for each of the feature. Follows is an example:
   
   Subject ActivityDesc tBodyAcc-mean()-X tBodyAcc-mean()-Y ......
   
   1 STANDING 0.265696920582133 -0.0182981725176081 -0.10784573454611 ......
   
   2 STANDING 0.273113115788079 -0.0191323183174834 -0.115649958175497 .....
   

# Activity Description

**1** WALKING

**2** WALKING_UPSTAIRS

**3** WALKING_DOWNSTAIRS

**4** SITTING

**5** STANDING

**6** LAYING



# Variables:
(for full descrition of the variable, please refer to:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAcc-meanFreq()-X

fBodyAcc-meanFreq()-Y

fBodyAcc-meanFreq()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyAccJerk-meanFreq()-X

fBodyAccJerk-meanFreq()-Y

fBodyAccJerk-meanFreq()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyGyro-meanFreq()-X

fBodyGyro-meanFreq()-Y

fBodyGyro-meanFreq()-Z

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyAccMag-meanFreq()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroMag-meanFreq()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()

fBodyBodyGyroJerkMag-meanFreq()
