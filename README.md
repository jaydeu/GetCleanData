# UCI HAR Dataset Readme File #

The HAR (Human Activity Recognition) database is based on recordings from 30 subjects as they performed activities of daily living (ADL). Subjects carried a waist-mounted smart phone with embedded inertial sensors (accelerometer and gyroscope). The study collected 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Both were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Original data and further information about the HAR database is available at the following link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data in our cleaned data set (tidy.data.txt) includes means for only the mean and standard deviation variables from the original data set. Such variables were identified in the original data set by the endings Mean-() and Std-(). Means are taken for each of the 30 subjects and 6 activities.

Before running run_analysis.R, the user must first save the zipped file below to their own computer and then set the R directory to the folder "UCI HAR Dataset".

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The following files are included:

* 'README.md'
* 'Codebook.md': Shows information about variables, data and cleaning process. 
* 'run_analysis.R': An R program which first merges training and test set data, then sets new variable names and creates a data frame of mean and standard deviation variables. Finally, the program will output a new table of means for each variable by subject and activity. This table will be saved to a tab delimited text file, 'tidy.data.txt'. 
* 'tidy.data.txt': Table of variable means by subject and activity. This is a tab-delimited text file.

