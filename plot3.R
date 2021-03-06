rm(list = ls())

powcons = read.csv("./household_power_consumption.txt", sep = ";", 
                   na.strings = "?", stringsAsFactors = FALSE)
section = powcons[powcons$Date %in% c("1/2/2007","2/2/2007") ,]

datetimes = strptime(paste(section$Date, section$Time, sep = " "),
                     "%d/%m/%Y %H:%M:%S", tz = "CET")

png("plot3.png", height=480, width=480)
plot(datetimes, section$Sub_metering_1, type = "l", col = "black",
     ylab="Energy sub metering", xlab="")
lines(datetimes, section$Sub_metering_2, type = "l", col = "red")
lines(datetimes, section$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 2.5, lty = 1, col = c("black", "red", "blue"))
dev.off()
