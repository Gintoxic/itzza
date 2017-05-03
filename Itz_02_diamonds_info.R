library(ggplot2)
data("diamonds")

head(diamonds)
View(diamonds)

summary(diamonds)
##########################################
table(diamonds$clarity)
dim(table(diamonds$clarity))

class(diamonds$clarity)
#########################################
