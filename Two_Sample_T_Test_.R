#####Conduct a two-sample t-test
Animal <- 1:12
Drug.treatment <- c(18, 43, 28, 50, 16, 32, 13, 35, 38, 33, 6, 7)
Untreated <- c(40, 54, 26, 63, 21, 37, 39, 23, 48, 58, 28, 39)
####One-side lower test
t.test(Drug.treatment, Untreated, alternative="less", var.equal=TRUE) #pooled t-test
t.test(Drug.treatment, Untreated, alternative="less", var.equal=FALSE) #approximate ttest
#for unequal variances
####One-side upper test
t.test(Drug.treatment, Untreated, alternative="greater", var.equal=TRUE) #pooled t-test
t.test(Drug.treatment, Untreated, alternative="greater", var.equal=FALSE) #approximate
#t-test for unequal variances
####Two-sided test
t.test(Drug.treatment, Untreated, alternative="two.sided", var.equal=TRUE) #pooled ttest
t.test(Drug.treatment, Untreated, alternative="two.sided", var.equal=FALSE)
#approximate t-test for unequal variances