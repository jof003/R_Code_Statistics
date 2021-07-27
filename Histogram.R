#Read in the data
data <- c(3.7, 4.2, 4.4, 4.4, 4.3, 4.2, 4.4, 4.8, 4.9, 4.4,
          4.2, 3.8, 4.2, 4.4, 4.6, 3.9, 4.3, 4.5, 4.8, 3.9,
          4.7, 4.2, 4.2, 4.8, 4.5, 3.6, 4.1, 4.3, 3.9, 4.2,
          4.0, 4.2, 4.0, 4.5, 4.4, 4.1, 4.0, 4.0, 3.8, 4.6,
          4.9, 3.8, 4.3, 4.3, 3.9, 3.8, 4.7, 3.9, 4.0, 4.2,
          4.3, 4.7, 4.1, 4.0, 4.6, 4.4, 4.6, 4.4, 4.9, 4.4,
          4.0, 3.9, 4.5, 4.3, 3.8, 4.1, 4.3, 4.2, 4.5, 4.4,
          4.2, 4.7, 3.8, 4.5, 4.0, 4.2, 4.1, 4.0, 4.7, 4.1,
          4.7, 4.1, 4.8, 4.1, 4.3, 4.7, 4.2, 4.1, 4.4, 4.8,
          4.1, 4.9, 4.3, 4.4, 4.4, 4.3, 4.6, 4.5, 4.6, 4.0)

#Make a histogram; details: https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/hist.html

#Note: "breaks" is a suggestion about the number of class intervals to have. If R thinks that the histogram
# will look prettier with a different number of intervals, R will override the value indicated in "breaks"
hist(data, xlim = c(3.5,5.0), breaks = 20, col = "blue") 

hist(data, xlim = c(3.5,5.0), breaks = 10, col = "blue") 

hist(data, xlim = c(3.5,5.0), breaks = 5, col = "blue") 

hist(data, xlim = c(3.5,5.0), breaks = 2, col = "blue") 