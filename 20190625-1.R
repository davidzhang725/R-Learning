library(kernlab)
data(spam)

set.seed(3435)
trainIndicator = rbinom(4601,size = 1,prob = 0.5)

trainSpam = spam[trainIndicator ==1,]
testSpam = spam[trainIndicator ==0,]

plot(log10(trainSpam$capitalAve)~ trainSpam$type)

plot(trainSpam$capitalAve ~ trainSpam$type)

plot(log10(trainSpam$capitalAve+1)~ trainSpam$type)

plot(log10(trainSpam[,1:5]+1))

hCluster = hclust(dist(t(trainSpam[,1:57])))
plot(hCluster)


hClusterUpdated = hclust(dist(t(log10(trainSpam[,1:55] + 1))))
plot(hClusterUpdated)
kk <- as.numeric(trainSpam$type) - 1
head(kk)
tail(kk)
dim(kk)

tt = rep(NA,55)
tt

?reformulate

ff <- y ~ z + x + w
tt <- terms(ff)
tt

# modle
trainSpam$numType = as.numeric(trainSpam$type) -1
costFuction = function(x,y) sum(x != (y >0.5))
cvError = rep(NA,55)
library(boot)
for(i in 1:55){
        lmFormula = reformulate(names(trainSpam[i]),response = "numType")
        glmFit = glm(lmFormula,family = "binomial",data = trainSpam)
        cvError[i] = cv.glm(trainSpam,glmFit,costFuction,2)$delta[2]
}

names(trainSpam)[which.min(cvError)]


predictionModel = glm(numType ~ charDollar,family = "binomial",data = trainSpam)
predictionTest = predict(predictionModel,testSpam)
predictedSpam = rep("nonspam",dim(testSpam)[1])

head(predictedSpam)

dim(testSpam)[2]

head(testSpam)

table(testSpam$type)

predictedSpam[predictionModel$fitted > 0.5] = "spam"

head(predictedSpam)

table(predictedSpam,testSpam$type)

(61 + 458)/(1346 + 458 + 61 + 449)
