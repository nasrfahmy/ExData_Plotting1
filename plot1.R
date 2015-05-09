# setting the working directory
setwd("C:/Users/N Fahmy/Desktop/Data Science -Coursera/4 - Exploratory Data Analysis/Project/Project-1")
# Load data
source('load-dataset.R')

# Plot-1 
# Create the .PNG graphic device, 480x480px is default size, but just in case
png("plot1.png", width=480, height=480)
# Generate the histogram for plot1
hist(subsetData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# Close the .PNG graphic device
dev.off()

