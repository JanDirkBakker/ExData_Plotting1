png("./plot2.png", width=480, height=480)
plot(x = powtbl$Datetime,
     y = powtbl$Global_active_power,
     type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
