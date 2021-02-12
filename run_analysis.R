library(readr)
#Read the files
      #Read the Training Data Set and row labels
          setwd("~/Coursera - Data Science/Getting and Cleaning Data/Course Project/UCI HAR Dataset")
          xtrain <- read_table2("./train/X_train.txt", col_names = FALSE)  #data
          ytrain <- read_table2("./train/y_train.txt", col_names = FALSE)  #row labels / subjects
          subjectTrain <- read_table2("./train/subject_train.txt", col_names = FALSE)  #row labels / subject/Train
          
          trainingSet <-cbind(ytrain, subjectTrain, xtrain)
          str(trainingSet)
          # nrow(trainingSet)
          # ncol(trainingSet)
          # class(xtrain)
          # str(xtrain)
          # str(ytrain)
          # nrow(xtrain)
          # nrow(ytrain)
          # ncol(xtrain)
          # ncol(ytrain)

      #Read the Test Dataset and row labels
          xtest <- read_table2("./test/X_test.txt", col_names = FALSE)   #data
          ytest <- read_table2("./test/y_test.txt", col_names = FALSE)   #row labels / subjects
          subjectTest <- read_table2("./test/subject_test.txt", col_names = FALSE)  #row labels / subject/Train
          testSet <- cbind(ytest, subjectTest, xtest)
          str(testSet)
          # head(testSet)
          # class(xtest)
          # str(xtest)
          # str(ytest)
          # str(subjectTest)  
          # nrow(xtest)
          # nrow(ytest)
          # ncol(xtest)
          # ncol(ytest)
          
          
      #Combine the training and test datasets
          fullDataSet <- rbind(trainingSet, testSet)
          nrow(fullDataSet)      
          str(fullDataSet)

      #Add the Activity name
          activityLabels <- read_table2("activity_labels.txt", col_names = FALSE)
      
      
      #Read the Feature info a.k.a column headings
          featureLabels <- read_table2("features.txt", col_names = FALSE)
          colnames <- featureLabels$X2        #Get the list of column names
          colnames <- c("activity", "subjectId",  colnames) #append the subject # to the front of the column names
        
        #Clean up Column names
          colnames <-  gsub("_", "", colnames)
          colnames <-  gsub("-", "", colnames)
          colnames <-  gsub("\\(", "", colnames)
          colnames <-  gsub(")", "", colnames)
          colnames <-  gsub(",", "", colnames)
          colnames <-  tolower(colnames)
          
        #Add the column names to fullDataSet
          colnames(fullDataSet) <- colnames
          str(fullDataSet)
          unique(fullDataSet$activity)
          unique(fullDataSet$subjectId)

      
      #Add the activity labels to the fullDataSet
          fullDataSet <-merge(fullDataSet, activityLabels, by.x = "activity", by.y = "X1")
          str(fullDataSet)
          unique(fullDataSet$X2)
        
      #Add then new column name
          names(fullDataSet)[names(fullDataSet) == "X2"] <- "activityLabel"
          fullDataSet$activityLabel  
          colnames(fullDataSet)
      
