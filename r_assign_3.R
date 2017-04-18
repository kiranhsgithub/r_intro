delivery <- read.csv("D:\\Google drive\\Sem 2\\BANA 7038 Data Analysis Methods\\Week 4 DAM\\eg3.1.delivery.csv",h=T)
n=dim(delivery)[1]
n
model1 <- lm(DeliveryTime ~ NumberofCases+Distance, data=delivery)
model1$residuals
head(delivery)
delivery
SSRes=sum((model1$residuals-mean(model1$residuals))^2)
MSRes=SSRes/(n-3)
standardized_res=model1$residuals/sqrt(MSRes)
PRESS_res=model1$residuals/(1 - lm.influence(model1)$hat)
par(mfrow=c(1,6))
plot(model1$fitted.values,model1$residuals,pch=20,ylab="residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,standardized_res,pch=20,ylab="standardized residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,PRESS_res,pch=20,ylab="PRESS residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,PRESS_res/sd(PRESS_res),pch=20,ylab="PRESS residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,lm.influence(model1)$hat,pch=20,ylab="leverage",xlab="fitted value")
abline(h=0,col="grey")

qqnorm(model1$residuals)
qqline(model1$residuals)

par(mfrow=c(2,3))

plot(delivery$NumberofCases,model1$residuals)
plot(delivery$Distance,model1$residuals)
plot(model1$fitted.values,model1$residuals)


