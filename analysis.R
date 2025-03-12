#downloading and unzippng the dataset
url <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 
download.file(url, destfile = "data.zip", method = "curl")

unzip("data.zip")

rm("data.zip")

library(dplyr)

# Read training and test data
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ID", "Activity"))

# Load Training Data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")

# Load Test Data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

# Combine training and test data
X_data <- rbind(x_train, x_test)
Y_data <- rbind(y_train, y_test)
Subject_data <- rbind(subject_train, subject_test)

# Name columns using features
colnames(X_data) <- features$V2

# Extract columns with mean() and std()
selected_features <- grep("mean\\(\\)|std\\(\\)", features$V2)
X_data <- X_data[, selected_features]

# Replace activity numbers with descriptive names
Y_data$Activity <- factor(Y_data$Activity, levels = activity_labels$ID, labels = activity_labels$Activity)

#label data with descriptive variable names
colnames(X_data) <- gsub("^t", "Time", colnames(X_data))
colnames(X_data) <- gsub("^f", "Frequency", colnames(X_data))
colnames(X_data) <- gsub("Acc", "Accelerometer", colnames(X_data))
colnames(X_data) <- gsub("Gyro", "Gyroscope", colnames(X_data))
colnames(X_data) <- gsub("Mag", "Magnitude", colnames(X_data))
colnames(X_data) <- gsub("BodyBody", "Body", colnames(X_data))

#creating tidy dataset
# Combine data
final_data <- cbind(Subject_data, Y_data, X_data)

# Create a second dataset with averages
tidy_data <- final_data %>%
        group_by(Subject, Activity) %>%
        summarise_all(mean)

# Write to file
write.table(tidy_data, "tidy_dataset.txt", row.name = FALSE)

