# code book for assignment 3 getting and cleaning data course

## Experimental Background
It involves human activity recognition using smartphones dataset. 
Signal measurements from two triaxial sensors (accelerometer and gyroscope) were carried out with 30 subjects. The measurements were recorded for 6 types of activities: 1-WALKING, 2- WALKING_UPSTAIRS, 3- WALKING_DOWNSTAiRS, 4- SITTING, 5- STANDING, 6- LAYING. Experiments were video recorded and manually analysed.
The obtained dataset was partitioned into two sets- 70% of the subjects was used to generate the training data, the other 30% was used for test data. These measurements were manipulated to construct 561 features with time (t) and frequency (f) domain variables. The resulting data was normalized to [-1,1] range.
As a part of this assignment these features were manipulated in order to merge the partitioned datasets and to average the features representing raw data mean and standard deviation values 

The dataset for this assignment was downloaded and read from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Raw Data Characterization
The data is zipped to a folder and includes the following files:
/UCI HAR Dataset/
-	Activity labels (as described previously)
-	Features - list of 561 variables with unique nomenclature
-	Features_info.txt
-	README.txt file
/train/
-	/Inertial signals/- raw data for the triaxial measurements
-	subject _train.txt- ID numbers for the subjects that generated the train dataset
-	X_train.txt- normalized raw values that represent the features for 6 activities and 70% of subjects constructing the training dataset
-	Y_train.txt-  activity ID variable for the training dataset
/test/
-	/inertial signals/
-	Subject_test.txt
-	X_test
-	y_test

## List of final variables 
The final and merged data is composed of averages for 66 selected variables that represent mean and standard deviation values of the raw data. In addition to these averaged variables, the first two variables: ‘subject_ID’ and ‘activity_name’  are identifiers for every row in the dataset.
A list of these variables composing the final tidy data are as followed:



| Index |           Variables          |
|-------|------------------------------|
|    1  | subject                      |
|    2  | activity                     |
|    3  | Avrg-tBodyAcc-mean()-X       |
|    4  | Avrg-tBodyAcc-mean()-Y       |
|    5  | Avrg-tBodyAcc-mean()-Z       |
|    6  | Avrg-tBodyAcc-std()-X        |
|    7  | Avrg-tBodyAcc-std()-Y        |
|    8  | Avrg-tBodyAcc-std()-Z        |
|    9  | Avrg-tGravityAcc-mean()-X    |
|   10  | Avrg-tGravityAcc-mean()-Y    |
|   11  | Avrg-tGravityAcc-mean()-Z    |
|   12  | Avrg-tGravityAcc-std()-X     |
|   13  | Avrg-tGravityAcc-std()-Y     |
|   14  | Avrg-tGravityAcc-std()-Z     |
|   15  | Avrg-tBodyAccJerk-mean()-X   |
|   16  | Avrg-tBodyAccJerk-mean()-Y   |
|   17  | Avrg-tBodyAccJerk-mean()-Z   |
|   18  | Avrg-tBodyAccJerk-std()-X    |
|   19  | Avrg-tBodyAccJerk-std()-Y    |
|   20  | Avrg-tBodyAccJerk-std()-Z    |
|   21  | Avrg-tBodyGyro-mean()-X      |
|   22  | Avrg-tBodyGyro-mean()-Y      |
|   23  | Avrg-tBodyGyro-mean()-Z      |
|   24  | Avrg-tBodyGyro-std()-X       |
|   25  | Avrg-tBodyGyro-std()-Y       |
|   26  | Avrg-tBodyGyro-std()-Z       |
|   27  | Avrg-tBodyGyroJerk-mean()-X  |
|   28  | Avrg-tBodyGyroJerk-mean()-Y  |
|   29  | Avrg-tBodyGyroJerk-mean()-Z  |
|   30  | Avrg-tBodyGyroJerk-std()-X   |
|   31  | Avrg-tBodyGyroJerk-std()-Y   |
|   32  | Avrg-tBodyGyroJerk-std()-Z   |
|   33  | Avrg-tBodyAccMag-mean()      |
|   34  | Avrg-tBodyAccMag-std()       |
|   35  | Avrg-tGravityAccMag-mean()   |
|   36  | Avrg-tGravityAccMag-std()    |
|   38  | Avrg-tBodyAccJerkMag-mean()  |
|   38  | Avrg-tBodyAccJerkMag-std()   |
|   39  | Avrg-tBodyGyroMag-mean()     |
|   40  | Avrg-tBodyGyroMag-std()      |
|   41  | Avrg-tBodyGyroJerkMag-mean() |
|   42  | Avrg-tBodyGyroJerkMag-std()  |
|   43  | Avrg-fBodyAcc-mean()-X       |
|   44  | Avrg-fBodyAcc-mean()-Y       |
|   45  | Avrg-fBodyAcc-mean()-Z       |
|   46  | Avrg-fBodyAcc-std()-X        |
|   47  | Avrg-fBodyAcc-std()-Y        |
|   48  | Avrg-fBodyAcc-std()-Z        |
|   49  | Avrg-fBodyAccJerk-mean()-X   |
|   50  | Avrg-fBodyAccJerk-mean()-Y   |
|   51  | Avrg-fBodyAccJerk-mean()-Z   |
|   52  | Avrg-fBodyAccJerk-std()-X    |
|   53  | Avrg-fBodyAccJerk-std()-Y    |
|   54  | Avrg-fBodyAccJerk-std()-Z    |
|   55  | Avrg-fBodyGyro-mean()-X      |
|   56  | Avrg-fBodyGyro-mean()-Y      |
|   57  | Avrg-fBodyGyro-mean()-Z      |
|   58  | Avrg-fBodyGyro-std()-X       |
|   59  | Avrg-fBodyGyro-std()-Y       |
|   60  | Avrg-fBodyGyro-std()-Z       |
|   61  | Avrg-fBodyAccMag-mean()      |
|   62  | Avrg-fBodyAccMag-std()       |
|   63  | Avrg-fBodyAccJerkMag-mean()  |
|   64  | Avrg-fBodyAccJerkMag-std()   |
|   65  | Avrg-fBodyGyroMag-mean()     |
|   66  | Avrg-fBodyGyroMag-std()      |
|   67  | Avrg-fBodyGyroJerkMag-mean() |
|   68  | Avrg-fBodyGyroJerkMag-std()  |

