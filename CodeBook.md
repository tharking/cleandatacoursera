Codebook
==============================

#Study Used: Human Activity Recognition Using Smartphones Data Set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

#Data Source
Data collected from the accelerometers from the Samsung Galaxy S smartphone source link 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Raw input data file link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Input Data
The downloaded dataset includes the following files which are used for generating tidydata.txt-: 
- 'README.txt' 
- 'features_info.txt': Shows information about the variables used on the feature vector. 
- 'features.txt': List of all features. 
- 'activity_labels.txt': Links the class labels with their activity name. 
- 'train/X_train.txt': Training set. 
- 'train/y_train.txt': Training activity. 
- 'train/subject_train.txt': Training subjects. 
- 'test/X_test.txt': Test set. 
- 'test/y_test.txt': Test activity.
- 'test/y_test.txt': Test subjects.- 

#Output Data
The resulting tidydata.txt dataset includes
- "Subject" : Identifies the subject who performed the activity. Its range is from 1 to 30. 
- "Activity" : One of 6, as defined in input data file activitiy_labels.txt. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Mean of all variables with 'mean' & 'std' in their name. All three X, Y, Z directions are included. Both time (t) & FFT (f) variables are included. Below variables where choosen as they included either mean or std in their original names. Features are normalized and bounded within [-1,1]. 
"tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX" "tBodyAccstdY" "tBodyAccstdZ" "tGravityAccmeanX" "tGravityAccmeanY" "tGravityAccmeanZ" "tGravityAccstdX" "tGravityAccstdY" "tGravityAccstdZ" "tBodyAccJerkmeanX" "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyAccJerkstdX" "tBodyAccJerkstdY" "tBodyAccJerkstdZ" "tBodyGyromeanX" "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyrostdX" "tBodyGyrostdY" "tBodyGyrostdZ" "tBodyGyroJerkmeanX" "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyGyroJerkstdX" "tBodyGyroJerkstdY" "tBodyGyroJerkstdZ" "tBodyAccMagmean" "tBodyAccMagstd" "tGravityAccMagmean" "tGravityAccMagstd" "tBodyAccJerkMagmean" "tBodyAccJerkMagstd" "tBodyGyroMagmean" "tBodyGyroMagstd" "tBodyGyroJerkMagmean" "tBodyGyroJerkMagstd" "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ" "fBodyAccstdX" "fBodyAccstdY" "fBodyAccstdZ" "fBodyAccmeanFreqX" "fBodyAccmeanFreqY" "fBodyAccmeanFreqZ" "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ" "fBodyAccJerkstdX" "fBodyAccJerkstdY" "fBodyAccJerkstdZ" "fBodyAccJerkmeanFreqX" "fBodyAccJerkmeanFreqY" "fBodyAccJerkmeanFreqZ" "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ" "fBodyGyrostdX" "fBodyGyrostdY" "fBodyGyrostdZ" "fBodyGyromeanFreqX" "fBodyGyromeanFreqY" "fBodyGyromeanFreqZ" "fBodyAccMagmean" "fBodyAccMagstd" "fBodyAccMagmeanFreq" "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagstd" "fBodyBodyAccJerkMagmeanFreq" "fBodyBodyGyroMagmean" "fBodyBodyGyroMagstd" "fBodyBodyGyroMagmeanFreq" "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd" "fBodyBodyGyroJerkMagmeanFreq"

#Transformations
The script, run_analysis.R, does the following tings:
- Load the various files which make-up the UCI dataset
- Merges the three test and three train files into a single data table, setting textual columns heading where possible
- Creates a smaller second dataset, containing only mean and std variables
- Computes the means of this secondary dataset, group by subject/activity.
- Saves this last dataset to tidydata.txt

#Usage
You can load tidydata.txt by following command: 
- tidydata <- read.table("tidydata.txt", header=TRUE, sep=" ", stringsAsFactors=FALSE)
  


