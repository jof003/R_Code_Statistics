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

# Chi-square test ===================================
# association between two categorical variables
# null hypothesis: no association between the two variables
# sex = Gender
# hschem = (R ever took a high school chemistry course)


# section 2.1 example one:
# step one create a 2x2 table
tbl = table(gssdata$hschem,gssdata$sex)
tbl



#step two run chisq
chi = chisq.test(gssdata$hschem,gssdata$sex)
chi
# the expected count under null hypothesis
chi$expected   # can use this to check if expected counts are low
# expected: row sum * col sum / total

#or just
chisq.test(gssdata$hschem,gssdata$sex)



#chisq alternate in descr package
crosstab(gssdata$hschem,gssdata$sex, chisq=T, expected=T, prop.c=T)


# Fisher Exact test example
# 2x2 table when sample size is small, expected counts less than 5
fisher.test(gssdata$hschem,gssdata$sex)

# or descr alternative
crosstab(gssdata$hschem,gssdata$sex, fisher=TRUE)




# section 2.1 example two
# colsci= respondents who took college-level science courses or not
# natspac = Attitude towards space exploration program

# step one create a 3x2 table
table(gssdata$natspac,gssdata$colsci)

# step two run chisq
chisq.test(gssdata$natspac,gssdata$colsci)

#alternatively again:
crosstab(gssdata$natspac,gssdata$colsci)
# r, c, t %
crosstab(gssdata$natspac,gssdata$colsci, prop.r = T, prop.c=T, prop.t = T)
