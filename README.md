# run_analysis.R - README

## Introduction
This repo contains the course assignment for "Getting and Cleaning Data" on Coursera, part of the Data Science Specialization.

The following file describes the transformation required to complete the analysis required on the Samsung data set (refer to the section "Assignment Objectives & Tasks" for a full description).

Refer to CodeBook.md for the variable/data description.


## References:
For a description of the raw data, refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
For a description of the processed data, refer to the CodeBook.md included in this package.


## Pre-Requisites:
1. Working directory requires to be set where the Samsung data set was downloaded/saved.
2. Samsung data set requires to be unzip within the working directory.

## Cleaning and Analysis Steps
### 1. Load all data set, including column names and/or observation descriptions.
Using regular base R data.frame, load the following data set:
1.1. Features: variable names (i.e. column names) for each measure.

1.2. Gyro & Acc: actual measures (i.e. observations) for each measure, for each subject (i.e. participant) and activity.
    1.2.1 As a sub-step, assign the proper features (i.e. variable/column names) to each variable

1.3. Activity: Read in actual activity names/labels.

1.4. Activity description: actual identifier of the activity that was performed in this related set of measures.
    1.4.1 As a sub-step, assign the proper variable names (i.e. Activity ID)

1.5. Activity subject: subject (i.e. participant) identifier who perform this activity/observation and related actual measures.
    1.5.1 As a sub-step, assign the proper variable names (i.e. Subject ID)

### 2. Clean all data sets, combining into 1 data set to be manipulated.
2.1. Until now, all manipulation was performed using basic R data.frame functions, loading the DPLYR and TIDYR packages to complete the last data manipulation and analysis.

2.2. For the 'train' data set, combine each measured observations to its activity description and subject (in other words, which activity was performed in relation to the measures and who, as a subject, performed this activity).

2.3. For the 'test' data set, combine each measured observations to its activity description and subject (in other words, which activity was performed in relation to the measures and who, as a subject, performed this activity).

2.4. Merge both datasets, 'train' and 'test', under one single DPLYR table for further analysis (using the 'union' function).

### 3. Perform preferred analysis
In order to perform the analysis on a subset of columns:
3.1. Identify the columns to be included via their name (or what their names contain - in this case, only the 'median' or 'standard deviation' measurements).
Note: the strings "mean()" and "std()" (including the parenthesis) were used to identify columns referring to either mean or standard deviation.

3.2. Obtain indexes for those columns and those other desired columns (i.e. Subject Identifier and Activity Labels).

3.3. Perform analysis by:
    3.3.1. grouping by subject and activity label.
    3.3.2. Summarizing the values by establishing 'mean' (or average) of each column.

3.4. Convert activity identifier to activity labels using 'factors'

### 4. Output the results

4.1 Export analysis results to text file.


## Assignment Objectives & Tasks
### Refer to https://class.coursera.org/getdata-011
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!
