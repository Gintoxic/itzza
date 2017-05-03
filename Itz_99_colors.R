

######## Farben ##########
######## manuell ########
farbe<-"#fd9602"
barplot(1:10, col=farbe)
barplot(rep(1,3),col=c("yellow4", "red4", "black"), horiz = T, border = F, space = F, xaxt="n")


########## Einfache Paletten #############
palette<-rainbow(10)
palette<-heat.colors(10)
palette<-terrain.colors(10)


########## Einfache Paletten #############
numcols<-100
palette <- colorRampPalette(c("yellow", "red", "black"))(numcols)
barplot(rep(1,numcols), col=palette, horiz = T, border = F, space = F, xaxt="n")



### Vive la France !!!!
numcols<-100
palette <- colorRampPalette(c("blue", "white","white", "red"))(numcols)
mids<-barplot(rep(1,numcols), col=palette, horiz = F, border = F, space = F, yaxt="n")

text(x=mids[round(numcols/2)],
     y=0.5,
     labels="Allons enfants de la Patrie,\n le jour de gloire est arrivé!",
     cex=1.5)

library(tuneR)
play("http://www.marseillaise.org/audio/marseillaise.wav","C:/Work/VLCPortable/App/vlc/vlc.exe") 



# Generate some data
set.seed(42)
df <- data.frame(xval=rnorm(10^4),yval=rnorm(10^4))

# Make color depend on yval
ggplot(df, aes(x=xval, y=yval, colour=yval)) + geom_point()

# Use a different gradient
ggplot(df, aes(x=xval, y=yval, colour=yval, alpha=.1)) + geom_point() + 
  scale_colour_gradientn(colours=rainbow(4))



######## Colorbrewer
library(RColorBrewer)
library(ggplot2)
display.brewer.all()

## display a divergent palette
brewer.pal(7,"BrBG")
display.brewer.pal(7,"BrBG")
display.brewer.pal(10,"BrBG")

## display a qualitative palette
brewer.pal(7,"Accent")
