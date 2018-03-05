## downlad dataset

dataset <- read.table(file = "dataset/household_power_consumption.txt", header = TRUE,
                      sep = ";", na.strings = "?", stringsAsFactors = FALSE)
                      
#                      colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## subset

dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")
dataset <- subset(dataset, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))


## Date and time

datetime <- paste(dataset$Date, dataset$Time)
dataset$DateTime <- as.POSIXct(datetime)


