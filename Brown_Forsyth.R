####Assess the assumption of constant variance
#Plot residuals against predicted values
plot(residuals~predicted.values)
abline(h = 0, lty = 2)
#Conduct the Brown-Forsyth test to test Ho: Variance within the three groups are equal
install.packages("car") #Note you only need to run this command the first time you run
this
library(car)

apple.data <- read.csv("Apple_Data.csv", head = TRUE)
leveneTest(value~as.factor(trt), data = apple.data)