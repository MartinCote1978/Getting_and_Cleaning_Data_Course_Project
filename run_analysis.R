### run_analysis.R

# Load features
features <- read.csv(file = "./UCI HAR Dataset/features.txt", header = FALSE, sep = "", colClasses=c("integer", "character"))
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

# Combine data for 'train'
data_train <- cbind(subject_train, y_train, X_train)

# Combine data for 'test'
data_test <- cbind(subject_test, y_test, X_test)

# Merge all data set
data <- rbind(data_train, data_test)
# summary(data)

# Extract only the 'median' and 'standard deviation' measurements
# Obtain indexes where the column names has "mean()" or "std()"
indexesExtract <- c(1,2,3, grep("mean\\(\\)|std\\(\\)", names(data), ignore.case=TRUE))
# Extract specific data
data_subset <- data[, indexesExtract]

## Data analysis:
library(dplyr)
data_subset_df <- tbl_df(data_subset)

data_analysis <- data_subset_df %>%
  group_by(SubjectID, ActivityLabel) %>%
  summarise_each(funs(mean))
