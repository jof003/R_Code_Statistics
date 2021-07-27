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

#  Correlation =====================================================
# linear relationship between two continous variables
# range: -1, 1
# discipline determines low, moderate, strong relationships
# strength of the correlation: absolute value of the correlation
# direction of the correlation: sign of the correlation

# sop= spouse occupation prestige score 
# ssi= spouse socioeconomic index score 
# sphrs2= no.of hrs spouse usually works a week



# check the correlation using defaults
# listwise deletion: ignore any observation (ROW) that contain NA in any of the three variables
cor(gssdata[, c('sop','ssi','sphrs2')], use = 'complete.obs')

# Or pairwise deletion: keep as many possible pairs as possible in the calculation even with NA in other rows
cor(gssdata[, c('sop','ssi','sphrs2')], use = 'pairwise.complete.obs')



# Pearson vs Spearman Correlation ===========================
  # Pearson correlation: continous variables
  # Spearman correlation: rank/ordinal variables


# quick p-values?
# pairwise for 2 columns
cor.test(gssdata$sop, gssdata$ssi, method="pearson")

# quick spearman
cor.test(gssdata$sop, gssdata$sphrs2, method="spearman", exact=FALSE)


# correlation matrix with Spearman coefficients
cor(gssdata[, c('educ','age','realrinc')], use = 'pairwise.complete.obs', method="spearman")

# Spearman correlation test
cor.test(gssdata$age, gssdata$educ, method="spearman",exact=FALSE)
# false is needed for rank correlation ties issue

library(psych)
corr.test(gssdata[,c('educ','age','realrinc')],use="pairwise",adjust="holm")



