energy <- read.csv("energy.txt", header=TRUE, sep=";", na.strings="?")
febone <- which(energy$Date=="1/2/2007")
febtwo <- which(energy$Date=="2/2/2007")
dates <- c(febone,febtwo)
dates <- sort(dates)
plots <- energy[dates,]


plot_two <- plot(plots$Global_active_power, type="l", main=" ", ylab="Global_active_power (kilowatts)",xaxt="n",xlab=" ")
axis(1, at= c(1, 1441, 2880), labels=c("Thursday","Friday", "Saturday")) 

dev.copy(png, "plot2.png")
dev.off()