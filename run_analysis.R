## Author: ghilain Landry
## Date: 23/07/2007
## Purpose: Course project: Getting and Cleaning data
##          data used for this project comes form the following web site
##          https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


require(plyr)


## Download data and store them in the current directory the file will be 
## renamed as Dataset.zip

if(!file.exists("Dataset.zip")){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        
        download.file(fileUrl, destfile="Dataset.zip", meth="curl")
        dateDownload <- data()
        
        #unzip the zipped file and rename it to UciHarDataset
        system("unzip Dataset.zip; mv UCI\\ HAR\\ Dataset UciHarDataset")
        
}

# Reading training data
train.file <- file.path("./UciHarDataset/train", "X_train.txt")
training_X <- read.table(train.file, header = FALSE, na.strings=" ", nrows=7352)

training_y <- read.table("./UciHarDataset/train/y_train.txt", header = FALSE)

training_subjects <- read.table("./UciHarDataset/train/subject_train.txt", header = FALSE)

#train_features <- cbind(training_X, training_y)

# Reading test data
test.file <- file.path("./UciHarDataset/test", "X_test.txt")
testing_X <- read.table(test.file, header = FALSE, na.strings=" ", nrows=2947)

testing_y <- read.table("./UciHarDataset/test/y_test.txt", header = FALSE)

testing_subjects <- read.table("./UciHarDataset/test/subject_test.txt", header = FALSE)


## Proprocessing activity and feature data to make them look appropriate
features.data <- rbind(training_X, testing_X)
activity.data <- rbind(training_y, testing_y)
subjects.data <- rbind(training_subjects, testing_subjects)

names(activity.data) <- "Activity"
names(subjects.data) <- "Subject"


## Use descriptive activity names to name the activities in the activity data

activity.names <- read.table("./UciHarDataset/activity_labels.txt", 
                             header=F, stringsAsFactors=F, sep=" ")[, 2]

k = 1

activity.data <- transform(activity.data, Activity <- as.character(Activity))

while(k <= dim(activity.data)[1]){
        
        activity.data[, 1][k]  <- activity.names[
                as.integer(activity.data[, 1][k])]
        k <- k + 1
}

print("Done with activity data ... ")

col.names <- read.table("./UciHarDataset/features.txt", 
                        header = FALSE, stringsAsFactors=F)[, 2]

names(features.data) <- col.names

## Read the feature.txt file again while limiting our selection to the mean and standard
## deviation of each feature
## The egrep command insures that we will only select the mean and standard deviation of 
## each feature

feature.names <- read.table(pipe('egrep -n "mean\\(|std\\(" "./UciHarDataset/features.txt"'), 
                        header = FALSE, stringsAsFactors=F)[, 2]

## Now that we have all the information, we can subset feature.data to only keep 
## measurements related to the standard devition and mean of each measurement. 

raw.feature.data <- features.data # store future data for later use

features.data <- features.data[, feature.names]


## here we have our Tidy data set

data.set <- cbind(subjects.data, activity.data, features.data)


## Creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject. 

#data <- cbind(subjects.data, activity.data, raw.feature.data)


tidy.dataset <- ddply(data.set, as.quoted(c("Subject", "Activity")), numcolwise(mean))

## remove the parenthesis in the variable names and convert the list returned by 
## lapply back to a vector 
name_x <- lapply(names(tidy.dataset), function(x){gsub("\\(\\)", ".Mean", x)})

names(tidy.dataset) <- c(do.call("cbind",name_x)) 

## write the Tidy dataset to the disk
write.csv(data.set, "ActivityData.csv", row.names=FALSE)
