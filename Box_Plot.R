#Read in the data, stored as a text file called "Lecture_1_Flight_Delays_1288.txt"
flight.delay.data <- read.csv("Flight_Delays.csv", head = TRUE)

#Calculate the means (which we will add to boxplot as R does not do this by default)
means <- by(flight.delay.data$Delays, flight.delay.data$Date, mean) 


#Make the boxplot: https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/boxplot.html
# Note: the pdf() and dev.off() commands will export the boxplot into a pdf
pdf("Flight_Delay_Boxplot.pdf")
boxplot(flight.delay.data$Delays ~ flight.delay.data$Date, col = "Red", 
        xlab = "Date", ylab = "Delay (in minutes)")
points(c(1:length(means)), means, pch = 3, cex = 0.75) #Adds the means, which are indicated by the "+" symbol
dev.off()



