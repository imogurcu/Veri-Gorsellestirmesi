


library(ggplot2)
library(dplyr)


d <- diamonds


ggplot(d, aes(price))+
  geom_histogram()



k <- d %>%
  group_by(color) %>%
  summarise(n = n(),ort = mean(price))

ggplot(k, aes(color, ort))+
  geom_bar(stat = "identity", color = "black", fill = "orange")


ggplot(d, aes(price, fill = color ))+
  geom_density()
