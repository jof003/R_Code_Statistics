#####Conduct a Wilcoxson (i.e., Mann-Whitney) Rank Sum test
placebo <- c(0.90, 0.37, 1.63, 0.83, 0.95, 0.78, 0.86, 0.61, 0.38, 1.97)
alcohol <- c(1.46, 1.45, 1.76, 1.44, 1.11, 3.07, 0.98, 1.27, 2.56, 1.32)
wilcox.test(placebo, alcohol, alternative = "less")