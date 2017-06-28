rm(list = ls())

powcons = read.csv("./household_power_consumption.txt", sep = ";", 
                            na.strings = "?", stringsAsFactors = FALSE)
section = powcons[powcons$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", height=480, width=480)
hist(section$Global_active_power, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", col = "red")
dev.off()
