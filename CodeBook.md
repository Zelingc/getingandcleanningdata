
                                                  Project Code Book  

Study Design
=================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Process to Get tidy.data for the Projedt
========================================
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Tidy Data for the project
=========================
Tidy data contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

Activity Labels
---------------
1. WALKING:            subject was walking during the test
2. WALKING_UPSTAIRS:   subject was walking up a staircase during the test
3. WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
4. SITTING:            subject was sitting during the test
5. STANDING:           subject was standing during the test
6. LAYING:             subject was laying down during the test

Identifiers
-----------
1. subject  - The ID of the test subject
2. activity - The type of activity performed when the corresponding measurements were taken

Variables
---------
1. mean():  Mean value
2. std():   Standard deviation


* No unit of measures is reported as all features were normalized and bounded within [-1,1]

Measurements
------------
[1]   "subject"                                    
      "activity"                                   
[3]   "timeBodyAccelerometerMean-X"                
      "timeBodyAccelerometerMean-Y"                 
      "timeBodyAccelerometerMean-Z"                 
[6]   "timeBodyAccelerometerStd-X"                 
      "timeBodyAccelerometerStd-Y"                  
      "timeBodyAccelerometerStd-Z"                 
[9]   "timeGravityAccelerometerMean-X"             
      "timeGravityAccelerometerMean-Y"             
      "timeGravityAccelerometerMean-Z"              
[12]  "timeGravityAccelerometerStd-X"              
      "timeGravityAccelerometerStd-Y"               
      "timeGravityAccelerometerStd-Z"               
[15]  "timeBodyAccelerometerJerkMean-X"            
      "timeBodyAccelerometerJerkMean-Y"            
      "timeBodyAccelerometerJerkMean-Z"            
[18]  "timeBodyAccelerometerJerkStd-X"             
      "timeBodyAccelerometerJerkStd-Y"              
      "timeBodyAccelerometerJerkStd-Z"             
[21]  "timeBodyGyroscopeMean-X"                    
      "timeBodyGyroscopeMean-Y"                     
      "timeBodyGyroscopeMean-Z"                    
[24]  "timeBodyGyroscopeStd-X"                     
      "timeBodyGyroscopeStd-Y"                      
      "timeBodyGyroscopeStd-Z"                      "
[27]  "timeBodyGyroscopeJerkMean-X"                
      "timeBodyGyroscopeJerkMean-Y"                 
      "timeBodyGyroscopeJerkMean-Z"                 
[30]  "timeBodyGyroscopeJerkStd-X"                 
      "timeBodyGyroscopeJerkStd-Y"                  
      "timeBodyGyroscopeJerkStd-Z"                 
[33]  "timeBodyAccelerometerMagnitudeMean"         
      "timeBodyAccelerometerMagnitudeStd"           
      "timeGravityAccelerometerMagnitudeMean"       
[36]  "timeGravityAccelerometerMagnitudeStd"       
      "timeBodyAccelerometerJerkMagnitudeMean"     
      "timeBodyAccelerometerJerkMagnitudeStd"       
[39]  "timeBodyGyroscopeMagnitudeMean"             
      "timeBodyGyroscopeMagnitudeStd"               
      "timeBodyGyroscopeJerkMagnitudeMean"          
[42]  "timeBodyGyroscopeJerkMagnitudeStd"          
      "frequencyBodyAccelerometerMean-X"            
      "frequencyBodyAccelerometerMean-Y"            
[45]  "frequencyBodyAccelerometerMean-Z"           
      "frequencyBodyAccelerometerStd-X"             
      "frequencyBodyAccelerometerStd-Y"             
[48]  "frequencyBodyAccelerometerStd-Z"            
      "frequencyBodyAccelerometerJerkMean-X"        
      "frequencyBodyAccelerometerJerkMean-Y"        
[51]  "frequencyBodyAccelerometerJerkMean-Z"       
      "frequencyBodyAccelerometerJerkStd-X"         
      "frequencyBodyAccelerometerJerkStd-Y"         
[54]  "frequencyBodyAccelerometerJerkStd-Z"        
      "frequencyBodyGyroscopeMean-X"                
      "frequencyBodyGyroscopeMean-Y"                
[57]  "frequencyBodyGyroscopeMean-Z"               
      "frequencyBodyGyroscopeStd-X"                
      "frequencyBodyGyroscopeStd-Y"                 
[60]  "frequencyBodyGyroscopeStd-Z"                
      "frequencyBodyAccelerometerMagnitudeMean"     
      "frequencyBodyAccelerometerMagnitudeStd"      
      "frequencyBodyAccelerometerJerkMagnitudeMean"
[64]  "frequencyBodyAccelerometerJerkMagnitudeStd" 
      "frequencyBodyGyroscopeMagnitudeMean"         
      "frequencyBodyGyroscopeMagnitudeStd"         
[67]  "frequencyBodyGyroscopeJerkMagnitudeMean"    
      "frequencyBodyGyroscopeJerkMagnitudeStd"      
