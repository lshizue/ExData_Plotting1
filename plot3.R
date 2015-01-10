plot3 <- function(){
  #loading data if not available
  if(!exists("dados")) {
    source("load.R")
    loadData()
  }
  
  # create png file
  png(filename="plot3.png",
      width=480,
      height=480,
      units="px",
      bg="transparent")
  
  #ploting empty canvas
  library(datasets)
  plot(dados$Date, 
       dados$Sub_metering_1, 
       type="n", 
       xlab="",
       ylab="Energy sub metering")
  
  par(mar= c(1, 4.1, 4.1, 2.1))
  
  # plotando linhas
  colors <- c("black", "red", "blue")
  names <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  lines(dados$Date, dados$Sub_metering_1, col=colors[1])
  lines(dados$Date, dados$Sub_metering_2, col=colors[2])
  lines(dados$Date, dados$Sub_metering_3, col=colors[3])
  
  legend("topright", # position
         lty = c(1,1), # lines
         col = colors,  # line colors
         legend = names) # text
  
  
  # closing png file
  dev.off()
}
plot3()