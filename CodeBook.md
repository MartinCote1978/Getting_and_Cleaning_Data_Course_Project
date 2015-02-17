# run_analysis.R - CodeBook

## Data Dictionary

ActivityLabel
    Activity names, as described within the study.
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

SubjectID
    Subject (i.e. participant within the study) identifier
        00000..99999 Unique identifier.

tBodyAcc-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-mean()-X        

tBodyAcc-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-mean()-Y        

tBodyAcc-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-mean()-Z        

tBodyAcc-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-std()-X        

tBodyAcc-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-std()-Y        
 
tBodyAcc-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAcc-std()-Z        
 
tGravityAcc-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-mean()-X        
 
tGravityAcc-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-mean()-Y        
 
tGravityAcc-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-mean()-Z        
 
tGravityAcc-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-std()-X        
 
tGravityAcc-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-std()-Y        
 
tGravityAcc-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAcc-std()-Z        
 
tBodyAccJerk-mean()-X 
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-mean()-X        
 
tBodyAccJerk-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-mean()-Y        
 
tBodyAccJerk-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-mean()-Z        
 
tBodyAccJerk-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-std()-X        
 
tBodyAccJerk-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-std()-Y        
 
tBodyAccJerk-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerk-std()-Z        
 
tBodyGyro-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-mean()-X        
 
tBodyGyro-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-mean()-Y        
 
tBodyGyro-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-mean()-Z        
 
tBodyGyro-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-std()-X        
 
tBodyGyro-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-std()-Y        
 
tBodyGyro-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyro-std()-Z        
 
tBodyGyroJerk-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-mean()-X        
 
tBodyGyroJerk-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-mean()-Y        
 
tBodyGyroJerk-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-mean()-Z        
 
tBodyGyroJerk-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-std()-X        
 
tBodyGyroJerk-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-std()-Y        
 
tBodyGyroJerk-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerk-std()-Z        
 
tBodyAccMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccMag-mean()        
 
tBodyAccMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccMag-std()        
 
tGravityAccMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAccMag-mean()        
 
tGravityAccMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tGravityAccMag-std()        
 
tBodyAccJerkMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerkMag-mean()        
 
tBodyAccJerkMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyAccJerkMag-std()        
 
tBodyGyroMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroMag-mean()        
 
tBodyGyroMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroMag-std()        
 
tBodyGyroJerkMag-mean() 
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerkMag-mean()        
 
tBodyGyroJerkMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for tBodyGyroJerkMag-std()        
 
fBodyAcc-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-mean()-X        
 
fBodyAcc-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-mean()-Y        
 
fBodyAcc-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-mean()-Z        
 
fBodyAcc-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-std()-X        
 
fBodyAcc-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-std()-Y        
 
fBodyAcc-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAcc-std()-Z        
 
fBodyAccJerk-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-mean()-X        
 
fBodyAccJerk-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-mean()-Y        
 
fBodyAccJerk-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-mean()-Z        
 
fBodyAccJerk-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-std()-X        
 
fBodyAccJerk-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-std()-Y        
 
fBodyAccJerk-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccJerk-std()-Z        
 
fBodyGyro-mean()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-mean()-X        
 
fBodyGyro-mean()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-mean()-Y        
 
fBodyGyro-mean()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-mean()-Z        
 
fBodyGyro-std()-X
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-std()-X        
 
fBodyGyro-std()-Y
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-std()-Y        
 
fBodyGyro-std()-Z
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyGyro-std()-Z        
 
fBodyAccMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccMag-mean()        
 
fBodyAccMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyAccMag-std()        
 
fBodyBodyAccJerkMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyAccJerkMag-mean()        
 
fBodyBodyAccJerkMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyAccJerkMag-std()        
 
fBodyBodyGyroMag-mean()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyGyroMag-mean()        
 
fBodyBodyGyroMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyGyroMag-std()        
 
fBodyBodyGyroJerkMag-mean() 
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyGyroJerkMag-mean()        
 
fBodyBodyGyroJerkMag-std()
    Average for the specific measure, grouped by observation (subject and activity).
        -9999..9999 Average for fBodyBodyGyroJerkMag-std()        


## References
Refer to UCI HAR Dataset/README.txt and UCI HAR Dataset/features_info.txt for further information on each measure for the raw data.

## Study Design
For more information about how the information was gathered (i.e. observations/measures were collected), refer to: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
