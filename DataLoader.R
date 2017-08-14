# load data for use in other scripts' plots

loadData <- function(filename="C:\\cdjProgramming\\coursera\\Exploratory Data Analysis\\household_power_consumption.txt"
                     , startdate=as.Date("2/1/2007", format = "%d/%m/%Y")
                     , enddate=as.Date("2/2/2007", format = "%d/%m/%Y")
                     , clearenv=FALSE
                     )
{
  if(clearenv == TRUE) {
    rm(list = ls())
    message("Environment cleared")
  }
  
  data <- read.table(filename, header=TRUE, sep=";", na.strings = "?")
  
  gooddates <- c(startdate, enddate)
  data.filtered <- data[as.Date(data$Date, format = "%d/%m/%Y") %in% gooddates,]
  
  return(data.filtered)
}

