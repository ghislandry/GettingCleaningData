## Codebook for Tidy Dataset

This document provides a description of the tidy dataset produced in the frame of the Getting and Cleaning Data course project. The  contents of the document is widely inspired by the original data source.

## Data source

The original data that we use tho create the tidy data of which the description is given herein can be downloaded via the following link. Note that, our last downloaded was on Wednesday, 23 July, 2014.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Features Description and Selection

As mentioned earlier, the README.txt and features_info.txt files provided with the original data set are the main source of information found here.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

As regards to feature selection, the assignment explicitly suggests to extracts only the measurements on the mean and standard deviation for each measurement.  

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

- mean(): Mean value
- std(): Standard deviation

For this assignment, we kept the average of those estimated variable for each activity and for each subject. Consequently, apart from the variables subject and activities described beneath, all the remaining variables are numeric and take values in between -1 and 1.

Features describing activities and subjects are:

- Activity: string character; can be either WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
- Subject: the person on which the measurement is taken; takes integer values from 1 to 30 


A complete list of feature is given bellow. 


## Complete list of features 
- Subject                     
- Activity                     
- tBodyAcc-mean.Mean-X          
- tBodyAcc-mean.Mean-Y          
- tBodyAcc-mean.Mean-Z          
- tBodyAcc-std.Mean-X          
- tBodyAcc-std.Mean-Y           
- tBodyAcc-std.Mean-Z            
- tGravityAcc-mean.Mean-X       
- tGravityAcc-mean.Mean-Y        
- tGravityAcc-mean.Mean-Z        
- tGravityAcc-std.Mean-X        
- tGravityAcc-std.Mean-Y         
- tGravityAcc-std.Mean-Z         
- tBodyAccJerk-mean.Mean-X      
- tBodyAccJerk-mean.Mean-Y       
- tBodyAccJerk-mean.Mean-Z       
- tBodyAccJerk-std.Mean-X       
- tBodyAccJerk-std.Mean-Y        
- tBodyAccJerk-std.Mean-Z        
- tBodyGyro-mean.Mean-X         
- tBodyGyro-mean.Mean-Y          
- tBodyGyro-mean.Mean-Z          
- tBodyGyro-std.Mean-X          
- tBodyGyro-std.Mean-Y           
- tBodyGyro-std.Mean-Z           
- tBodyGyroJerk-mean.Mean-X     
- tBodyGyroJerk-mean.Mean-Y      
- tBodyGyroJerk-mean.Mean-Z      
- tBodyGyroJerk-std.Mean-X      
- tBodyGyroJerk-std.Mean-Y       
- tBodyGyroJerk-std.Mean-Z 
- tBodyAccMag-mean.Mean         
- tBodyAccMag-std.Mean 
- tGravityAccMag-mean.Mean 
- tGravityAccMag-std.Mean      
- tBodyAccJerkMag-mean.Mean 
- tBodyAccJerkMag-std.Mean 
- tBodyGyroMag-mean.Mean        
- tBodyGyroMag-std.Mean 
- tBodyGyroJerkMag-mean.Mean 
- tBodyGyroJerkMag-std.Mean    
- fBodyAcc-mean.Mean-X 
- fBodyAcc-mean.Mean-Y 
- fBodyAcc-mean.Mean-Z         
- fBodyAcc-std.Mean-X 
- fBodyAcc-std.Mean-Y 
- fBodyAcc-std.Mean-Z          
- fBodyAccJerk-mean.Mean-X 
- fBodyAccJerk-mean.Mean-Y 
- fBodyAccJerk-mean.Mean-Z      
- fBodyAccJerk-std.Mean-X 
- fBodyAccJerk-std.Mean-Y 
- fBodyAccJerk-std.Mean-Z       
- fBodyGyro-mean.Mean-X 
- fBodyGyro-mean.Mean-Y 
- fBodyGyro-mean.Mean-Z         
- fBodyGyro-std.Mean-X 
- fBodyGyro-std.Mean-Y 
- fBodyGyro-std.Mean-Z         
- fBodyAccMag-mean.Mean 
- fBodyAccMag-std.Mean 
- fBodyBodyAccJerkMag-mean.Mean 
- fBodyBodyAccJerkMag-std.Mean 
- fBodyBodyGyroMag-mean.Mean 
- fBodyBodyGyroMag-std.Mean    
- fBodyBodyGyroJerkMag-mean.Mean 
- fBodyBodyGyroJerkMag-std.Mean 
