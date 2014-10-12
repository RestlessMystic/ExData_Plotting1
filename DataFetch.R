datafile <- "C:/Users/Govind/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt"


data <- read.table(datafile, sep= ";", header= TRUE, na.strings = "?")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- data[data$Date == "2007/02/01" | data$Date == "2007/02/02",]