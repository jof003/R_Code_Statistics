#Read in the sick workers example
sick.worker.data <- read.csv("Sick_Worker_Data.csv", head = TRUE)
#Make a scatter plot with absences on the y-axis and experience on the x-axis
plot(sick.worker.data$absences~sick.worker.data$experience)
#Fit a simple linear regression model absences = bo + b1*experience + epsilon
SLR.model <- lm(sick.worker.data$abcences ~ sick.worker.data$experience)
#Look at the output from the model fit
anova(SLR.model)
summary(SLR.model)
#Calculate the residuals and predicted values (for the observations
#without missing absences data)
residuals <- SLR.model$residuals

#Conduct a Shapiro-Wilk test for normality of the residuals, which tests Ho: Residuals
#are normally distributed
shapiro.test(residuals)