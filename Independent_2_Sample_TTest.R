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

# Independent 2-sample t-test =========================================
# relationship between a continous variable and a categorical variable
# null hypothesis: the means of a continous variable have no statistically 
#                  significant difference between TWO groups

# Levene's test:
# null hypothesis: the variances of the dependent variable are equal in the two groups.

#if not done earlier
library(car)

# section 2.2 example one:
# step one check the variance (assumptions)
leveneTest(gssdata$hrlax, gssdata$sex)


# unequal variance
# basic syntax
# step two t.test(the variable you want to compare means ~ by group)
t.test(gssdata$hrlax ~ gssdata$sex, var.equal = FALSE)


# section 2.2 example two:
leveneTest(gssdata$hrlax, gssdata$sex)

# equal variance
t.test(gssdata$hrlax ~ gssdata$sex, var.equal = TRUE)
