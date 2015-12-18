setwd("C:/git/studia4/inteligencja-obliczeniowa/lab3/")
#zad1
#a) Wczytaj załączoną bazę danych irysów i zapisz je pod nazwą iris.original. Sprawdź jak wyglądają dane
iris.original = read.csv("iris.csv")

#b) Znajdź komendę badającą korelację i dokonaj porównania każdej numerycznej kolumny z każdą inną numeryczną (4 kolumny, co daje łącznie 6 porównań)

# 1,2
# 1,3
# 1,4
# 2,3
# 2,4
# 3,2

cor(iris[1],iris[2],method= "pearson") #brak
cor(iris[1],iris[3],method= "pearson") #silna
cor(iris[1],iris[4],method= "pearson") #silna
cor(iris[2],iris[3],method= "pearson") #slaba
cor(iris[2],iris[4],method= "pearson") #slaba
cor(iris[3],iris[2],method= "pearson") #slaba

#c) Czy w każdym z przypadków korelacja była dodatnia czy ujemna? Czy była silna (0.7-1), słaba (0.2-0.7) czy w ogóle jej brakło (0-0.2)? Zinterpretuj wyniki. (ODP WYZEJ)

#zad2

#a)
iris.numeric = iris.original 
iris.numeric[5] = NULL
#b)
iris.log.numeric = log(iris.numeric)
#c)
iris.preproc = scale(iris.log.numeric)


#zad3
#a)
iris.pca = prcomp(iris.preproc)

#b) 
iris.pca
#Wariancja (w wielkim uproszczeniu, bez uwzględnienia obciążenia estymatora) jest to odchylenie standardowe podniesione do kwadratu. ednakże w procesie obliczeń to wariancja jest pierwsza. Najpierw obliczamy wariancję, a dopiero wtedy odchylenie standardowe, wyciągając pierwiastek z wartości wariancji.

#usuwamy pc3 pc4 bo maja najmiejsza wartosc 

#iris.pca[1] iris.pca[2]
iris.pca.data[1:2] #pokaze nam tylko pc1 i pc2

#c)
predict(iris.pca) # kombinacją liniową danych wejściowych
#Wskazówka: sprawdź czy pierwsza liczba z predict(iris.pca) powstaje przez pomnożenie pierwszego wiersza macierzy iris.preproc z pierwsza kolumną macierzy iris.pca[2].

#Wskazówka: sprawdź czy pierwsza liczba z predict(iris.pca) powstaje przez pomnożenie pierwszego wiersza macierzy iris.preproc z pierwsza kolumną macierzy iris.pca[2]

#d) spojrzec gdzie sa najwieksze wartosc (oczywiscie abs())
iris.pca
#e) 

iris.pca.data <- cbind(predict(iris.pca)[,1:2], iris[5])
iris.pca.data


#zad4
factor <- as.factor(iris.pca.data[,3])
plot(iris.pca.data[1:2], col=factor, pch = 19)
legend(-1,3.3,legend=unique(iris.pca.data[,3]),col=1:3,title="Flovers", pch=19)

#zad5

recognizeIris = function(SeplLength,SepalWidth,PetalLength,PetalWidth){
	#zlogarytmować cztery parametry na wejściu
	
	#ustandaryzować wszystkie cztery parametry wzorem: ( parametr – średnia_parametru_z_tabeli ) / odchyl_stand_parametru_z_tabeli 
	paramLog = log(SeplLength)
	sre = mean((log(iris.original[1]))$sepallength)
	ss = sd((log(iris.original[1]))$sepallength)
	sksl = (paramLog-sre)/ss
	
	paramLog = log(SepalWidth)
	sre = mean((log(iris.original[2]))$sepalwidth)
	ss = sd((log(iris.original[2]))$sepalwidth)
	sksw = (paramLog-sre)/ss
	
	paramLog = log(PetalLength)
	sre = mean((log(iris.original[3]))$petallength)
	ss = sd((log(iris.original[3]))$petallength)
	skpl = (paramLog-sre)/ss
	
	paramLog = log(PetalWidth)
	sre = mean((log(iris.original[4]))$petalwidth)
	ss = sd((log(iris.original[4]))$petalwidth)
	skpw = (paramLog-sre)/ss
	##
	w = c(sksl,sksw,skpl,skpw)
	#print(w)
	#• dane po takim preprocessingu należy zamienić na dwa parametry: PC1 i PC2 obliczając je na podstawie tabeli współczynników z iris.pca[2]
	
	PC1 = iris.pca[2]$rotation[,1] %*% w
	#print(PC1)
	PC2 = iris.pca[2]$rotation[,2] %*% w
	#print(PC2)
	# Na końcu dodajemy punkt na wykresie i patrzymy do jakiej grupy irysów najbliżej.
	#points
	
	points(PC1,PC2,col=sample(rainbow(10)),pch=19)
	
	return(c(PC1,PC2))
}

recognizeIris(6.9, 3.2, 5.6, 2.2) #virginica
recognizeIris(6.0, 2.6, 4.4, 1.6) #versicolor lub virginica
recognizeIris(4.8, 3.6, 1.4, 0.2) #setosa


