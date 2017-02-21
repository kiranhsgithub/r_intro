for(i in 1:10) print(i)

for(celsius in 25:30)
print(c(celsius, 9/5*celsius + 32))

x<-rnorm(1000); x.pos<-rep(NA, length(x))  
for(j in 1:length(x)) {
  if(x[j] < 0) x.pos[j] <- 0
  else x.pos[j] <- x[j]
}

hist(x)
hist(x.pos)
