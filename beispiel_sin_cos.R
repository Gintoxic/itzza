### Initialisierung

x<-seq(-2*pi, 2*pi, by=0.1)
y1=sin(x)
y2=cos(x)


dif<-abs(y1-y2)
### Einfache Plots
plot(y1)

plot(x,y1, type='l', ylim=c(-1,1.5))
lines(x,y2, col="red")
lines(x,dif, col="orange")



## Globales Minimum
  dif==0
  ind<-which(dif==min(dif))
  ind<-which.min(dif)
 
 x[ind]
 
  abline(v = x[ind])
  abline(h=0, lty=3)
 
  
  # Werte unter Schwellwert
 ind<-which(dif<0.1)
   
 plot(dif, type="l")
 
 abline(v = x[ind], col=rainbow(length(ind)))
 
 
 
 ## Schleifen
 for(i in 1:10) print(i)
 for (i in 1:length(dif))
 {print(dif[i])}

 
#############################################
 plot(x,y1, type='l')
 lines(x,y2, col="red")
 dif<-abs(y1-y2)
 
 ## Lösung als Schleife
 
 vec<-rep(0, length(dif))
 res<-NULL
 for (i in 2:(length(dif)-1))
 {
   if (dif[i]<dif[i-1] & dif[i]<dif[i+1])
   {print(i)
     vec[i]<-1
     res<-c(res,i)}
     
 }

   res
   points(x[res], y1[res])
   points(x[res], y2[res], col="blue")
   points(x,vec, col="red")
##################################

### Lösung mit Schleife in Funktion
mymin<-function(x)
{
  res<-NULL
  for (i in 2:(length(x)-1))
  {
    if (x[i]<x[i-1] & x[i]<x[i+1])
    {res<-cbind(res,i)}
    
  }
return(res)
}


plot(x,y1, type="l")
lines(x,y2, type="l")
ind<-mymin(dif)
points(x[ind], y1[ind], col="red")

###################################
###################################

n=100
barplot(rep(1,n), border = F)

c<-rainbow(n)
barplot(rep(1,n),col=c, border = F)

c<-terrain.colors(n)
barplot(rep(1,n),col=c, border = F)

numcols<-100


palette <- colorRampPalette(c("yellow", "red", "black"))(numcols)
barplot(1:100, col=palette)

?colorRampPalette


jet.colors <-
    colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan",
                     "#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))

jet.colors(100)
