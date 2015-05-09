# setting the working directory
setwd("C:/Users/N Fahmy/Desktop/Data Science -Coursera/4 - Exploratory Data Analysis/Project/Project-1")
# Load data
source('load-dataset.R')

# Plot-2 
# Create the .PNG graphic device, 480x480px is default size, but just in case
png("plot2.png", width=480, height=480)

# Generate the line chart for plot2
plot(subsetData$Datetime, subsetData$Global_active_power, 
     type="l",  # Draw lines instead of dots
     xlab="",   # Empty x-label string
     ylab="Global Active Power (kilowatts)")
# Close the .PNG graphic device
dev.off()
