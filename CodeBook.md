---
title: "Codebook"
author: "Jonathan Hernandez"
date: "08/18/2014"
output: html_document
---

This is a codebook for the Getting and Cleaning Data Coursera course project for August 2014.

The project involves extracting the data set from the following link 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

regarding data collected from Samsung Galaxy S smartphone. You can look at the README.txt, features_info.txt to know more about how the original data was collected. 

The following 5 steps are to be performed on this data set:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### The Variables and their Descriptions/Codebook of the tidy dataset:
    
  The information of the variables can be found in the UCI HAR Dataset folder with the README, activity labels, features and features info text files. 
  
  However for this project only the features/attributes that had "mean" or "std" (standard deviation) in them as well as the subject and activity were selected for this tidy dataset resulting in a total of 81 fields. 
The following are the variables and their units; other than the subject and activity features, the rest of the features are numerical and continuous.

Note the features with XYZ at the end is to indicate three variables. For example tBodyAcc-mean()-XYZ is tBodyAcc-mean()-X, tBodyAcc-mean()-Y and tBodyAcc-mean()-Z
  
  tBodyAcc-mean()-XYZ: mean of the time body acceleration measured from the accelerometer in the x,y,z direction
  
  tBodyAcc-std()-XYZ: standard deviation of the time body acceleration measured from the accelerometer in the x,y,z direction
  
  tGravityAcc-mean()-XYZ: mean of the time gravity acceleration measured from the accelerometer in the x,y,z direction
  
  tGravityAcc-std()-XYZ: standard deviation of the time gravity acceleration measured from the accelerometer in the x,y,z direction
  
  tBodyAccJerk-mean()-XYZ: mean of the time body acceleration jerk signal measured from the accelerometer in the x,y,z direction
  
  tBodyAccJerk-std()-XYZ: standard deviation of the time body acceleration jerk signal measured from the accelerometer in the x,y,z direction
  
  tBodyGyro-mean()-XYZ: mean of the time body gyroscope signal measured from the gyroscope in the x,y,z direction
  
  tBodyGyro-std()-XYZ: standard deviation of the time body gyroscope signal measured from the gyroscope in the x,y,z direction
  
  tBodyGyroJerk-mean()-XYZ: mean of the time body gyroscope jerk signal measured from the gyroscope in the x,y,z direction 
  
  tBodyGyroJerk-std()-XYZ: standard deviation of the time body gyroscope jerk signal measured from the gyroscope in the x,y,z direction
  
  tBodyAccMag-mean(): magnitude of the mean of the time body acceleration measured by the accelerometer in the x,y,z direction
  
  tBodyAccMag-std(): magnitude of the standard deviation of the time body acceleration measured by the accelerometer in the x,y,z direction
  
  tGravityAccMag-mean(): magnitude of the mean of the time gravity acceleration measured by the accelerometer in the x,y,z direction
  
  tGravityAccMag-std(): magnitude of the standard deviation of the time gravity acceleration measured by the accelerometer in the x,y,z direction
  
  tBodyAccJerkMag-mean(): magnitude of the mean of the time body acceleration jerk signal measured by the accelerometer in the x,y,z direction
  
  tBodyAccJerkMag-std(): magnitude of the standard deviation of the time body acceleration jerk signal measured by the accelerometer in the x,y,z direction
  
  tBodyGyroMag-mean(): magnitude of the mean of the time body gyroscope signal measured by the gyroscope in the x,y,z direction
  
  tBodyGyroMag-std(): magnitude of the standard deviation of the time body gyroscope signal measured by the gyroscope in the x,y,z direction
  
  tBodyGyroJerkMag-mean(): magnitude of the mean of the time body gyroscope jerk signal measured by the gyroscope in the x,y,z direction
  
  tBodyGyroJerkMag-std(): magnitude of the standard deviation of the time body gyroscope jerk signal measured by the gyroscope in the x,y,z direction
  
  fBodyAcc-mean()-XYZ: mean of the frequency body acceleration measured by the accelerometer in the x,y,z direction
  
  fBodyAcc-std()-XYZ: standard deviation of the frequency body acceleration measured by the accelerometer in the x,y,z direction
  
  fBodyAcc-meanFreq()-XYZ: mean frequency of the frequency body acceleration measured by the accelerometer in the x,y,z direction
  
  fBodyAccJerk-mean()-XYZ: mean frequency body acceleration jerk signal measured by the accelerometer in the x,y,z direction
  
  fBodyAccJerk-std()-XYZ: standard deviation frequency body acceleration jerk signal measured by the accelerometer in the x,y,z direction
  
  fBodyAccJerk-meanFreq()-XYZ: mean frequency of the frequency body acceleration jerk signal measured by the accelerometer in the x,y,z direction
  
  fBodyGyro-mean()-XYZ: mean of the frequency body acceleration measured by the gyroscope in the x,y,z direction
  
  fBodyGyro-std()-XYZ: standard deviation of the frequency body acceleration measured by the gyroscope in the x,y,z direction
  
  fBodyGyro-meanFreq()-XYZ: mean frequency of the frequency body acceleration measured by the gyroscope in the x,y,z direction
  
  fBodyAccMag-mean(): magnitude of the mean of the frequency body acceleration measured by the accelerometer
  
  fBodyAccMag-std(): magnitude of the standard deviation of the frequency body acceleration measured by the accelerometer
  
  fBodyAccMag-meanFreq(): magnitude of the mean frequency of the frequency body acceleration measured by the accelerometer
  
  fBodyBodyAccJerkMag-mean(): magnitude of the mean of the frequency body acceleration jerk signal measured by the accelerometer
  
  fBodyBodyAccJerkMag-std(): magnitude of the standard deviation of the frequency body acceleration jerk signal measured by the accelerometer
  
  fBodyBodyAccJerkMag-meanFreq(): magnitude of the mean frequency of the frequency body acceleration jerk signal measured by the accelerometer
  
  fBodyBodyGyroMag-mean(): magnitude of the mean frequency body acceleration measured by the gyroscope
  
  fBodyBodyGyroMag-std(): magnitude of the mean frequency body acceleration measured by the gyroscope
  
  fBodyBodyGyroMag-meanFreq(): magnitude of the standard deviation frequency of the frequency body acceleration measured by the gyroscope
  
  fBodyBodyGyroJerkMag-mean(): magnitude of the mean of the frequency body acceleration jerk signal measured by the gyroscope
  
  fBodyBodyGyroJerkMag-std(): magnitude of the standard deviation of the frequency body acceleration jerk signal measured by the gyroscope
  
  fBodyBodyGyroJerkMag-meanFreq(): magnitude of the mean frequency of the frequency body acceleration jerk signal measured by the gyroscope.
  
  subject: Numerical discrete attribute (1-30) that indicates the subject's group number
  
  activity: Categorical attribute that describes what activity was the subject doing when the measurements were taken
  the activities are labeled "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
  
