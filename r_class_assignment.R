M<-matrix(1:12,nrow=3,ncol=4,byrow=T)
M

M[2, 3]
M[2, ]
M[, 3]
M


M[2,3]
M2<‐matrix(1:16,nrow=4,ncol=4)
M%*%M2
M
apply(M,2,mean)
apply(M,1,mean)
apply(M,2,sd)
dim(M)
t(M)
sum(M)
as.vector(M)
uu<‐matrix(NA,nrow=6,ncol=2)
uu[,1]<‐25:30
uu[,2]<‐9/5*uu[,1]+32
colnames(uu)<‐c("celsius","fahrenheit")
uu
celsius <‐ 25:30
fahrenheit <‐ 9/5*celsius+32
degrees<‐data.frame(celsius, fahrenheit)
class(degrees)
dim(degrees)
degrees[,1]
degrees$celsius
degrees[1,]
type<-c(rep("drug",2),"placebo",rep("drug",2),rep("placobo",3))
score<-c(8,10,5,9,9,7,6,6)
clinic<-data.frame(type,score)
clinic
class(clinic)
clinic2<‐cbind(type,score)
class(clinic2)
mean(score[type=="drug"])
mean(score[type=="placebo"])
clinic[,2]
clinic[,"score"]
clinic[type=="drug",]
clinic[score>=9,]
Lst<‐list (name="Fred", wife="Mary”, no.children=3, child.ages=c(4,7,9))

