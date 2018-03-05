png('plot4.png', width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

plot(dataset$Global_active_power ~ dataset$DateTime, type ="l",
     ylab = "Global Active Power (kilowatts)", xlab = "")


plot(dataset$Voltage ~ dataset$DateTime, type ="l",
     ylab = "Voltage", xlab = "Datetime")


plot(dataset$Sub_metering_1 ~ dataset$DateTime, ylab = "Energy Sub metering", type ="l", col = "black")
lines(dataset$Sub_metering_2 ~ dataset$DateTime, type = "l", col = "red")
lines(dataset$Sub_metering_3 ~ dataset$DateTime, type = "l", col ="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)


plot(dataset$Global_reactive_power ~ dataset$DateTime, type ="l",
     ylab = "Global reactive power", xlab = "Datetime")


dev.off()