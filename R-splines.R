


library(splines)



t<-c((1*1)/12,(3*1)/12,(6*1)/12,(9*1)/12,(12*1)/12,(24*1)/12,(12*5*1)/12,(12*10*1)/12,(12*30*1)/12)
r<-c(0.4200,0.7750,1.2350,1.7200,1.8500,1.8442,2.2849,2.7960,3.0100)




plot(t,r,main="Splines",pch=16,col="black")#pch=16
grid()
fit1<-lm(r~bs(t ,knots =c((9*1)/12,1.2,2 )))
fit1
summary(fit1)
pre1<-predict(fit1)
pre1
lines(t,pre1,lty=1,lwd=2,col="cornflowerblue")
legend("topleft", col = c("black","cornflowerblue"),
       lty = c("solid", "solid"),pch = c(16,1,NA),
        bty = "n",
       legend = c("tasas",  "Modelo"))


