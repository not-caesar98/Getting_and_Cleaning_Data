# Getting and Cleaning Data Project

## 1. Project Overview

This project is part of the "Getting and Cleaning Data" course and aims to demonstrate the ability to collect, clean, and prepare a tidy dataset for analysis. The data used in this project is from the accelerometers of Samsung Galaxy S smartphones.

The final dataset meets the principles of tidy data, making it easier for future analysis.

## 2. Data Source

The original dataset was obtained from the UCI Machine Learning Repository: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Dataset Download Link: [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## 3. Files in This Repository

-   `run_analysis.R`: The R script that processes the raw data and generates a tidy dataset.

-   `tidy_dataset.txt`: The final cleaned and tidy dataset.

-   `CodeBook.md`: A codebook describing the variables, transformations, and summaries applied to the dataset.

-   `README.md`: This document, explaining the analysis process and repository structure.

## 4. Steps Performed in run_analysis.R

The script performs the following steps:

1.  **Load Required Packages**: Loads necessary R libraries.

2.  **Download and Extract Data**: If the dataset is not already present, it is downloaded and extracted.

3.  **Merge Training and Test Sets**: Combines the training and test datasets into a single dataset.

4.  **Extract Mean and Standard Deviation Measurements**: Selects only variables related to mean and standard deviation.

5.  **Assign Descriptive Activity Names**: Replaces activity codes with readable activity names.

6.  **Label Variables Descriptively**: Renames column headers for better readability.

7.  **Create a Tidy Dataset**: Produces a second dataset with the average of each variable for each activity and each subject.

8.  **Save the Tidy Dataset**: Writes the final tidy dataset to a text file (`tidy_dataset.txt`).

## 5. How to Run the Script

To reproduce the analysis:

1.  Download and extract the dataset from the provided link.

2.  Place `run_analysis.R` in the same directory as the extracted dataset.

3.  Open RStudio and set the working directory to the dataset folder.

4.  Run the script using:

    ```         
    source("run_analysis.R") 
    ```

5.  The `tidy_dataset.txt` file will be created in the working directory.

## 6. Dependencies

-   R (version 3.6 or higher)

-   Required packages:

    -   `dplyr`

    -   `data.table`

Install missing packages using:

```         
install.packages("dplyr") install.packages("data.table") 
```

## 7. License

This project is part of the "Getting and Cleaning Data" course by Coursera and follows the licensing terms of the UCI HAR dataset.
