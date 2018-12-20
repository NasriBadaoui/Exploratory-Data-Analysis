
setwd("C:/Users/nbadaoui/Documents")
Data_Full<-read.csv("household_power_consumption.txt",header=T, sep=';', na.strings="?", 
                    nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

data_subset <- subset(Data_Full, Date %in% c("1/2/2007","2/2/2007"))
merged_date_time <- as.Date(data_subset$Date, format="%d/%m/%Y")
hist(data_subset$Global_active_power,main="Global Active Power", col="Red",xlab="Global Active Power(kilowatts)")



png("plot1.png", width=480, height=480)
dev.off()
