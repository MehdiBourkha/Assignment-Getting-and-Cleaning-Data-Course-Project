# Human Activity Recognition Using Smartphones Data Analysis

This repository contains an R script (`run_analysis.R`) that processes the Human Activity Recognition Using Smartphones dataset to create tidy data suitable for analysis. It also includes a `CodeBook.md` that describes the variables, data, and transformations performed, and this README file to explain the analysis files.

## Files

- `run_analysis.R`: R script that performs the following:
  - Merges training and test sets to create one dataset.
  - Extracts measurements on the mean and standard deviation.
  - Uses descriptive activity names.
  - Appropriately labels the dataset with descriptive variable names.
  - Creates a second tidy dataset with the average of each variable for each activity and each subject.
  
- `CodeBook.md`: Code book describing the variables, data, and transformations performed.

- `tidy_data.txt`: Tidy dataset containing the merged and cleaned data.

- `tidy_data_avg.txt`: Tidy dataset with the average of each variable for each activity and each subject.

## Usage Instructions

1. Download the Human Activity Recognition Using Smartphones Dataset from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

2. Extract the dataset into a directory named `UCI HAR Dataset` in the same directory as `run_analysis.R`.

3. Run the `run_analysis.R` script in R or RStudio. It will generate `tidy_data.txt` and `tidy_data_avg.txt`.

## Notes

- The script assumes the `UCI HAR Dataset` directory structure remains intact.
- R packages such as `dplyr` may need to be installed (`install.packages("dplyr")`) if not already installed.
