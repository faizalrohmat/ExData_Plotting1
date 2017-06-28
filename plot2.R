rm(list = ls())

powcons = read.csv("./household_power_consumption.txt", sep = ";", 
                   na.strings = "?", stringsAsFactors = FALSE)
section = powcons[powcons$Date %in% c("1/2/2007","2/2/2007") ,]

datetimes = strptime(paste(section$Date, section$Time, sep = " "),
                     "%d/%m/%Y %H:%M:%S", tz = "CET")

png("plot2.png", height=480, width=480)
plot(datetimes, section$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
dev.off()