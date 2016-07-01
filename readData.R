data<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
power<-subset(data, Date=="1/2/2007" | Date=="2/2/2007")