Codebook
Variables
tidyDataSet

Variable	Comments
Subject	subject identifier of volunteer (1-30)
ActivityName	name of activity subject performed (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS)
tBodyAcc-mean-X	mean of tBodyAcc-mean()-X
tBodyAcc-mean-Y	mean of tBodyAcc-mean()-Y
tBodyAcc-mean-Z	mean of tBodyAcc-mean()-Z
tBodyAcc-std-X	mean of tBodyAcc-std()-X
tBodyAcc-std-Y	mean of tBodyAcc-std()-Y
tBodyAcc-std-Z	mean of tBodyAcc-std()-Z
tGravityAcc-mean-X	mean of tGravityAcc-mean()-X
tGravityAcc-mean-Y	mean of tGravityAcc-mean()-Y
tGravityAcc-mean-Z	mean of tGravityAcc-mean()-Z
tGravityAcc-std-X	mean of tGravityAcc-std()-X
tGravityAcc-std-Y	mean of tGravityAcc-std()-Y
tGravityAcc-std-Z	mean of tGravityAcc-std()-Z
tBodyAccJerk-mean-X	mean of tBodyAccJerk-mean()-X
tBodyAccJerk-mean-Y	mean of tBodyAccJerk-mean()-Y
tBodyAccJerk-mean-Z	mean of tBodyAccJerk-mean()-Z
tBodyAccJerk-std-X	mean of tBodyAccJerk-std()-X
tBodyAccJerk-std-Y	mean of tBodyAccJerk-std()-Y
tBodyAccJerk-std-Z	mean of tBodyAccJerk-std()-Z
tBodyGyro-mean-X	mean of tBodyGyro-mean()-X
tBodyGyro-mean-Y	mean of tBodyGyro-mean()-Y
tBodyGyro-mean-Z	mean of tBodyGyro-mean()-Z
tBodyGyro-std-X	mean of tBodyGyro-std()-X
tBodyGyro-std-Y	mean of tBodyGyro-std()-Y
tBodyGyro-std-Z	mean of tBodyGyro-std()-Z
tBodyGyroJerk-mean-X	mean of tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean-Y	mean of tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean-Z	mean of tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std-X	mean of tBodyGyroJerk-std()-X
tBodyGyroJerk-std-Y	mean of tBodyGyroJerk-std()-Y
tBodyGyroJerk-std-Z	mean of tBodyGyroJerk-std()-Z
tBodyAccMag-mean	mean of tBodyAccMag-mean()
tBodyAccMag-std	mean of tBodyAccMag-std()
tGravityAccMag-mean	mean of tGravityAccMag-mean()
tGravityAccMag-std	mean of tGravityAccMag-std()
tBodyAccJerkMag-mean	mean of tBodyAccJerkMag-mean()
tBodyAccJerkMag-std	mean of tBodyAccJerkMag-std()
tBodyGyroMag-mean	mean of tBodyGyroMag-mean()
tBodyGyroMag-std	mean of tBodyGyroMag-std()
tBodyGyroJerkMag-mean	mean of tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std	mean of tBodyGyroJerkMag-std()
fBodyAcc-mean-X	mean of fBodyAcc-mean()-X
fBodyAcc-mean-Y	mean of fBodyAcc-mean()-Y
fBodyAcc-mean-Z	mean of fBodyAcc-mean()-Z
fBodyAcc-std-X	mean of fBodyAcc-std()-X
fBodyAcc-std-Y	mean of fBodyAcc-std()-Y
fBodyAcc-std-Z	mean of fBodyAcc-std()-Z
fBodyAccJerk-mean-X	mean of fBodyAccJerk-mean()-X
fBodyAccJerk-mean-Y	mean of fBodyAccJerk-mean()-Y
fBodyAccJerk-mean-Z	mean of fBodyAccJerk-mean()-Z
fBodyAccJerk-std-X	mean of fBodyAccJerk-std()-X
fBodyAccJerk-std-Y	mean of fBodyAccJerk-std()-Y
fBodyAccJerk-std-Z	mean of fBodyAccJerk-std()-Z
fBodyGyro-mean-X	mean of fBodyGyro-mean()-X
fBodyGyro-mean-Y	mean of fBodyGyro-mean()-Y
fBodyGyro-mean-Z	mean of fBodyGyro-mean()-Z
fBodyGyro-std-X	mean of fBodyGyro-std()-X
fBodyGyro-std-Y	mean of fBodyGyro-std()-Y
fBodyGyro-std-Z	mean of fBodyGyro-std()-Z
fBodyAccMag-mean	mean of fBodyAccMag-mean()
fBodyAccMag-std	mean of fBodyAccMag-std()
fBodyBodyAccJerkMag-mean	mean of fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std	mean of fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean	mean of fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std	mean of fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean	mean of fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std	mean of fBodyBodyGyroJerkMag-std()

Transformations
Dataset was initially split into subject, activity, and features. Each of these were further split into test and train sets. Merging was performed to get everything in one dataset.

Dataset activity variable was merged with the activity lookup table to yield descriptive activity name.

Features were filtered to only those matching mean() or std(). Dataset was merged with derived feature code lookup table to get featureName (featName).

Dataset was then melted with subject, activity, and feature as id variables.

An average was added per group of subject, activity, and feature


The dataset is then written to tidyDataset.txt file
The independent tidy data set with the average of each variable for each activity and each subject is tidyDatasetAVG.txt.

Data
Copied from readme.txt in original dataset.
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
