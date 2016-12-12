#Set working directory
setwd("C:\\Users\\tannav\\Documents\\R\\UCI HAR Dataset")

##read features use second column
features <- read.table('features.txt')
features <- as.character(features[,2])

#read training data
training_x <- read.table(".\\train\\X_train.txt")
training_activity <- read.table(".\\train\\y_train.txt")
training_subject <- read.table(".\\train\\subject_train.txt")
train <- data.frame(training_subject, training_activity, training_x)
names(train) <- c(c('subject', 'activity'), features)

#read test data
test_x <- read.table(".\\test\\X_test.txt")
test_activity <- read.table(".\\test\\y_test.txt")
test_subject <- read.table(".\\test\\subject_test.txt")
test <- data.frame(test_subject, test_activity, test_x)
names(test) <- c(c('subject', 'activity'), features)


#merge them together
data.all <- rbind(train, test)

#look for mean and std 
mean_std.select <- grep('mean|std', features)


#new table with only the mean and sd data
# +2 because first two columns subject and activity
data.sub <- data.all[,c(1,2,mean_std.select + 2)]

#change from activity code to label
activity.labels <- read.table('activity_labels.txt', header = FALSE)
activity.labels <- as.character(activity.labels[,2])
data.sub$activity <- activity.labels[data.sub$activity]

data.tidy <- aggregate(data.sub[,3:81], by = list(activity = data.sub$activity, subject = data.sub$subject),FUN = mean)