library(shiny)
install.packages("rsconnect")

source("ui.R")
source("server.R")
rsconnect::setAccountInfo(name='cedricbri',
                          token='FCED4D1014247263B42E8FCD65DD6266',
                          secret='HI7//auP4gwZDwnPBPiLGnHBZLZEIBlyrnrfdvBQ')


shinyApp(ui = my_ui, server = my_server)




