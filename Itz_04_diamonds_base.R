

#Low-Level Plot
plot(diamonds$carat,diamonds$price)
plot(diamonds$carat,diamonds$price, pch=20)
plot(diamonds$carat,diamonds$price, pch=20, col="blue")
plot(diamonds$carat,diamonds$price, pch=20, col=3)


### Achtung falsche Farbzuweisung ###########
rainbow8<-rainbow(8)
plot(diamonds$carat,diamonds$price, pch=20, col=rainbow8)

### Besser
diamonds$pointcol<-rainbow8[diamonds$clarity]

plot(diamonds$carat,diamonds$price, pch=20, col=diamonds$pointcol)
plot(diamonds$carat,diamonds$price, pch=20, col=diamonds$clarity)

#################################



# Umformatieren von factor in character
diamonds$clarity.string<-as.character(diamonds$clarity)


clarity.all<-names(table(diamonds$clarity))
#oder
clarity.all<-names(table(diamonds$clarity.string))
#oder
clarity.all<-levels(diamonds$clarity)


clarities<-data.frame(clarity.all)
names(clarities)<-"clarity"
clarities$coef<-NA


par(mfrow=c(3,3))
for (i in 1:8)
{
  clarity.sel<-clarity.all[i]
  ind<-which(diamonds$clarity.string==clarity.sel)
  
  diamonds.sub<-diamonds[ind,]
  plot(diamonds.sub$carat,
       diamonds.sub$price,
       col=rainbow8[i], 
       main = paste("Clarity",clarity.sel), 
       pch=20, 
       cex=2,
       xlim=c(0,5), ylim=c(0,20000), 
       xaxs="i", yaxs="i", 
       xlab="carat", ylab="price", 
             
       )
  grid()
  
  mod1<-lm(diamonds.sub$price~diamonds.sub$carat)
  mod2a<-lm(diamonds.sub$price~diamonds.sub$carat-1)
  mod2b<-lm(diamonds.sub$price~0+diamonds.sub$carat)
  
  mod3<-lm(diamonds.sub$price~poly(diamonds.sub$carat,2))
  mod4 <- lm(log(diamonds.sub$price) ~ diamonds.sub$carat)  
  
  
  x<-seq(from = 0, to=max(diamonds.sub$carat), by=0.1)
  y1<-coefficients(mod1)[1]+coefficients(mod1)[2]*x
  y2<-coefficients(mod2a)[1]*x
  y3<-coefficients(mod3)[1]+coefficients(mod3)[2]*x+coefficients(mod3)[3]*x^2
  y4<-x^(coefficients(mod4)[1]+x*coefficients(mod4)[2]
    
  lines(x,y1, lwd=2,lty=1)
  lines(x,y2, lwd=2,lty=2)
  lines(x,y3, lwd=2,lty=3)
  lines(x,y4, lwd=2,lty=4)
  
#  print(clarity.sel)
#  print(lin.mod3)
  
  clarities$coef[i]<-coefficients(mod4)[2]
}

