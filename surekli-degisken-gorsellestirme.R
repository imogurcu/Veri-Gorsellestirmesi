





df <- tibble(
  cinsiyet = factor(rep(c("E","K"), each = 500)),
  sure = c(rnorm(500, mean =80), rnorm(500, mean = 81))
)



ggplot(df, aes(sure))+
  geom_histogram(binwidth = .5, colour = "black", fill = "orange")+
  geom_density()+
  xlab("Sure Dagilimi") + ylab("Cinsiyet") + ggtitle("bu bir histogramdýr")+
 


ggplot(df, aes(sure, fill = cinsiyet))+
  geom_histogram( binwidth = .5, alpha = .5, position = "identity")



ggplot(df, aes(sure, fill = cinsiyet))+
  geom_histogram( binwidth = .5, alpha = .5, position = "identity")+
  facet_grid(cinsiyet ~ .)


ggplot(df, aes(cinsiyet,sure, fill = cinsiyet))+
  geom_boxplot()+
  guides(fill = FALSE)+
  coord_flip()


ggplot(df, aes(sure)) +
  geom_area(stat = "bin")


ggplot(df, aes(sure)) +
  geom_freqpoly()

ggplot(df, aes(sure)) +
  geom_dotplot()









