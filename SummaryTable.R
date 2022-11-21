
source('Summary.R')
library(knitr)


columns_interested_renamed <- c("school", " level of alcohol consumption (out of 5)", "Final Grade (out of 20)", "percentage Of Male", "age", 
                                "family has more than 3 people (percentage)", "travel time to school","weekly study time", "percentage of involving in extracurricular activities", 
                                "wants to take higher education (percentage)", "internet access (percentage)", "with a romantic relationship (percentage)", "quality of family relationships", "health", "number of school absences")

columns_interested_renamed_grouped <- c("school", "frequent drinker", 'Count', "Final Grade (out of 20)", "percentage Of Male", "age", 
                                "family has more than 3 people (percentage)", "travel time to school","weekly study time", "percentage of involving in extracurricular activities", 
                                "wants to take higher education (percentage)", "internet access (percentage)", "with a romantic relationship (percentage)", "quality of family relationships", "health", "number of school absences")

colnames(mat_summary) <- columns_interested_renamed
colnames(por_summary) <- columns_interested_renamed
colnames(groupby_mat) <- columns_interested_renamed_grouped
colnames(groupby_por) <- columns_interested_renamed_grouped


mat_table <- kable(mat_summary, padding = 2)
por_table <- kable(por_summary, padding = 2)
groupby_mat_table <- kable(groupby_mat, padding = 2)
groupby_por_table <- kable(groupby_por, padding = 2)