
library(dplyr)
## download file
if(!file.exists("./project")) dir.create("./project")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./project/projectdata.zip")
# trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
# Content type 'application/zip' length 62556944 bytes (59.7 MB)
# downloaded 59.7 MB
unzipedfile <- unzip("./project/projectdata.zip", exdir = "./project")
str(unzipedfile)
# chr [1:28] "./project/UCI HAR Dataset/activity_labels.txt" "./project/UCI HAR Dataset/features.txt" ...
## Read data to R
# Read train data
traindata.x <- read.table("./project/UCI HAR Dataset/train/X_train.txt")
traindata.y <- read.table("./project/UCI HAR Dataset/train/Y_train.txt")
trainsubject <- read.table("./project/UCI HAR Dataset/train/subject_train.txt")
# Read test data
testdata.x <- read.table("./project/UCI HAR Dataset/test/X_test.txt")
testsubject <- read.table("./project/UCI HAR Dataset/test/subject_test.txt")
testdata.y <- read.ftable("./project/UCI HAR Dataset/test/Y_test.txt")
# Read Feature data
datafeature <- read.table("./project/UCI HAR Dataset/features.txt")
# Read Activity Lables
activitylabels <- read.table("./project/UCI HAR Dataset/activity_labels.txt")
# Set names to colums
datafeaturename <- datafeature[,2]
colnames(testdata.x) <- datafeaturename
colnames(traindata.x) <- datafeaturename
colnames(testsubject)  <- "subject"
colnames(trainsubject) <- "subject"
colnames(traindata.y) <- "activity"
colnames(testdata.y) <- "activity"
str(testdata.x)
str(traindata.x)
str(testsubject)
str(testdata.y)
## 1. Merge the training and the test sets to create one data set
datatrain <- cbind(trainsubject, traindata.y, traindata.x)
datatest <- cbind(testsubject, testdata.y, testdata.x)
dataall <- rbind(datatrain, datatest)
## 2. Extract only the measurements on the mean and standard deviation for each measurement
subdata <- grep("-(mean|std)\\(\\)", datafeaturename)
datafinal <- dataall[, c(1, 2, subdata+2)]
## 3. Uses descriptive activity names to name the activities in the data set
#  load activity data into R
#labelsactivity <- read.table("./project/UCI HAR Dataset/activity_labels.txt", header = FALSE)
# activitylabels <- read.table("./project/UCI HAR Dataset/activity_labels.txt")
#activity <- datafinal$activity
# names(activity) <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
# replace datafinal
datafinal$activity <- factor(datafinal$activity, levels = activitylabels[,1], labels = activitylabels[,2])
## 4. Appropriately labels the data set with descriptive variable names.
names(datafinal) <- gsub("\\()", "", names(datafinal))
names(datafinal) <- gsub("^t", "time", names(datafinal))
names(datafinal) <- gsub("^f", "frequency", names(datafinal))
names(datafinal) <- gsub("Acc", "Accelerometer", names(datafinal))
names(datafinal) <- gsub("Gyro", "Gyroscope", names(datafinal))
names(datafinal) <- gsub("Mag", "Magnitude", names(datafinal))
names(datafinal) <- gsub("BodyBody", "Body", names(datafinal))
names(datafinal) <- gsub("-mean", "Mean", names(datafinal))
names(datafinal) <- gsub("-std", "Std", names(datafinal))
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
newdata <- datafinal %>% group_by(subject, activity) %>% summarise_each(funs(mean))
write.table(newdata, file = "tidydata.txt", row.names = FALSE, quote = FALSE)
write.table(newdata, "./tidydata.txt", row.names = FALSE, quote = FALSE)
library(dplyr)
## download file
if(!file.exists("./project")) dir.create("./project")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./project/projectdata.zip")
# unzip data
unzipedfile <- unzip("./project/projectdata.zip", exdir = "./project")
str(unzipedfile)
## Read data to R
# Read train data
traindata.x <- read.table("./project/UCI HAR Dataset/train/X_train.txt")
traindata.y <- read.table("./project/UCI HAR Dataset/train/Y_train.txt")
trainsubject <- read.table("./project/UCI HAR Dataset/train/subject_train.txt")
# Read test data
testdata.x <- read.table("./project/UCI HAR Dataset/test/X_test.txt")
testsubject <- read.table("./project/UCI HAR Dataset/test/subject_test.txt")
testdata.y <- read.ftable("./project/UCI HAR Dataset/test/Y_test.txt")
# Read Feature data
datafeature <- read.table("./project/UCI HAR Dataset/features.txt")
# Read Activity Lables
activitylabels <- read.table("./project/UCI HAR Dataset/activity_labels.txt")
# Set names to colums
datafeaturename <- datafeature[,2]
colnames(testdata.x) <- datafeaturename
colnames(traindata.x) <- datafeaturename
colnames(testsubject)  <- "subject"
colnames(trainsubject) <- "subject"
colnames(traindata.y) <- "activity"
colnames(testdata.y) <- "activity"
datafeaturename <- datafeature[,2]
colnames(testdata.x) <- datafeaturename
colnames(traindata.x) <- datafeaturename
colnames(testsubject)  <- "subject"
colnames(trainsubject) <- "subject"
colnames(traindata.y) <- "activity"
colnames(testdata.y) <- "activity"
head(testdata.x, 2)
str(testdata.x)
str(testdata.y)
str(traindata.x)
str(traindata.y)
str(testsubject)
str(trainsubject)
names(testdata.x)
names(testdata.y)
names(traindata.y)
str(traindata.y)
str(testdata.y)
testdata.y <- read.table("./project/UCI HAR Dataset/test/Y_test.txt")
colnames(testdata.y) <- "activity"
names(testdata.y)
datatrain <- cbind(trainsubject, traindata.y, traindata.x)
datatest <- cbind(testsubject, testdata.y, testdata.x)
dataall <- rbind(datatrain, datatest)
str(dataall)
subdata <- grep("-(mean|std)\\(\\)", datafeaturename)
datafinal <- dataall[, c(1, 2, subdata+2)]
str(datafinal)
datafinal$activity <- factor(datafinal$activity, levels = activitylabels[,1], labels = activitylabels[,2])
head(datafinal$activity)
head(datafinal$activity, 10)
names(datafinal) <- gsub("\\()", "", names(datafinal))
names(datafinal) <- gsub("^t", "time", names(datafinal))
names(datafinal) <- gsub("^f", "frequency", names(datafinal))
names(datafinal) <- gsub("Acc", "Accelerometer", names(datafinal))
names(datafinal) <- gsub("Gyro", "Gyroscope", names(datafinal))
names(datafinal) <- gsub("Mag", "Magnitude", names(datafinal))
names(datafinal) <- gsub("BodyBody", "Body", names(datafinal))
names(datafinal) <- gsub("-mean", "Mean", names(datafinal))
names(datafinal) <- gsub("-std", "Std", names(datafinal))
names(datafinal)
newdata <- datafinal %>% group_by(subject, activity) %>% summarise_each(funs(mean))
write.table(newdata, file = "tidydata.txt", row.names = FALSE, quote = FALSE)
write.table(newdata, "./tidydata.txt", row.names = FALSE, quote = FALSE)
str(newdata)
