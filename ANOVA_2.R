##### Read in the P content in apple tree leaves data
setwd("Path to your working directory")
apple.data <- read.csv("Apple_Data.csv", head = TRUE)
########Fit a one-way ANOVA model Y_ij = mu + tau_i + epsilon_ij
ANOVA.model <- aov(apple.data$value ~ as.factor(apple.data$trt))
#Look at the ANOVA table
summary(ANOVA.model)
#Obtain the predicted values and residuals
residuals <- ANOVA.model$residuals
predicted.values <- ANOVA.model$fitted.values
####Assess the assumption of constant variance
#Plot residuals against predicted values
plot(residuals~predicted.values)
abline(h = 0, lty = 2)
#Conduct the Brown-Forsyth test to test Ho: Variance within the three groups are equal
install.packages("car") 
library(car)
leveneTest(value~as.factor(trt), data = apple.data)
#######Assess the assumption of normally distributed error terms
#Make a QQ-plot of the residuals
qqnorm(residuals)
#Make a histogram of the residuals
hist(residuals)