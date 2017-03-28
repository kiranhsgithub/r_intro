1+1
plot(1:10,1:10)
a=1
a
sqrt(10)
b=3
c="asdf"
c
x<-c(2,3,5,2,7,1)
class(x)
vec <- c(1,2,3)
vec
x1<-c(2,3,5,2,7,1)
x2<-c(0,0,0)
x.joint = c(x1,x2)
x <- c(3,111,8,15,12)
x
x[2]
x[4]
x[x>10]
x.joint*2
lox(x)
log(x)
exp(x)

sum(x)
mean(x)
var(x)
sd(x)

vv <- rnorm(1000)
vv[1:100]
class(vv)
length(vv)
summary(vv)


k<-seq(1,10,by=1)
k
l=seq(1,10,by=2)
lm
m=seq(1,10,length.out=9)
m
1:10
seq(10,1,-1)
rep(2,10)
rep(1:4,3)
rep(1:4, each = 2)
y <- c(1,NA, 3, 0 , NA)
y
is.na(y)

m <- matrix(1:12,nrow=3,ncol=4,byrow=T)
m
m[2,3]
m[2,]
apply(m,2,mean)


type <- c(rep("drug",2),"placebo",rep("drug",2),rep("placebo",3))
type
score<-c(8,10,5,9,9,7,6,6)
score
clinic<-data.frame(type,score)
mean(score[type=="drug"])
clinic
type=="drug"
score[type=="drug"]
type[score>7]


Lst <- list(name="Fred", wife="Mary",
            no.children=3, child.ages=c(4,7,9))
Lst
class(Lst)
Lst$wife
Lst$child.ages
Lst[[1]]
Lst$child.ages[1]
Lst[[4]][1]
