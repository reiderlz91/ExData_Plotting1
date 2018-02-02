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