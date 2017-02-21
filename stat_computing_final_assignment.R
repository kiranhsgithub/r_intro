
FAAr <- read.csv(file="D:\\Google Drive\\Sem 2\\BANA 6043 Stat Computing\\Week 6 Stat Computing\\FAA_r.csv",head=TRUE,sep=",")

?mean

names(FAAr)

dim(FAAr)

FAAr[type=="Airbus"]

summary(FAAr)

apply(FAAr,2,mean)

mean(FAAr$duration, na.rm=TRUE)
mean(FAAr$no_psng, na.rm=TRUE)
mean(FAAr$speed_ground, na.rm=TRUE)
mean(FAAr$speed_air, na.rm=TRUE)
mean(FAAr$height, na.rm=TRUE)
mean(FAAr$pitch, na.rm=TRUE)

sd(FAAr$duration, na.rm=TRUE)
sd(FAAr$no_psng, na.rm=TRUE)
sd(FAAr$speed_ground, na.rm=TRUE)
sd(FAAr$speed_air, na.rm=TRUE)
sd(FAAr$height, na.rm=TRUE)
sd(FAAr$pitch, na.rm=TRUE)


hist(FAAr$duration)
hist(FAAr$no_psng)
hist(FAAr$speed_ground)
hist(FAAr$speed_air)
hist(FAAr$height)
hist(FAAr$pitch)
summary(is.na(FAAData))


subset[is.na(FAAr$speed_air),]


FAAr2<-FAAr[!complete.cases(FAAr),]

FAAr3<-FAAr[complete.cases(FAAr),]
FAAr2

hist(FAAr2$duration)
hist(FAAr2$no_psng)
hist(FAAr3$speed_ground)
hist(FAAr$speed_air)
hist(FAAr2$height)
hist(FAAr2$pitch)
FAAr2<-FAAr[!complete.cases(FAAr),]

FAAr3<-FAAr[complete.cases(FAAr),]

summary(FAAr2$speed_ground)
summary(FAAr3$speed_ground)


FAAr4<- FAAr3$speed_ground - FAAr3$speed_air
FAAr4
mean(abs(FAAr4))


summary()
dim(FAAr$duration<40)

length(which(FAAr$duration<40))
length(which(FAAr$height<6))

FAAr<-FAAr[!FAAr$duration<40,]

FAAr<-FAAr[!FAAr$height<6,]
dim(FAAr)

FAArAirbus<-FAAr[!FAAr$type=="Airbus",]
FAArBoeing<-FAAr[!FAAr$type=="Boeing",]
dim(FAArAirbus)
dim(FAArBoeing)

summary(FAArAirbus)
summary(FAArBoeing)
