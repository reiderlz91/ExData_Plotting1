### Plot 3

png(filename = "Plot3.png", width = 480, height = 480, units='px')

# Plot figure
with(pow_cons, plot(Sub_metering_1~DateTime, xlab = '', ylab = 'Energy sub metering', type = 'l'))
with(pow_cons, lines(Sub_metering_2~DateTime,col='Red'))
with(pow_cons,lines(Sub_metering_3~DateTime,col='Blue'))     
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), colnames(pow_cons)[7:9])     

# close device
dev.off()
