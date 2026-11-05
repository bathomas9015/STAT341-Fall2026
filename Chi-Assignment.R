#Name: Bailey Thomas Date: 11/5/2026 Purpose: Chi-Assignment

#read dataset 
data <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/01-22-2022.csv")

#remove all cells with NA's or empty cells 
data_clean <- na.omit(data)
data[data == ""] <- NA
data_clean <- na.omit(data)

#Print the data on a table from Province State and Country Region 
my_table <- table (data$Province_State, data$Country_Region)

#Perform Chi-square on column name "Province_State" and "Country_Region"
chisq.test(data$Province_State, data$Country_Region, correct = FALSE)
	Pearson's Chi-squared test

data:  data$Province_State and data$Country_Region
X-squared = 88728, df = 14328, p-value
< 2.2e-16 

Warning message:
In chisq.test(data$Province_State, data$Country_Region, correct = FALSE) :
  Chi-squared approximation may be incorrect

