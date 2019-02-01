energy <- read.csv("energy.txt", header=TRUE, sep=";", na.strings="?")
febone <- which(energy$Date=="1/2/2007")
febtwo <- which(energy$Date=="2/2/2007")
dates <- c(febone,febtwo)
dates <- sort(dates)
plots <- energy[dates,]


par(mar=c(4,4,4,4))
plot(plots$Sub_metering_1, type="n", xaxt="n", ylab="Energy sub metering", xlab=" ")
lines(plots$Sub_metering_3, col="blue")
lines(plots$Sub_metering_2, col="red")
lines(plots$Sub_metering_1, col="black")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1)) 

dev.copy(png, "plot3.png")
dev.off()