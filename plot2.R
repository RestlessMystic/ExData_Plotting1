# Reading required data
source("DataFetch.R")
# Now "data" has data for only the dates 1 & 2 Feb 2007

# Plotting

png("plot2.png")        # filename
X <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
plot(X, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()