#Name: Bailey Thomas Date: 10/27/2026 Purpose: Test Chi-Square analysis

# Read samily dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")

New_data <- data_frame[,2:3]
New_data <- data_frame[-c(50:55),]

# Print the data in a table form
table(data_frame$treatment, data_frame$improvement)

# Apply the chi-square function to calculate the difference between treated and not-treated groups 
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

	Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value =
0.01841

