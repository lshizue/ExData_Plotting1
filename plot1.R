plot1 <- function(){
  #loading data
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
  
  #ploting histogram
  library(datasets)
  #histogram
  #hist(dados$Global_active_power)
  
  # histogram with title
  #hist(dados$Global_active_power, main= "Global Active Power")
  
  # with color
  # hist(dados$Global_active_power, main= "Global Active Power", col="red")
  
  # with label
  hist(dados$Global_active_power, 
       main= "Global Active Power", 
       col="red", 
       xlab = "Global Active Power (kilowatts)")
  
  
  # closing png file
  dev.off()

}
plot1()