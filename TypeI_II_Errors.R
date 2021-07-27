x <- 33:41
beta <- c(.9500, .8266, .5935, .3200, .1206,
          .0301, .0049, .0005, .0001)
power <- 1-beta
#Graph the type II error rate at the value of the alternative hypothesis given by x
pdf("Type_II_and_Power_Curves.pdf", width = 6)
#Set up the output graph so that there are two graphs on one sheet and the margins looks
#ok
par(mfrow = c(2,1), mar = c(5,5,5,5))
#Plot the Type II error rates
plot(beta~x, main = "Type II Error Rate")
lines(spline(x, beta, n = 201), col = 2)
#Plot the power levels
plot(power~x, main = "Power")
lines(spline(x, power, n = 201), col = 2)
dev.off()