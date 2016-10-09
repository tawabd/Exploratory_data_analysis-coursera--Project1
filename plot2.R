> proj<-read.table("C:\\Coursera_exploratory\\household_power_consumption.txt", header=T, sep=";", stringsAsFactors=FALSE, dec=".")
> powerdata <- proj[proj$Date %in% c("1/2/2007","2/2/2007"),]
> time <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> globalActivePower <- as.numeric(powerdata$Global_active_power)
> png("plot2.png", width=480, height=480)
> plot(time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()