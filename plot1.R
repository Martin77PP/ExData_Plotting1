household_power_consumption$Date <- as.character(household_power_consumption$Date)
household_power_consumption$Date <- as.Date(household_power_consumption$Date, "%d/%m/%Y")

start_date <- "2007-02-01"
end_date <- "2007-02-02"
house_sub <-  subset(household_power_consumption, Date >= start_date & Date <= end_date)

house_sub$Global_active_power <- as.numeric(gsub("\\?", "NA", house_sub$Global_active_power))

#plot1
plot1 <- hist(house_sub$Global_active_power, main= "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png") ## Copy my plot to a PNG file
dev.off() 