d <- diamonds        # Full data set
d_bg <- d[, -4]  # Background Data - full without the 5th column (Species)


ggplot(d, aes(x = carat, y = price, colour = clarity)) +
  geom_point(data = d_bg, colour = "grey", alpha = .2) +
  geom_point() + 
  facet_wrap(~ clarity) 
  guides(colour = FALSE) 

#  theme_bw()


ggplot(d, aes(x = carat, y = price, colour = clarity)) +
  geom_point(data = d_bg, colour = "grey", alpha = .2) +
  geom_point() + 
  facet_grid(color ~ clarity)+
  guides(colour = FALSE) 
  
