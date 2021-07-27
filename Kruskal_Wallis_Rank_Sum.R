#Read in the psychology data
psychology.data <- read.csv("Psychology_Data.csv", head = TRUE)
##Conduct the Kruskal-Wallis test
kruskal.test(testscore ~ university, data = psychology.data)