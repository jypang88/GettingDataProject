# README

## Instructions 

1. Download the dataset on Human Activity Recognition using Smartphones from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Extract the dataset. 
3. Start R Studio and set the working directory to the folder where you extracted the dataset to.
4. Run the script "run_analysis.R".
5. The script will create a new dataset "tidy_HAR.txt" which provides the average value by activity and subject for all variables based on mean or standard deviation. 
6. Use the following code to read the dataset:
  
		data <- read.table("tidy_HAR.txt", header = TRUE) 
		View(data)

## What this script does

The "run_analysis.R" script carries out the following processing steps: 
1. Combine the training and test datasets into a single dataset.
2. Extract the variables relating to mean and standard deviation only, assumed to be variable names ending with "mean()" and "std()" 
3. Rename the variables in the dataset with descriptive names (e.g. "tBodyAcc-mean()-X" instead of "V1")
4. Combine the dataset with separate datasets on the type of activity and subject ID of each observation
5. Label each activity type with its descriptive name (e.g. WALKING) and spell out "time" and "frequency" in variable names
6. Create a new summary dataset which consists of the average values of each measurement variable (in columns) by subject-activity observation (in rows).
