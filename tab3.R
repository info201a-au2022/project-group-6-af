library(plotly)

tab3 <- tabPanel(
  "Alcohol Consumption vs Final Grades", 
  fluidPage(
    h1("Alcohol Consumption and Final Grades", align = "center"),
    sidebarLayout(
      sidebarPanel(
        radioButtons("classes", h3("Classes"),
                     choices = list("Math" = "math_class", 
                                    "Portuguese" = "portuguese_class"),
                     selected = "math_class"),
        
        radioButtons("sex3", h3("Type of Sex"),
                     choices = list("Both" = "all", 
                                    "Male" = "male",
                                    "Female" = "female"),
                     selected = "all")
      ),
      mainPanel(
        plotlyOutput('grade_vs_alcohol')
      ),
      position = c("left", "right"),
      fluid = TRUE
    ),
    h2("Summary"),
    p("This box plot chart reveals that students in Portuguese perform worse on average when they had a high daily alcohol level intake compared to students who had a low daily alcohol level intake. Surprisingly, the chart also portrayed that females who had higher daily alcohol intake on average had a higher grade than females who had very low levels of daily alcohol intake. As for students in math, we are able to see that the average grade varies only slightly as the daily alcohol level increases. However, when we only observe the males we can see that this is not true. We are able to see that male students tend to perform worse when they consume higher levels of alcohol on a daily basis")
  )
)
