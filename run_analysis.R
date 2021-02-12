library(readr)
#Read the files
      #Read the Training Data Set (X_train.txt). activity (y_train), and subjects (subject_train.txt)
          setwd("~/Coursera - Data Science/Getting and Cleaning Data/Course Project/UCI HAR Dataset")
          xtrain <- read_table2("./train/X_train.txt", col_names = FALSE)  #data  7352 Rows
          ytrain <- read_table2("./train/y_train.txt", col_names = FALSE)  #activity 7352 Rows
          subjectTrain <- read_table2("./train/subject_train.txt", col_names = FALSE)  #subjects 7352 Rows
          
      #Create the complete training dataset
          trainingSet <-cbind(ytrain, subjectTrain, xtrain)
          str(trainingSet)   #7352 rows

      #Read the Test Data Set (X_test.txt). activity (y_test), and subjects (subject_test.txt)
          xtest <- read_table2("./test/X_test.txt", col_names = FALSE)   #data  2947 rows
          ytest <- read_table2("./test/y_test.txt", col_names = FALSE)   #activity 2947 rows
          subjectTest <- read_table2("./test/subject_test.txt", col_names = FALSE)  #subjects 2947 rows
      
      #Create the complete test dataset
          testSet <- cbind(ytest, subjectTest, xtest)
          str(testSet)    #2947 rows
          
          
      #Combine the training and test datasets
          fullDataSet <- rbind(trainingSet, testSet)
          nrow(fullDataSet)      
          str(fullDataSet)  #10299 rows = 7352 (Training rows) + 2947 (Test Rows)

      #Read the feature info.  These will become the column headings  
          featureLabels <- read_table2("features.txt", col_names = FALSE)
          
            ##Looking for duplicate names and there are some
              duplicates <- featureLabels[duplicated(featureLabels$X2),]
              View(duplicates)
              dim(featureLabels[duplicated(featureLabels$X2),])[1]  #84 duplicate rows
              unique(featureLabels$X2)
          
          columnNames <- featureLabels$X2        #Get the list of column names  563 columns
          columnNames <- c("activity", "subjectId",  columnNames) #append the activity, subjectID  to the front of the column names
          columnNames  #check the column names
          
      #Clean up Column names by removing special characters
          columnNames <-  gsub("_", "", columnNames)
          columnNames <-  gsub("-", "", columnNames)
          columnNames <-  gsub("\\(", "", columnNames)
          columnNames <-  gsub(")", "", columnNames)
          columnNames <-  gsub(",", "", columnNames)
          columnNames <-  tolower(columnNames)
          
      #Add the column names to fullDataSet
          colnames(fullDataSet) <- columnNames
          #The dataset had duplicate column names so I appended an _# to the end of the dulicate column name to make them unique
          names(fullDataSet) <- make.unique(names(fullDataSet), sep = "_")
          unique(colnames(fullDataSet))
          
      #Read the Activity Descriptions and add column names to the dataframe
          activityLabels <- read_table2("activity_labels.txt", col_names = FALSE)
          activityCols <- c("id", "desc")
          colnames(activityLabels) <- activityCols
          
      #Add the activity labels to the fullDataSet
          fullDataSet <-merge(fullDataSet, activityLabels, by.x = "activity", by.y = "id")
          str(fullDataSet)
          colnames(fullDataSet)
     
      #Select the columns with mean and std deviation in them 
          library(dplyr)
          meanDataset <- select(fullDataSet, subjectid, desc, contains(c("mean", "std")))
          str(meanDataset)
          
      #Calculate the ave of the mean and the std to create the second data set.
          meanDataset <- aggregate(.~ subjectid + desc, data = meanDataset, mean)
          nrow(meanDataset) #There should be 30 subjects by 6 activities or 180 rows.  
          write.table(meanDataset, "tidydataset.txt", row.names = FALSE)
          tidyDataSetColumns<- colnames(meanDataset)  

      #test reading the tidydataset
          tidydataset <- read.csv("~/Coursera - Data Science/Getting and Cleaning Data/Course Project/UCI HAR Dataset/tidydataset.txt", sep="")
          nrow(tidydataset)
          ncol(tidydataset)
          class(tidydataset)          
          
          