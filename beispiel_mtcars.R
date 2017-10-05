library(dplyr)


a<-c("Hund", "Katze", "Maus")
a[c(1,3)]
a[1,2]


a<-mtcars
?mtcars

colnames(mtcars)
rownames(mtcars)


mtcars$mpg
mtcars[,1]
mtcars[1,1]


mtcars[,"mpg"]
gibmir<-"mpg"
mtcars[,gibmir]

mtcars[,c("mpg", "hp")]
mtcars[,c(1, 4)]

gibmir<-c(1, 4)
mtcars[,gibmir]

mtcars[1:3,gibmir]
mtcars[c(1,2,3),gibmir]
mtcars[3,gibmir]

dicke_karren<-mtcars[which(mtcars$hp>110),]


mtcars$names<-rownames(mtcars)

barplot(mtcars$mpg)

plot(mtcars$mpg,mtcars$hp)
text(mtcars$mpg,mtcars$hp,rownames(mtcars))

plot(mtcars$lphkm,mtcars$hp)
text(mtcars$lphkm,mtcars$hp,rownames(mtcars))


mtc<-arrange(mtcars, mpg)
mids<-barplot(mtc$mpg)
text(mids,mtc$mpg, round(mtc$mpg), pos = 3, cex=0.8)
axis(side=1, at=mids, labels=mtc$names, las=2)

?arrange
mtc<-arrange(mtcars, hp)
mids<-barplot(mtc$hp)
text(mids,mtc$hp, round(mtc$hp), pos = 3, cex=0.8)
axis(side=1, at=mids, labels=mtc$names, las=2)

mtcars$lphkm<-(100*3.785411784) / (1.609344*mtcars$mpg)

plot(mtcars$hp,mtcars$lphkm)
mod<-lm(data=mtcars, formula= lphkm~hp)

x=min(mtcars$hp):max(mtcars$hp)
y=mod$coefficients[1]+mod$coefficients[2]*x
y=mod$coefficients[1]+mod$coefficients[2]*500


lines(x,y, col="red")

plot(mtcars$hp,mtcars$lphkm, pch=20, col="grey70")
lines(x,y, col="red")
text(mtcars$hp, mtcars$lphkm, mtcars$names, cex=0.7, pos=3)

plot(mtcars$hp,mtcars$lphkm, pch=20, col="grey70", 
     xlim=c(min(mtcars$hp)*0.9, max(mtcars$hp)*1.1),
     ylim=c(min(mtcars$lphkm)*0.9, max(mtcars$lphkm)*1.1))
lines(x,y, col="red")
text(mtcars$hp, mtcars$lphkm, mtcars$names, cex=0.7, pos=3)

library(d3heatmap)
str(mtcars)


klassen<-sapply(mtcars,class)
mitnehmen<-which(klassen %in% c("numeric", "integer"))
mitnehmen<-which(klassen %in% c("numeric", "integer") & !names(klassen) %in% c("hp", "disp")  )
d3heatmap(t(mtcars[,mitnehmen]))
heatmap (mtcars[,mitnehmen])
str(mtcars[,mitnehmen])
