install.packages("asbio")
library(asbio)
see.regression.tck()
rm(list=ls())
rocket <- read.delim("Data-ex-2-1 (Rocket Prop).txt",h=T)
getwd()
head(rocket)
tail(rocket)
names(rocket)
str(rocket)
print(rocket)
summary(rocket)
names(rocket)[1]="response"
names(rocket)
names(rocket)[1]="y"


attach(rocket)
print(rocket)
rocket$x
rocket4y
y
x
detach(rocket)
n=dim(rocket)[1]
n
number_of_col=dim(rocket)[2]
plot(rocket$x,rocket$y,pch=20)


attach(rocket)
plot(x,y,pch=20)

mean(x)
median(x)
sd(x)
IQR(x)
hist(x,breaks=10)
summary(x)
cor(x,y) 
cor(rocket) 
cor.test(x,y)


hist(x)
boxplot(x)
boxplot(y~x) # creates side-by-side boxplots
install.packages("UsingR")
library(UsingR)
DOTplot(x) #creates a dotplot (UsingR package must be installed)
stem(x) #creates a stem plot for the variable x
plot(y~x) #creates a scatterplot of y versus x
lines(lowess(y~x)) # adds locally weighted scatterplot smoother line to plot
qplot(x, y) #creates a quick plot (ggplot2 package must be installed)

model1 <- lm(y ~ x, data=rocket)
plot(y~x)
abline(model1,lwd=3)

install.packages("HH")
library(HH)
ci.plot(model1) #creates a scatterplot with fitted line, confidence bands, and prediction bands (HH package must be installed)
summary(model1)
model1$coefficients
model1$residuals
model1$fitted.values
plot(y~x)
points(rocket$x,model1$fitted.values,pch=20,col="red")
plot(x,model1$res)
abline(h=0)
par(mfrow=c(1,2))
plot(y~x)
points(rocket$x,model1$fitted.values,pch=20,col="red")
plot(x,model1$res)
abline(h=0)


annova(model1)
