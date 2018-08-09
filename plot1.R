# 1. Open png file
png("plot1.png", width = 480, height = 480)

# 2. Create the plot
custcolClasses = c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", colClasses = custcolClasses)
dataset <- dataset[dataset$Date %in% c("1/2/2007", "2/2/2007"),]
hist(dataset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# 3. Close the file
dev.off()

# 4. Display plot
hist(dataset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

    