### Names interpretation:
-	Acc- acceleration signal
-	Gyr- gyroscope signal
-	t- time domain
-	f- frequency domain (time transformed by FFT)
-	Body- body acceleration/gyroscope signal
-	Gravity- gravity acceleration/gyroscope signal
-	Mag-  magnitude calculation for the 3D signals
-	Jerk- Jerk signals

## Study Design

The script “run_Analysis.R” was established in order to get the final tidy data. The process by which this script was undertaken was as follows:

The script uses the packages ‘dplyr’ and ‘data.table’




### Merge the training and the test sets to create one data set 

Download and unzip files to the working repository. Store data files as data table.
Join the following files: x_test, x_train, subject_test, subject_train, y_test and y_train and construct one complete dataset that binds train and test data with the subjects that produced it. 

### Extract only the measurements on the mean and standard deviation for each measurement

Find the target features by inspecting the variables name, extract only features that represent mean or standard deviation values as well as the subject_ID and activity_ID identifiers  and store them in a separate data table.

### Use descriptive activity names to name the activities in the data set
Replace the ID activity identifier with name identifier by joining the ‘activity_labels’ table that contains the descriptive activity names with the merged table created in the previous step. 
### Appropriately label the data set with descriptive variable names.
Extract a vector with the merged table label names, remove a parenthesis symbol ‘()’ from the labels in order to create more descriptive and clear labels, fix a typo that exists in some labels- “BodyBody” was renamed as “Body” and set this vector as a new label vector for the merged data table.
### create a second, independent tidy data set with the average of each variable for each activity and each subject.
Group the resulting data set by subject_ID and activity_name, summarize average values for all rows by subject and activity, name averaged variables by adding the phrase ‘average-’ to their name and set the new names as labels of a new summarized data table- ‘final_tidy_data’.
Finally, write the data into a text file and store it in the working directory
