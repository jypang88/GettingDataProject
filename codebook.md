# CODEBOOK

This dataset consists of the average values, by experimental subject and Activity of Daily Living (ADL), of a series of summary variables from experimental recordings of Human Activity Recognition using Smartphones. 

## Background of Experiment
An experiment was carried out with a group of 30 volunteers of age 19-48 years. Each volunteer performed six activities of daily living (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The phone's embedded accelerometer and gyroscope was used to capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the activity manually. 

## Description of Source Data

The source data is the Human Activity Recognition Using Smartphones Data Set on UCI's Machine Learning Repository. This consists of a vector of statistical variables calculated based on signals collected in the experiment. The dataset was partitioned into training and test datasets.

The raw sensor signals (accelerometer and gyroscope) from the experiment were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). (tBodyGyro-XYZ).

The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity (tBodyAcc-XYZ, tGravityAcc-XYZ). The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of the signals to produce frequency domain signals (fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag)

From each signal, a vector of features was obtained by calculating statistical variables in the time and frequency domains. The set of variables that were estimated from these signals are: 

* mean(): Mean value
*std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

## Processing of Source Data

The "run_analysis.R" script carries out the following processing steps: 
1. Combine the training and test datasets into a single dataset.
2. Extract the variables relating to mean and standard deviation only. 
3. Rename the variables in the dataset with descriptive names
4. Combine the dataset with separate datasets on the type of activity and subject ID of each observation
5. Label each activity type with its descriptive name (e.g. WALKING)
6. Create a new summary dataset which consists of the average values of each variable by activity and subject ID.

## Details of Data Set

Dimensions: 180 observations of 68 variables

### Subject 
* Description: Identifier of experimental subject
* Class: Integer
* Values: 1 to 30
* Unit: N.A.

### Activity
* Description: Activity of Daily Living
* Class: Factor
* Values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
* Unit: N.A.
* Remarks: Activity codes in source data were replaced with the descriptive text names.

