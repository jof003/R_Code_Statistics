# Using functions in R to calculate probabilities for normal random variables
#Let Y be a normal random variable with mean 20 and sigma 2. Then P{Y <= 23}
# is calculated as follows:
pnorm(23, mean = 20, sd = 2, lower.tail = TRUE)
#Let Z be a normal random variable with mean 0 and sigma 1. Then P{Z <= 1.5}
# is calculated as follows:
pnorm(1.5, mean = 0, sd = 1, lower.tail = TRUE)
#Let Z be a normal random variable with mean 0 and sigma 1. What is the value of Z
# in which 80% of all values are less that it?
qnorm(0.8, mean = 0, sd = 1)