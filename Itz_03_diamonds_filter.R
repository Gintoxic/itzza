library(ggplot2)
data("diamonds")



############## Filtern mit Base-R ################
ind<-which(as.character(diamonds$clarity)=="IF" & diamonds$carat==1 & diamonds$color=="D")
diamonds.sel<-diamonds[ind,]
class(diamonds.sel)


############## Filtern mit Paket sqldf  ################
library(sqldf)
diamonds.sel<-sqldf("select * from diamonds where clarity='IF' and carat=1 and color='D'")
class(diamonds.sel)

############## Filtern mit Paket dplyr und magrittr  ################

library(magrittr)
library(dplyr)

diamonds.sel<-diamonds %>% subset(clarity == "IF") %>% subset(carat==1) %>% subset(color=="D")
class(diamonds.sel)

d1<-filter(diamonds, clarity =='IF')
d2<-filter(d1, carat==1)
diamonds.sel<-filter(d2, color=="D")

diamonds.sel<-diamonds %>% filter(clarity == "IF") %>% filter(carat==1) %>% filter(color=="D")
