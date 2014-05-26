
# Getting and Cleaning Data - Course Project - Code Book

This file describes all the variables from the tidy dataset, the data, and any transformations or work performed to clean up the data.


## Transformations


### run_analysis.R

All the transformations are scripted in run_analysis.R. It downloads the data on the desktop and creates a folder there, which is followed by data analysis. A detail description of all the steps in written in readme file.



## Variable Names

For convenience the names of the measures were not renamed, but kept the same like in the original data source (except for removing the brackets).

Basically they are built on the following pattern:

&lt;type>&lt;acceleration-type>&lt;source>[Jerk][Mag]&lt;axis>

where:
- &lt;type> is:
  - t - time (original) signal
  - f - frequency domain signal (a Fast Fourier Transform (FFT) was applied)
- &lt;acceleration-type>
  - Body - body acceleration signals 
  - Gravity - gravity acceleration signals
- &lt;Source> is
  - Acc - accelerometer
  - Gyro - gyroscope
- [Jerk] - (optional) indicates that the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
- [Mag] - (optional) indicates that the magnitude of the three-dimensional signals was calculated using the Euclidean norm 
- &lt;axis> - the three dimensional axis on which the measurement was done (X, Y or Z directions)

e.g. tBodyAccJerk-mean-X is the mean (mean) of the time (t) body (body) acceleration (Acc) signals measured by the accelerometer on the X-axis (X), derived in time to obtain Jerk (Jerk) signals and averaged.



## Variable Description

### subject.number
The - the subject who performed the activity for each window sample. In the mearged data set it ranges from 1 to 30 and it is sourced from subject_train.txt and subject_test.txt and merged as described above. 

### activity.label
The activity the subject was performing when the measurements were done as factor: 
* WALKING [1]
* WALKING_UPSTAIRS [2]
* WALKING_DOWNSTAIRS [3]
* SITTING [4]
* STANDING [5]
* LAYING [6]

It is sourced from y_train.txt and y_test.txt and merged as described above.


### Measures of the raw signals that came from the accelerometer and gyroscope 


### time.body.acc.norm.mean.x
The mean of the time body acceleration signals measured by the accelerometer on the X-axis.  

### time.body.acc.norm.mean.Y
Same as abvoe, but on the Y-axis.

### time.body.acc.norm.mean.Z
Same as abvoe, but on the Z-axis.

### time.gravity.acc.norm.mean.X
The mean of the time gravity acceleration signals measured by the accelerometer on the X-axis.  

### time.gravity.acc.norm.mean.Y
Same as abvoe, but on the Y-axis.

### time.gravity.acc.norm.mean.Z
Same as abvoe, but on the Z-axis.

### time.body.acc.jerk.mean.X
The time body acceleration signals measured by the accelerometer on the X-axis, derived in time to obtain Jerk signals and averaged.  

### time.body.acc.jerk.mean.Y
Same as abvoe, but on the Y-axis.

### time.body.acc.jerk.mean.Z
Same as abvoe, but on the Z-axis.

### time.body.gyro.norm.mean.X
The mean of the time body acceleration signals measured by the gyroscope on the X-axis.

### time.body.gyro.norm.mean.Y
Same as abvoe, but on the Y-axis.

### time.body.gyro.norm.mean.Z
Same as abvoe, but on the Z-axis.

### time.body.gyro.jerk.mean.x
The time body acceleration signals measured by the gyroscope on the X-axis, derived in time to obtain Jerk signals and averaged.  

### time.body.gyro.jerk.mean.y
Same as abvoe, but on the Y-axis.

### time.body.gyro.jerk.mean.z
Same as abvoe, but on the Z-axis.

### time.body.acc.mag.mean
The magnitude of the time body acceleration signals measured by the accelerometer on the X-axis signals that were calculated using the Euclidean norm. 
 
### time.gravity.acc.mag.mean
The magnitude of the time gravity acceleration signals measured by the accelerometer on the X-axis signals that were calculated using the Euclidean norm. 
 
### time.body.acc.jerk.mag.mean
The magnitude of the time body acceleration signals measured by the accelerometer on the X-axis signals, derived in time to obtain Jerk signals then calculated using the Euclidean norm. 
 
### time.body.gyro.norm.mag.mean
The magnitude of the time gravity acceleration signals measured by the gyrometer on the X-axis signals that were calculated using the Euclidean norm. 
 
### time.body.gyro.jerk.mag.mean
The magnitude of the time body acceleration signals measured by the gyrometer on the X-axis signals, derived in time to obtain Jerk signals then calculated using the Euclidean norm. 
 

### Measures of the raw signals that came from the accelerometer and gyroscope after a Fast Fourier Transform (FFT) was applied to them 


### freq.body.acc.norm.mean.x
The results of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the accelerometer on the X-axis.

### freq.body.acc.norm.mean.y
Same as abvoe, but on the Y-axis.

### freq.body.acc.norm.mean.z
Same as abvoe, but on the Z-axis.


### freq.body.acc.jerk.mean.x
The time body acceleration signals measured by the accelerometer on the X-axis, derived in time to obtain Jerk signals and averaged, then applying the Fast Fourier Transformation.

### freq.body.acc.jerk.mean.Y
Same as abvoe, but on the Y-axis.

### freq.body.acc.jerk.mean.Z
Same as abvoe, but on the Z-axis.


### freq.body.gyro.norm.mean.X
The results of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the gyroscope on the X-axis).

### freq.body.gyro.norm.mean.Y
Same as abvoe, but on the Y-axis.

### freq.body.gyro.norm.mean.Z
Same as abvoe, but on the Z-axis.


### freq.body.acc.norm.mag.mean
The avearage of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the accelerometer on all the three axis).

### freq.body.acc.jerk.mag.mean
The avearage of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the accelerometer on all the three axis) and derived in time to obtain Jerk signals.


### freq.body.gyro.norm.mag.mean
The avearage of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the gyrometer on all the three axis).


### freq.body.gyro.jerk.mag.mean
The avearage of the Fast Fourier Transformation (FFT) that was applied to the time body acceleration signals measured by the gyrometer on all the three axis) and derived in time to obtain Jerk signals.


