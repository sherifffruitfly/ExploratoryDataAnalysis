Plot1 <- function(){
  source("DataLoader.R")
  plotData <- loadData()
  message("Data loaded")
  
  str(plotData)
  
  histdata <- hist(as.numeric(plotData[,3]) /1000)
  plot(histdata)
  
  
  message("Plot created")
}