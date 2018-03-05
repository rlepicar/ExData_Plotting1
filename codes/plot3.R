png('plot3.png',width = 480, height = 480, units = "px")

plot(dataset$Sub_metering_1 ~ dataset$DateTime, ylab = "Energy Sub metering", type ="l", col = "black")
lines(dataset$Sub_metering_2 ~ dataset$DateTime, type = "l", col = "red")
lines(dataset$Sub_metering_3 ~ dataset$DateTime, type = "l", col ="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()