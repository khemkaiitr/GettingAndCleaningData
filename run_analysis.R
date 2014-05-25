# run_analysis.R is a script to analyse data collected from the accelerometers from the Samsung Galaxy S smartphone

# Read data from the link.
setwd("~/Desktop/")
# create a temporary directory
if (!file.exists("UCI HAR Dataset")) {
  td = tempdir()
  # create the placeholder file
  tf = tempfile(tmpdir=td, fileext=".zip")
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  # Download datafile
  files <- download.file(fileUrl,tf, method="curl")
  unzip("td")
}
setwd("UCI HAR Dataset/")
# Read datafiles
trainXData <- read.table("train/X_train.txt")
testXData  <- read.table("test/X_test.txt")
trainYData  <- read.table("train/y_train.txt")
testYData <- read.table("test/y_test.txt")
subjectTrain  <- read.table("train//subject_train.txt")
subjectTest  <- read.table("test//subject_test.txt")
labels <- read.table("activity_labels.txt")

# Provide header names from features.txt
features  <- read.table("features.txt")
names(trainXData) <- features[,2]
names(testXData)  <- features[,2]
names(trainYData)  <- "activity_label"
names(testYData) <- "activity_label"
# Combine datafile
tempData1 <- rbind(trainXData, testXData)
tempData2  <-rbind(trainYData, testYData)

mergedData <- cbind(tempData1, tempData2)

# Get mean and std data for all the variables
colToExtract <- as.numeric(c(grep("mean()", names(mergedData), fixed=TRUE),grep("std()", names(mergedData), fixed=TRUE)))
extractedData <- mergedData[,sort(colToExtract)]
# add activity name and subject to the extracted dataset
extractedData <- cbind(extractedData, tempData2, rbind(subjectTrain, subjectTest))
names(extractedData)[68] <- "subject_number"
extractedData <- as.data.frame(extractedData)
## change the activity_label into descriptive activity label
for(i in 1:dim(labels)[1]){
  extractedData$activity_label[which(extractedData$activity_label==i)] <- as.character(labels[i,2])
}
## New activity measures: can be found in the uploaded file on the server
temp <- read.csv("renamedLabel.csv")
newActivity <- temp[,4]
names(extractedData) <- newActivity

# Write the table in text format
write.table(extractedData,file="Tidy UCI HAR Dataset.txt")

# Melt 
library("reshape2")
temp <- melt(extractedData, id = c("subject.number", "activity.label"))
meanAcitivitySubjects <- dcast(temp,subject.number+activity.number~variable, mean)