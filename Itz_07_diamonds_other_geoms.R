
ggplot(diamonds, aes(x=color, y=price)) + geom_violin()  + facet_wrap(~ clarity)
ggplot(diamonds, aes(x=color, y=price)) + geom_violin() + scale_y_log10() + facet_wrap(~ clarity)


ggplot(diamonds, aes(x=color, y=price, color=clarity)) + geom_violin() + scale_y_log10() + facet_wrap(~ clarity)
ggplot(diamonds, aes(x=color, y=price, fill=clarity)) + geom_violin() + scale_y_log10() + facet_wrap(~ clarity)
ggplot(diamonds, aes(x=color, y=price, color=clarity,fill=clarity, alpha=.2)) + geom_violin() + scale_y_log10() + facet_wrap(~ clarity)


ggplot(diamonds, aes(x=clarity, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=clarity, y=price, fill=clarity)) + geom_boxplot()
ggplot(diamonds, aes(x=clarity, y=price, fill=clarity)) + geom_boxplot()+ scale_y_log10()
ggplot(diamonds, aes(x=clarity, y=price, fill=clarity)) + geom_boxplot()+ scale_y_log10()+facet_wrap(~color)

ggplot(diamonds, aes(x=clarity, y=price, fill=clarity)) + geom_boxplot()+ scale_y_log10()+facet_wrap(~color)+theme_bw()
ggplot(diamonds, aes(x=clarity, y=price, fill=clarity)) + geom_boxplot()+ facet_wrap(~color)+theme_bw()



ggplot(diamonds, aes(x=price, fill=clarity) + geom_histogram()
ggplot(diamonds, aes(x=price, color=clarity)) + geom_density()
