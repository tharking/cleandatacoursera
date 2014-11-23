Getting and Cleaning Data Course Project
=================


The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This repo contains one script, run_Analysis.R, which will:

- Read the necessary files (assuming files are located in a folder on current directory)
- Appropriately label the columns of data sets
- Add columns for Subject and Activity to both train and test sets
- Combine train and test datasets into one complete data set
- Replace numeric values in Activity column with appropriate descriptive activity names
- Create a second, independent tidy data set with average of each variable for each activity and each subject
- Write the tidydata to a space separated text file

The run_Analysis.R script also contains code comments which explains the assumptions, mechanics & design choices for the purpose of this project

This repo also contains a CodeBook.md which describe input used, final output & transformations.
