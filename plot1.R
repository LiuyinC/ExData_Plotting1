powerData <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
plotdata <- subset(powerData, Date == "2/2/2007" | Date == "1/2/2007")
png(filename = "plot1.png")
hist(plotdata[['Global_active_power']], xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()
