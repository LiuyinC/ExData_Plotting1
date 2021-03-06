powerData <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
plotdata <- subset(powerData, Date == "2/2/2007" | Date == "1/2/2007")
TimeDataCha <- paste(plotdata[["Date"]], plotdata[["Time"]], sep=" ")
TimeData <- strptime(TimeDataCha, format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot3.png")
plot(TimeData, plotdata[["Sub_metering_1"]], type ='l', xlab = '', ylab ="Energy sub metering")
points(TimeData, plotdata[["Sub_metering_2"]], type ='l', col = 'red')
points(TimeData, plotdata[["Sub_metering_3"]], type ='l', col = 'blue')
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
