library(survival)

T = c( 180,632,2240, 195,  76,  70, 13,1990, 18,700, 210,1296,  23, 8, 852,  52,
       220, 63,   8, 1976,1296,1460,63,1328,365)

ST = c(1,1,1,1,1,1,0,0,1,1,1,1,1,
       0,1,1,1,1,1,0,0,1,1,1,1)
G =  c( 1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2)

out = cbind(T,ST,G)
Surv(T, ST)

results <- survfit(Surv(T, ST) ~ G)
summary(results)
print(results, print.rmean=TRUE)

postscript("u:/meth1/homework/solutions/Assign4_2012_PIII.ps",height=8,horizontal=F)

plot(results,ylab="Survival Function",xlab="Time to Recovery",
main="Treatments - Estimated Survival Functions",lty=1:2 )
legend(1500,.9,c("Treatment 1","Treatment 2"),lty=1:2,lwd=2)

graphics.off()


