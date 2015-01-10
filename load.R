loadData <- function(){
  # downloading file
  fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileurl, destfile="rawData.zip",  method="curl")
  
  #unzip
  unzip("rawData.zip")
  
  #reading data
  #rawData <- read.table("household_power_consumption.txt", sep=";", header= TRUE)
  
  #formating date
  #rawData$Date <- as.Date(rawData$Date,"%d/%m/%Y")
  
  # subsetting
  #dados <- subset(rawData, Date >= "2007-02-01" & Date <= "2007-02-02")
  
  # alternativa
  library(sqldf)
  tmp <- read.csv.sql('household_power_consumption.txt',"select * from file where Date in ('1/2/2007','2/2/2007')", sep = ';', header = T)
  
  #formating date
  tmp$Date <- as.Date(tmp$Date,"%d/%m/%Y")
  tmp$Date <- strptime(paste(tmp$Date, tmp$Time),  "%Y-%m-%d %H:%M:%S")

  # disponibilizando dados globalmente
  dados <<- tmp
  
}
