
############
# Conditional Inference Tree for Mileage
library(party)
?ggplot2::diamonds
diamonds1<-diamonds[which(diamonds$carat==1),]


ind1<-runif(min = 1,max=dim(diamonds1)[1],100)
ind2<-runif(min = 1,max=dim(diamonds1)[1],100)



sample1<-diamonds1[ind1,]
sample2<-diamonds1[ind2,]


fit <- ctree(price~carat + clarity +color + cut , 
              data=sample1,controls = ctree_control(minbucket = 10))


plot(fit)

sample2a<-sample2

sample2a$price.predicted<-predict(object = fit, newdata=sample2)

