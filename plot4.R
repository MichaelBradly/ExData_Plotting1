png("plot4.png", width = 480, height = 480)

custcolClasses = c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dataset2 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", colClasses = custcolClasses)
dataset4 <- dataset2[dataset2$Date %in% c("1/2/2007", "2/2/2007"),]
dataset4$DateTime <- paste(dataset4$Date, dataset4$Time, sep = " ")
dataset4$post <- as.POSIXct(strptime(dataset4$DateTime, '%d/%m/%Y %H:%M:%S', tz = "GMT"))

par(mfrow=c(2,2)) 
#plot1
plot(dataset4$post, dataset4$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
#plot2
plot(dataset4$post, dataset4$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
#plot3
plot(dataset4$post, dataset4$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(dataset4$post, dataset4$Sub_metering_2, type = 'l', col = "red")
points(dataset4$post, dataset4$Sub_metering_3, type = 'l', col = "blue")
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c(1,"red","blue"), lty=1, cex = 0.85,  bty = "n")
#plot4
plot(dataset4$post, dataset4$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

par(mfrow=c(2,2))
#plot1
plot(dataset4$post, dataset4$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
#plot2
plot(dataset4$post, dataset4$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
#plot3
plot(dataset4$post, dataset4$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(dataset4$post, dataset4$Sub_metering_2, type = 'l', col = "red")
points(dataset4$post, dataset4$Sub_metering_3, type = 'l', col = "blue")
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c(1,"red","blue"), lty=1, cex = 0.85,  bty = "n")
#plot4
plot(dataset4$post, dataset4$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")