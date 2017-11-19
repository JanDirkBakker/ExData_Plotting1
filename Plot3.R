png(filename='./plot3.png', width=480, height=480)
plot(x = powtbl$Datetime,
     y = powtbl$Sub_metering_1,
     type = "l", xlab = "",
     ylab = "Energy sub metering")

lines(powtbl$Datetime,powtbl$Sub_metering_2, col = "red")
lines(powtbl$Datetime,powtbl$Sub_metering_3, col = "blue")
legend("topright", 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty=c(1, 1, 1))
dev.off()
