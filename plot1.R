# Read data

   unzip ("exdata_data_household_power_consumption.zip")
   hpconsum<- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
   hpconsum$Time <- strptime(paste(hpconsum$Date,hpconsum$Time), "%d/%m/%Y %H:%M:%S" )
   hpconsum$Date <- as.Date(hpconsum$Date, "%d/%m/%Y")
   hpconsum[3:9]<- data.frame(lapply(hpconsum[3:9], as.numeric))
   
# subset 2-day data
   filter_date<- hpconsum$Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
   hpconsum2<- hpconsum[filter_date, ]
   
   
   save(hpconsum, file = "hpconsum.rda")
   save(hpconsum2, file = "hpconsum2.rda")

# Plot 1
   load ("hpconsum2.rda")
   png(filename = "plot1.png", width = 480, height = 480)
   hist(hpconsum2$Global_active_power, 
        xlab = "Global Active Power (kilowatts)", 
        col = "red",
        main = "Global Active Power")
   dev.off()
   
  
   