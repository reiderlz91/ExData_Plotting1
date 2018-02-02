### Plot 2

# Convert Data and Time 
pow_cons$Date <- as.Date(pow_cons$Date, format = '%d/%m/%Y')
pow_cons$DateTime <- as.POSIXct(paste(pow_cons$Date, pow_cons$Time))

png(filename = "Plot2.png", width = 480, height = 480, units="px")

# Plot figure
with(pow_cons, plot(Global_active_power~DateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatt)"))

# close device
dev.off()