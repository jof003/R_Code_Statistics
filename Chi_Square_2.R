##### Obtain critical values and probabilities of the chi-square distribution
#Calculate the probability that a chi-square random variable
# with 10 df is less than or equal to 1.479
pchisq(q = 1.479, df = 10, ncp = 0, lower.tail = TRUE, log.p = FALSE)
#Calculate the probability that a chi-square random variable
# with 10 df is less than or equal to 29.59
pchisq(q = 29.59, df = 10, ncp = 0, lower.tail = TRUE, log.p = FALSE)
#Find the 99.9th percentile of a chi-square distribution with 10 df
qchisq(p = 0.999, df = 10, ncp = 0, lower.tail = TRUE, log.p = FALSE)
#Find the 0.1th percentile of a chi-square distribution with 10 df
qchisq(p = 0.001, df = 10, ncp = 0, lower.tail = TRUE, log.p = FALSE)