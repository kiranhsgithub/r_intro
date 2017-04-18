facebook <- read.csv("D:\\Google drive\\Sem 2\\BANA 7038 Data Analysis Methods\\Project DAM\\facebook-metrics.csv",h=T)
names(facebook)
library(psych)
install.packages('psych')

facebook_final <- subset(facebook, select = -c(9,10,11,12,13,14,15))
names(facebook_final)
pairs.panels(facebook_final)
describe(facebook_final)
boxplot(facebook_final$like)$out
boxplot(facebook_final$comment)$out
boxplot(facebook_final$share)$out
boxplot(facebook_final$Lifetime.Post.Total.Reach)$out


hist(facebook_final$share, 100, col="black")
hist(facebook_final$comment, 100, col="black")
hist(facebook_final$like, 100, col="black")
attach(facebook_final)

model1 <- lm(Lifetime.Post.Total.Reach ~ share+comment+like)
summary(model1)

library(car)
vif(model1)

par(mfrow=c(2,2)) # init 4 charts in 1 panel

plot(model1)

?rstudent