### The Data Description/Study Design  
  
  In the orginal dataset, each subject (1-30) performed the six activites several times and their mean/std were recorded. Each subject performed each of the six activities several times and then the data was taken again repeating the same six activities.
The tidy data set provided takes the average of each measurement for each subject for each activity. It is structured as follows:

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  1st_subject  1st_activity

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  1st_subject  2nd_activity

....

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  1st_subject  6th_activity

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  2nd_subject  1st_activity

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  2nd_subject  2nd_activity

....

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  2nd_subject  6th_activity

....

....

....

mean_of_1st_measurement  mean_of_2nd_measurement  ...   mean_of_nth_measurement  6th_subject  6th_activity


### Transformations/How the Data Was Put Together

The tidy dataset was put together by first combining the X,y and subject txt files for the test data as well as the X,y, and subject data from the training data.

So in run_analysis() the first step is to take the X_test, y_test and subject_test files and combine them into one data frame and do the same for X_train, y_train and subject_train. 

Next the two data frames are combined row-wise to form a new dataset.

The lines of R code below show this:

```R
## Step 1: Merges the training and test sets to create one data set
  # Merge the X_test, y_test and subject_test files and do the same for the training data
  # Load the test data
  X_test <- read.table("./test/X_test.txt")
  y_test <- read.table("./test/y_test.txt")
  subject_test <- read.table("./test/subject_test.txt")
  # Load the training data
  X_train <- read.table("./train/X_train.txt")
  y_train <- read.table("./train/y_train.txt")
  subject_train <- read.table("./train/subject_train.txt")
  # Combine the training and test datasets
  new_test <- cbind(X_test,subject_test,y_test)
  new_train <- cbind(X_train,subject_train,y_train)
  # now rbind new_train with new_test to form a new dataset
  new_UCI_HAR_dataset <- rbind(new_train,new_test)
```

