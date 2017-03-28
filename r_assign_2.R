setwd("D:\\Google Drive\\Sem 2\\BANA 7038 Data Analysis Methods\\HW 02 DAM")
?rm
ls()
tombstone<- read.csv("tombstone.csv")
head(tombstone)
names(tombstone)
dim(tombstone)
print(tombstone)
summary(tombstone)
names(tombstone)[2]="x"
names(tombstone)[3]="y"
attach(tombstone)
x
y
dim(tombstone)
plot(x,y,pch=20)
?cor
cor(x,y)
pairs(tombstone)
model1 <- lm(y~x)
summary(model1)
model1$coefficients
model1$residuals
model1$fitted.values
y==model1$fitted.values+model1$residuals
abline(model1,col="blue",lwd=3)
?abline
sum(model1$residuals)
sum(y)
sum(model1$fitted.values)
anova(model1)
# summary of hypothesis testing results
summary(model1)
# coefficient estimate
summary(model1)$coef[,1]
# standard error
summary(model1)$coef[,2]
# t value
summary(model1)$coef[,3]
# p value
summary(model1)$coef[,4]
library(HH)
ci.plot(model1)
anova(model1)
confint(model1,level=0.95)
plot(model1$fitted.values)


bus<- read.csv("bus.csv")
names(bus)
#Expenses.per.car.mile..pence.
names(bus)[1]="x1"
#Car.miles.per.year..1000s.
names(bus)[2]="y1"
names(bus)[3]="y2"
names(bus)[4]="y3"
names(bus)[5]="y4"
attach(bus)
detach(bus)
model2 <- lm(y1~x1)
summary(model2)
anova(model2)
ci.plot(model2)
#Percent.of.Double.Deckers.in.fleet

model3 <- lm(y2~x1)
summary(model3)
anova(model3)
ci.plot(model3)
#Percent.of.fleet.on.fuel.oil

model4 <- lm(y3~x1)
summary(model4)
anova(model4)
ci.plot(model4)
#Receipts.per.car.mile..pence.

model5 <- lm(y4~x1)
summary(model5)
anova(model5)
ci.plot(model5)

