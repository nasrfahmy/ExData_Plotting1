# setting the working directory
setwd("C:/Users/N Fahmy/Desktop/Data Science -Coursera/4 - Exploratory Data Analysis/Project/Project-1")
# check if the file does not exist then read from the link and extract the required information
filelink<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists('subsetData.txt')){ 
        download.file(filelink,'household_power_consumption.zip')
        unzip('household_power_consumption.zip')
# reading the household-power-consumption data set
        power <- read.table("household_power_consumption.txt", header=T, sep=";", na.string="?")
# selecting only rows corressponding to  February 1st and 2nd, 2007
        subsetData <- power[power$Date %in% c("1/2/2007","2/2/2007") ,] 
# Converting dates and constructing new column called Datetime
        subsetData$Datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
# elemenating NA's
        subsetData$Global_active_power <- as.numeric(subsetData$Global_active_power)
        subsetData$Sub_metering_1 <- as.numeric(subsetData$Sub_metering_1)
        subsetData$Sub_metering_2 <- as.numeric(subsetData$Sub_metering_2)
        subsetData$Sub_metering_3 <- as.numeric(subsetData$Sub_metering_3)   
        subsetData$Voltage <- as.numeric(subsetData$Voltage)
        subsetData$Global_reactive_power <- as.numeric(subsetData$Global_reactive_power)
        write.table(subsetData, file = "subsetData.txt", row.name=FALSE, sep=";")
}else{
# read the cleansed data set
        subsetData<-read.table('subsetData.txt', header=T,sep=";")
        subsetData$Datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
        
}
