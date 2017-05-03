library(ggplot2)

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=color)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=clarity, size=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=clarity, shape=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth()

ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth() + facet_grid(color ~ clarity)




## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth(se=FALSE)
ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth(se=FALSE, method="lm")


ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point() + geom_smooth(se=FALSE)
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_smooth(se=FALSE)
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_smooth(se=FALSE, method=lm)

ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point() + facet_wrap(~clarity)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + facet_grid(color ~ clarity)
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point() + facet_grid(color ~ clarity)

ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point() + facet_grid(color ~ clarity)+geom_smooth(se=FALSE, method=lm)



ggplot(diamonds, aes(x=price, fill=cut)) + geom_histogram()
