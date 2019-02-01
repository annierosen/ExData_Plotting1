energy <- read.csv("energy.txt", header=TRUE, sep=";", na.strings="?")
febone <- which(energy$Date=="1/2/2007")
febtwo <- which(energy$Date=="2/2/2007")
dates <- c(febone,febtwo)
dates <- sort(dates)
plots <- energy[dates,]


plot_one <- hist(plots$Global_active_power, breaks=11, col="red", ylim= c(0,1200), xlab="Global Active Power (kilowatts)", main="Global Active Power") 

dev.copy(png, 'plot1.png')
dev.off()