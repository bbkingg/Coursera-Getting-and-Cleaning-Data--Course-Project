Variables

X_train, y_train, X_test, y_test, subject_train and subject_test contain the data from the downloaded files.
X, y and subject are the merged data frames of the training data and test data of the corresponding variables. 
features contains the correct column names(variable names) for the X dataset.
mean_std_features is a numeric vector used to extract the location of the correct column(variable) names.
mean_std_features_names is a character vector containing the correct column(variable) names.
A similar approach is taken with activity names through the activities variable.
data_set merges X, y and subject in 1 dataset.
data_set_ave contains the averages of each column(variable) by subjects and activities which will be later stored in a .txt file.

dplyr and data.table libraries are used during the process

Subjects - ID of participant
activities - ID of activity type

Time-domain signals

Mean time-domain body acceleration in X,Y,Z directions:

TimeDomain.Body.Acceleration.Mean-(X,Y,Z)

Standard deviation of the time-domain body acceleration in X,Y,Z directions:

TimeDomain.Body.Acceleration.StandartDeviation-(X,Y,Z)

Mean time-domain gravity acceleration in X,Y,Z directions:

TimeDomain.Gravity.Acceleration.Mean-(X,Y,Z)

Standard deviation of the time-domain gravity acceleration in the X,Y,Z directions:

TimeDomain.Gravity.Acceleration.StandartDeviation-(X,Y,Z)

Mean time-domain body acceleration jerk in X, Y and Z directions:

TimeDomain.Body.AccelerationJerk.Mean-(X,Y,Z)

Standard deviation of the time-domain body acceleration jerk in X,Y,Z directions:

TimeDomain.Body.AccelerationJerk.StandartDeviation-(X,Y,Z)

Mean time-domain body angular velocity in X,Y,Z directions:

TimeDomain.Body.Angular.Velocity..Mean-X(X,Y,Z)

Standard deviation of the time-domain body angular velocity in X,Y,Z directions:

TimeDomain.Body.Angular.Velocity..StandartDeviation-(X,Y,Z)

Mean time-domain body angular velocity jerk in the X,Y,Z directions:

TimeDomain.Body.Angular.Velocity.Jerk.Mean-(X,Y,Z)

Standard deviation of the time-domain body angular velocity jerk in the X,Y,Z directions:

TimeDomain.Body.Angular.Velocity.Jerk.StandartDeviation-(X,Y,Z)

Mean and standard deviation of the time-domain magnitude of body acceleration:

TimeDomain.Body.Acceleration.Magnitude..Mean                             
TimeDomain.Body.Acceleration.Magnitude..StandartDeviation

Mean and standard deviation of the time-domain magnitude of gravity acceleration:

TimeDomain.Gravity.Acceleration.Magnitude..Mean                          
TimeDomain.Gravity.Acceleration.Magnitude..StandartDeviation

Mean and standard deviation of the time-domain magnitude of body acceleration jerk :

TimeDomain.Body.AccelerationJerk.Magnitude..Mean                          
TimeDomain.Body.AccelerationJerk.Magnitude..StandartDeviation 

Mean and standard deviation of the time-domain magnitude of body angular velocity:

TimeDomain.Body.Angular.Velocity..Magnitude..Mean                          
TimeDomain.Body.Angular.Velocity..Magnitude..StandartDeviation

Mean and standard deviation of the time-domain magnitude of body angular velocity jerk :

TimeDomain.Body.Angular.Velocity.Jerk.Magnitude..Mean                    
TimeDomain.Body.Angular.Velocity.Jerk.Magnitude..StandartDeviation

Frequency-domain signals

Mean frequency-domain body acceleration in the X,Y,Z directions:

frequencyDomainBodyAccelerometerMean(X,Y,Z)

Standard deviation of the frequency-domain body acceleration in the X,Y,Z directions:

frequencyDomainBodyAccelerometerStandardDeviation(X,Y,Z)

Weighted average of the frequency components of the frequency-domain body acceleration in the X,Y,Z directions:

FrequencyDomain.Body.Acceleration.Mean-(X,Y,Z)

Average frequency-domain body acceleration jerk in X,Y,Z directions:

FrequencyDomain.Body.Acceleration.StandartDeviation-(X,Y,Z)

Standard deviation of the frequency-domain body acceleration jerk in X,Y,Z directions:

FrequencyDomain.Body.AccelerationJerk.Mean-(X,Y,Z)

Weighted average of the frequency components of the frequency-domain body acceleration jerk in X,Y,Z directions:

FrequencyDomain.Body.AccelerationJerk.StandartDeviation-(X,Y,Z)

Average frequency-domain body angular velocity in X,Y,Z directions:

FrequencyDomain.Body.Angular.Velocity..Mean-(X,Y,Z)

Standard deviation of the frequency-domain body angular velocity in X,Y,Z directions:

FrequencyDomain.Body.Angular.Velocity..StandartDeviation-(X,Y,Z)

Weighted average of the frequency components of the frequency-domain body angular velocity in X,Y,Z directions:

FrequencyDomain.Body.Acceleration.Magnitude..Mean(X,Y,Z)

Average, standard deviation, and average of the frequency components of the frequency-domain magnitude of body acceleration:

FrequencyDomain.Body.Acceleration.Magnitude..Mean                          
FrequencyDomain.Body.Acceleration.Magnitude..StandartDeviation           
FrequencyDomain.BodyBody.AccelerationJerk.Magnitude..Mean

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk:

FrequencyDomain.BodyBody.AccelerationJerk.Magnitude..StandartDeviation    
FrequencyDomain.BodyBody.Angular.Velocity..Magnitude..Mean                
FrequencyDomain.BodyBody.Angular.Velocity..Magnitude..StandartDeviation

Average, standard deviation, of the frequency components of the frequency-domain magnitude of body angular velocity:

FrequencyDomain.BodyBody.Angular.Velocity.Jerk.Magnitude..Mean            
FrequencyDomain.BodyBody.Angular.Velocity.Jerk.Magnitude..StandartDeviation


