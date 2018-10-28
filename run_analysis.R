# --------------------------------------------------------------------
# Downlaod the file for the assigment (using defult working directory)
# --------------------------------------------------------------------
zipfile = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
if (!file.exists(zipfile)){
        this_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(this_url, zipfile)
}

# Unzip the file
folderfile = "UCI HAR Dataset"
if (!file.exists(folderfile)) { 
        unzip(zipfile) 
}

# --------------------------------------------------------------------
# Get the features and Activities Desciption
# --------------------------------------------------------------------
features <- read.table("./UCI HAR Dataset/features.txt")
# Get only the feactures that meassure the mean and the standard deviation
featuresNeeded <- grep(".*mean*.|.*std*.", features[,2])
featuresNames <- features[featuresNeeded,2]

# Get the Activities and assign the column names
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity) <- c("ActCode", "ActivityDesc")

# --------------------------------------------------------------------
# Load the X and Y TEST file, select the features with the mean & stand dev, and assign feature names
# --------------------------------------------------------------------
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")[featuresNeeded]
# Assign the feature names
names(test_x) <- featuresNames
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(test_y) <- "ActCode"
# Append the activity description
test_y <- merge(test_y, activity, by.x="ActCode", by.y='ActCode', all=FALSE, sort=FALSE)
# Get the subject file
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(test_subject) <- "Subject"
# Merge the x, y, and subject files into one data frame
test_file <- cbind(test_y, test_x)[,2:81]
test_file <- cbind(test_subject, test_file) 
        

# --------------------------------------------------------------------
# Load the X and Y TRAIN file, select the features with the mean & stand dev, and assign feature names
# --------------------------------------------------------------------
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")[featuresNeeded]
# Assign the feature names
names(train_x) <- featuresNames
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(train_y) <- "ActCode"
# Append the activity description
train_y <- merge(train_y, activity, by.x="ActCode", by.y='ActCode', all=FALSE, sort=FALSE)
# Get the subject file
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(train_subject) <- "Subject"
# Merge the x, y, and subject files into one data frame
train_file <- cbind(train_y, train_x)[,2:81]
train_file <- cbind(train_subject, train_file) 


# --------------------------------------------------------------------
# Now combine both TEST and TRAIN data frame into one data frame
# --------------------------------------------------------------------
HAR_df <- rbind(test_file, train_file)

# --------------------------------------------------------------------
# Create the final file with the MEAN for each feature by Subject and Activity
# --------------------------------------------------------------------
HAR_df_melted <- melt(HAR_df, id = c("Subject", "ActivityDesc"))
HAR_df_mean <- dcast(HAR_df_melted, Subject + ActivityDesc ~ variable, mean)
write.table(HAR_df_mean, "HAR_df_mean_Table.txt", row.names = FALSE, quote = FALSE)

