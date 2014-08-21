run_analysis <- function(pathdirtoproject,dirToOutputFile)
{
  setwd(pathdirtoproject)
  
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
  
  ## Step 2: Extract only the measurements on the mean and standard deviation for each measurement
  feature_vector <- read.table("features.txt")
  feature_vector <- as.vector(feature_vector$V2) # just one column as a vector not a list
  # use grep to get the indicies that include the mean and std in the variables
  mean_attr <- grep("mean()",feature_vector)
  std_attr <- grep("std()", feature_vector)
  mean_std_attr <- sort(c(mean_attr,std_attr)) # combine the sorted indicies so we can select the desired features
  # make a new dataset which has the columns for the mean and standard deviation
  new_UCI_HAR_dataset_mean_std <- new_UCI_HAR_dataset[,c(mean_std_attr,562:563)]
  
  ## Step 3: Use descriptive activity names to name the activites in the dataset
  # last column displays the activity of a particular subject labeled 1-6
  activity_labels <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
  colnames(new_UCI_HAR_dataset_mean_std)[80:81] <- c("subject","activity") # name the last two columns ahead of time   
  # use for loop and gsub to replace the numbers in the last column of the dataset to their appropriate activity label
  for (n in 1:6){
    new_UCI_HAR_dataset_mean_std$activity <- gsub(n,activity_labels[n],new_UCI_HAR_dataset_mean_std$activity)
  }
  
  ## Step 4: Appropriately labels the dataset with descriptive variable names
  colnames(new_UCI_HAR_dataset_mean_std)[1:79] <- feature_vector[mean_std_attr[1:79]]
  
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
}