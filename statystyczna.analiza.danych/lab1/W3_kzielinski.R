# Kamil Zielinski
## UWAGA wymaga instalacji pakietu: 

# install.packages("data.table")

# zad 1
olimpiada = read.csv("olimpiad.csv", sep = ";", na.strings = c("NA",""))

# zad 2
names(olimpiada) = gsub("\\.","",names(olimpiada))
#install.packages("data.table")
library("data.table")
setnames(olimpiada,old = c("X1","X2","X3","X4","X5","X6"),new = c("Zad1","Zad2","Zad3","Zad4","Zad5","Zad6"))

# zad 3
#zamienienie na na 0
olimpiada[, 2:7][is.na(olimpiada[, 2:7])] <- 0
olimpiada[,"Suma uzyskanych punktow"]  <- olimpiada$Zad1 + olimpiada$Zad2 + olimpiada$Zad3 + olimpiada$Zad4 + olimpiada$Zad5 + olimpiada$Zad6

# zad 4
olimpiada$wiek = as.numeric(gsub("-latek", "", olimpiada$wiek))

# zad 5
srednia = mean(olimpiada$`Suma uzyskanych punktow`)
minimum = min(olimpiada$`Suma uzyskanych punktow`)
maximum = max(olimpiada$`Suma uzyskanych punktow`)
Q1=quantile(olimpiada$`Suma uzyskanych punktow`, probs = 0.25, type=6)
Q2=quantile(olimpiada$`Suma uzyskanych punktow`, probs = 0.5, type=6)
Q3=quantile(olimpiada$`Suma uzyskanych punktow`, probs = 0.75, type=6)

# pierwszy sposob
wyniki = data.frame(srednia,minimum,maximum,Q1,Q2,Q3)
write.table(wyniki,file="zad5wyniki.csv", sep=";")

# drugi sposob
fileConn<-file("zad5wyniki.txt")
writeLines(c("Srednia:",srednia,"Minimum:",minimum,"Maximum:",maximum,"Pierwszy Qwartyl",Q1,
             "Drugi Qwartyl",Q2,"Trzeci Qwartyl",Q3), fileConn)
close(fileConn)

# zad 6
colorsNames = c("red","chocolate4","palevioletred1","cornflowerblue","aquamarine3","darkgoldenrod2","darkolivegreen2", "darkviolet","dodgerblue3","hotpink","palevioletred1")
boxplot(olimpiada$`Suma uzyskanych punktow`~olimpiada$klasa, par(mar = c(2, 1.5, 1, 0)+ 1), col=colorsNames, 
        main="suma punkow uzyskanych w olipiadzie w zaleznosci od klasy")

# podmiana levelosw (nazw szkol aby wszystkie nazwywaly sie tak jak szkola o id 6)
levels(olimpiada$szkoła)[6] = levels(olimpiada$szkoła)[5]
levels(olimpiada$szkoła)[6] = levels(olimpiada$szkoła)[7]

# fajny efekt !!!!!
# dodanie naz pionow (arg las = 2)
boxplot(olimpiada$`Suma uzyskanych punktow`~olimpiada$szkoła, las = 2, par(mar = c(15, 1.5, 1, 0)+ 1), col=colorsNames, main="suma punkow uzyskanych w olipiadzie w zaleznosci od szkoly")

boxplot(olimpiada$`Suma uzyskanych punktow`~olimpiada$miasto, par(mar = c(2, 1.5, 1, 0)+ 1), col=colorsNames,main="suma punkow uzyskanych w olipiadzie w zaleznosci od miasta")
