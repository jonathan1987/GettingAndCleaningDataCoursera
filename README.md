---
title: "README"
author: "Jonathan Hernandez"
date: "08/19/2014"
output: html_document
---

### How the run_analysis.R script works:


While working on this project, I was using a Ubuntu 14.04 32 bit linux OS 4GB RAM using R version 3.1.1 (Sock it to Me) and using RStudio version 0.98.994

Step 1) First go and download the zip file containing the original data set from the following website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Step 2) Extract the zip file to whatever directory of your choice

Step 3) the run_analysis function takes two parameters; A directory of where the UCI HAR Dataset folder is and the directory of where you want to save the .txt file dataset (For example, I saved it to my Desktop directory and called the .txt file "UCI_HAR_Dataset_Tidy.txt")

Note: If you want to use the tidy dataset in the future if you use for example read.table, make sure that you set header=TRUE and check.names = FALSE because the features/attributes in the dataset have characters like - and () in them and if check.names is set to true (which if not specified in read.table) will render them as dots. For example, the attribute "tBodyAccMag-mean()" is displayed as "tBodyAccMag.mean.." when check.names=TRUE.

The run_analysis.R script I wrote has steps for each step and has comments describing what I did.

### How the scripts and files are all put together

In the UCI HAR Dataset folder there are two sub folders, test and train which contain the test and training data. Each folder has a X,y and subject txt file in it which contains the measurement, activity and subject information respectively. Within the UCI HAR Dataset folder are the 

activity_labels.txt file which contains the 6 different activities a subject peformed while measurements were being taken.

features.txt file which list all the measurements that were measured for a given subject.

features_info.txt which has information of the features used.

README.txt which has information of how the orginal raw data were collected and description of the files and folders in the UCI HAR Dataset folder.

The run_analysis.R file uses the X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt, subject_test.txt and features_txt files to clean and merge the data into one tidy dataset. How the files are combined/merged are described in the run_analysis.R script as well as in the CODEBOOK.md file.
