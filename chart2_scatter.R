# 1.a Load the tidyverse package and the dplyr package
library(tidyverse)
library(dplyr)
library(ggplot2)

student_mat <- read.csv("student-mat.csv")
student_por <- read.csv("student-mat.csv")

df1 <- student_mat %>% 
        mutate(high_alc=Dalc > 2) %>%
        mutate(has_failure=failures > 0) %>%
        mutate(condition=paste("A", high_alc, "F", has_failure, sep=".")) %>%
        group_by(age, condition) %>% 
        summarise(count=n()) %>% 
        mutate(percent=count/sum(count))

brks <- c(0, 0.25, 0.5, 0.75, 1)
scatter_plot = ggplot(df1, aes(x=age, y=percent * 100, colour=factor(condition))) +
  geom_point() +
  geom_smooth(method=lm, se=FALSE) +
  ylab("Percentage of Students in Each Age") +
  xlab("Ages") +
  labs(
    title = "Failures and Alcohol Consumptions By Ages",
    subtitle = waiver(),
    caption = waiver(),
    color = "Conditions"
  ) +
  scale_colour_discrete(labels = c("Group 1: Low Alcohol Consumption and No Failure", "Group 2: Low Alcohol Consumption and Some Failures", "Group 3: High Alcohol Consumption and No Failure", "Group 4: High Alcohol Consumptions and Some Failures"))
  
