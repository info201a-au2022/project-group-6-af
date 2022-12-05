library(markdown)


intro_tab <- tabPanel(
  "Introduction",
  fluidPage(
    includeMarkdown("README.md"),
    #includeHTML("conclusion.html")
  )
)

source("tab1.R")
source("tab2.R")
source("tab3.R")
source("tab.4.R")
source("tab.5.R")

ui <- navbarPage("My App",
                 intro_tab,
                 tab1,
                 tab2,
                 tab3,
                 tab4,
                 tab5
)
