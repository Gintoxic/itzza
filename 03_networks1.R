library(networkD3)

# Create fake data
abt1<-c("Eugene","Frank","Maik","Alex")
abt2<-c("Nathali","Waldemar", "Dirk", "Valerij")

vor1<-rep("Ute", length(abt1))
vor2<-rep("Udo", length(abt2))

vor<-c(vor1, vor2 )
abt<-c(abt1, abt2 )

vor<-c(vor1, vor2, "Markus","Markus" )
abt<-c(abt1, abt2, "Ute", "Udo")


networkData <- data.frame(vor, abt)
simpleNetwork(networkData, fontSize=20)

getwd()
setwd("C:/Users/e.harschack/Documents/ITzza2/net")

###################################################################

library(magrittr)
simpleNetwork(networkData) %>%
  saveNetwork(file = 'Net1.html')


###################################################################
###################################################################

# Load data
data(MisLinks)
data(MisNodes)

# Plot
forceNetwork(Links = MisLinks, Nodes = MisNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8) %>%  saveNetwork(file = 'Net2.html')




