rocket <- read.delim("D:\\Google drive\\Sem 2\\BANA 7038 Data Analysis Methods\\Week 2 DAM\\Data-ex-2-1 (Rocket Prop).txt",h=T)
n=dim(rocket)[1]
par(mfrow=c(1,1))
plot(rocket$x,rocket$y,pch=20)
model1 <- lm(y ~ x, data=rocket)
abline(model1,col="blue")
# residual
model1$residuals
#standardized residuals
SSRes=sum((model1$residuals-mean(model1$residuals))^2)
MSRes=SSRes/(n-3)
standardized_res=model1$residuals/sqrt(MSRes)
# PRESS residuals
PRESS_res=model1$residuals/(1 - lm.influence(model1)$hat)

# plot all residual and leverage
# partition the canvas into 6 columns.
par(mfrow=c(1,4))
plot(model1$fitted.values,model1$residuals,pch=20,ylab="residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,standardized_res,pch=20,ylab="standardized residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,PRESS_res,pch=20,ylab="PRESS residual",xlab="fitted value")
abline(h=0,col="grey")
plot(model1$fitted.values,lm.influence(model1)$hat,pch=20,ylab="leverage",xlab="fitted value")
abline(h=0,col="grey")

PRESS=sum(PRESS_res^2)
SST=sum((delivery$DeliveryTime-mean(delivery$DeliveryTime))^2)
R_square_pred=1-PRESS/SST


