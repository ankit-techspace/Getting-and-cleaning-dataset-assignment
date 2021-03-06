library(dplyr)
filename <- "Coursera_Data_cleaning_Final.zip"

# Check if archive already exists.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  

# Check if folder exists
if (!file.exists("UCI HAR Data")) { 
  unzip(filename) 
}

# Assign all data frames

features <- read.table("UCI HAR Data/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Data/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Data/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Data/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Data/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Data/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Data/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Data/train/y_train.txt", col.names = "code")

# Merge the training and test data set

X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Subject, Y, X)

#Extract mean and sd for each measurement
TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

#naming of activities in the data set
TidyData$code <- activities[TidyData$code, 2]

#assign labels names
names(TidyData)[2] = "activity"
names(TidyData)<-gsub("Acc", "Accelerometer", names(TidyData))
names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
names(TidyData)<-gsub("^t", "Time", names(TidyData))
names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
names(TidyData)<-gsub("tBody", "TimeBody", names(TidyData))
names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("angle", "Angle", names(TidyData))
names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))

# Create a file with clean data
cleanData <- TidyData %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(cleanData, "cleanData.txt", row.name=FALSE)

str(cleanData)

cleanData