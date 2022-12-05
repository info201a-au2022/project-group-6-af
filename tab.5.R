tab5 <- tabPanel(
  "Report",
  h2("Code name"),
  p("GradesAlcohol"),
  h2("Project Title"),
  p(" College Students' Alcohol Consumption Impact on Final Grades"),
  h2("Authors"),
  p("Cedric Brinkmann (cbrink@uw.edu),
  Nedim Suko (nsuko@uw.edu),
  Exequiel Bustos (ebustos@uw.edu)"),
  h2("Affiliation"),
  p("INFO-201: Technical Foundation of Informatics - The Information School - University of Washington"),
  h1("Date"),
  p("Fall 2022"),
  h2("Abstract"),
  p("Our main question is how alcohol consumption impacts students' grades and performance at school. This question is important because alcohol consumption is rampant on college campuses, yet is is a topic which is not often discussed nor condemned within the student body. To address the question, we will use data derived from studies. We are concerned between the impact of  alcohol consumption on students in university because it is a topic which is not widely covered nor thought about. To address this concern, we plan to visualize data collected by studies.
  "),
  h2("Keywords"),
  p("Keywords: student behavior; school performance; alcohol consumption impact"),
  h2("Introduction"),
  p("Our main question is how alcohol consumption impacts students' grades and performance at school. This question is important because alcohol consumption is rampant on college campuses, yet is is a topic which is not often discussed nor condemned within the student body. To address the question, we will use data derived from studies. We are concerned between the impact of  alcohol consumption on students in university because it is a topic which is not widely covered nor thought about. To address this concern, we plan to visualize data collected by studies."),
  h2("Problem Domain"),
  p("The goal of this study is to look into the relationship between alcohol consumption and academic achievement among students. Other detrimental effects of alcohol drinking among college students will be investigated. Anne-Marie Makongho discusses the serious issue on alcohol usage among college students in a seminar paper, 'The Effect of Alcohol Use on Academic Performance of College Students' that she wrote at the University of Wisconsin. She also states in her research that student alcohol consumption has been connected to a number of harmful outcomes (Makongho, 2018). Some studies have indicated that students who drink too much alcohol struggle to combine their academic work and social lives, leading to potential dropouts and failing classes. Analytics Vidhya argues that alcohol intake on weekdays lowers students' final grades, however alcohol consumption on weekends has no significant influence on final grades, according to the article ‘Effect of Alcohol Use on Academic Performance of School Students' (Vidhya, 2020). We also want to look into how drinking alcohol can impair academic achievement by reducing the amount of time spent studying, completing homework assignments, and attending courses. Other experts have looked into how drinking affects kids' brains as well. Ana I. Balsa believes that underage drinking can directly hinder learning by inducing changes in the structure and function of the growing brain in a new neurological study titled ‘The consequences of alcohol use on academic achievement in high school.' Alcohol abuse can have negative consequences in areas such as functioning, memory, interpretation, and attention span (Balsa, 2011). Nonetheless, the aim of our study is to see how alcohol affects students' quality of learning."),
  h2("Research Questions"),
  p("1.	In what ways does consumption of alcohol affect a student’s academic performance?"),
  p("This question is the guiding question of our entire project and the reason why we chose our data set/ why we chose to represent the data in the way we did. This question is important, for that is what we are mainly interested in learning"),
  p("2.	How does alcohol impact a student’s overall health?"),
  p("Alcoholism is blatant on campuses across the United States, and it is something which is culturally accepted as part of the college experience. We want to measure the impact of alcohol on a student’s health, but this is very difficult to ascertain, but our data does. Health is the most important aspect."),
  p("3.	Do rate of consumption and decline in academic performance have a proportional relationship?"),
  p("This question is important because it can reveal trends within our data. Our data measures the rate of consumption, so we can establish whether such a relationship exists. However, we do understand that everyone is different and that establishing trends which may not be based on causations is a slippery slope."),
  h2("Dataset"),
  p("We found our dataset on Kaggle, shared by UCI MACHINE LEARNING, and the source of this dataset is the University of Camerino. This dataset is obtained by surveying Gabriel Pereira and Mousinho da Silveira secondary students in order to use data mining to predict secondary school student performance. The dataset contains 33 features and 395 observations (395 students).
    
    The dataset only contains 395 observations and only includes students from two schools in Portugal. Therefore, there is a limitation that we may not be able to apply the results, such as correlation and causation, we found to other places. What is true in Gabriel Pereira and Mousinho da Silveira may not be the same in other schools.
    
    In addition, the data is collected through a survey of students and contains sensitive information like grades. We should doubt the reliability of such self-reported information. What is being reported may not be honest or accurate. In the dataset, features like alcohol consumption are collected using a scale from 1 to 5 (low to high). There is no clear standard, and each student may have a different scale and standard. For example, students who drink one can of alcohol a week may consider their alcohol consumption to be 1, as one can per week is not a lot, and students who do not drink alcohol may also consider their alcohol consumption to be 1. Many features use scale rating so that such inaccuracy could exist in the dataset.
    
    Our goal is to see how activities, such as alcohol consumption, will impact the performance of a student. However, there is no random assignment, so there is no experimental and control group. As a result, it would be hard to discover any casual relationship."),
  h2("Findings"),
  p("The implications can vary based on whether the results of alcohol consumption in our study return positive, neutral, or negative impacts on a student’s performance/grades. If alcohol consumption negatively impacts students’ performance/grades, then policymakers will have to take this into account when creating an age limit on alcohol purchases. Technologists would have to limit alcohol-related ads and influences in order to make an effort to decrease students’ consumption. On the other hand, if there is no negative impact, then designers may target those students more in order to increase sales. Another implication could be resulted by positive impacts on students’ performance/grades. This implication could be policymakers decreasing the age limit on alcohol purchases. It could also be that students become a larger target market in the alcohol industry which would lead to technologists and designers working more with students to better fit their specific needs to generate more sales for companies."),
  h2("Discussion"),
  p("There are many theories and arguments whether or not alcohol consumption has any implication on students final grades. In our study we are examining how drinking alcohol can reduce the time students spend studying, completing assignments and projects, and attending lectures and other classes. 

    The importance of our study into secondary students alcohol consumption is to see the effects it has on the students performance in two classes, Math and Portuguese. It was significant for us to look at the theory that different student activities can lead to different outcomes. An example that we frequently go back to is how a parents education and alcohol consumption plays a massive role in the education that the students get and what their alcohol consumption may turn out to be. Implications of the study vary, based on whether the students grades changed in a positive or negative way, or did not change at all. Whether it was found that alcohol consumption negatively impacted students class performance and grades, then policymakers need to take this into account when making new laws about drinking age limit and age of purchase. 

    On the other hand, if the results show no negative or a positive affect on the students grades, then students would not have to be concerned with consuming alcohol while studying and alcohol beverage companies can place a bigger target on students in their advertising campaigns. Another implication of positive results from the study is that students can rule out alcohol consumption as the cause of poor grades or class failure and can look at other portions of their studies that may be creating more issue."),
  h2("Conclusion"),
  p("We tried to answer a very important question that few people have ever asked. How alcohol consumption impacts students’ grades and performance at school? Many people would answer that it obviously decreases your performance, without doing any research. We did some research and came across with a study performed by the University of Camerino, Italy.  The dataset we used has almost 395 observations from two schools in Portugal. In this research classes from both Math and Portuguese were covered. 
    We found out that students who drink one can of alcohol a week may consider their alcohol consumption to be 1, as one can per week is not a lot, and students who do not drink alcohol may also consider their alcohol consumption to be a lot.
    In our first graph, we discovered that the first group had low alcohol consumption and no class failure. While the second group shows low alcohol consumption and some class failures. On the other hand, we have group three with high alcohol consumption and no class failure. Lastly, the fourth group shows high alcohol consumption and some failure. 
    The second graph shows us that when students have very low alcohol consumption, the percentage of students with good health is about the same as the students with medium to very bad health. 
    With low alcohol consumption, there are about 60% of having good health and the other 40% have medium to very bad health. 
    When having a very high alcohol consumption, the people with good health are over 75% compared to the rest of the people with medium to very good health conditions.
    While we were doing graph number three, we realized that students in Portuguese perform worse on average when they had a high daily alcohol level intake compared to students who had a low daily alcohol level intake. Another fascinating discovery was that females who had higher daily alcohol intake on average had a higher grade than females who had very low levels of daily alcohol intake. 
    Finally, the last thing we found out was that male students tend to perform worse when they consume higher levels of alcohol on a daily basis."),
  h2("Acknowledgements"),
  p("We wish to show our appreciation to our wonderful Teaching Assistant Phyllis Chen, who has helped and guided us throughout this quarter and has been there for us whenever we have dearly needed her. Another individual we owe all of our knowledge and gratitude to is Professor Thomas Winegarden. He really inspired and motivated us to dive head first into the world of coding ,and we all really enjoyed his teachings in every lecture. 
  "),
  h2("Citations"),
  p(" Cortez , P., and A. Silva. 'Student Alcohol Consumption.' Kaggle, UCI Machine Learning, 19 Oct. 2016, www.kaggle.com/datasets/uciml/student-alcohol-consumption. "),
  p("Makongho, Anne Marie. The Effect of Alcohol Use on Academic Performance of College Students. "),
  p("M, P. 'Effect of Alcohol Use on Academic Performance of School Students.' Medium, Analytics Vidhya, 25 Jan. 2020, medium.com/analytics-vidhya/effect-of-alcohol-use-on-academic-performance-of-school-students-c9ed44dafbba. "),
  p("Balsa, Ana I, et al. 'The Effects of Alcohol Use on Academic Achievement in High School.' Economics of Education Review, U.S. National Library of Medicine, Feb. 2011, www.ncbi.nlm.nih.gov/pmc/articles/PMC3026599. ")
  
)

