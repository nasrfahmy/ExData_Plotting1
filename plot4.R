# setting the working directory
setwd("C:/Users/N Fahmy/Desktop/Data Science -Coursera/4 - Exploratory Data Analysis/Project/Project-1")
# Load data
source('load-dataset.R')

# Plot-4
# Create the .PNG graphic device, 480x480px is default size
png("plot4.png", width=480, height=480)
# Create a 2x2 matrix for plotting each graph in the graphic canvas
par(mfrow=c(2,2))
# Generate the line chart at the top-left corner for plot4
with(subsetData,{plot(Datetime,Global_active_power,type="l", xlab="", ylab="Global Active Power")
# Generate the line chart at the top-right corner for plot4
                 plot(Datetime,Voltage,type="l", xlab="datetime", ylab="Voltage")
# Generate the line chart at the bottom-left corner for plot4
plot(Datetime,Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
                 lines(Datetime,Sub_metering_2,type="l", col="red")
                 lines(Datetime,Sub_metering_3,type="l", col="blue")
                 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                        lwd=1,
                        bty="n",# Remove box around the legend
                        col=c("black", "red", "blue"))
# Generate the line chart at the bottom-right corner for plot4
plot(Datetime,Global_reactive_power,type="l", xlab="datetime", ylab="Global_reactive_power")
                 
})
# Close the .PNG graphic device
dev.off()
