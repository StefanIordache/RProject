
#Folosim testul t pentru a vedea daca mediile a 2 grupuri sunt egale.Presupunem ca valorile sunt selectate din repartitii normale cu cu varinate egale. Ipoteza nula este ca cele doua medii sunt egale, iar alternativa este ca cele 2 nu sunt egale

#t-Statistica pe care vrem sa o aflam se afla in t.test(x,y)$statistic

#generam 2 vectori cu distributii normale

#x = rnorm(10)
#y = rnorm(10)
#generam 1000 t-statistici din testarea celor 2 vectori

ts = replicate(1000, t.test( rnorm(10), rnorm(10))$statistic)

#construim graficul densitatii pe care t-statistica noastra ar trebui sa o aiba 
pts = seq(-4.5, 4.5, length=100)
plot(pts, dt(pts,df=18), col='red', type='l')

#afisam graficul densitatii selectiei  noastre 
lines(density(unlist(ts)))

#------------------------------------------------
#Student-T test
#t-Test care sa compare media a doua grupuri;presupunem ca datele sunt selectate random ,sunt independente,cu variantele egale 

a = c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
b = c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)

#Inainte sa aplicam testul t, verificam daca variantele celor 2 grupuri sunt egale, folosinf un test Fisher-F de omogenitate
var.test(a,b)

#Am obtinut p-value mai mare decat 0.05,putem presupune ca variantele sunt omogene

t.test(a,b, var.equal=TRUE, paired=FALSE)

#Am obtinut p-value mai mare decat 0.05, concluzionam ca mediile sunt similare

#Intr-adevra valoarea t-calculata este mai mica decat t-value tabelata pt 18 grade de libertate

qt(0.975, 18)

#Asta confirma ca putem accepta ipoteza nula de egalitate a mediilor

#------------------------------------------------------
#Fisher's test 

#folosit pt a testa daca 2 coloane din aceeasi matrice sunt independente
#Sa consideram un test care compara performanta de la 2 probe. Fiecare concurent da testul de 8 ori si este retinut numarul de reusite. Ipoteza este ca performanta la cele 2 probe este similara (prima coloana - performanta la prima proba , a doua coloana - performanta la a doua proba )
challenge.df = matrix(c(1,4,7,4), nrow = 2)
fisher.test(challenge.df)

# p-value calculata nu dovedeste nimic impotriva ipotezei de independenta.In acest exemplu asta inseamna ca nu putem spune ca exista cu siguranta vreo diferenta intre performantele de la cele 2 incercari

#---------------------------------------------
#Testul Chi-patrat presupune o ipoteza nula si o ipoteza alternativa. Daca p-value rezultata este mai mica decat un nivel de semmificatie diferit (care este de obicei 0.05) , respingem ipoteza nula 
#Ipoteza nula la testul Chi-patrat este ca cele doua variabile sunt independente

#Testam coloanele treatment(X) si improvement(Y) din urmatorul tabel  treatment.csv
#Intai citim datele din treatment.csv

df<- read.csv("https://goo.gl/j6lRXD")
table(df$treatment, df$improvement)

chisq.test(df$treatment, df$improvement, correct=FALSE)

#Obtinem p-value mai mica decat nivelul de semnificatie , respingem ipoteza nula si tragem concluzia ca cele 2 variabile sunt dependente 

