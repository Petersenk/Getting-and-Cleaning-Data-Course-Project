Project Description
-------------------

Getting and Cleaning Data Course Project - Karl Petersen

Study design and data processing
--------------------------------

### Collection of the raw data

The data for this project was collected for a study ‘Human Activity
Recognition Using SmartPhones’. You can find more information about the
data set here:
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

Creating the tidy datafile
--------------------------

### Guide to create the tidy data file

Description on how to create the tidy data file

-   Download the data for the training and test data sets
    -   X\_train.txt
    -   y\_train.txt
    -   subject\_train.txt
    -   X\_test.txt
    -   y\_test.txt
    -   subject\_test.txt"
    -   features.txt
    -   activity\_labels.txt
-   Load all the data files into dataframes so they can be merged to
    create a complete data set
    -   X\_train.txt as dataframe ‘xtrain’
    -   y\_train.txt as dataframe ‘ytrain’
    -   subject\_train.txt as dataframe ‘subjecttrain’
    -   X\_test.txt as dataframe ‘xtest’
    -   y\_test.txt as dataframe ‘ytest’
    -   subject\_test.txt" as dataframe ‘subjecttest’
    -   features.txt as dataframe ‘featureLabels’
    -   activity\_labels.txt as dataframe ‘activityLabels’
-   Combine the training dataframes into a single dataframe(using cbind)
    -   xtrain
    -   ytrain
    -   subjecttrain
-   Combine the test data frames into a single dataframe (using cbind)
    -   xtest
    -   ytest
    -   subjecttest
-   Merge the training and test dataframes from step 3 and 4 together
    (using rbind)  
-   Create list of featureLabels to use for the column headings of the
    dataframe created in step 5
-   Remove special characters from the featureLabels to make working
    with the data easier (tidy column headings)
-   Add them featureLabels as columnn headings (using colnames function)
-   Add the activity labels to the large dataframe create in step five
    by joining on the id’s
-   Select the columns from the dataframe that contain mean and std
    (mean and standard deviation) into a subset dataframe
-   Calculate the average of all the columns of the new subset dataframe
    grouping by the subjectID and activity description and assigne to an
    aggregate data frame
-   Write out aggregated data to a txt file.

### Cleaning of the data

It is important to remove special characters from the column headings to
make working with the data easier. You must also update the column
headings because there are duplicate column names. Link to the README file: https://github.com/Petersenk/Getting-and-Cleaning-Data-Course-Project/blob/main/README.md

Description of the variables in the tiny\_data.txt file
-------------------------------------------------------

General description of the file including: - Table Dimenstion rows =180,
columns = 88 - This data represents the averages for the columns that
include the mean and standard deviation measures from the ‘Human
Activity Recognition Using SmartPhones dtat sent’

<table>
<caption>Tidydataset</caption>
<thead>
<tr class="header">
<th style="text-align: left;">Variable Name</th>
<th style="text-align: left;">Type</th>
<th style="text-align: left;">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">subjectid</td>
<td style="text-align: left;">integer</td>
<td style="text-align: left;">The indivudual participating in the experiment, Range is 1 through 30.</td>
</tr>
<tr class="even">
<td style="text-align: left;">desc</td>
<td style="text-align: left;">Factor</td>
<td style="text-align: left;">Factor with 6 levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tgravityaccmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals gravity acceleration in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tgravityaccmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals gravity acceleration in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tgravityaccmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals gravity acceleration in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccjerkmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration jerk in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccjerkmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration jerk in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccjerkmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration jerk in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyromeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyromeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyromeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrojerkmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro jerk in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyrojerkmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro jerk in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrojerkmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro jerk in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body accelleration magnitude</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tgravityaccmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals gravity acceleration</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccjerkmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration jerk</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyromagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyrojerkmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro jerk</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccmeanfreqx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccmeanfreqy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccmeanfreqz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccjerkmeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccjerkmeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccjerkmeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccjerkmeanfreqx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk frequency in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccjerkmeanfreqy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk frequency in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccjerkmeanfreqz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerk frequency in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodygyromeanx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodygyromeany</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodygyromeanz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodygyromeanfreqx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro frequency in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodygyromeanfreqy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro frequency in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodygyromeanfreqz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro frequency in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccmagmeanfreq</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration magnitude frequency</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodybodyaccjerkmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration jerl magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodybodyaccjerkmagmeanfreq</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body accelleration magnitude frequency</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodybodygyromagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodybodygyromagmeanfreq</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro magnitude frequency</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodybodygyrojerkmagmean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro jerk magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodybodygyrojerkmagmeanfreq</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean frequency domain signals body gyro jerk magnitude frequency</td>
</tr>
<tr class="odd">
<td style="text-align: left;">angulartbodyaccmeangravity</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">angletbodyaccjerkmeangravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body acceleration jerk</td>
</tr>
<tr class="odd">
<td style="text-align: left;">angletbodygyromeangravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals angular body gyro gravity</td>
</tr>
<tr class="even">
<td style="text-align: left;">angletbodygyrojerkmeangravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean time domain signals body gyro jerk</td>
</tr>
<tr class="odd">
<td style="text-align: left;">anglexgravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean angular X gravity</td>
</tr>
<tr class="even">
<td style="text-align: left;">angleygravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean angular Y gravity</td>
</tr>
<tr class="odd">
<td style="text-align: left;">anglezgravitymean</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of mean angular Z gravity</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body accelleration in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body accelleration in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body accelleration in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tgravityaccstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals gravity acceleration in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tgravityaccstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals gravity acceleration in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tgravityaccstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals gravity acceleration in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccjerkstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body acceleration jerk in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccjerkstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body acceleration jerk in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodyaccjerkstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body acceleration jerk in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrostdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyrostdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrostdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyrojerkstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro jerk in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrojerkstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro jerk in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyrojerkstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro jerk in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body accelleration magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">tgravityaccmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals gravity acceleration</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodyaccjerkmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body acceleration jerk</td>
</tr>
<tr class="even">
<td style="text-align: left;">tbodygyromagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro magnitude</td>
</tr>
<tr class="odd">
<td style="text-align: left;">tbodygyrojerkmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation time domain signals body gyro jerk</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccjerkstdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration jerk in x direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodyaccjerkstdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration jerk in y direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccjerkstdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration jerk in z direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodygyrostdx</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body gyro in x direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodygyrostdy</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body gyro in y direction</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodygyrostdz</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body gyro in z direction</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodyaccmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodybodyaccjerkmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body accelleration jerk magnitude</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fbodybodygyromagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body gyro magnitude</td>
</tr>
<tr class="even">
<td style="text-align: left;">fbodybodygyrojerkmagstd</td>
<td style="text-align: left;">Numeric</td>
<td style="text-align: left;">Average of Standard Deviation frequency domain signals body gyro jerk magnitude</td>
</tr>
</tbody>
</table>
