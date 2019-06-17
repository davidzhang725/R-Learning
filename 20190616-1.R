pdf(file = "myplot.pdf")
with(faithful,plot(eruptions,waiting))
title(main = "old")
dev.off()


library(datasets)
with(faithful,plot(eruptions,waiting))
tital(main="old")
dev.copy(png,file="geyserplopt.png")
dev.off()
