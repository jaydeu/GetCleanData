# UCI HAR Dataset Code Book #

The HAR (Human Activity Recognition) database is based on recordings from 30 subjects as they performed activities of daily living (ADL). Subjects carried a waist-mounted smart phone with embedded inertial sensors (accelerometer and gyroscope). The study collected 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Both were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

The tidied data set includes the mean and standard deviation of each of the X, Y and Z dimensions for each variable. The names of these variables are listed below.

### tbodyacc ###

The body acceleration component of the linear acceleration signal, after separation into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.  

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
 

### tgravityacc ###

The gravity acceleration component of the linear acceleration signal, after separation into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.  
 
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz

### tbodyaccjerk ###

A jerk signal, calculated as the derivative with respect to time of the body linear acceleration (**tbodyacc**).
 
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz

### tbodygyro ###

Angular velocity

* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz

### tbodygyrojerk ###

A jerk signal, calculated as the derivative with respect to time of angular velocity (**tbodygyro**).

* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz

### tbodyaccmag ###

The magnitude of the three-dimensional signal of the body acceleration component of the linear acceleration signal (**tbodyacc**), calculated using the Euclidean norm.

* tbodyaccmagmean
* tbodyaccmagstd

### tgravityaccmag ###

The magnitude of the three-dimensional signal of the gravity acceleration component of the linear acceleration signal (**tgravityacc**), calculated using the Euclidean norm.

* tgravityaccmagmean
* tgravityaccmagstd

### tbodyaccjerkmag ###

The magnitude of the three-dimensional signal of a jerk signal (**tbodyaccjerk**), calculated using the Euclidean norm.

* tbodyaccjerkmagmean
* tbodyaccjerkmagstd

### tbodygyromag ###

The magnitude of the three-dimensional signal of the angular velocity (**tbodygyro**), calculated using the Euclidean norm.

* tbodygyromagmean
* tbodygyromagstd

### tbodygyrojerkmag ###

The magnitude of the three-dimensional signal of a jerk signal (**tbodygyrojerk**), calculated using the Euclidean norm.

* tbodygyrojerkmagmean
* tbodygyrojerkmagstd

### fbodyacc ###

The result of a Fast Fourier Transform (FFT) applied to the body acceleration component of the linear acceleration signal (**tbodyacc**).

* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz

### fbodyaccjerk ###

The result of a Fast Fourier Transform (FFT) applied to a jerk signal(**tbodyaccjerk**).

* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz


### fbodygyro ###

The result of a Fast Fourier Transform (FFT) applied to the angular velocity (**tbodygyro**).

* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz

### fbodyaccmag ###

The magnitude of **fbodyacc**, calculated using the Euclidean norm.

fbodyaccmagmean
fbodyaccmagstd

### fbodyaccjerkmag ###

The magnitude of **fbodyaccjerk**, calculated using the Euclidean norm.

* fbodyaccjerkmagmean
* fbodyaccjerkmagstd

### fbodygyromag ###

The magnitude of **fbodygyro**, calculated using the Euclidean norm.

* fbodygyromagmean
* fbodygyromagstd

### fbodygyrojerkmag ###

The magnitude of **fbodygyrojerk**, calculated using the Euclidean norm.

* fbodygyrojerkmagmean
* fbodygyrojerkmagstd
