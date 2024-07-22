# Load necessary libraries (if needed)
# install.packages("dplyr")
library(dplyr)

# Step 1: Merges the training and the test sets to create one data set
# Assuming the data is extracted in a folder named "UCI HAR Dataset"
# Adjust file paths as per your directory structure

# Load training data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load test data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Merge data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("UCI HAR Dataset/features.txt")
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features$V2)
x_data <- x_data[, mean_std_indices]
colnames(x_data) <- features$V2[mean_std_indices]

# Step 3: Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity"))
y_data$activity <- factor(y_data$V1, levels = activity_labels$activity_id, labels = activity_labels$activity)

# Step 4: Appropriately labels the data set with descriptive variable names
colnames(subject_data) <- "subject"
tidy_data <- cbind(subject_data, y_data, x_data)

# Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data_avg <- tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write tidy data sets to files
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
write.table(tidy_data_avg, "tidy_data_avg.txt", row.names = FALSE)
