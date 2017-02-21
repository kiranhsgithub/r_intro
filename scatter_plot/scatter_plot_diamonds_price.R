
mydata <- read.csv(file.choose())

install.packages("ggplot2")

library(ggplot2)

ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()

celsius<-25:30
fahrenheit<-9/5*celsius+32
degrees<-data.frame(celsius,fahrenheit)
class(degrees)
dim(degrees)
degrees[,1]
degrees$celsius
degrees[3,]

type<-c(rep("drug",2),"placebo",rep("drug",2),rep("placebo",3))
score<-c(8,10,5,9,9,7,6,6)
clinic<-data.frame(type,score)
clinic
class(clinic)
