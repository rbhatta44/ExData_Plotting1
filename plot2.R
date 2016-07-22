#This code generates a plot of global active power versus days
Data_source <- "~/Desktop/coursera/EDA/proj1/household_power_consumption.txt"
Data <- read.table(Data_source, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Sub_Data <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(Sub_Data$Date, Sub_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(Sub_Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
