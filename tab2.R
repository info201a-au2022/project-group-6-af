library(plotly)

tab2 <- tabPanel(
  "Impact of Alcohol Consumption on Health", 
  fluidPage(
    h1("Impact of Alcohol Consumption on Health", align = "center"),
    sidebarLayout(
      sidebarPanel(
        radioButtons("weekday", h3("Days of a Week"),
                     choices = list("Weekday" = "weekday",
                                    "Weekend" = "weekend"),
                     selected = "weekday"),
        
        radioButtons("sex2", h3("By Gender"),
                     choices = list("All" = "all", 
                                    "Female" = "female",
                                    "Male" = "male"),
                     selected = "all")
      ),
      mainPanel(
        plotlyOutput('health_vs_alcohol')
      ),
      position = c("left", "right"),
      fluid = TRUE
    ),
    h2("Summary"),
    p("This chart reveals that when students have very low alcohol consumption, the percentage of students with good health is about the same as the students with medium to very bad health. For the people with low alcohol consumption, there are about 60% of have good health and the other 40% have medium to very bad health. Surprisingly, with very high alcohol consumption, the people with good health are over 75% compared to the rest of people with medium to very good health conditions.")
  )
)
