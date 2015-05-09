# setting the working directory
setwd("C:/Users/N Fahmy/Desktop/Data Science -Coursera/4 - Exploratory Data Analysis/Project/Project-1")
# Load data
source('load-dataset.R')

# Plot-3 
# Create the .PNG graphic device, 480x480px is default size, but just in case
png("plot3.png", width=480, height=480)

# Generate the line chart for plot3
plot(subsetData$Datetime,subsetData$Sub_metering_1, 
     type="l", # Draw lines instead of dots
     xlab="", # Empty x-label string
     ylab="Energy sub metering")

# Add lines for Sub_metering_2 data in red color
lines(subsetData$Datetime,subsetData$Sub_metering_2,type="l", col="red")
# Add lines for Sub_metering_3 data in blue color
lines(subsetData$Datetime,subsetData$Sub_metering_3,type="l", col="blue")

# Add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       lwd=2, # Line width
       col=c("black", "red", "blue"))
# Close the .PNG graphic device
dev.off()
