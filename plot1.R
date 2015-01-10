plot1 <- function(){
  #loading data if not available
  if(!exists("dados")) {
    source("load.R")
    loadData()
  }

  # create png file
  png(filename="plot1.png",
      width=480,
      height=480,
      units="px",
      bg="transparent")
  
  #load necessary library
  library(datasets)
  
  #plotting histogram
  hist(dados$Global_active_power, 
       main= "Global Active Power", 
       col="red", 
       xlab = "Global Active Power (kilowatts)")
  
  # closing png file
  dev.off()
}

#function call
plot1()