library(dplyr)

#data cleaning
student_mat <- read.csv('dataset/student-mat.csv',  stringsAsFactors = FALSE)
head(student_mat)
colnames <- names(student_mat) 

#get average alcohol weekly consumption
alc_avg_mat <- mean(student_mat$Walc + student_mat$Dalc)
#create a dummy variable
student_mat <- student_mat %>% mutate(alc = ifelse(Walc + Dalc >= alc_avg_mat, 1, 0))
#change yes or no to 1 or 0

student_mat <- student_mat %>% mutate(sex = ifelse(sex == 'M', 1, 0),
                                      famsize = ifelse(famsize == 'GT3', 1, 0))

for(col in 1:length(colnames)){
  if('yes' %in% unique(student_mat[col])[,]){
    student_mat[col] <- ifelse(student_mat[col] == 'yes', 1, 0)
  }
}


student_por <- read.csv('dataset/student-por.csv',  stringsAsFactors = FALSE)
#get average alcohol weekly consumption
alc_avg_por <- mean(student_por$Walc + student_por$Dalc)
#create a dummy variable
student_por <- student_por %>% mutate(alc = ifelse(Walc + Dalc >= alc_avg_por, 1, 0))
#change yes or no to 1 or 0

student_por <- student_por %>% mutate(sex = ifelse(sex == 'M', 1, 0),
                                      famsize = ifelse(famsize == 'GT3', 1, 0))

for(col in 1:length(colnames)){
  if('yes' %in% unique(student_por[col])[,]){
    student_por[col] <- ifelse(student_por[col] == 'yes', 1, 0)
  }
}


columns_interested <- c("school", "Walc", "G3", "sex", "age", "famsize", "traveltime","studytime", "activities", "higher", "internet", "romantic", "famrel", "health", "absences")
columns_interested_renamed <- c("school", "Weeklyalc", "count", "Final_Grade_outof20", "percentageOfMale", "age", "bigFamilyRatio", "traveltime","studytime", "activities_ratio", "Want_to_go_to_college_percentage", "internet_access", "romantic_relationship", "famrel", "health", "numberofabsences")

#get summary of the two datasets
print('Mat')
df_mat_GP <- sapply(student_mat[,columns_interested] %>% filter(school == 'GP') %>% select(-school), as.numeric)
df_mat_MS <- sapply(student_mat[,columns_interested] %>% filter(school == 'MS') %>% select(-school), as.numeric)


mat_GP_avg <- round(colMeans(df_mat_GP), 3)
mat_GP_avg['school'] <- 'GP'
mat_GP_avg['Method'] <- 'mean'

mat_MS_avg <- round(colMeans(df_mat_MS), 3)
mat_MS_avg['school'] <- 'MS'
mat_MS_avg['Method'] <- 'mean'


mat_GP_sd <- round(apply(df_mat_GP, 2, sd), 3)
mat_GP_sd['school'] <- 'GP'
mat_GP_sd['Method'] <- 'sd'

mat_MS_sd <- round(apply(df_mat_MS, 2, sd), 3)
mat_MS_sd['school'] <- 'MS'
mat_MS_sd['Method'] <- 'sd'

mat_summary <- rbind(mat_GP_avg, mat_MS_avg, mat_GP_sd, mat_MS_sd)[,columns_interested]


print('Por')
df_por_GP <- sapply(student_por[,columns_interested] %>% filter(school == 'GP') %>% select(-school), as.numeric)
df_por_MS <- sapply(student_por[,columns_interested] %>% filter(school == 'MS') %>% select(-school), as.numeric)


por_GP_avg <- round(colMeans(df_por_GP), 3)
por_GP_avg['school'] <- 'GP'
por_GP_avg['Method'] <- 'mean'

por_MS_avg <- round(colMeans(df_por_MS), 3)
por_MS_avg['school'] <- 'MS'
por_MS_avg['Method'] <- 'mean'

por_GP_sd <- round(apply(df_por_GP, 2, sd), 3)
por_GP_sd['school'] <- 'GP'
por_GP_sd['Method'] <- 'sd'

por_MS_sd <- round(apply(df_por_MS, 2, sd), 3)
por_MS_sd['school'] <- 'MS'
por_MS_sd['Method'] <- 'sd'

por_summary <- rbind(por_GP_avg, por_MS_avg, por_GP_sd, por_MS_sd)[,columns_interested]

#groupby and summarise
groupby_mat <- student_mat %>% 
  group_by(school, alc) %>% 
  summarise(count = n (), Final_20 = mean(G3), male_ratio = mean(sex == 'M'), age = mean(age), bigfamilyratio = mean(famsize), 
            traveltime = mean(traveltime), studytime = mean(studytime ), activities_ratio = mean(activities), Want_to_go_to_college = mean(higher), 
            internet_access = mean(internet), romantic_relationship = mean(romantic), famrel = mean(famrel), health  = mean(health), numabsences = mean(absences))

groupby_mat[-1] <- round(groupby_mat[-1], 3)

groupby_por <- student_por %>% 
  group_by(school, alc) %>% 
  summarise(count = n (), Final_20 = mean(G3), male_ratio = mean(sex == 'M'), age = mean(age), bigfamilyratio = mean(famsize), 
            traveltime = mean(traveltime), studytime = mean(studytime ), activities_ratio = mean(activities), Want_to_go_to_college = mean(higher), 
            internet_access = mean(internet), romantic_relationship = mean(romantic), famrel = mean(famrel), health  = mean(health), numabsences = mean(absences))

groupby_por[-1] <- round(groupby_por[-1], 3)

groupby_mat <- as.data.frame(groupby_mat)

groupby_por <- as.data.frame(groupby_por)



