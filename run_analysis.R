## exdata-032 Project 1 Analyse Human Activity Recognition using Smartphones - 09/22/16


## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.

## upload your data set as a txt file created with write.table() using row.name=FALSE


## library(ggplot2)
## setwd("~/Documents/uni/courserarprog/exploratory")
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv","GDP.csv",method="curl")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv","country.csv",method="curl")

gdp.data <- tbl_df(read.csv("GDP.csv", stringsAsFactors=FALSE))
gdp.data <- rename(gdp.data, rank=Gross.domestic.product.2012)
gdp.data <- filter(gdp.data,X!="")
gdp.data <- filter(gdp.data,rank!="")

country.data <- tbl_df(read.csv("country.csv", stringsAsFactors=FALSE))





