power2 <- within(power2, {ts=strptime(paste(Date, Time), "%e/%m/%Y %H:%M:%S")})
plot(power2$ts, power2$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, "plot2.png")
dev.off()
