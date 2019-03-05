

library(tibble)
library(ggplot2)
library(dplyr)


df <- tibble(
  kullanim = c(rep("hi", 20), rep("hs", 10)))

df <- tibble(
  kullanim = factor(c("hi", "hs"), levels = c("hi","hs")),
  sure = c(100, 180)
)



ggplot(df, aes(kullanim, sure))+
  geom_bar(stat = "identity")

ggplot(df, aes(kullanim, sure, group = 2))+
  geom_point(colour = "red", size = 4, shape = 21, fill = "white")+
  geom_line(colour = "red", linetype = "dashed", size = 1)+
  expand_limits(y = 0)




