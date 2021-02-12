Assignment Description
======================

### Getting and Cleaning Data Course Project - Karl

    The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to
    prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no
    questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to
    a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the
    data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also
    include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are
    connected.

    One of the most exciting areas in all of data science right now is wearable computing - see for example this article.
    Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
    The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S
    smartphone. A full description is available at the site where the data was obtained:

        http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

    Here are the data for the project:

        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

    You should create one R script called run_analysis.R that does the following. 

        -Merges the training and the test sets to create one data set.
        -Extracts only the measurements on the mean and standard deviation for each measurement. 
        -Uses descriptive activity names to name the activities in the data set
        -Appropriately labels the data set with descriptive variable names. 
        -From the data set in step 4, creates a second, independent tidy data set with the average of each variable for
        each activity and each subject.

#### Read the Training Data Set (X\_train.txt). activity (y\_train), and subjects (subject\_train.txt) and create the complete training dataset

    library(readr)

              setwd("~/Coursera - Data Science/Getting and Cleaning Data/Course Project/UCI HAR Dataset")
              xtrain <- read_table2("./train/X_train.txt", col_names = FALSE)  #data
              ytrain <- read_table2("./train/y_train.txt", col_names = FALSE)  #activity
              subjectTrain <- read_table2("./train/subject_train.txt", col_names = FALSE)  #subjects
              trainingSet <-cbind(ytrain, subjectTrain, xtrain)

#### Read the Test Data Set (X\_test.txt). activity (y\_test), and subjects (subject\_test.txt) and create the complete test dataset

              xtest <- read_table2("./test/X_test.txt", col_names = FALSE)   #data
              ytest <- read_table2("./test/y_test.txt", col_names = FALSE)   #activity
              subjectTest <- read_table2("./test/subject_test.txt", col_names = FALSE)  #subjects
              testSet <- cbind(ytest, subjectTest, xtest)

#### Combine the training and test dataframes

              fullDataSet <- rbind(trainingSet, testSet)
              nrow(fullDataSet)      

#### Read the feature info a.k.a column headings into a dataframe

             featureLabels <- read_table2("features.txt", col_names = FALSE)

##### Looking for duplicate names and there are some

            duplicates <- featureLabels[duplicated(featureLabels$X2),]
            dim(featureLabels[duplicated(featureLabels$X2),])[1]
            #unique(featureLabels$X2)

#### Read the feature info a.k.a column headings

            columnNames <- featureLabels$X2        #Get the list of column names
            columnNames <- c("activity", "subjectId",  columnNames) #append the activity, subjectID to the column names

##### Clean up Column names by removing special characters this makes the columns easier to type (tidier)

              columnNames <-  gsub("_", "", columnNames)
              columnNames <-  gsub("-", "", columnNames)
              columnNames <-  gsub("\\(", "", columnNames)
              columnNames <-  gsub(")", "", columnNames)
              columnNames <-  gsub(",", "", columnNames)
              columnNames <-  tolower(columnNames)

#### Add the column names to fullDataSet

              colnames(fullDataSet) <- columnNames

###### The dataset had duplicate column names so I appended an \_\# to the end of the dulicate column name to make them unique

             names(fullDataSet) <- make.unique(names(fullDataSet), sep = "_")

#### Read the Activity Descriptions and add column names to the dataframe

              activityLabels <- read_table2("activity_labels.txt", col_names = FALSE)
              activityCols <- c("id", "desc")
              colnames(activityLabels) <- activityCols

#### Add the activity labels to the fullDataSet

              fullDataSet <-merge(fullDataSet, activityLabels, by.x = "activity", by.y = "id")

#### Select the columns with mean and std deviation in them

              library(dplyr)
              meanDataset <- select(fullDataSet, subjectid, desc, contains(c("mean", "std")))

#### Calculate the ave of the mean and the std to create the second data set.

              meanDataset <- aggregate(.~ subjectid + desc, data = meanDataset, mean)
              nrow(meanDataset) #There should be 30 subjects by 6 activities or 180 rows.  
              write.table(meanDataset, "tidydataset.txt", row.names = FALSE)
#### test reading the tidydataset
          tidydataset <- read.csv("~/Coursera - Data Science/Getting and Cleaning Data/Course Project/UCI HAR Dataset/tidydataset.txt", sep="")
          nrow(tidydataset)
          ncol(tidydataset)
          class(tidydataset)      
