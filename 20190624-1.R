lm(mpg~wt,data = mtcars)

lmfit <- lm(mpg~wt,data=mtcars)


plot(lmfit)

summary(lmfit)

names(lmfit)

z<-c(1,2,2,4,2,7,1,1)

z1<-table(z)

summary(z1)



install.packages("kernlab")
library(kernlab)
data(spam)
str(spam[,1:5])

names(spam)
dim(spam)

set.seed(3435)
trainIndicator = rbinom(4601,size = 1,prob = 0.5)
table(trainIndicator)

trainSpam = spam[trainIndicator ==1,]
testSpam = spam[trainIndicator ==0,]

head(trainSpam)

write.csv(trainSpam,"D:/rgit/R-learning/spam.csv")

table(trainSpam$type)

plot(trainSpam$capitalAve ~ trainSpam$type)


plot(log10(trainSpam$capitalAve )~ trainSpam$type)
