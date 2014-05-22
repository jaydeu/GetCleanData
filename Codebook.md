# UCI HAR Dataset Code Book #

## About the HAR Dataset ##

The HAR (Human Activity Recognition) database is based on recordings from 30 subjects as they performed activities of daily living (ADL). Subjects carried a waist-mounted smart phone with embedded inertial sensors (accelerometer and gyroscope). The study collected 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Both were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

## Cleaning and Preparation of Data ##

Originally this data set had been split into a test set and training set, so it was necessary to merge these two files. Each signal had a number of variables calculated, but for our purposes we were only interested in the mean and standard deviation variables. These variables ended in 'mean-()' and 'std-()' respectively. It was decided that meanFreq-() (weighted average of frequency components) should not be included since we are only interested in the mean of the variable itself. These variables of interest were saved into a new data frame. 

The provided variable names (from the original file features.txt) were changed into lower case, with dashes and parentheses removed. Several of the variable names included the string 'bodybody' instead of 'body', so these instances were corrected as well. 

Means were calculated for each variable by subject and activity, making sure not to include any NA values. Last, a data table of means was output into a tab-delimited text file. 

## Variables ##

### Subject ###

This column includes a number from 1 to 30, corresponding to one of 30 test subjects. 

### Activity ###

The activity column includes the activity that the test subject was performing when readings were taken. There are six activity categories included in this analysis:

* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

### tbodyacc ###

The body acceleration component of the linear acceleration signal, after separation into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.  

* tbodyaccmeanx: Mean of X component.
* tbodyaccmeany: Mean of Y component.
* tbodyaccmeanz: Mean of Z component.
* tbodyaccstdx: Standard Deviation of X component.
* tbodyaccstdy: Standard Deviation of Y component.
* tbodyaccstdz: Standard Deviation of Z component.
 

### tgravityacc ###

The gravity acceleration component of the linear acceleration signal, after separation into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.  
 
* tgravityaccmeanx: Mean of X component.
* tgravityaccmeany: Mean of Y component.
* tgravityaccmeanz: Mean of Z component.
* tgravityaccstdx: Standard Deviation of X component.
* tgravityaccstdy: Standard Deviation of Y component.
* tgravityaccstdz: Standard Deviation of Z component.

### tbodyaccjerk ###

A jerk signal, calculated as the derivative with respect to time of the body linear acceleration (**tbodyacc**).
 
* tbodyaccjerkmeanx: Mean of X component.
* tbodyaccjerkmeany: Mean of Y component.
* tbodyaccjerkmeanz: Mean of Z component.
* tbodyaccjerkstdx: Standard Deviation of X component.
* tbodyaccjerkstdy: Standard Deviation of Y component.
* tbodyaccjerkstdz: Standard Deviation of Z component.

### tbodygyro ###

Angular velocity.

* tbodygyromeanx: Mean of X component.
* tbodygyromeany: Mean of Y component.
* tbodygyromeanz: Mean of Z component.
* tbodygyrostdx: Standard Deviation of X component.
* tbodygyrostdy: Standard Deviation of Y component.
* tbodygyrostdz: Standard Deviation of Z component.

### tbodygyrojerk ###

A jerk signal, calculated as the derivative with respect to time of angular velocity (**tbodygyro**).

* tbodygyrojerkmeanx: Mean of X component.
* tbodygyrojerkmeany: Mean of Y component.
* tbodygyrojerkmeanz: Mean of Z component.
* tbodygyrojerkstdx: Standard Deviation of X component.
* tbodygyrojerkstdy: Standard Deviation of Y component.
* tbodygyrojerkstdz: Standard Deviation of Z component.

### tbodyaccmag ###

The magnitude of the three-dimensional signal of the body acceleration component of the linear acceleration signal (**tbodyacc**), calculated using the Euclidean norm.

* tbodyaccmagmean: Mean.
* tbodyaccmagstd: Standard Deviation.

### tgravityaccmag ###

The magnitude of the three-dimensional signal of the gravity acceleration component of the linear acceleration signal (**tgravityacc**), calculated using the Euclidean norm.

* tgravityaccmagmean: Mean.
* tgravityaccmagstd: Standard Deviation.

### tbodyaccjerkmag ###

The magnitude of the three-dimensional signal of a jerk signal (**tbodyaccjerk**), calculated using the Euclidean norm.

* tbodyaccjerkmagmean: Mean.
* tbodyaccjerkmagstd: Standard Deviation.

### tbodygyromag ###

The magnitude of the three-dimensional signal of the angular velocity (**tbodygyro**), calculated using the Euclidean norm.

* tbodygyromagmean: Mean.
* tbodygyromagstd: Standard Deviation.

### tbodygyrojerkmag ###

The magnitude of the three-dimensional signal of a jerk signal (**tbodygyrojerk**), calculated using the Euclidean norm.

* tbodygyrojerkmagmean: Mean.
* tbodygyrojerkmagstd: Standard Deviation.

### fbodyacc ###

The result of a Fast Fourier Transform (FFT) applied to the body acceleration component of the linear acceleration signal (**tbodyacc**).

* fbodyaccmeanx: Mean of X component.
* fbodyaccmeany: Mean of Y component.
* fbodyaccmeanz: Mean of Z component.
* fbodyaccstdx: Standard Deviation of X component.
* fbodyaccstdy: Standard Deviation of Y component.
* fbodyaccstdz: Standard Deviation of Z component.

### fbodyaccjerk ###

The result of a Fast Fourier Transform (FFT) applied to a jerk signal(**tbodyaccjerk**).

* fbodyaccjerkmeanx: Mean of X component.
* fbodyaccjerkmeany: Mean of Y component.
* fbodyaccjerkmeanz: Mean of Z component.
* fbodyaccjerkstdx: Standard Deviation of X component.
* fbodyaccjerkstdy: Standard Deviation of Y component.
* fbodyaccjerkstdz: Standard Deviation of Z component.


### fbodygyro ###

The result of a Fast Fourier Transform (FFT) applied to the angular velocity (**tbodygyro**).

* fbodygyromeanx: Mean of X component.
* fbodygyromeany: Mean of Y component.
* fbodygyromeanz: Mean of Z component.
* fbodygyrostdx: Standard Deviation of X component.
* fbodygyrostdy: Standard Deviation of Y component.
* fbodygyrostdz: Standard Deviation of Z component.

### fbodyaccmag ###

The magnitude of **fbodyacc**, calculated using the Euclidean norm.

fbodyaccmagmean: Mean.
fbodyaccmagstd

### fbodyaccjerkmag ###

The magnitude of **fbodyaccjerk**, calculated using the Euclidean norm.

* fbodyaccjerkmagmean: Mean.
* fbodyaccjerkmagstd: Standard Deviation.

### fbodygyromag ###

The magnitude of **fbodygyro**, calculated using the Euclidean norm.

* fbodygyromagmean: Mean.
* fbodygyromagstd: Standard Deviation.

### fbodygyrojerkmag ###

The magnitude of **fbodygyrojerk**, calculated using the Euclidean norm.

* fbodygyrojerkmagmean: Mean.
* fbodygyrojerkmagstd: Standard Deviation.
