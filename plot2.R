png("plot2.png", width = 480, height = 480)

custcolClasses = c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", colClasses = custcolClasses)
dataset <- dataset[dataset$Date %in% c("1/2/2007", "2/2/2007"),]

dataset$DateTime <- paste(dataset$Date, dataset$Time, sep = " ")
dataset$post <- as.POSIXct(strptime(dataset$DateTime, '%d/%m/%Y %H:%M:%S', tz = "GMT"))

plot(dataset$post, dataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()

plot(dataset$post, dataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
