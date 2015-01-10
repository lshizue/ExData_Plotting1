plot4 <- function (){
  #loading data
  if(!exists("dados")) {
    source("load.R")
    loadData()
  }
  
  # create png file
  png(filename="plot4.png",
      width=480,
      height=480,
      units="px",
      bg="transparent")
  
  # loading library for plotting
  library(datasets)
  
  # configuring canvas
  par(mfcol = c(2, 2), 
      mar= c(5, 4.1, 2.1, 2.1),
      oma = c(0, 0, 2,0))
  
  #### Graphic #1 (top left)
  plot(dados$Date, 
       dados$Global_active_power, 
       type="n", 
       xlab="",
       ylab="Global Active Power")
  
  # lines 
  lines(dados$Date, dados$Global_active_power)
  
  
  ### Graphic #2 (bottom left)
  plot(dados$Date, 
       dados$Sub_metering_1, 
       type="n", 
       xlab="",
       ylab="Energy sub metering")
  
  
  # plotting lines
  colors <- c("black", "red", "blue")
  names <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  lines(dados$Date, dados$Sub_metering_1, col=colors[1])
  lines(dados$Date, dados$Sub_metering_2, col=colors[2])
  lines(dados$Date, dados$Sub_metering_3, col=colors[3])
  
  legend("topright", # position
         lty = c(1,1), # lines
         col = colors,  # line colors
         legend = names,
         bty ="n") # text
  
  
  
  #### Graphic #3 (top right)
  plot(dados$Date, 
       dados$Voltage, 
       type="n", 
       xlab="datetime",
       ylab="Voltage")
  
  # lines 
  lines(dados$Date, dados$Voltage)
  
  
  
  #### Graphic #4 (top right)
  plot(dados$Date, 
       dados$Global_reactive_power, 
       type="n", 
       xlab="datetime",
       ylab="Global_reactive_power")
  
  # lines 
  lines(dados$Date, dados$Global_reactive_power)
  
  # closing png file
  dev.off()
}

plot4()