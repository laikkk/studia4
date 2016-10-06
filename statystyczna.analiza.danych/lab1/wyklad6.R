# W6L6
# 10.04.2016

daneSoc <- read.csv("http://www.biecek.pl/R/dane/daneSoc.csv", sep=";")
attach(daneSoc)

# weighted.mean() - srednia wazona
# iqr - rozstep miedzykwartylowy, czyli q0.75 - q0.25
# cor() macierz korelacji
# cov() macierz kowariancji

# zdarzenie x i y - jesli EX * EY - EX * EY = 0 <- wtedy wiem ze X i Y jest niezalezne

daneSoc


cov(cisnienie.skurczowe,cisnienie.rozkurczowe)
cor(cisnienie.skurczowe,cisnienie.rozkurczowe)

# mac() medianowe odchylenie bezwzgledne
# sd()/mean() - wspolczynnik zmiennosci 
daneSoc
mad example

# teraz funcje z ekstra pakietu
install.packages("e1071")
library(e1071)
# kurtosis - kurtoza - miara koncentracji
# skewness - skosnosc, miara asymetrycznosci

# geometric.mean(), harmonic.mean() - srednia geometryczna z pakietu psych

install.packages("psych")
library(psych)

#  pakiet dprep
install.packages("dprep")
library(dprep)
moda()

install.packages("psych")

# przydatne bar <- subset(foo, location == "there") , length(bar)

# density() - ocena gestosci

# hist(faithful[,1],xlab = "czas trwania erupcji", main = "Old Faithful Geyser Data", label = TRUE)
#
par(mfrow=c(2,2))

hist(faithful[,1],xlab = "czas trwania erupcji", main = "old faithful gesyser data", labels = TRUE)
rug(faithful[,1], ticksize = 0.08, col = "blue")

hist(faithful[,2],xlab = "czas oczekiwania erupcji", main = "old faithful gesyser data", labels = TRUE)
rug(faithful[,2], ticksize = 0.08, col = "blue")

density(faithful[,1])
plot(density(faithful[,1]), main = "Gestosc dla faithful [,1]")
density(faithful[,2])
plot(density(faithful[,2]), main = "Gestosc dla faithful [,2]")

#####

par(mfrow=c(2,2))

hist(daneSoc[,6],xlab = "cisnienie skurczowe", main = "cisnienie skurczowe data", labels = TRUE)
rug(daneSoc[,6], ticksize = 0.08, col = "blue")

hist(daneSoc[,7],xlab = "cisnienie rozkurczowe", main = "cisnienie rozkurczowe data", labels = TRUE)
rug(daneSoc[,7], ticksize = 0.08, col = "blue")

density(daneSoc[,6])
plot(density(daneSoc[,6]), main = "Gestosc dla cisnienie skurczowe [,6]")
density(daneSoc[,7])
plot(density(daneSoc[,7]), main = "Gestosc dla cisnienie rozkurczowe [,7]")
jpeg("cisnienia skurczowe i rozkurczowe - kzielinski")
savePlot("cisnienia skurczowe i rozkurczowe - kzielinski")
