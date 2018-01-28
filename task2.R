ex1 <- seq(-10, 10, 0.001)
ex2 <- seq(-3, 8, 0.001)
ex3 <- seq(-4, 12, 0.001)
ex4 <- seq(-7, 9, 0.001)

par(mfrow = c(1,2))
par(xpd=FALSE)

#Repartitie Student 
#densitatea de probabilitate
#exemplul 1
plot(dt(ex1, df=5), pch=".", col="blue")

#exemplul 2
points(dt(ex2, df=1), pch=".", col="red")
lines(dt(ex2, df=1), pch=".", col="red")

#exemplul 3
points(dt(ex3, df=2), pch=".", col="brown")
lines(dt(ex3, df=2), pch=".", col="brown")

#exemplul 4
points(dt(ex4, df=7), pch=".", col="green")
lines(dt(ex4, df=7), pch=".", col="green")

legend(12000, 0.2, legend=c("Exemplul 1", "Exemplul 2", "Exemplul 3", "Exemplul 4"),
       col=c("blue", "red", "brown", "green"), lty=1:1, cex=0.5)


#functia de repartitie
#exemplul 1
plot(pt(ex1, df=5), pch=".", col="blue")

#exemplul 2
points(pt(ex2, df=1), pch=".", col="red")
lines(pt(ex2, df=1), pch=".", col="red")

#exemplul 3
points(pt(ex3, df=2), pch=".", col="brown")
lines(pt(ex3, df=2), pch=".", col="brown")

#exemplul 4
points(pt(ex4, df=7), pch=".", col="green")
lines(pt(ex4, df=7), pch=".", col="green")

#Repartitie Fisher 
#densitatea de probabilitate
#exemplul 1
plot(df(ex1, df1=3, df2=2), pch=".", col="blue")

#exemplul 2
points(df(ex2, df1=1, df2=1), pch=".", col="red")
lines(df(ex2, df1=1, df2=1), pch=".", col="red")

#exemplul 3
points(df(ex3, df1=2, df2=2), pch=".", col="brown")
lines(df(ex3, df1=2, df2=2), pch=".", col="brown")

#exemplul 4
points(df(ex4, df1=3, df2=5), pch=".", col="green")
lines(df(ex4, df1=3, df2=5), pch=".", col="green")

legend(12000, 0.55, legend=c("Exemplul 1", "Exemplul 2", "Exemplul 3", "Exemplul 4"),
       col=c("blue", "red", "brown", "green"), lty=1:1, cex=0.5)


#functia de repartitie
#exemplul 1
plot(pf(ex1, df1=3, df2=2), pch=".", col="blue")

#exemplul 2
points(pf(ex2, df1=1, df2=1), pch=".", col="red")
lines(pf(ex2, df1=1, df2=1), pch=".", col="red")

#exemplul 3
points(pf(ex3, df1=2, df2=2), pch=".", col="brown")
lines(pf(ex3, df1=2, df2=2), pch=".", col="brown")

#exemplul 4
points(pf(ex4, df1=3, df2=5), pch=".", col="green")
lines(pf(ex4, df1=3, df2=5), pch=".", col="green")

#Repartitie Chi-Squared 
#densitatea de probabilitate
#exemplul 1
plot(dchisq(ex1, df=4), pch=".", col="blue")

#exemplul 2
points(dchisq(ex2, df=5), pch=".", col="red")
lines(dchisq(ex2, df=5), pch=".", col="red")

#exemplul 3
points(dchisq(ex3, df=3), pch=".", col="brown")
lines(dchisq(ex3, df=3), pch=".", col="brown")

#exemplul 4
points(dchisq(ex4, df=7), pch=".", col="green")
lines(dchisq(ex4, df=7), pch=".", col="green")

legend(12000, 0.2, legend=c("Exemplul 1", "Exemplul 2", "Exemplul 3", "Exemplul 4"),
       col=c("blue", "red", "brown", "green"), lty=1:1, cex=0.5)


#functia de repartitie
#exemplul 1
plot(pchisq(ex1, df=4), pch=".", col="blue")

#exemplul 2
points(pchisq(ex2, df=5), pch=".", col="red")
lines(pchisq(ex2, df=5), pch=".", col="red")

#exemplul 3
points(pchisq(ex3, df=3), pch=".", col="brown")
lines(pchisq(ex3, df=3), pch=".", col="brown")

#exemplul 4
points(pchisq(ex4, df=7), pch=".", col="green")
lines(pchisq(ex4, df=7), pch=".", col="green")
