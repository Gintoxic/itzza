#- location/address

#- location/address

library(ggmap)
#myLocation <- "University of Washington"


#myLocation <- c(lon = 7.60599, lat =50.36478)
myLocation <- c(lon = 7.59723, lat =50.36203)
#myLocation <- c(-130, 30, -105, 50)

myMap <- get_map(location=myLocation,
                 source="stamen", 
                 maptype="watercolor", crop=FALSE ,zoom=15 )

#character string providing map theme. options available are "terrain", "terrain-background", "satellite", "roadmap", and "hybrid" (google maps), "terrain", "watercolor", and "toner" (stamen maps), or a positive integer for cloudmade maps (see ?get_cloudmademap)
get_map

ggmap(myMap)


# 
# png(filename = "koblenz2015.png", width = 3000, height = 2800)
# 
# dev.off()





library(ggmap)
#myLocation <- "University of Washington"


#myLocation <- c(lon = 7.60599, lat =50.36478)
#myLocation <- c(lon = 7.59723, lat =50.36203)
deltalon<-0.014
deltalat<-0.018
lon = 7.59723-0.0001
lat =50.36203

myLocation <- c(lon-deltalon, lat-deltalat, lon+deltalon, lat+deltalat)

myMap <- get_map(location=myLocation,
                 source="stamen", 
                 maptype="toner", crop=FALSE)
setwd("E:/Work/geo")
stamp<-format(Sys.time(), "%m%d%H%M%OS")
#png(filename = paste("koblenz2015_zoom14_toner",stamp,".png", sep=""), width = 4000, height = 6500)
ggmap(myMap)
#dev.off()
