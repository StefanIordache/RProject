#Importam din ISLR setul de date Auto
library(ISLR)
data("Auto")

#Aplicam regresia liniara simpla cu urmatoarele specificatii:
 #Vom incerca să estimam numarul de mile per galon in functie de puterea motorului in cai putere

lm.fit = lm(mpg ~ horsepower, data = Auto)
summary(lm.fit)

#Datele obtinute sunt urmatoarele
# Call:
# lm(formula = mpg ~ horsepower, data = Auto)
# 
# Residuals:
#      Min       1Q   Median       3Q      Max 
# -13.5710  -3.2592  -0.3435   2.7630  16.9240 
# 
# Coefficients:
#              Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 39.935861   0.717499   55.66   <2e-16 ***
# horsepower  -0.157845   0.006446  -24.49   <2e-16 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 4.906 on 390 degrees of freedom
# Multiple R-squared:  0.6059, Adjusted R-squared:  0.6049 
# F-statistic: 599.7 on 1 and 390 DF,  p-value: < 2.2e-16

#Observam ca exista o legatura intre putere si consum prin valoarea mica a parametrului p-value.
  #Aceasta valoare este de 2.2*10^(-16), fiind foarte mica, apropiata de zero.
#Din valoarea R-squared de 0.6049 putem observa o relatie buna intre cei doi parametri ai regresiei, de 60%, exprimata de modelul simplu.


#Aplicam o predictie a consumului pentru o masina cu 105 cai putere
predict(lm.fit, data.frame("horsepower"=105), interval="confidence")
#      fit      lwr      upr
# 1 23.36216 22.87497 23.84936

predict(lm.fit, data.frame("horsepower"=105), interval="prediction")
#      fit      lwr     upr
#1 23.36216 13.70483 33.0195

#Afisarea graficului pentru regresia liniara de mai sus
plot(Auto$horsepower, Auto$mpg, ylab = "Mile/Galon", xlab = "Cai Putere", main = "Regresie Liniara")
abline(lm.fit, lwd=2, col="royalblue2")
