---
title: ""
output: html_document
---
README.md

The data presented are about experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
At the end of the experiment, feature vectors obtained form individual windows are used to compute the average of each feature (or variable) for each activity and each subject. Further details can be found in CodeBook.md

### For each record it is provided:


- A 66-feature vector with average value of each variable for each activity and each subject. Variables in this specific case are measurements on the mean and standard deviation for each measurement in the original dataset.

- Its activity label
- An identifier of the subject who carried out the experiment

### The dataset includes:


- README.md: explains the relationship between files bellow 
- CodeBook.md: describes the variables, the data, and any transformations or work performed to clean up the data
- run_analysis.R: an R script that cleans up the data and creates the tidy dataset
- ActivityData.csv: a tidy dataset
