library(tidyr)
library(dplyr)
if(!file.exists("./data")) {dir.create ("./data")}

# Download and extract files if the file has not been downloaded already
if(!file.exists("./data/dataset.zip")){
  
  # Download file
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,"./data/dataset.zip")
  
  # Extract file
  unzip("./data/dataset.zip",exdir = "./data") 
} 

# Reading all data
featuresNames <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
# Training Data Set
trainingData <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = featuresNames[,2])
trainingLabels <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
trainingSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectID")

# Test Data Set
testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = featuresNames[,2])
testLabels <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectID")

# 1. Combining Training and Test Data sets. 
newDataSet <- bind_rows(trainingData, testData)
Activities <- rbind(trainingLabels, testLabels)
Subjects <- rbind(trainingSubject, testSubject)

# 2. Extracting only the measurements on the mean and standard deviation for each measement
MeansAndStd <- grep("[Mm]ean|std", names(newDataSet), value = TRUE)
newDataSet <- select(newDataSet, MeansAndStd)

#Adding new columns to newDataSet (activity labels and Subjects)
newDataSet <- cbind(Subjects, Activities, newDataSet)

# 3, 4. Naming activities -> merging Data with activity_labels
FinalData <- newDataSet%>%
  merge(activity_labels, by.x= "V1", by.y = "V1", sort = FALSE)%>%
  select(-V1)%>%
  rename(Activity = V2)%>%
  select(SubjectID, Activity, 1:87)%>%
  arrange(SubjectID, Activity)
rm(list=setdiff(ls(), "FinalData"))
# 5. Creating a tidy data set with the average of each variable for each activity and each subject
Averages <- FinalData%>%
  group_by(SubjectID, Activity)%>%
  summarise_all(mean)

write.table(Averages, file = "TidyData.txt", row.names = FALSE)