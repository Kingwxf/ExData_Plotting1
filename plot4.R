# Plot 4
   load ("hpconsum2.rda")
   Sys.setlocale(category =  "LC_ALL", "C")
   png(filename = "plot4.png", width = 480, height = 480)
   attach(hpconsum2)
   par(mfrow=c(2,2))
   # plot upleft
   plot(Time, Global_active_power, 
        type = "l",
        xlab = "",
        ylab = "Global Active Power")
   
   # plot upright
   plot(Time, Voltage, 
        type = "l",
        xlab = "datetime")
   
   # plot downleft
   plot(Time, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
   lines(Time, Sub_metering_2, col = "red")
   lines(Time, Sub_metering_3, col = "blue")
   legend("topright", 
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          col = c("black", "red", "blue"),
          lwd = 2,
          bty = "n")

   # plot downright
   plot(Time, Global_reactive_power, 
        type = "l",
        xlab = "datetime")
   
   dev.off()
   