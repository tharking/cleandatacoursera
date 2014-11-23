##run_Analysis.R

##The working Directory has been set to the root of extracted 
##data folder with test & train folders at first level

## Read column names & remove punctuation symbols, we will use 
## these colnames as table column names for test & train data
features_data <- read.table("./features.txt")
cleancolnames <- gsub("[[:punct:]]","", features_data$V2, ignore.case = FALSE, perl = FALSE)

##Import train data from Root folder into R variables using read.table 
##& set column names. Also, fetch activitiy & subject for each measurement
## and use cbind to combines all of it together

train.data <- read.table("./train/X_train.txt")
colnames(train.data) <- cleancolnames
train.activities <- read.table("./train/y_train.txt")
colnames(train.activities) <- "Activity"
train.subjects <- read.table("./train/subject_train.txt")
colnames(train.subjects) <- "Subject"
trains <- cbind(train.subjects, train.activities, train.data)

##Import test data from Root folder into R variables using read.table 
##& set column names. Also, fetch activitiy & subject for each measurement
## and use cbind to combines all of it together

test.data <- read.table("./test/X_test.txt")
colnames(test.data) <- cleancolnames
test.activities <- read.table("./test/y_test.txt")
colnames(test.activities) <- "Activity"
test.subjects <- read.table("./test/subject_test.txt")
colnames(test.subjects) <- "Subject"
tests <- cbind(test.subjects, test.activities, test.data)


##Combine test and train data with subjects into single dataset   

alldata <- rbind(trains,tests)


## Use grep to find columns names with mean, std in their name and subset 
## alldata for only those columns & load it into a new data frame 'meanstd'

meanstd <- alldata[, grep("mean|std|Subject|Activity", names(alldata))]


## read activitity names & mapping from root folder
## Replace activity codes with these descriptive activity names 
## to ensure dataset reads as Subject n performed activity x
## and got these observations

labels <- read.table("./activity_labels.txt", stringsAsFactors=FALSE)
meanstd$Activity <- labels[meanstd$Activity, "V2"]

## This Function will load the library reshape2 and assumes that its already 
## installed. We will use it for melt & dcast
library(reshape2)

##Creates a second, independent tidy data set with the average of each 
##variable for each activity and each subject.

melted = melt(meanstd, id.var = c("Subject", "Activity"))
means = dcast(melted , Subject + Activity ~ variable,mean)


## Write tidy data to space separated text file

write.table(means, file="tidydata.txt", sep = " ", row.name=FALSE)
