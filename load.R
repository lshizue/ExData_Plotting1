loadData <- function(){
  # downloading file
  fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileurl, destfile="rawData.zip",  method="curl")
  
  #unzipping
  unzip("rawData.zip")
  
  # loading data
  library(sqldf)
  tmp <- read.csv.sql('household_power_consumption.txt',"select * from file where Date in ('1/2/2007','2/2/2007')", sep = ';', header = T)
  
  #formatting date
  tmp$Date <- as.Date(tmp$Date,"%d/%m/%Y") 
  
  #formatting date and time 
  tmp$Date <- strptime(paste(tmp$Date, tmp$Time),  "%Y-%m-%d %H:%M:%S")

  # making data available globally
  dados <<- tmp
  
}