Next is to extract only the columns that calculate the mean and standard deviation as well as the subject and activity fields:

```R
## Step 2: Extract only the measurements on the mean and standard deviation for each measurement
  feature_vector <- read.table("features.txt")
  feature_vector <- as.vector(feature_vector$V2) # just one column as a vector not a list
  # use grep to get the indicies that include the mean and std in the variables
  mean_attr <- grep("mean()",feature_vector)
  std_attr <- grep("std()", feature_vector)
  mean_std_attr <- sort(c(mean_attr,std_attr)) # combine the sorted indicies so we can select the desired features
  # make a new dataset which has the columns for the mean and standard deviation
  new_UCI_HAR_dataset_mean_std <- new_UCI_HAR_dataset[,c(mean_std_attr,562:563)]
```

With the columns extracted, now is time to properly label the activities instead of numbers 1-6

```R
## Step 3: Use descriptive activity names to name the activites in the dataset
  # last column displays the activity of a particular subject labeled 1-6
  activity_labels <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
  colnames(new_UCI_HAR_dataset_mean_std)[80:81] <- c("subject","activity") # name the last two columns ahead of time   
  # use for loop and gsub to replace the numbers in the last column of the dataset to their appropriate activity label
  for (n in 1:6){
    new_UCI_HAR_dataset_mean_std$activity <- gsub(n,activity_labels[n],new_UCI_HAR_dataset_mean_std$activity)
  }
```

Give the dataset proper features/labels

```R
## Step 4: Appropriately labels the dataset with descriptive variable names
  colnames(new_UCI_HAR_dataset_mean_std)[1:79] <- feature_vector[mean_std_attr[1:79]]
```

Finally compute the average of each measurement for each subject and for each activity and save the result into a new tidy data set text file

```R
  ## Step 5: 
  UCI_HAR_dataset_tidy <- data.frame(t(rep(NA,81))) # Empty data frame for the tidy dataset
  colnames(UCI_HAR_dataset_tidy) <- colnames(new_UCI_HAR_dataset_mean_std) # give it column names
  UCI_HAR_dataset_tidy <- UCI_HAR_dataset_tidy[-1,] # Remove NA values
  # start adding the data
  i=1
  for (n in 1:30){
    for (a in activity_labels){
      query <- subset(new_UCI_HAR_dataset_mean_std,subject == n & activity == a)
      # compute the mean of each measurement and then add it to the dataset
      UCI_HAR_dataset_tidy[i,] <- c(apply(query[1:79],2,mean),n,a)
      i <- i+1
    }
  }
  # Make the mesurement columns be numeric so that way they won't appear as strings when you open it with a text editor
  UCI_HAR_dataset_tidy[1:79] <- apply(UCI_HAR_dataset_tidy[1:79],2,as.numeric)
  # finally take UCI_HAR_dataset_tidy dataset and output it to a txt file;
  write.table(UCI_HAR_dataset_tidy,file=dirToOutputFile,sep=" ",row.names=FALSE)
```

