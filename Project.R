# Set working directory
setwd("E:/Coursera/Exploratory Data Analysis/Week 1/")

# Read in Data
pow_cons <- read.table(text = grep("^[1,2]/2/2007", readLines(files), value = TRUE), sep = ";", header = TRUE, na.strings = '?')



### Plot 1
png(filename = "Plot1.png", width = 480, height = 480, units="px")

# Plot figure
with(pow_cons, hist(Global_active_power, xlab = "Global Active Power (kilowatt)", main = "Global Active Power", col = "red", ylim = c(0, 1200)))

# close device
dev.off()



### Plot 2

# Convert Data and Time 
pow_cons$Date <- as.Date(pow_cons$Date, format = '%d/%m/%Y')
pow_cons$DateTime <- as.POSIXct(paste(pow_cons$Date, pow_cons$Time))

png(filename = "Plot2.png", width = 480, height = 480, units="px")

# Plot figure
with(pow_cons, plot(Global_active_power~DateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatt)"))

# close device
dev.off()



### Plot 3

png(filename = "Plot3.png", width = 480, height = 480, units='px')

# Plot figure
with(pow_cons, plot(Sub_metering_1~DateTime, xlab = '', ylab = 'Energy sub metering', type = 'l'))
with(pow_cons, lines(Sub_metering_2~DateTime,col='Red'))
with(pow_cons,lines(Sub_metering_3~DateTime,col='Blue'))     
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), colnames(pow_cons)[7:9])     

# close device
dev.off()



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
