library(ggplot2)
str(mpg)

qplot(displ,hwy,data=mpg)


#对于不同的drv(维度分类)，会有不同的颜色
qplot(displ,hwy,data=mpg,col=drv)


qplot(displ,hwy,data=mpg,geom = c("point","smooth"))


qplot(hwy,data=mpg,fill=drv)
names(mpg)


qplot(displ,hwy,data=mpg,facets = .~drv)


qplot(hwy,data=mpg,facets = drv~.,binwidth=2)


str(maacs)

?maacs
