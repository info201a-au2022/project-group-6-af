library(ggplot2)
library(plotly)
library(dplyr)
library(markdown)
library(bslib)
library(shiny)
library(shinyWidgets)
library(tidyverse)
library(uuid)
source('chart1.R')
source("chart2_scatter.R")
source("chart3_bar.R")


server <- function(input, output) {
  output$failure_vs_alcohol <- renderPlotly(widget1_plot(input$chart_type, input$sex))
  output$health_vs_alcohol <- renderPlotly(widget2_plot(input$weekday, input$sex2))
  output$grade_vs_alcohol <- renderPlotly(tab3_widget(input$classes, input$sex3))
}
