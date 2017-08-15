# load data for use in other scripts' plots

loadData <- function(filename="C:\\cdjProgramming\\coursea\\Exploratory Data Analysis\\Week1\\household_power_consumption.txt"
                     , startdate=as.Date("2007-02-01")
                     , enddate=as.Date("2007-02-02")
                     , clearenv=FALSE
                     )
{
  if(clearenv == TRUE) {
    rm(list = ls())
    message("Environment cleared")
  }
  
  data <- read.table("C:\\cdjProgramming\\coursea\\Exploratory Data Analysis\\Week1\\household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  data.filtered <- subset(data, Date >= startdate & Date <= enddate)
  
  return(data.filtered)
}

