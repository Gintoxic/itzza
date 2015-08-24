


library(d3heatmap)
data(mtcars)
cols<-colorRampPalette(c("red","white", "blue"))(20)
d3heatmap(mtcars, scale = "column", col=cols)
d3heatmap(mtcars, scale = "row", col=cols)

