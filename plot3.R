
#plot 3

house_sub$Sub_metering_1 <- as.numeric(gsub("\\?", "NA", house_sub$Sub_metering_1))
house_sub$Sub_metering_2 <- as.numeric(gsub("\\?", "NA", house_sub$Sub_metering_2))

with(house_sub, plot(dt, Sub_metering_1, 
                     type = "n", ylab="Energy sub metering", xlab=""))
plot3 <- with(house_sub, lines(dt, Sub_metering_1, col = "black"));
with(house_sub, lines(dt, Sub_metering_2, col = "red"));
with(house_sub, lines(dt, Sub_metering_3, col = "blue"))

dev.copy(png, file = "plot3.png") 
dev.off() 
