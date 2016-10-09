
> proj<-read.table("C:\\Coursera_exploratory\\household_power_consumption.txt", header=T, sep=";", stringsAsFactors=FALSE, dec=".")
> powerdata <- proj[proj$Date %in% c("1/2/2007","2/2/2007"),]
> globalActivePower <- as.numeric(powerdata$Global_active_power)
> png("plot1.png", width=480, height=480)
> hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> dev.off()
null device 
          1 
> 