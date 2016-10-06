install.packages('neuralnet')
library(neuralnet)

# n = c(2, 3, 5) 
# s = c("aa", "bb", "cc") 
# b = c(TRUE, FALSE, TRUE) 
# df = data.frame(n, s, b)

siatk.dane <- read.table(header=TRUE, text='
	wiek waga wzrost gra
	23 75 176 TRUE
	25 67 180 TRUE
	28 120 175 FALSE
	22 65 165 TRUE
	46 70 187 TRUE
	50 68 180 FALSE
	48 97 178 FALSE
')

myfunAktywacji <- function(x) {
 return ( 1/(1+exp(-x)) )
}

WezelA <- function(wiek, waga, wzrost){

	X = wiek * -0.46122 + waga * 0.97314 + wzrost * -0.39203 + 0.80109
	X = myfunAktywacji(X)
	return(X)
}

WezelB <- function(wiek, waga, wzrost){

	X = wiek * -0.78548 + waga * 2.10584 + wzrost * -0.57847 + 0.43529
	X = myfunAktywacji(X)
	return(X)
}

WezelC <- function(wiek, waga, wzrost){
A = WezelA(wiek, waga, wzrost)
B = WezelB(wiek, waga, wzrost)
X = A  * -0.81546 + B * 1.03775 + -0.2368

	return(X)
}

> WezelC(23,75,176)
[1] 0.798534188
> WezelC(25,67,180)
[1] 0.8009498965
> WezelC(48,97,178)

# zad 4 

rozowy
2.75
4
# odleglosc od nowego pkt (z srednich)
sqrt( (5-2.75)^2 + (6-4)^2 )
# 3.010398645


zielony
7
3.66
sqrt( (7-5)^2 + (6-3.66)^2 )
# 3.078246254

pkt nad ktorym sie zastanawiamy
5
6