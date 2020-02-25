# Plot 2
   load ("hpconsum2.rda")
   png(filename = "plot3.png", width = 480, height = 480)
   attach(hpconsum2)
   
   plot(Time, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
   lines(Time, Sub_metering_2, col = "red")
   lines(Time, Sub_metering_3, col = "blue")
   legend("topright", 
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          col = c("black", "red", "blue"),
          lwd = 2)

   dev.off()
   