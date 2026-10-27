#Name: Bailey Thomas Date: 10/27/2026 Purpose: Test Chi-Square analysis

# Read samily dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")

New_data <- data_frame[,2:3]
New_data <- data_frame[-c(50:55),]