# getdata
This Codebook describes the variables in resulting file "calculated_tidy_data.txt"

## Codebook
The dataset contains the mean of any given variable for any combination of user and activity.

"Time Body Accelaration mean() X-direction"                                 
"Time Body Accelaration mean() Y-direction"                                 
"Time Body Accelaration mean() Z-direction"                                 
"Time Gravity Accelaration mean() X-direction"                              
"Time Gravity Accelaration mean() Y-direction"                              
"Time Gravity Accelaration mean() Z-direction"                              
"Time Body Accelaration Jerk Signal mean() X-direction"                     
"Time Body Accelaration Jerk Signal mean() Y-direction"                     
"Time Body Accelaration Jerk Signal mean() Z-direction"                     
"Time Body Gyroscope mean() X-direction"                                    
"Time Body Gyroscope mean() Y-direction"                                    
"Time Body Gyroscope mean() Z-direction"                                    
"Time Body Gyroscope Jerk Signal mean() X-direction"                        
"Time Body Gyroscope Jerk Signal mean() Y-direction"                        
"Time Body Gyroscope Jerk Signal mean() Z-direction"                        
"Time Body Accelaration Magnitude mean()"                                   
"Time Gravity Accelaration Magnitude mean()"                                
"Time Body Accelaration Jerk Signal Magnitude mean()"                       
"Time Body Gyroscope Magnitude mean()"                                      
"Time Body Gyroscope Jerk Signal Magnitude mean()"                          
"Frequency Body Accelaration mean() X-direction"                            
"Frequency Body Accelaration mean() Y-direction"                            
"Frequency Body Accelaration mean() Z-direction"                            
"Frequency Body Accelaration mean Frequency() X-direction"                  
"Frequency Body Accelaration mean Frequency() Y-direction"                  
"Frequency Body Accelaration mean Frequency() Z-direction"                  
"Frequency Body Accelaration Jerk Signal mean() X-direction"                
"Frequency Body Accelaration Jerk Signal mean() Y-direction"                
"Frequency Body Accelaration Jerk Signal mean() Z-direction"                
"Frequency Body Accelaration Jerk Signal mean Frequency() X-direction"      
"Frequency Body Accelaration Jerk Signal mean Frequency() Y-direction"      
"Frequency Body Accelaration Jerk Signal mean Frequency() Z-direction"      
"Frequency Body Gyroscope mean() X-direction"                               
"Frequency Body Gyroscope mean() Y-direction"                               
"Frequency Body Gyroscope mean() Z-direction"                               
"Frequency Body Gyroscope mean Frequency() X-direction"                     
"Frequency Body Gyroscope mean Frequency() Y-direction"                     
"Frequency Body Gyroscope mean Frequency() Z-direction"                     
"Frequency Body Accelaration Magnitude mean()"                              
"Frequency Body Accelaration Magnitude mean Frequency()"                    
"Frequency BodyBody Accelaration Jerk Signal Magnitude mean()"              
"Frequency BodyBody Accelaration Jerk Signal Magnitude mean Frequency()"    
"Frequency BodyBody Gyroscope Magnitude mean()"                             
"Frequency BodyBody Gyroscope Magnitude mean Frequency()"                   
"Frequency BodyBody Gyroscope Jerk Signal Magnitude mean()"                 
"Frequency BodyBody Gyroscope Jerk Signal Magnitude mean Frequency()"       
"Time Body Accelaration Standard Deviation() X-direction"                   
"Time Body Accelaration Standard Deviation() Y-direction"                   
"Time Body Accelaration Standard Deviation() Z-direction"                   
"Time Gravity Accelaration Standard Deviation() X-direction"                
"Time Gravity Accelaration Standard Deviation() Y-direction"                
"Time Gravity Accelaration Standard Deviation() Z-direction"                
"Time Body Accelaration Jerk Signal Standard Deviation() X-direction"       
"Time Body Accelaration Jerk Signal Standard Deviation() Y-direction"       
"Time Body Accelaration Jerk Signal Standard Deviation() Z-direction"       
"Time Body Gyroscope Standard Deviation() X-direction"                      
"Time Body Gyroscope Standard Deviation() Y-direction"                      
"Time Body Gyroscope Standard Deviation() Z-direction"                      
"Time Body Gyroscope Jerk Signal Standard Deviation() X-direction"          
"Time Body Gyroscope Jerk Signal Standard Deviation() Y-direction"          
"Time Body Gyroscope Jerk Signal Standard Deviation() Z-direction"          
"Time Body Accelaration Magnitude Standard Deviation()"                     
"Time Gravity Accelaration Magnitude Standard Deviation()"                  
"Time Body Accelaration Jerk Signal Magnitude Standard Deviation()"         
"Time Body Gyroscope Magnitude Standard Deviation()"                        
"Time Body Gyroscope Jerk Signal Magnitude Standard Deviation()"            
"Frequency Body Accelaration Standard Deviation() X-direction"              
"Frequency Body Accelaration Standard Deviation() Y-direction"              
"Frequency Body Accelaration Standard Deviation() Z-direction"              
"Frequency Body Accelaration Jerk Signal Standard Deviation() X-direction"  
"Frequency Body Accelaration Jerk Signal Standard Deviation() Y-direction"  
"Frequency Body Accelaration Jerk Signal Standard Deviation() Z-direction"  
"Frequency Body Gyroscope Standard Deviation() X-direction"                 
"Frequency Body Gyroscope Standard Deviation() Y-direction"                 
"Frequency Body Gyroscope Standard Deviation() Z-direction"                 
"Frequency Body Accelaration Magnitude Standard Deviation()"                
"Frequency BodyBody Accelaration Jerk Signal Magnitude Standard Deviation()"
"Frequency BodyBody Gyroscope Magnitude Standard Deviation()"               
"Frequency BodyBody Gyroscope Jerk Signal Magnitude Standard Deviation()"   
"activity"                                                                  
"user" 

## Original Codebook Explanation.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
