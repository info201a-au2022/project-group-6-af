# 1.a Load the tidyverse package and the dplyr package
library(tidyverse)
library(dplyr)
library(ggplot2)

student_mat <- read.csv("student-mat.csv")
student_por <- read.csv("student-mat.csv")

df1 <- student_mat %>% 
          group_by(Dalc, health) %>% 
          summarise(count = n()) %>% 
          mutate(percent=count/sum(count))

brks <- c(0, 0.25, 0.5, 0.75, 1)

bar_plot = ggplot(data=df1, aes(x=factor(Dalc), y=percent * 100, fill = factor(health))) + 
  geom_bar(position="fill", stat="identity") + 
  ylab("Percentage of Students in Each Alcohol Consumption Group") +
  xlab("Weekday Alcohol Consumption Groups") +
  labs(
    title = "Workday Alcohol Consumption vs Health Conditions",
    subtitle = waiver(),
    caption = waiver(),
    fill = "Health Condition"
  ) +
  scale_x_discrete(limit=c("1", "2", "3", "4", "5"), labels = c("Very Low", "Low", "Median", "High", "Very High")) +
  scale_y_continuous(breaks = brks, labels = paste0(brks * 100, "%")) +
  scale_fill_discrete(labels = c("Very Bad", "Bad", "Median", "Good", "Very Good")) +
  coord_flip()

