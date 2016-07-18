data <- read.table("data.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
#Subseting the data
data <- subset(data[data$Date %in% c("1/2/2007","2/2/2007"),])
dates <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sm2 <- as.numeric(data$Sub_metering_2)
sm3 <- as.numeric(data$Sub_metering_3)
#Creating the plot
png("Plot3.png")
plot(dates, as.numeric(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
lines(dates, sm2, type="l",col="red")
lines(dates, sm3, type="l",col="blue")
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()