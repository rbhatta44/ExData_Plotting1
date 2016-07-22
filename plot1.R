#This code generates a histogram
Data_source <- "~/Desktop/coursera/EDA/proj1/household_power_consumption.txt"
Data <- read.table(Data_source, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Sub_Data <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(Sub_Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()