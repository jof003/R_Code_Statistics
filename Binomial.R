# Using functions in R to calculate probabilities of a binomial random variable
#Let Y = number of seeds that germinate,
# Supppose that Y follows a binomial distribution with n = 20 and pi = 0.85
#Calculate the probability that Y = 18
dbinom(18, size = 20, p = 0.85)
#Calculate the probability that Y >= 18
dbinom(18, size = 20, p = 0.85)+dbinom(19, size = 20, p = 0.85)+dbinom(20, size = 20, p
                                                                       = 0.85)
sum(dbinom(c(18,19,20), size = 20, p = 0.85))
#Calculate the probability that Y < 18; i.e., that Y <= 17
Prob.Y.geq.18 <- dbinom(18, size = 20, p = 0.85)+dbinom(19, size = 20, p = 0.85)+
  dbinom(20, size = 20, p = 0.85)
1-Prob.Y.geq.18

# Let Y be a binomial random variable with n = 1000 and pi = 0.5. 
# Then P{Y <= 460 } is calculated as follows:

sum(dbinom(0:460, size = 1000, p = 0.50))