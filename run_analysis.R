library(dplyr)
library(reshape2)

#Read in training and test data sets, and merge into a single data frame
training <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
data_raw <- rbind(training,test)

#Read in descriptive variable names
features <- read.table("./UCI HAR Dataset/features.txt")

#Identify variables with mean and standard deviations, assumed to be variable names ending with "mean()" and "std()"
indices <- grep("mean\\(\\)|std\\(\\)",features$V2)
variable.names <- grep("mean\\(\\)|std\\(\\)",features$V2,value=TRUE)

#Subset data to only retain variables with mean and standard deviations
#and rename variables with descriptive names
data <- data_raw[,indices]
names(data) <- variable.names

#Read in subject and activity labels and combine into main data frame 
training.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="Subject")
training.activity <- read.table("./UCI HAR Dataset/train/Y_train.txt", col.names = "ActLabel")
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="Subject")
test.activity <- read.table("./UCI HAR Dataset/test/Y_test.txt", col.names = "ActLabel")
subject <- rbind(training.subject,test.subject)
activity <- rbind(training.activity,test.activity)
data <- cbind(data,subject,activity)

#Read in descriptive activity names 
activity.names <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Merge descriptive activity names into main data frame
data <- merge(data,activity.names,by.x="ActLabel",by.y="V1")

#Drop activity code 
data <- select(data,-ActLabel)

#Rename descriptive activity variable  
data <- rename(data,Activity=V2)

#Reorder columns so that Subject and Activity are leftmost 
data <- select(data, Subject, Activity, everything())

#Re-label dataset clearly to distinguish time and frequency domains and fix typo for "BodyBody"
names(data) <- gsub("^t","Time",names(data))
names(data) <- gsub("^f","Freq",names(data))
names(data) <- gsub("BodyBody","Body",names(data))

#Reshape to narrow
dataMelt <- melt(data,id=c("Subject","Activity"))

#Cast data frame to means
dataMean <- dcast(dataMelt,Subject + Activity ~ variable, mean)

#Write txt file
write.table(dataMean,file="tidy_HAR.txt",row.names=FALSE)

