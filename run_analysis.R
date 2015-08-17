# 03 getting data assignment
library(dplyr)
library(tidyr)
library(data.table)

# 1. Merges the training and the test sets to create one data set.

# read feature and activity names
setwd("/home/thorsten/UCI HAR Dataset/")
features <- read.csv("features.txt", sep=" ", header=FALSE)
features <- features[,2]
activities <- read.csv("activity_labels.txt", sep=" ", header=FALSE)
activities <- activities[,2]

# read x_train
setwd("/home/thorsten/UCI HAR Dataset/train")
xtrain <- read.table("X_train.txt")
colnames(xtrain) <- features
ytrain <- read.csv("y_train.txt", sep=" ", header=FALSE)
trainall <- cbind(xtrain, ytrain)

# append x_test
setwd("/home/thorsten/UCI HAR Dataset/test")
xtest <- read.table("X_test.txt")
colnames(xtest) <- features
xall <- rbind(xtrain,xtest)
ytest <- read.csv("y_test.txt", sep=" ", header=FALSE)
testall <- cbind(xtest, ytest)
# activity <- c(ytrain,ytest)

# append y_train and y_test
xall <- rbind(trainall, testall)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement

# use only variables/columns with mean or std in name
cn <- colnames(xall)
meancolumns <- grep("mean",cn,ignore.case=TRUE)
stdcolumns <- grep("std",cn,ignore.case=TRUE)
xsub <- xall[,c(meancolumns,stdcolumns,562)]
# subtract angle variabls
cn <- colnames(xsub)
anglecolumns <- grep("angle",cn,ignore.case=TRUE)
xsub <- xsub[,-c(anglecolumns)]

# 3. Uses descriptive activity names to name the activities in the data set

# demo for use of mapvalue
# test <- c(1,2,3,4,5,6)
# test2 <- c("eins", "zwei", "drei", "vier", "fünf", "sechs")
# data <- c(1,4,4,3,6)
# data2 <- mapvalues(data, from=test, to=test2)
# data2
# [1] "eins"  "vier"  "vier"  "drei"  "sechs"

fromvalues <- c(1:6)
tovalues <- lapply(activities,as.character)
newrow <- xsub[,80]
newrow <- mapvalues(newrow, from=fromvalues, to=tovalues)
xsub <- xsub[,-80]
xsub <- cbind(xsub,as.matrix(newrow))


# 4. Appropriately labels the data set with descriptive variable names. 
cn <- colnames(xsub)
cn <- sub("tBody", "Time Body",cn)
cn <- sub("fBody", "Frequency Body",cn)
cn <- sub("tGravity", "Time Gravity",cn)
cn <- sub("-mean", " mean",cn)
cn <- sub("meanFreq", "mean Frequency",cn)
cn <- sub("Acc", " Accelaration",cn)
cn <- sub("Gyro", " Gyroscope",cn)
cn <- sub("Jerk", " Jerk Signal",cn)
cn <- sub("Mag", " Magnitude",cn)
cn <- sub("-std", " Standard Deviation",cn)
cn <- sub("-X", " X-direction",cn)
cn <- sub("-Y", " Y-direction",cn)
cn <- sub("-Z", " Z-direction",cn)
cn <- sub("activity", "Activity",cn)
colnames(xsub) <- cn


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each
# variable for each activity and each subject.
setwd("/home/thorsten/UCI HAR Dataset/train")
subjects <- read.csv("subject_train.txt", sep=" ", header=FALSE)

setwd("/home/thorsten/UCI HAR Dataset/test")
subjectstest <- read.csv("subject_test.txt", sep=" ", header=FALSE)

allsubjects <- rbind(subjects, subjectstest)
xuser <- data.frame(xsub)
tidydata <- cbind(xuser, allsubjects)
colnames(tidydata) <- c(cn[-80],"activity","user")


dataDT <- data.table(tidydata)
calculatedData<- dataDT[, lapply(.SD, mean), by=list("user", "activity")]
write.table(calculatedData, "calculated_tidy_data.txt")
