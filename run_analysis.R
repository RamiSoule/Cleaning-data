# Directory and filename of final clean/tidy data:
tidyDatasetFile <- "./tidyDataset.txt"
tidyDatasetFileAVG <- "./tidyDatasetAVG.csv"
tidyDatasetFileAVGtxt <- "./tidyDatasetAVG.txt"

##
## 1.  Merges the training and the test sets to create one data set.
## The data table X_train contains the data from X_train file
## X_test contains the data from X_test file

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Combines data table by (x, y, subject)_train vs (X,y, subject)_test by rows
# Merge operation

x <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
s <- rbind(subject_train, subject_test)

##
## 2.  Extracts only the measurements on the mean and standard deviation for each measurement.
##

# Read features labels into R
features <- read.table("./UCI HAR Dataset/features.txt")
# Features names to features column
names(features) <- c('idfeat', 'featName')
# Searches each element of char vector for matches to the mean or std dev
idx_features <- grep("-mean\\(\\)|-std\\(\\)", features$featName) 
x <- x[, idx_features] 
# Replaces the matches from string
names(x) <- gsub("\\(|\\)", "", (features[idx_features, 2]))

##
## 3.  Uses descriptive activity names to name the activities in the data set
## 4.  Appropriately labels the data set with descriptive variable names.
##

# Read activity labels into R
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Descriptive names to activities column
names(activities) <- c('id', 'name')
y[, 1] = activities[y[, 1], 2]

names(y) <- "Activity"
names(s) <- "Subject"

# Combines data table by columns
MytidyDataSet <- cbind(s, y, x)

##
## 5.  From the data set in step 4, creates a second, independent tidy data set with
##     the average of each variable for each activity and each subject.
##

mydata <- MytidyDataSet[, 3:dim(MytidyDataSet)[2]] 
tidyDataAVGSet <- aggregate(mydata,list(MytidyDataSet$Subject, MytidyDataSet$Activity), mean)

# Column Naming for Activity and Subject
names(tidyDataAVGSet)[1] <- "Subject"
names(tidyDataAVGSet)[2] <- "Activity"

# Created a tidy data set CSV in diretory |  Tidy UCI-HAR Dataset that compares the Mean of each variable for each Activity with each Subject
write.table(MytidyDataSet, tidyDatasetFile, sep="")

# Created a tidy data set for Means CSV in directory |  Tidy UCI-HAR Dataset that compares the Mean of each variable for each Activity with each Subject
#write.csv(tidyDataAVGSet, tidyDatasetFileAVG, sep="")

# Created a tidy data set for Means as a TXT in directory |  Tidy UCI-HAR Dataset that compares the Mean of each variable for each Activity with each Subject
write.table(tidyDataAVGSet, tidyDatasetFileAVGtxt, sep="", row.names=FALSE)