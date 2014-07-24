CodeBook for run_analysis.R
=================
**General Information about the variable names**

1. The features selected for this tidy dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

2. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

3. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

4. These signals were used to estimate variables of the feature vector for each pattern:  
  - '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

5. The set of variables that were estimated from these signals are: 
  - mean(): Mean value
  - std(): Standard deviation

===================
**Data Dictionary**

1. subject:
  - numeric
  - The subject who performed the activity for each window sample.
  - Its range is from 1 to 30. 
2. activitylabels:
  - character
  - The six activities that each person performed, wearing a smartphone (Samsung Galaxy S II) on the waist.
  * WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. tBodyAccmeanX:
  - numeric
  - mean value of the body acceleration singal in the X direction
  - prefix 't' to denote time
4. tBodyAccmeanY:
  - numeric
  - mean value of the body acceleration singal in the y direction
  - prefix 't' to denote time
5. tBodyAccmeanZ:
  - numeric
  - mean value of the body acceleration singal in the Z direction
  - prefix 't' to denote time
6. tBodyAccstdX:
  - numeric
  - Standard deviation of the body acceleration singal in the X direction
  - prefix 't' to denote time
7. tBodyAccstdY:
  - numeric
  - Standard deviation of the body acceleration singal in the y direction
  - prefix 't' to denote time
8. tBodyAccstdZ:
  - numeric
  - Standard deviation of the body acceleration singal in the z direction
  - prefix 't' to denote time
9. tGravityAccmeanX:
  - numeric
  - mean value of the gravity acceleration signal in the X direction
  - prefix 't' to denote time
10. tGravityAccmeanY:
  - numeric
  - mean value of the gravity acceleration signal in the y direction
  - prefix 't' to denote time
11. tGravityAccmeanZ:
  - numeric
  - mean value of the gravity acceleration signal in the z direction
  - prefix 't' to denote time
12. tGravityAccstdX:
  - numeric
  - Standard deviation of the gravity acceleration signal in the x direction
  - prefix 't' to denote time
13. tGravityAccstdY:
  - numeric
  - Standard deviation of the gravity acceleration signal in the y direction
  - prefix 't' to denote time
14. tGravityAccstdZ:
  - numeric
  - Standard deviation of the gravity acceleration signal in the z direction
  - prefix 't' to denote time
15. tBodyAccJerkmeanX:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the X direction
  - prefix 't' to denote time
16. tBodyAccJerkmeanY:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the y direction
  - prefix 't' to denote time
17. tBodyAccJerkmeanZ:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the z direction
  - prefix 't' to denote time
18. tBodyAccJerkstdX:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the X direction
  - prefix 't' to denote time
19. tBodyAccJerkstdY:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the y direction
  - prefix 't' to denote time
20. tBodyAccJerkstdZ:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the z direction
  - prefix 't' to denote time
21. tBodyGyromeanX:
  - numeric
  - mean of the body angular velocity in the x direction
  - prefix 't' to denote time
22. tBodyGyromeanY:
  - numeric
  - mean of the body angular velocity in the y direction
  - prefix 't' to denote time
23. tBodyGyromeanZ:
  - numeric
  - mean of the body angular velocity in the z direction
  - prefix 't' to denote time
24. tBodyGyrostdX:
  - numeric
  - standard deviation of the body angular velocity in the x direction
  - prefix 't' to denote time
25. tBodyGyrostdY:
  - numeric
  - standard deviation of the body angular velocity in the y direction
  - prefix 't' to denote time
26. tBodyGyrostdZ:
  - numeric
  - standard deviation of the body angular velocity in the z direction
  - prefix 't' to denote time
27. tBodyGyroJerkmeanX:
  - numeric
  - mean of the body angular velocity Jerk signals in the x direction
  - prefix 't' to denote time
28. tBodyGyroJerkmeanY:
  - numeric
  - mean of the body angular velocity Jerk signals in the y direction
  - prefix 't' to denote time
29. tBodyGyroJerkmeanZ:
  - numeric
  - mean of the body angular velocity Jerk signals in the z direction
  - prefix 't' to denote time
30. tBodyGyroJerkstdX:
  - numeric
  - standard deviation of the body angular velocity Jerk signals in the x direction
  - prefix 't' to denote time
31. tBodyGyroJerkstdY:
  - numeric
  - standard deviation of the body angular velocity Jerk signals in the y direction
  - prefix 't' to denote time
32. tBodyGyroJerkstdZ:
  - numeric
  - standard deviation of the body angular velocity Jerk signals in the z direction
  - prefix 't' to denote time
33. tBodyAccMagmean:
  - numeric
  - mean of the magnitude of the body acceleration of these three-dimensional signals
  - prefix 't' to denote time
34. tBodyAccMagstd:
  - numeric
  - standard deviation of the magnitude of the body acceleration of these three-dimensional signals
  - prefix 't' to denote time
35. tGravityAccMagmean:
  - numeric
  - mean of the magnitude of the gravity acceleration of these three-dimensional signals
  - prefix 't' to denote time
