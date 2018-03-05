png('plot2.png',width = 480, height = 480, units = "px")

plot(dataset$Global_active_power ~ dataset$DateTime, type ="l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()