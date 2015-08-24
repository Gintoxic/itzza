
#################################

library(RCurl)
URL <- "https://raw.githubusercontent.com/christophergandrud/networkD3/master/JSONdata/energy.json"
Energy <- getURL(URL, ssl.verifypeer = FALSE)

# Convert to data frame
EngLinks <- JSONtoDF(jsonStr = Energy,
                     array = "links")


EngNodes <- JSONtoDF(jsonStr = Energy,
                     array = "nodes")



sankeyNetwork(Links = EngLinks, Nodes = EngNodes,
              Source = "source", Target = "target",
              Value = "value", NodeID = "name",
              width = 700, fontSize = 12, nodeWidth = 30)


################################

vor_num<-c(0,0,rep(1,4), rep(2,4))
abt_num<-as.numeric(c(1:10))


fr<-as.data.frame(vor_num)
fr$abt_num<-abt_num
fr$val<-100
fr$val[1:2]<-400


abt1<-c("Eugene","Frank","Maik","Alexandr")
abt2<-c("Nathali","Waldemar", "Dirk", "Valerij")

no<-as.data.frame(c("Markus", "Ute", "Udo", abt1, abt2), stringsAsFactors=T)
names(no)<-"namen"

sankeyNetwork(Links = fr, Nodes = no,
              Source = "vor_num", Target = "abt_num",
              Value = "val", NodeID = "namen",
              width = 700, fontSize = 20, nodeWidth = 50)
