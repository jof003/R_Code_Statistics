##### Obtain critical values of the F distribution
#Calculate the 2.5th percentile of an F distribution
# with df1 = 7 and df2 = 10
qf(p = 0.025, df1 = 7, df2 = 10, lower.tail = TRUE)
#Just FYI, here is an equivalent way to do this
qf(p = 0.975, df1 = 7, df2 = 10, lower.tail = FALSE)
#Calculate the 97.5th percentile of an F distribution
# with df1 = 7 and df2 = 10
qf(p = 0.975, df1 = 7, df2 = 10, lower.tail = TRUE)
#Just FYI, here is an equivalent way to do this
qf(p = 0.025, df1 = 7, df2 = 10, lower.tail = FALSE)