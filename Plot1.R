data <- read.table("data.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
#Subseting the data
data <- subset(data[data$Date %in% c("1/2/2007","2/2/2007"),])
png("Plot1.png")
#Creating the plot
hist(as.numeric(data$Global_active_power), main="Global Active Power", col="red", xlab="Global active power (kilowatts)")
dev.off()