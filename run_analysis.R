# run_analysis.R - Analysis

## Pre-Requisites:
# 1. Working directory requires to be set where the Samsum data set was saved.
# 2. Samsung data set requires to be unzip within the working directory.

## 1. Load all data set, including column names and/or observation descriptions.
# Load features
features <- read.csv(file = "./UCI HAR Dataset/features.txt",
                     header = FALSE,
                     sep = "",
                     colClasses=c("integer", "character")
)
# Gyro & Acc data
X_train <- read.csv(file = "./UCI HAR Dataset/train/X_train.txt", header = FALSE,sep = "")
names(X_train) <- features[, 2]
X_test <- read.csv(file = "./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
names(X_test) <- features[, 2]

# Load activity (human-readable format)
activity_labels <- read.csv(file = "./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
names(activity_labels) <- c("ActivityID", "ActivityLabel")
# Labels, i.e. type of activity
y_train <- read.csv(file = "./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
names(y_train) <- "ActivityID"
y_train <- merge(y_train, activity_labels, "ActivityID")
y_test <- read.csv(file = "./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
names(y_test) <- "ActivityID"
y_test <- merge(y_test, activity_labels, "ActivityID")

# Load who performed the activity for each observation
subject_train <- read.csv(file = "./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
names(subject_train) <- "SubjectID"
subject_test <- read.csv(file = "./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
names(subject_test) <- "SubjectID"

## 2. Clean all data sets, combining into 1 data set to be manipulated.
# Switching to DPLYR & TIDYR packages...
library(dplyr)
library(tidyr)

# Combine data for 'train'
data_train_df <- tbl_df(subject_train) %>%
  bind_cols(y_train) %>%
  bind_cols(X_train)

# Combine data for 'test'
data_test_df <- tbl_df(subject_test) %>%
  bind_cols(y_test) %>%
  bind_cols(X_test)

# Merge both datasets into combined dataset
data_df <- union(data_train_df, data_test_df)

## 3. Perform preferred analysis
# Extract only the 'median' and 'standard deviation' measurements
# Obtain indexes where the column names has "mean()" or "std()"
indexesExtract <- c(1,3, grep("mean\\(\\)|std\\(\\)", names(data_df), ignore.case=TRUE))
data_df <- data_df[ , indexesExtract]

# Perform analysis: 1. group by subject and activity label, 2. establish 'mean' of each column
data_analysis <- data_df %>%
  group_by(ActivityLabel, SubjectID) %>%
  summarise_each(funs(mean))

## 4. Output the results
# Export analysis results to text file
write.table(data_analysis, file="data_analysis.txt", row.names=FALSE)
