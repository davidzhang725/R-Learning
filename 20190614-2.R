library(datasets)
hist(airquality$Ozone)

with(airquality,plot(Wind,Ozone))


airquality <- transform(airquality,Month = factor(Month))
boxplot(Ozone~Month,airquality,xlab = "Month",ylab = "Ozone(ppb)")

names(airquality)

head(airquality)


dim(airquality)

with(airquality,plot(Wind,Ozone))
title(main = "Ozone and Wind in New York City")

with(airquality,plot(Wind,Ozone,main = "Ozone and Wind in New York City",pch=20))
model <- lm(Ozone~Wind,airquality)
abline(model,lwd=2)

par(mfrow = c(1,3),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(airquality,{
        plot(Wind,Ozone,main = "O & Z")
        plot(Solar.R,Ozone,main = "S & Z")
        plot(Temp,Ozone,main = "T & Z")
        mtext("kkkk",outer = TRUE)
})


a <- rnorm(100)
b <- rnorm(100)
plot(a,b,pch = 20)
title("sandiantu")
legend("topleft",legend = "Data",pch=20)
fit <- lm(y~x)
abline(fit,lwd=2)


x <- rnorm(100)
y <- rnorm(100)
g <- gl(2,50,labels = c("male","female"))
plot(x,y,type = "n")
points(x[g=="male"],y[g=="male"],col="green")
points(x[g=="female"],y[g=="female"],col="red")