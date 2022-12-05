library(plotly)

tab1 <- tabPanel(
  "Class failures vs Rate of alcohol consumption", 
  fluidPage(
    h1("Class failures and Rate of Alcohol Consumption", align = "center"),
    sidebarLayout(
      sidebarPanel(
        radioButtons("chart_type", h3("Charts"),
                     choices = list("Scatter Chart" = "scatter", 
                                    "Bar Chart" = "bar"),
                     selected = "scatter"),
        
        radioButtons("sex", h3("By Sex"),
                     choices = list("All" = "all", 
                                    "Female" = "female",
                                    "Male" = "male"),
                     selected = "all")
      ),
      mainPanel(
        plotlyOutput('failure_vs_alcohol')
      ),
      position = c("left", "right"),
      fluid = TRUE
    ),
    h2("Summary"),
    p("The information that is revealed in group 1 shows that there is low alcohol consumption and no class failure. The number of students reduced when students are older. The second group is shows low alcohol consumption and some class failures. The percentage of students are higher when they get are getting older. In group 3, it shows the high alcohol consumption and no class failure. The percentage of students do not change with age. In group 4, it shows the high alcohol consumption and some failure. The percentage in students in this group increases when they get older.")
  )
)
