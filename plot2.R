plot2 <- function(){
  #loading data if not available
  if(!exists("dados")) {
    source("load.R")
    loadData()
  }
  
  # create png file
  png(filename="plot2.png",
      width=480,
      height=480,
      units="px",
      bg="transparent")
  
  library(datasets)
  
  
  #ploting empty canvas
  par(mar= c(1, 4.1, 4.1, 2.1))
  
  plot(dados$Date, 
       dados$Global_active_power, 
       type="n", 
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  # plotting line
  lines(dados$Date, dados$Global_active_power)
  
  # closing png file
  dev.off()

}

plot2()
