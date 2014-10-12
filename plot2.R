# Reading required data
source("DataFetch.R")
# Now "data" has data for only the dates 1 & 2 Feb 2007

# Plotting

png("plot1.png")        # filename
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()