




df <- tibble(
  cinsiyet = factor(rep(c("E","K"), each=500)),
  m = c(rnorm(500, mean = 80), rnorm(500, mean = 82)),
  w = c(rnorm(500, mean = 82), rnorm(500, mean  = 81))
)

ggplot(df, aes(m, w))+
  geom_point()

ggplot(df, aes(m, w))+
  geom_point()+
  geom_smooth(method = lm, se = FALSE)



ggplot(df, aes(m, w))+
  geom_point()+
  geom_smooth()



ggplot(df, aes(m, w, color = cinsiyet))+
  geom_point()
 

ggplot(df, aes(m, w, color = cinsiyet))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE)






df <- tibble(
  kullanim = factor(c("hi","hs"), levels = c("hi","hs")),
  sure = c(100, 180)
)


ggplot(df, aes(kullanim, sure, fill = kullanim))+
  geom_bar(colour = "black", fill = "orange", stat = "identity")






head(economics)

d <- economics

ggplot(d, aes(date, pop))+
  geom_line()

s <- d %>%
  filter(date > as.Date("2010-1-1"))

ggplot(s, aes(date, pop))+
  geom_line()



ggplot(d, aes(date, pop))+
  geom_line(aes(size = unemploy/pop))


































