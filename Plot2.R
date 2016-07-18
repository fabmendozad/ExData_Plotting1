data <- read.table("data.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
#Subseting the data
data <- subset(data[data$Date %in% c("1/2/2007","2/2/2007"),])
dates <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("Plot2.png")
#Creating the plot
plot(dates, as.numeric(data$Global_active_power), type="l", xlab="", ylab="Global active power (kilowatts)")
dev.off()
