x <- c(1,2,3,4,5)
summary(x)
x
var(x)

y <- c(1,2,3,4,30)
summary(y)
var(y)


library(psych)

install.packages("https://cran.r-project.org/src/contrib/Archive/psych/psych_1.8.10.tar.gz")


install.packages("psych", dependencies=TRUE, INSTALL_opts = c('--no-lock'))

library(psych)

names(USJudgeRatings)
dim(USJudgeRatings)
head(USJudgeRatings)

fa.parallel(USJudgeRatings[,-1],fa="pc",n.iter = 100,show.legend = FALSE)

pc <- principal(USJudgeRatings[,-1],nfactors = 1)
pc

fa.parallel(Harman23.cor$cov,n.obs = 302,fa="pc",n.iter = 100,show.legend = FALSE,main ="kk")
kk <- principal(Harman23.cor$cov,nfactors = 2,rotate = "none")
kk

pc2<-principal(Harman23.cor$cov,nfactors=2,rotate = "varimax",scores=T) 

unclass(pc2$EPVAL)
