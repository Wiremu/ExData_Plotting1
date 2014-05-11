

power_consumption <- read.csv2("household_power_consumption.txt",na.strings = "?")


power_consumption=subset(power_consumption, Date == "02/02/2007" | Date == "01/02/2007")


power_consumption$Date <- as.Date(power_consumption$Date,format="%d/%m/%Y")

power_consumption$Time <- strptime(power_consumption$Time,format="%H:%M:%S")


png(filename = "plot1.png")
hist(as.numeric(pc_one$Global_reactive_power)/500,col="red",xlab="Global Active Power (kilowatts)")

dev.off()