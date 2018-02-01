#Importam biblioteca MASS si seturile de date "faithful" si "painters"
library(MASS)

data("faithful")
data("painters")

  #------------------------------------------------------------# 

#a)
#Afisare seturi de date
  faithful
  painters
  
  waiting = faithful$waiting
  duration = faithful$eruptions
  school = painters$School
  
  waitingBreaks = seq(0, 150, by = 5)
  waiting.cut = cut(waiting, waitingBreaks, right = FALSE)
  waiting.freq = table(waiting.cut)
  
  #------------------------------------------------------------# 
  
#b)
#Distributia duratei eruptiilor
  range(duration)

  durationBreaks = seq(1.5, 5.5, by = 0.5)
  durationBreaks

  #intervale inchise in stanga, deschise in dreapta, adica [a,b)
  duration.cut = cut(duration, durationBreaks, right = FALSE)
  duration.freq = table(duration.cut)

  cbind(duration.freq)
  duration.freq
  
#Distributia scolilor de pictura
  school.freq = table(school)
  cbind(school.freq)
  school.freq
  
  #------------------------------------------------------------# 
  
#c)
#Reprezentarea grafică a școlilor de pictură
  barplot(school.freq, main = "Frecventa Scolilor de Pictura (Bar Plot)", xlab = "Scoala", ylab = "Frecventa")
  pie(school.freq, main = "Frecventa Scolilor de Pictura (Pie Chart)")

#Histograme suplimentare pentru coloanele "Composition", "Drawing", "Colour" si "Expression"
  hist(painters$Composition, main = "Histograma compozitie", ylab = "Frecventa", xlab = "Nota compozitie")
  hist(painters$Drawing, main = "Histograma desen", ylab = "Frecventa", xlab = "Nota desen")
  hist(painters$Colour, main = "Histograma culoare", ylab = "Frecventa", xlab = "Nota culoare")
  hist(painters$Expression, main = "Histograma expresivitate", ylab = "Frecventa", xlab = "Nota expresivitate")
  
#Reprezentarea grafică a duratelor eruptiilor
  hist(duration, right = FALSE, main = "Durata Eruptiilor (histograma)", ylab = "Frecventa", xlab = "Durata (secunde)")
  plot(duration, waiting, xlab="Durata Eruptiilor", ylab="Timp de asteptare", main = "Durata Eruptiilor (Plot)")
  
#Histograma a timpilor dintre eruptii (frecvente caracterizate de intervale din 10 in 10 secunde)
  hist(waiting, right =  FALSE, main = "Timpul pana la urmatoarea eruptie (histograma)", ylab = "Frecventa", xlab = "Timp (secunde)")
  
  #------------------------------------------------------------# 
  
#d)
#Media, mediana, varianta si cuartilele duratei eruptiilor
  
  durationMean = mean(duration)
  durationMedian = median(duration)
  durationVariance = var(duration)
  durationQuantile = quantile(duration)
  
  durationMean
  durationMedian
  durationVariance
  durationQuantile
  
  boxplot(duration, horizontal=TRUE, main = "Box Plot Durata Eruptiilor", col = c("royalblue2"))
  
  #------------------------------------------------------------# 
  
#e)
#Coeficientul de corelatie pentru cele doua variabile din setul "faithful"
  correlationCoeff = cor(duration, waiting)
  correlationCoeff
  
#Functie folosita pentru stergerea tuturor obiectelor/variabilelor
  rm(list=ls(all=TRUE))
#Functie folosita pentru curatarea tuturor reprezentarilor grafice
  dev.off()