# Reading required data
source("DataFetch.R")
# Now "data" has data for only the dates 1 & 2 Feb 2007

# Plotting

png("plot4.png")        # filename
par(mfrow = c(2, 2))    # Setting Dimension

X <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S") # Common X axis

# 1st Subplot
    plot(X, data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# 2nd Subplot
    plot(X, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# 3rd Subplot (same as plot3.r)
    plot(X, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
    # Individual Line graphs
    lines(X, data$Sub_metering_1, col = "black")
    lines(X, data$Sub_metering_2, col = "red")
    lines(X, data$Sub_metering_3, col = "blue")
    # Adding Legend
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# 4th Subplot
  plot(X, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()