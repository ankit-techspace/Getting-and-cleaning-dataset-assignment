 run_analysis.R script does the data preparation followed by steps outlined in the course:

1. Downloading the dataset
2. Assigning each data to variables
3. Merges both training and test set 
4. Extracting the mean and standard deviation for each measurement 
5. Naming of actitivies in the data set
6. Labelling in the data set   
7. Exporting into cleanData.txt file

Identifiers
subject - ID of the subject
activity - name of the activity performed by the subjects when measurements were taken

Measurements

TimeBodyAccelerometer.mean...X	TimeBodyAccelerometer.mean...Y	TimeBodyAccelerometer.mean...Z	TimeGravityAccelerometer.mean...X	TimeGravityAccelerometer.mean...Y	TimeGravityAccelerometer.mean...Z	TimeBodyAccelerometerJerk.mean...X	TimeBodyAccelerometerJerk.mean...Y	TimeBodyAccelerometerJerk.mean...Z	TimeBodyGyroscope.mean...X	TimeBodyGyroscope.mean...Y	TimeBodyGyroscope.mean...Z	TimeBodyGyroscopeJerk.mean...X	TimeBodyGyroscopeJerk.mean...Y	TimeBodyGyroscopeJerk.mean...Z	TimeBodyAccelerometerMagnitude.mean..	TimeGravityAccelerometerMagnitude.mean..	TimeBodyAccelerometerJerkMagnitude.mean..	TimeBodyGyroscopeMagnitude.mean..	TimeBodyGyroscopeJerkMagnitude.mean..	FrequencyBodyAccelerometer.mean...X	FrequencyBodyAccelerometer.mean...Y	FrequencyBodyAccelerometer.mean...Z	FrequencyBodyAccelerometer.meanFreq...X	FrequencyBodyAccelerometer.meanFreq...Y	FrequencyBodyAccelerometer.meanFreq...Z	FrequencyBodyAccelerometerJerk.mean...X	FrequencyBodyAccelerometerJerk.mean...Y	FrequencyBodyAccelerometerJerk.mean...Z	FrequencyBodyAccelerometerJerk.meanFreq...X	FrequencyBodyAccelerometerJerk.meanFreq...Y	FrequencyBodyAccelerometerJerk.meanFreq...Z	FrequencyBodyGyroscope.mean...X	FrequencyBodyGyroscope.mean...Y	FrequencyBodyGyroscope.mean...Z	FrequencyBodyGyroscope.meanFreq...X	FrequencyBodyGyroscope.meanFreq...Y	FrequencyBodyGyroscope.meanFreq...Z	FrequencyBodyAccelerometerMagnitude.mean..	FrequencyBodyAccelerometerMagnitude.meanFreq..	FrequencyBodyAccelerometerJerkMagnitude.mean..	FrequencyBodyAccelerometerJerkMagnitude.meanFreq..	FrequencyBodyGyroscopeMagnitude.mean..	FrequencyBodyGyroscopeMagnitude.meanFreq..	FrequencyBodyGyroscopeJerkMagnitude.mean..	FrequencyBodyGyroscopeJerkMagnitude.meanFreq..	Angle.TimeBodyAccelerometerMean.Gravity.	Angle.TimeBodyAccelerometerJerkMean..GravityMean.	Angle.TimeBodyGyroscopeMean.GravityMean.	Angle.TimeBodyGyroscopeJerkMean.GravityMean.	Angle.X.GravityMean.	Angle.Y.GravityMean.	Angle.Z.GravityMean.	TimeBodyAccelerometer.std...X	TimeBodyAccelerometer.std...Y	TimeBodyAccelerometer.std...Z	TimeGravityAccelerometer.std...X	TimeGravityAccelerometer.std...Y	TimeGravityAccelerometer.std...Z	TimeBodyAccelerometerJerk.std...X	TimeBodyAccelerometerJerk.std...Y	TimeBodyAccelerometerJerk.std...Z	TimeBodyGyroscope.std...X	TimeBodyGyroscope.std...Y	TimeBodyGyroscope.std...Z	TimeBodyGyroscopeJerk.std...X	TimeBodyGyroscopeJerk.std...Y	TimeBodyGyroscopeJerk.std...Z	TimeBodyAccelerometerMagnitude.std..	TimeGravityAccelerometerMagnitude.std..	TimeBodyAccelerometerJerkMagnitude.std..	TimeBodyGyroscopeMagnitude.std..	TimeBodyGyroscopeJerkMagnitude.std..	FrequencyBodyAccelerometer.std...X	FrequencyBodyAccelerometer.std...Y	FrequencyBodyAccelerometer.std...Z	FrequencyBodyAccelerometerJerk.std...X	FrequencyBodyAccelerometerJerk.std...Y	FrequencyBodyAccelerometerJerk.std...Z	FrequencyBodyGyroscope.std...X	FrequencyBodyGyroscope.std...Y	FrequencyBodyGyroscope.std...Z	FrequencyBodyAccelerometerMagnitude.std..	FrequencyBodyAccelerometerJerkMagnitude.std..	FrequencyBodyGyroscopeMagnitude.std..	FrequencyBodyGyroscopeJerkMagnitude.std..

Activity labels

LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS


