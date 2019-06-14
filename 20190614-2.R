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

