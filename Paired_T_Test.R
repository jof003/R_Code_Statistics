#####Conduct a paired t-test
garage1 <- c(17.6, 20.2, 19.5, 11.3, 13, 16.3, 15.3, 16.2, 12.2, 14.8, 21.3, 22.1, 16.9, 17.6,
             18.4)
garage2 <- c(17.3, 19.1, 18.4, 11.5, 12.7, 15.8, 14.9, 15.3, 12, 14.2, 21, 21, 16.1, 16.7,
             17.5)
t.test(garage1, garage2, paired = TRUE, alternative = "two.sided")