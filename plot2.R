
house_sub$dt <- paste(as.character(house_sub$Date), as.character(house_sub$Time), sep=" " )
house_sub$dt <- strptime(house_sub$dt, "%Y-%m-%d %H:%M:%S")

# plot2

plot2 <- plot(x=house_sub$dt, y=house_sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() 