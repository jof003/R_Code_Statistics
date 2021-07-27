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

# Multiple Regression =========================================
# linear relationship between an continous dependent variable and multiple independent variables
# how the dependent variable could be explained or predicted by the independent variables
# rhs= respondent’s health score 
# age= age 
# realrinc= respondent’s income 


# basic syntax
# model <- lm(y ~ x1 + x2 + x3)

# effect of respondent’s health score (rhs) and age (age) on respondent’s income (realrinc).
model2 <- lm(realrinc ~ age + rhs, data=gssdata)
model2
summary(model2)


#install.packages("lm.beta")
library(lm.beta)


# get standardized coefficients
model2_std <- lm.beta(model2)
summary(model2_std)

