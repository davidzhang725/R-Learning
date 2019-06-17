srmData <- read.csv("D:/rgit/data/srm data.csv")

dim(srmData)

names(srmData)

head(srmData)

# step1 order data
library(dplyr)

srm_order <- arrange(srmData,VENDOR_NAME)
## srm_order 根据供应商名称排序后的数据集

head(srm_order,3)


# step2 select country != CN
F_srm <- filter(srm_order,COUNTRY != "CN")

head(F_srm)

dim(F_srm)

names(F_srm)

# step3 toupper
F_srm_toupper <- toupper(F_srm$VENDOR_NAME)

head(F_srm_toupper)

F_srm_toupper