36. tGravityAccMagstd:
  - numeric
  - standard deviation of the magnitude of the gravity acceleration of these three-dimensional signals
  - prefix 't' to denote time
37. tBodyAccJerkMagmean:
  - numeric
  - mean of the magnitude of the body acceleration jerk singals of these three-dimensional signals
  - prefix 't' to denote time
38. tBodyAccJerkMagstd:
  - numeric
  - standard deviation of the magnitude of the body acceleration jerk singals of these three-dimensional signals
  - prefix 't' to denote time
39. tBodyGyroMagmean:
  - numeric
  - mean of the magnitude of the body angular velocity of these three-dimensional signals
  - prefix 't' to denote time
40. tBodyGyroMagstd:
  - numeric
  - standard deviation of the magnitude of the body angular velocity of these three-dimensional signals
  - prefix 't' to denote time
41. tBodyGyroJerkMagmean:
  - numeric
  - mean of the magnitude of the body angular velocity jerk singals of these three-dimensional signals
  - prefix 't' to denote time
42. tBodyGyroJerkMagstd:
  - numeric
  - standard deviation of the magnitude of the body angular velocity jerk singals of these three-dimensional signals
  - prefix 't' to denote time
43. fBodyAccmeanX:
  - numeric
  - mean value of the body acceleration singal in the X direction
  - prefix 'f' to indicate frequency
44. fBodyAccmeanY:
  - numeric
  - mean value of the body acceleration singal in the y direction
  - prefix 'f' to indicate frequency
45. fBodyAccmeanZ:
  - numeric
  - mean value of the body acceleration singal in the z direction
  - prefix 'f' to indicate frequency
46. fBodyAccstdX:
  - numeric
  - Standard deviation of the body acceleration singal in the X direction
  - prefix 'f' to indicate frequency
47. fBodyAccstdY:
  - numeric
  - Standard deviation of the body acceleration singal in the y direction
  - prefix 'f' to indicate frequency
48. fBodyAccstdZ:
  - numeric
  - Standard deviation of the body acceleration singal in the z direction
  - prefix 'f' to indicate frequency
49. fBodyAccJerkmeanX:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the X direction
  - prefix 'f' to indicate frequency  
50. fBodyAccJerkmeanY:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the y direction
  - prefix 'f' to indicate frequency
51. fBodyAccJerkmeanZ:
  - numeric
  - mean value of the body linear acceleration Jerk signals in the z direction
  - prefix 'f' to indicate frequency
52. fBodyAccJerkstdX:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the X direction
  - prefix 'f' to indicate frequency
53. fBodyAccJerkstdY:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the y direction
  - prefix 'f' to indicate frequency
54. fBodyAccJerkstdZ:
  - numeric
  - Standard deviation of the body linear acceleration Jerk signals in the z direction
  - prefix 'f' to indicate frequency
55. fBodyGyromeanX:
  - numeric
  - mean value of the body angular velocity in the x direction
  - prefix 'f' to indicate frequency
56. fBodyGyromeanY:
  - numeric
  - mean value of the body angular velocity in the y direction
  - prefix 'f' to indicate frequency
57. fBodyGyromeanZ:
  - numeric
  - mean value of the body angular velocity in the z direction
  - prefix 'f' to indicate frequency
58. fBodyGyrostdX:
  - numeric
  - standard deviation of the body angular velocity in the x direction 
  - prefix 'f' to indicate frequency
59. fBodyGyrostdY:
  - numeric
  - Standard deviation of the body angular velocity in the y direction
  - prefix 'f' to indicate frequency
60. fBodyGyrostdZ:
  - numeric
  - Standard deviation of the body angular velocity in the z direction
  - prefix 'f' to indicate frequency
61. fBodyAccMagmean:
  - numeric
  - mean of the magnitude of the body acceleration of these three-dimensional signals
  - prefix 'f' to indicate frequency
62. fBodyAccMagstd:
  - numeric
  - standard deviation of the magnitude of the body acceleration of these three-dimensional signals
  - prefix 'f' to indicate frequency
63. fBodyBodyAccJerkMagmean:
  - numeric
  - mean of the magnitude of the body acceleration jerk singals of these three-dimensional signals
  - prefix 'f' to indicate frequency
64. fBodyBodyAccJerkMagstd:
  - numeric
  - standard deviation of the magnitude of the body acceleration jerk singals of these three-dimensional signals
  - prefix 'f' to indicate frequency
65. fBodyBodyGyroMagmean:
  - numeric
  - mean of the magnitude of the body angular velocity of these three-dimensional signals
  - prefix 'f' to indicate frequency
66. fBodyBodyGyroMagstd:
  - numeric
  - Standard deviation of the magnitude of the body angular velocity of these three-dimensional signals
  - prefix 'f' to indicate frequency
67. fBodyBodyGyroJerkMagmean:
  - numeric
  - mean of the magnitude of the body angular velocity jerk singals of these three-dimensional signals
  - prefix 'f' to indicate frequency
68. fBodyBodyGyroJerkMagstd:
  - numeric
  - Standard deviation of the magnitude of the body angular velocity jerk singals of these three-dimensional signals
  - prefix 'f' to indicate frequency

