
library(RCurl)



students_math <- read.csv("student-mat.csv")
            
students_port <- read.csv("student-por.csv")

library(ggplot2)

options(scipen=999)

bar_chart <- ggplot(data = students_math) +
  geom_col(aes(x = Dalc, y = G3, fill = "Math"), 
           width = 0.45,
           position = position_nudge(x = -0.225)) +
  geom_col(data = students_port, aes(x = Dalc, y = G3, fill = "Portuguese"),
           width = 0.45,
           position = position_nudge(x = 0.225)) +
  labs(title = "Daily Alcohol Intake Level vs Final Grade", 
         x = "Daily Alcohol Intake Level",
         y = "Final Grade") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "right") +
  guides(fill = guide_legend(title = "Courses"))
