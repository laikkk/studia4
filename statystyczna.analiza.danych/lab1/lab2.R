#zad 1
wynagrodzenie = c(7.41,3.47,7.22,6.65,6.79,3.48,7.66,4.9,3.38,3.92,3.5,6.81)
wynagrodzenie

hist(wynagrodzenie, main = "Histogram liczebnosci wynagrodzenia", col="red")
rug(jitter(wynagrodzenie, factor = 2), side=1, ticksize=0.05, col="green")

#zad2

