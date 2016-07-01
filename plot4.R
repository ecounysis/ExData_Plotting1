par(mfcol=c(2,2),cex=0.7, mar=c(5,4,4,3))

plot(power2$ts, power2$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", 
     xlab="")
 
with(power2, plot(ts2, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(power2, lines(ts2, Sub_metering_2, col="red"))
with(power2, lines(ts2, Sub_metering_3, col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red","blue"), lwd=1, bty="n", cex=0.8, inset=c(0.16,0))

with(power2,plot(ts2, Voltage, xlab="datetime", type="l", ylab="Voltage"))

with(power2,plot(ts2, Global_reactive_power, xlab="datetime", type="l", yaxt="n"))
axis(2, at=c(0.1,0.2,0.3,0.4,0.5),labels=c(0.1,0.2,0.3,0.4,0.5))

dev.copy(png, "plot4.png")
dev.off()
