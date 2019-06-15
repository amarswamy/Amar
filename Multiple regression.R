A=read.csv(file.choose())
str(A)
sf=sample(2,nrow(A),replace=TRUE,prob=c(0.7,0.3))
cor(A[,c(1,3,5)])
trd=A[sf==1,]
tsd=A[sf==2,]
model1=lm(PROFIT~RND,data=trd)
model2=lm(PROFIT~RND+MKT,data=trd)
summary(model1)
pred1=predict(model1,tsd)
pred2=predict(model2,tsd)
cbind(tsd,pred1,pred2)

#...............
library(ISLR)
A=data.frame(ISLR::Credit)
A=MASS::Cars93
