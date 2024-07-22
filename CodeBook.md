# Code Book

This code book describes the variables, the data, and any transformations or work performed to clean up the data.

## Data Source

The data used for this project is from the Human Activity Recognition Using Smartphones Dataset, available from the UCI Machine Learning Repository. For detailed information, refer to the [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables

### Identifiers

- `subject`: Identifier of the subject who performed the activity (1 to 30)
- `activity`: Type of activity performed during the recording (6 activities)

### Measurements

The dataset includes only the measurements on the mean and standard deviation for each measurement from the original feature vector signals. Each feature vector is normalized and bounded within [-1,1].

## Transformations

1. Merged training and test datasets.
2. Extracted measurements on the mean and standard deviation.
3. Used descriptive activity names to name the activities.
4. Appropriately labeled the dataset with descriptive variable names.
5. Created a second tidy dataset with the average of each variable for each activity and each subject.
