### Plot 4

png(filename = "Plot4.png", width = 480, height = 480, units='px')

# Plot figure
par(mfrow = c(2, 2))
with(pow_cons, plot(Global_active_power~DateTime, xlab = "", ylab = "Global Active Power", type = "l"))
with(pow_cons, plot(Voltage~DateTime, xlab = "", ylab ="Voltage", type = "l"))
with(pow_cons, plot(Sub_metering_1~DateTime, xlab = "", ylab = 'Energy sub metering', type = "l"))
with(pow_cons, lines(Sub_metering_2~DateTime,col='Red'))
with(pow_cons,lines(Sub_metering_3~DateTime,col='Blue'))     
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), colnames(pow_cons)[7:9], bty = "n")     
with(pow_cons, plot(Global_reactive_power~DateTime, xlab = "datetime", ylab = "Global_reactive_power", type = "l"))

# close device
dev.off()
