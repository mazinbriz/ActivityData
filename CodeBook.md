# ActivityData
Human Activity Recognition Using Smartphones - Tidy data set


# Output file

# Fields
subject   Subject identifier ie the person undertaking the activities
activity  Activity categories as demonstrated in video https://www.youtube.com/watch?v=XOEN9W05_4A
measure   Measurement category
mean      Mean of the measurement values for this subject and activity

## Instructions to read the tidy data file
The tidy data set can be read into R environment with the code:
```r
tidydata <- read.table("tidydata.txt",header=TRUE)
```

# Transformations

## Combining data
Measurement values were recorded in two groups: training and test. These have been amalgamated. An assumption has been made that subject id's are common between the two groups so that subject id 1 in the test group is the same subject as subject id 1 in the training group.

The measurement values are held in a separate file from the subject identifier and the activity identifiers. These three files had common dimensions (2947 observations in test and 7342 observations in train), and based on these commonalities, alongside the description in the readme.txt and features_info.txt files, these were assumed to be linked by the row order.

## Selecting data
Only measurement values were included that were considered to be a meaningful measure to calculate into a mean for subject and activity. This meant the measures for mean, meanFreq (weighted average of the frequency components) and the standard deviation were included and all other measures were ignored.

## Summarising data
The data has been summarised into a long form (as per the evaluation criteria that long form or short form are acceptable), which has transformed the 10299 total observations of the 86 included measures. This was summarised into a mean value for the 180 unique combinations of subject and activity.

# Input files

## Data set files 

The dataset files included:
ActivityData.txt  Human activity recognition data from smartphones transformed to meet the principles for tidy data
features_info.txt   Shows information about the variables used on the feature vector.
features.txt        List of all features.
activity_labels.txt Links the class labels with their activity name.
train/X_train.txt   Training set.
train/y_train.txt   Training labels.
test/X_test.txt     Test set.
test/y_test.txt     Test labels.


These files were distributed as-is by the authors Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012. More information about hte data set is referenced by the publication:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Notes:
This project was completed as part of the Coursera Getting and Cleaning Data course September 2015. The script and output data file have been developed to practice the principles for tidy data as described by Hadley's paper (which may be accessible from http://vita.had.co.nz/papers/tidy-data.pdf)
