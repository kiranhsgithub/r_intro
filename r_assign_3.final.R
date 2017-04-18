rm(list = ls());
pga <- read.csv("D:\\Google drive\\Sem 2\\BANA 7038 Data Analysis Methods\\HW 03 DAM\\PGA.csv",h=T)
names(pga);
attach(pga)
par(mfrow=c(3,4))
hist(Age)
hist(AverageDrive)
hist(DrivingAccuracy)
hist(GreensonRegulation)
hist(AverageNumofPutts)
hist(SavePercent)
hist(MoneyRank)
hist(NumEvents)
hist(TotalWinnings)
hist(AverageWinnings)


model1<-lm(AverageWinnings~Age+AverageDrive+DrivingAccuracy+GreensonRegulation+AverageNumofPutts+SavePercent+NumEvents)
summary(model1)$r.square
plot(model1)
anova(model1)

model2<-lm(AverageWinnings~DrivingAccuracy+GreensonRegulation+AverageNumofPutts+SavePercent+NumEvents)
summary(model2)
plot(model2)

model3<-lm(AverageWinnings~DrivingAccuracy+GreensonRegulation+AverageNumofPutts+SavePercent+NumEvents)

anova(model3)

anova(model1,model3)



par(mfrow=c(2,2))
plot(AverageWinnings~Age, col="black")
plot(AverageWinnings~AverageDrive,col="orange")
plot(AverageWinnings~DrivingAccuracy,col="red")
plot(AverageWinnings~GreensonRegulation,col="blue")
plot(AverageWinnings~AverageNumofPutts,col="forestgreen")
plot(AverageWinnings~SavePercent,col="darkgoldenrod4")
plot(AverageWinnings~NumEvents,col="firebrick3")

install.packages("QuantPsyc")
library(car)
vif(model1)

library(QuantPsyc)
lm.beta(model3)
