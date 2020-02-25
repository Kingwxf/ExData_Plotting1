# Plot 2
   load ("hpconsum2.rda")
   png(filename = "plot2.png", width = 480, height = 480)
   with(hpconsum2, plot(Time, Global_active_power, 
                        type = "l",
                        xlab = "",
                        ylab = "Global Active Power (kilowatts)"))
   dev.off()
   