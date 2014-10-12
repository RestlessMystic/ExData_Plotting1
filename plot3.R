# Reading required data
source("DataFetch.R")
# Now "data" has data for only the dates 1 & 2 Feb 2007

# Plotting

png("plot3.png")        # filename
X <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
# Plot Structure
plot(x, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
# Individual Line graphs
lines(x, data$Sub_metering_1, col = "black")
lines(x, data$Sub_metering_2, col = "red")
lines(x, data$Sub_metering_3, col = "blue")
# Adding Legend
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()