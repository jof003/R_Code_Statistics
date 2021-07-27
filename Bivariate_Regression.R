# import data (csv format) ===========================================
gssdata = read.csv("R_Data.csv")

# packages!!!==========================================================
# may want to install one at a time, instead of all at once...

install.packages('car')   # Companion to Applied Regression
install.packages('userfriendlyscience') # Quantitative Analysis Made Accessible
install.packages('descr') # Descriptive Statistics
install.packages('psych') # Procedures for Psychological Researce
install.packages("lm.beta") # Add standardized regression coefficients to models

library(car)
library(psych)
library(userfriendlyscience)
library(descr)
library(lm.beta)

# Bivariate Regression =========================================
# linear relationship between an continous dependent variable and an independent variable
# how the dependent variable could be explained or predicted by the independent variable
# this case is mostly simple linear and simple linear multiple regression
# age= age 
# realrinc= respondent’s income 


# basic syntax
# model <- lm(y ~ x)

# the effect of respondent’s age (age) on respondent’s income (realrinc).
model = lm(gssdata$realrinc ~ gssdata$age) 
model
# OR
model = lm(realrinc ~ age, data=gssdata)
summary(model)

# retrieve parameter estimates
model$coefficients

# want AIC?
AIC(model)

# rsquared?
summary(model)$r.squared
