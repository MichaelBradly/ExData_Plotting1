png("plot3.png", width = 480, height = 480)

custcolClasses = c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", colClasses = custcolClasses)
dataset <- dataset[dataset$Date %in% c("1/2/2007", "2/2/2007"),]

dataset$DateTime <- paste(dataset$Date, dataset$Time, sep = " ")
dataset$post <- as.POSIXct(strptime(dataset$DateTime, '%d/%m/%Y %H:%M:%S', tz = "GMT"))

plot(dataset$post, dataset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(dataset$post, dataset$Sub_metering_2, type = 'l', col = "red")
points(dataset$post, dataset$Sub_metering_3, type = 'l', col = "blue")
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c(1,"red","blue"), lty=1, cex = 0.75)

dev.off()

plot(dataset$post, dataset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(dataset$post, dataset$Sub_metering_2, type = 'l', col = "red")
points(dataset$post, dataset$Sub_metering_3, type = 'l', col = "blue")
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c(1,"red","blue"), lty=1, cex = 0.75)