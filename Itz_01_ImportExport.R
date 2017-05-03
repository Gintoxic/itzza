library(ggplot2)


getwd()
setwd("c:/work/itzza")

str(diamonds)
diamonds2<-diamonds[-c(5,6,8,9,10)]
diamonds2$carat<-prettyNum(diamonds$carat, decimal.mark = ",")
str(diamonds2)


write.table(x = diamonds2, file="diamonds.csv", sep=";", row.names = F)

diamonds2<-read.table(file="diamonds.csv", sep=";")

str(diamonds2)

diamonds3<-read.table(file="diamonds.csv", sep=";", stringsAsFactors = FALSE)
str(diamonds3)


# Export zu SAS mit Umweg über CSV
library(foreign)
write.foreign(df=diamonds, datafile="diamonds_sas.csv", codefile="diamonds_sas.sas", package="SAS")