### TimeBodyAcc-mean()-X
* Description: Mean of Body Linear Acceleration in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAcc-mean()-Y
* Description: Mean of Body Linear Acceleration in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAcc-mean()-Z          
* Description: Mean of Body Linear Acceleration in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAcc-std()-X
* Description: Standard Deviation of Body Linear Acceleration in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAcc-std()-Y
* Description: Standard Deviation of Body Linear Acceleration in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAcc-std()-Z
* Description: Standard Deviation of Body Linear Acceleration in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-mean()-X
* Description: Mean of Gravity Acceleration in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-mean()-Y
* Description: Mean of Gravity Acceleration in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-mean()-Z
* Description: Mean of Gravity Acceleration in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-std()-X
* Description: Standard Deviation of Gravity Acceleration in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-std()-Y
* Description: Standard Deviation of Gravity Acceleration in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAcc-std()-Z
* Description: Standard Deviation of Gravity Acceleration in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-mean()-X
* Description: Mean of Body Acceleration Jerk in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-mean()-Y
* Description: Mean of Body Acceleration Jerk in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-mean()-Z
* Description: Mean of Body Acceleration Jerk in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-std()-X
* Description: Standard Deviation of Body Acceleration Jerk in X-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-std()-Y
* Description: Standard Deviation of Body Acceleration Jerk in Y-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerk-std()-Z
* Description: Standard Deviation of Body Acceleration Jerk in Z-axis in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-mean()-X
* Description: Mean of Body Angular Velocity in X-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-mean()-Y
* Description: Mean of Body Angular Velocity in Y-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-mean()-Z
* Description: Mean of Body Angular Velocity in Z-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-std()-X
* Description: Standard Deviation of Body Angular Velocity in X-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-std()-Y
* Description: Standard Deviation of Body Angular Velocity in Y-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyro-std()-Z
* Description: Standard Deviation of Body Angular Velocity in Z-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-mean()-X
* Description: Mean of Body Angular Velocity Jerk in X-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-mean()-Y
* Description: Mean of Body Angular Velocity Jerk in Y-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-mean()-Z
* Description: Mean of Body Angular Velocity Jerk in Z-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-std()-X
* Description: Standard Deviation of Body Angular Velocity Jerk in X-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-std()-Y
* Description: Mean of Body Angular Velocity Jerk in Y-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerk-std()-Z
* Description: Mean of Body Angular Velocity Jerk in Z-axis in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccMag-mean()
* Description: Mean of Body Acceleration Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccMag-std()
* Description: Standard Deviation of Body Acceleration Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAccMag-mean()
* Description: Mean of Gravity Acceleration Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeGravityAccMag-std()
* Description: Standard Deviation of Gravity Acceleration Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerkMag-mean()
* Description: Mean of Body Acceleration Jerk Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyAccJerkMag-std()
* Description: Standard Deviation of Body Acceleration Jerk Magnitude in Time Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroMag-mean()
* Description: Mean of Body Angular Velocity Magnitude in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroMag-std()
* Description: Standard Deviation of Body Angular Velocity Magnitude in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerkMag-mean()
* Description: Mean of Body Angular Velocity Jerk Magnitude in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### TimeBodyGyroJerkMag-std()
* Description: Standard Deviation of Body Angular Velocity Jerk Magnitude in Time Domain
* Class: Numeric
* Unit: radian per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-mean()-X
* Description: Mean of Body Acceleration in X-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-mean()-Y
* Description: Mean of Body Acceleration in Y-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-mean()-Z
* Description: Mean of Body Acceleration in Z-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-std()-X
* Description: Standard Deviation of Body Acceleration in X-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-std()-Y
* Description: Standard Deviation of Body Acceleration in Y-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAcc-std()-Z
* Description: Standard Deviation of Body Acceleration in Z-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-mean()-X
* Description: Mean of Body Acceleration Jerk in X-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-mean()-Y
* Description: Mean of Body Acceleration Jerk in Y-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-mean()-Z
* Description: Mean of Body Acceleration Jerk in Z-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-std()-X
* Description: Standard Deviation of Body Acceleration Jerk in X-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-std()-Y
* Description: Standard Deviation of Body Acceleration Jerk in Y-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerk-std()-Z
* Description: Standard Deviation of Body Acceleration Jerk in Z-axis in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-mean()-X
* Description: Mean of Body Angular Velocity in X-axis in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-mean()-Y
* Description: Mean of Body Angular Velocity in Y-axis in Frequency Domain
* Class: Numeric
* Unit: radians per seconds
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-mean()-Z
* Description: Mean of Body Angular Velocity in Z-axis in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-std()-X
* Description: Standard Deviation of Body Angular Velocity in X-axis in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-std()-Y
* Description: Standard Deviation of Body Angular Velocity in Y-axis in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyro-std()-Z
* Description: Standard Deviation of Body Angular Velocity in Z-axis in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccMag-mean()
* Description: Mean of Body Acceleration Magnitude in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccMag-std()
* Description: Standard Deviation of Body Acceleration Magnitude in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerkMag-mean()
* Description: Mean of Body Acceleration Jerk Magnitude in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyAccJerkMag-std()
* Description: Standard Deviation of Body Acceleration Jerk Magnitude in Frequency Domain
* Class: Numeric
* Unit: standard gravity units
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyroMag-mean()
* Description: Mean of Body Angular Velocity Magnitude in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyroMag-std()
* Description: Standard Deviation of Body Angular Velocity Magnitude in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyroJerkMag-mean()
* Description: Mean of Body Angular Velocity Jerk Magnitude in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

### FreqBodyGyroJerkMag-std()
* Description: Standard Deviation of Body Angular Velocity Jerk Magnitude in Frequency Domain
* Class: Numeric
* Unit: radians per second
* Remarks: This is the mean of the original variable grouped by activity and subject.

 
