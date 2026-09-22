# Author: Bailey Thomas, Date: 09/22/2026, Purpose: to perform T-test

#Create variables x and y with some dummy dataset
x = rnorm(10)
y = rnorm(10)

#Make a normal distribution plot/curve for reference
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

#Add x and y points on existing plot window
lines(density(x), col='green')
lines(density(y), col='blue')

# Add another curve, color yellow with points with 100 ponts beteen 2 to 4 
x_new <- seq(2, 4, length.out = 100)
y_new <- sin(x_new)
lines(x_new, y_new, col = "yellow", lwd = 2) 

pts = seq(2,4,length=100)
lines(density(pts),col="yellow")

#Apply the T-test function to check differences between variables x and y 
ttest = t.test(x,y)
	Welch Two Sample t-test

data:  x and y
t = 1.0753, df = 16.946, p-value =
0.2973
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.413992  1.274262
sample estimates:
 mean of x  mean of y 
 0.1297145 -0.3004206 
 
 #x and y are not significantly different variable/groups
 
