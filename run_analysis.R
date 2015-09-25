## exdata-032 Project 1 Analyse Human Activity Recognition using Smartphones - 09/22/16


## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.

## upload your data set as a txt file created with write.table() using row.name=FALSE


## library(dplyr)
##  setwd("~/Documents/uni/courserarprog/gettingdata/ActivityData")

# activity data is listed as a row of 561 variables, these 561 variable names are listed in features.txt
features <- read.delim("features.txt",header=FALSE,colClasses="character",sep=" ",strip.white=TRUE, stringsAsFactors=FALSE)

# read the activity data with the features as the column names (tidy data principle each variable forms a column)
alldata <- read.table("x_test.txt",colClasses="numeric",col.names=features[,2])
alldata <- rbind(alldata,read.table("x_train.txt",colClasses="numeric",col.names=features[,2]))

# take the activity and subject information across test and training groups 
activities <- read.table("y_test.txt",stringsAsFactors=FALSE)
activities <- rbind(activities, read.table("y_train.txt",stringsAsFactors=FALSE))
subjects <- read.table("subject_test.txt",stringsAsFactors=FALSE)
subjects <- rbind(subjects,read.table("subject_train.txt",stringsAsFactors=FALSE))

# merge activity and subject ids into one table (tidy data principle each observation forms a row)
subacts <- tbl_df(cbind(activities,subjects))
names(subacts) <- c("activity_id","subject_id")
actnames <- tbl_df(read.table("activity_labels.txt",col.names=c("activity_id","activity"), stringsAsFactors=FALSE))
subacts<- merge(subacts,actnames,by="activity_id")
subacts <- as.data.frame(select(subacts,-activity_id))

# combine the activity and subject identifiers with the observations )
alldata <- tbl_df(cbind(subacts,alldata))
tidydata <- alldata

              

# (tidy data principle each obs unit forms a table)


