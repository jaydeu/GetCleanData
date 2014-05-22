########## Getting and Cleaning Data Course Project ############

# This program first merges training and test set data, then sets new variable
# names and creates a data frame of mean and standard deviation variables. 
# Finally, the program will output a new table of means for each variable by 
# subject and activity. This table will be saved to a column delimited text file.

library(data.table)

# Load test set data

X.test <- read.table("./test/X_test.txt")
Y.test <- read.table("./test/Y_test.txt")
subject.test <- read.table("./test/subject_test.txt")

# Load training set data

X.train <- read.table("./train/X_train.txt")
Y.train <- read.table("./train/Y_train.txt")
subject.train <- read.table("./train/subject_train.txt")

# Identify features that include the mean or standard deviation (exclude meanfreq). 

features <- read.table("./features.txt")

use_features <- (sapply(features$V2, grepl, pattern="mean") | sapply(features$V2, grepl, pattern="std")) & !sapply(features$V2, grepl, pattern="meanFreq")

mean_std_features <- as.character(features$V2[use_features])

# Activity vector given English names

act_names <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

activities <- rbind(Y.test, Y.train)

act_english <- sapply(activities, function(i) act_names[i] )

#  Bind the variables of interest from the test and training sets into a data frame.

DF <- data.frame(rbind(subject.test, subject.train), act_english, rbind(X.test[use_features], X.train[use_features]))

# Put variable names into a nicer format: take out () and -, change to lowercase.

mean_std_features <- gsub("\\(\\)","", mean_std_features)
mean_std_features <- gsub("-","", mean_std_features)
mean_std_features <- tolower(mean_std_features)

# Fix error where 'body' appears twice in some variables.

mean_std_features <- gsub("bodybody", "body", mean_std_features)

# Rename columns of data table
setnames(DF, c("subject", "activity", mean_std_features))

# Get means for each data column by activity AND subject. 

tidyData <- aggregate(DF[,3:ncol(DF)], by=list(DF$subject,DF$activity), FUN=mean, na.rm=TRUE)

# Fix column names for subject and activity.

names(tidyData)[1:2]<-c("subject", "activity")

# Output a column delimited text file with tidy data set.

write.table(tidyData, file = "./tidy.data.txt", sep="\t", col.names=TRUE, row.names=FALSE, na="NA", quote=FALSE)


