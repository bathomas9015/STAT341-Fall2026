#Name: Bailey Thomas, Date: 08/27/2026, Purpose: Test the Correlation Analysis

#Install package ggpubr
if(!require(devtools)) install.packages("devtools");devtools::install_github("kassambara/ggpubr")

#Load package ggpubr
library("ggpubr")

#Load dummy dataset
my_data <- mtcars 

#Alternate Hypothesis: The Weight of the car is inversely related to the miles per gallon it can travel
#Null Hypothesis: There is no difference/no relation between the Weight of the car is inversely related to the miles per gallon it can travel

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

