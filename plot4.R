energy <- read.csv("energy.txt", header=TRUE, sep=";", na.strings="?")
febone <- which(energy$Date=="1/2/2007")
febtwo <- which(energy$Date=="2/2/2007")
dates <- c(febone,febtwo)
dates <- sort(dates)
plots <- energy[dates,]



par(mar=c(6,6,4,4))
par(mfrow=c(2,2))

##1
plot_two <- plot(plots$Global_active_power, type="l", main=" ", ylab="Global Active Power",xaxt="n",xlab=" ")
axis(1, at= c(1, 1441, 2880), labels=c("Thursday","Friday", "Saturday")) 


##2
plot(plots$Voltage, type="l", xlab="datetime", ylab="Voltage", xaxt="n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))

##3
plot(plots$Sub_metering_1, type="n", xaxt="n", ylab="Energy sub metering", xlab=" ")
lines(plots$Sub_metering_3, col="blue")
lines(plots$Sub_metering_2, col="red")
lines(plots$Sub_metering_1, col="black")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1))

##4

plot(plots$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", xaxt="n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))

dev.copy(png, "plot4.png")
dev.off()