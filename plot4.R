png(file="plot4.png",width=480,height=480)

par(mfrow=c(2,2),mar=c(5,4,2,1),oma=c(0,0,2,0))

with(powtbl,{
  plot(Global_active_power~Datetime,
       ylab="Global Active Power",xlab="",type="l")

    plot(Voltage~Datetime,
       ylab="Voltage",xlab="datetime",type="l")
  
    plot(Sub_metering_1~Datetime,type="l",
       ylab="Energy sub metering",xlab="")
  
    lines(Sub_metering_2~Datetime,type="l",
        col="red")
  
    lines(Sub_metering_3~Datetime,type="l",
        col="blue")
  
    legend("topright",col=c("black","red","blue"),lty=1,lwd=2,bty="n",
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
    
    plot(Global_reactive_power~Datetime,type="l",
       ylab="Global_reactive_power",xlab="datetime")
})

dev.off()
