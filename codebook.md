
##Original readyme + resulting data description

###Tiday_data.txt has the resulting tidy data.
Running the run_analysis.R on the original data set (downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
(dscription at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) will result in a data file that will have mean calculated for each subject and for each activity.

##Following steps were taken to generate this data:

*Merge the training and the test sets to create one data set.
*Extract only the measurements on the mean and standard deviation for each measurement.
*Use descriptive activity names to name the activities in the data set
*Appropriately label the data set with descriptive variable names.
*From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

##variable names and their meaning
activities: 			The activity performed
subject: 				Subject ID
tbodyacc-mean-x/y/z: 		Mean time for acceleration of body for X/Y/Z direction
tbodyacc-std-x/y/z: 		Standard deviation of time for acceleration of body for X/Y/Z direction
tgravityacc-mean-x/y/x: 	Mean time of acceleration of gravity for X/Y/Z direction
tgravityacc-std-x/y/z: 		Standard deviation of time of acceleration of gravity for X/Y/Z direction
tbodyaccjerk-mean-x/y/z: 	Mean time of body acceleration jerk for  direction
tbodyaccjerk-std-x/y/z: 	Standard deviation of time of body acceleration jerk for X/Y/Z direction
tbodygyro-mean-x/y/z:	 	Mean body gyroscope measurement for X/Y/Z direction
tbodygyro-std-x/y/z:	 	Standard deviation of body gyroscope measurement for X/Y/Z direction
tbodygyrojerk-mean-x/y/z: 	Mean jerk signal of body for X/Y/Z direction
tbodygyrojerk-std-x/y/z: 	Standard deviation of jerk signal of body for X/Y/Z direction
tbodyaccmag-mean:	 		Mean magnitude of body Acc
tbodyaccmag-std:	 		Standard deviation of magnitude of body Acc
tgravityaccmag-mean: 		Mean gravity acceleration magnitude
tgravityaccmag-std: 		Standard deviation of gravity acceleration magnitude
tbodyaccjerkmag-mean: 		Mean magnitude of body acceleration jerk
tbodyaccjerkmag-std: 		Standard deviation of magnitude of body acceleration jerk
tbodygyromag-mean:	 		Mean magnitude of body gyroscope measurement
tbodygyromag-std:	 		Standard deviation of magnitude of body gyroscope measurement
tbodygyrojerkmag-mean: 		Mean magnitude of body body gyroscope jerk measurement
tbodygyrojerkmag-std: 		Standard deviation of magnitude of body body gyroscope jerk measurement

*variable names that start with f (instead of t above) are same as above except in the frequency domain.



##Readme received with the row data follows
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

