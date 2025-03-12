# Code Book for the UCI HAR Dataset Cleaning Project

## 1. Introduction

This codebook describes the dataset obtained from the Human Activity Recognition Using Smartphones project and details the cleaning process performed.

## 2. Data Source

The original dataset was obtained from: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## 3. Data Description

The dataset contains sensor readings from the accelerometers and gyroscopes of Samsung Galaxy S smartphones, recorded during six different activities.

### **Variables**

-   `subject`: Identifies the participant (1-30).
-   `activity_code`: Encodes the type of activity performed.
-   `TimeBodyAccelerometerMeanX`, `TimeBodyAccelerometerMeanY`, `TimeBodyAccelerometerMeanZ`: Mean values of body acceleration signals in X, Y, and Z axes.
-   `TimeBodyAccelerometerStdX`, `TimeBodyAccelerometerStdY`, `TimeBodyAccelerometerStdZ`: Standard deviation values for body acceleration signals in X, Y, and Z axes.
-   `FrequencyBodyAccelerometerMeanX`, `FrequencyBodyAccelerometerMeanY`, `FrequencyBodyAccelerometerMeanZ`: Mean values of frequency domain body acceleration signals.
-   ... (List all relevant features extracted)

## 4. Data Processing Steps

1.  The training and test datasets were merged.
2.  Only measurements related to mean and standard deviation were selected.
3.  Activity codes were replaced with descriptive activity names.
4.  Column names were made more descriptive.
5.  A tidy dataset was created with the average of each variable for each subject and activity.

## 5. Final Tidy Dataset

-   The final dataset contains 180 observations (30 subjects × 6 activities).
-   The data is stored in a file named `tidy_dataset.txt`.
