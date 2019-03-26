library(dplyr)
library(data.table)

# loading the training data
X_train=fread("train/X_train.txt")
y_train=fread("train/y_train.txt")
subject_train=fread("train/subject_train.txt")

# loading the test data
X_test=fread("test/X_test.txt")
y_test=fread("test/y_test.txt")
subject_test=fread("test/subject_test.txt")

# STEP 1: Merging the data

# merging x training and x test
X=data.frame(rbind(X_test,X_train))
# merging y training and y test
y=rbind(y_test,y_train)
# merging subject training and subject test
subject=rbind(subject_test,subject_train)

# Step 2: Extracting the measurement of on the mean and standart deviation

# reading the feature into R
features = read.table("features.txt")

mean_std_features=grep("-(mean|std)\\()",features[,2])
mean_std_x=X[, mean_std_features]

# getting the correct column names
mean_std_features_names=grep("-(mean|std)\\()",features[,2],value=TRUE)

# setting the correct column names
names(mean_std_x)=mean_std_features_names

# Step 3: Setting descriptive activity nameson the activities
activities=read.table("activity_labels.txt")
y$V1=factor(y$V1,levels = activities[,1],labels = activities[,2])
names(y)="Activity"

# Step 4: Labeling the dataset with descriptive names

names(subject)="Subjects"

#binding all data in 1 data frame
data_set=cbind(mean_std_x,y,subject)

# renaming the columns with descriptive names
names(data_set)=gsub("Acc",".Acceleration",names(data_set))
names(data_set)=gsub("^t","TimeDomain.",names(data_set))
names(data_set)=gsub("Mag",".Magnitude.",names(data_set))
names(data_set)=gsub("^f","FrequencyDomain.",names(data_set))
names(data_set)=gsub(".std\\()",".StandartDeviation",names(data_set))
names(data_set)=gsub(".mean\\()",".Mean",names(data_set))
names(data_set)=gsub("Gyro",".Angular.Velocity.",names(data_set))
names(data_set)=gsub("GyroJerk",".Angular Acceleration.",names(data_set))

# Step 5: Create a second dataset with the average of each variable
# for each activity and each subject

# creating a new data set with the mean of each column
data_set_ave=data.table(data_set)

data_set_ave=data_set_ave[,lapply(.SD,mean),by=.(Activity,Subjects)]
# writing the new data frame into a text file
write.table(data_set_ave,"tidy_data.txt",row.names = FALSE)
