?read.csv
car_r <- read.csv(file = "D:\\Google drive\\Sem 2\\BANA 7038 Data Analysis Methods\\HW 01 DAM\\car_r.csv", 
         header = TRUE, sep = ",", 
         dec = ".", fill = TRUE)

ncol(car_r)
names(car_r)

nrow(car_r)
nrow(car_r[car_r$brand == "Ford",])

sapply((car_r[sapply(car_r, is.numeric)]),mean,na.rm = TRUE)
sapply((car_r[sapply(car_r, is.numeric)]),sd,na.rm = TRUE)

sapply((car_r[sapply(car_r, is.numeric)]),hist)


hist(car_r$mileage,breaks=10)
hist(car_r$num_accidents,breaks=10)
hist(car_r$num_passengers,breaks=10)
hist(car_r$speed_car,breaks=10)
hist(car_r$speed_air,breaks=10)
hist(car_r$height,breaks=10)
hist(car_r$width,breaks=10)

car_r[!complete.cases(car_r),]

summary(car_r)
apply(is.na(car_r),2,sum)

car_r$relative_speed = car_r$speed_car + car_r$speed_air
mean(car_r$relative_speed)

car_r$absolute_speer_air = abs(car_r$speed_air)
mean(car_r$absolute_speer_air)


car_r_new<-car_r

nrow(car_r[car_r$height<5,])
nrow(car_r[car_r$mileage<40000,])


car_r<-car_r_new
nrow(car_r)
car_r<-car_r[!car_r$mileage<40000,]
nrow(car_r)
car_r<-car_r[!car_r$height<5,]
nrow(car_r)
car_r<-car_r[complete.cases(car_r),]
nrow(car_r)



car_r_ford<-car_r[car_r$brand == "Ford",]
car_r_toyota<-car_r[car_r$brand == "Toyota",]
car_r_gm<-car_r[car_r$brand == "GM",]

nrow(car_r_ford)
nrow(car_r_toyota)
nrow(car_r_gm)
install.packages('plyr')
library(plyr)
count(car_r, 'brand')


library(reshape2)
library(ggplot2)

names(car_r)

car_r_s<-car_r[,c(1,5,7,8)]
car_r_ford_new<-car_r_ford[,c(5,7,8)]
car_r_toyota_new<-car_r_toyota[,c(5,7,8)]
car_r_gm_new<-car_r_gm[,c(5,7,8)]

sapply((car_r_ford_new[sapply(car_r_ford_new, is.numeric)]),mean,na.rm = TRUE)
sapply((car_r_toyota_new[sapply(car_r_toyota_new, is.numeric)]),mean,na.rm = TRUE)
sapply((car_r_gm_new[sapply(car_r_gm_new, is.numeric)]),mean,na.rm = TRUE)

hist(car_r_ford_new$speed_car)
hist(car_r_toyota_new$speed_car)
hist(car_r_gm_new$speed_car)

hist(car_r_ford_new$height)
hist(car_r_toyota_new$height)
hist(car_r_gm_new$height)

hist(car_r_ford_new$width)
hist(car_r_toyota_new$width)
hist(car_r_gm_new$width)
