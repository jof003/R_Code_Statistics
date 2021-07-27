#Read in the sick workers example
sick.worker.data <- read.csv("Sick_Worker_Data.csv", head = TRUE)
#Make a scatter plot with absences on the y-axis and experience on the x-axis
plot(sick.worker.data$absences~sick.worker.data$experience)
#Fit a simple linear regression model absences = bo + b1*experience + epsilon
SLR.model <- lm(sick.worker.data$abcences ~ sick.worker.data$experience)
#Look at the output from the model fit
anova(SLR.model)
summary(SLR.model)
#Intermediate step: calculate the residuals and predicted values (for the observations
#without missing absences data)
residuals <- SLR.model$residuals
predicted.values <- SLR.model$fitted.values
#Make a residual plot
plot(residuals~predicted.values)
abline(h = 0, lty = 2)
#Make a QQ-plot of the residuals
qqnorm(residuals)
#Make a histogram of the residuals
hist(residuals)
#Conduct a Shapiro-Wilk test for normality of the residuals, which tests Ho: Residuals
#are normally distributed
shapiro.test(residuals)
#Calculate a 95% CI for the expected value of y at 22.4 and 30.4
predict(object = SLR.model, newdata = data.frame(c(22.4, 30.4)), interval =
          "confidence", level = 0.95)
#Calculate a 95% co interval of y at 22.4 and 30.4
predict(object = SLR.model, newdata = data.frame(c(22.4, 30.4)), interval = "prediction",
        level = 0.95)