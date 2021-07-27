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

# 3. ANOVA =========================================================
# relationship between a continous variable and a categorical variable
# i.e. a difference in group means!
# null hypothesis: the means of a continous variable have no statistically 
#                  significant difference among n (n > 2) groups

# marital = marital statues 
# realrinc= respondent’s income 


# first example
# check the levels
levels(gssdata$marital)

# reorder for clarity and make it factor 
gssdata$marital = factor(gssdata$marital,c("never married","married","separated","divorced","widowed"))
levels(gssdata$marital)


# equal variance?
leveneTest(gssdata$tvhours, gssdata$marital)

# if equal variances assumption is met
anova = aov(gssdata$tvhours ~ gssdata$marital)
summary(anova)


# if equal variances assumption is not met
oneway.test(gssdata$tvhours ~ gssdata$marital)



# post hoc test for equal variance
TukeyHSD(anova)



# a handy package "userfriendlyscience" if not installed earlier
library(userfriendlyscience)

oneway(gssdata$tvhours, gssdata$marital, levene = TRUE)

# unequal variance
oneway(gssdata$tvhours, gssdata$marital, levene = FALSE,corrections=TRUE)


# post hoc test for equal variance
oneway(gssdata$tvhours, gssdata$marital, levene = TRUE, posthoc = 'bonferroni')


# post hoc test unequal variance
oneway(gssdata$tvhours, gssdata$marital , levene = FALSE,posthoc = "games-howell")


#  if you try to run games-howell on these variables, all results will come back as NA because of missing values. So, you can use the following code to get rid of NAs in the variables and then get valid games-howell results:
gss_sub = gssdata[,c('tvhours','marital')]
gss_sub = gss_sub[!is.na(gss_sub$tvhours),]

oneway(gss_sub$tvhours, gss_sub$marital, corrections = TRUE,posthoc = "games-howell")

