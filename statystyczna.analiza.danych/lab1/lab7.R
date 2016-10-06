# uwaga sa 2 wersje. 1 z okreslona liczba argumentow, 2. z nieokreslona 

x <- c(1:10)
y <- c(2,3,7,10,11)
z <- c(1,2,3,6,8,10,12,15)

sumaSymetryczna <- function(x,y,z) {
  # sprawidzic czy x jest w nieparzystej ilosci zbiorach
  # zrobic zbrior ze wszystkimi zmiennymi
  # przeiterowac po niej i sprawidzic czy nalezyc do nieparzytej ilosci zbiorow, 
  #jesli tak to dodac do wynikowego zbioru
  wynik = c()
  wszystkieElementy = union(x,union(y,z))
  for(i in 1:length(wszystkieElementy)) {
    occurences = sum(x == i) + sum(y == i) + sum(z == i)
    if(occurences %% 2 == 1) {
      print("dodaje")
      print(i)
      wynik <- c(wynik, i)
    }
  }
  print(wynik)
  return(wynik) 
}
sumaSymetryczna(x,y,z)



sumaSymetrycznaNEW <- function(...) {
  arguments <- list(...) # turn them into a list
  wszystkieElementy = c()
  
  for(arg in arguments ) {
    wszystkieElementy <- union(wszystkieElementy, arg)
  }
  
  print(wszystkieElementy)
  
  wynik = c()
  for(i in wszystkieElementy) {
    print(i)
    occurences = 0
    for(arg in arguments ) {
      occurences =  occurences + sum(arg == i)
    }
    
    if(occurences %% 2 == 1) {
      wynik <- c(wynik, i)
    }
  }

  return(wynik) 
}
sumaSymetrycznaNEW(x,y,z)

plot(x,dnorm(x),type = "l",lwd=3, cex.axis=1.5,cex.lab=1.5)
par(usr=c(-4,4,-0.04,1.04))
lines(x,pnorm(x),lty=2,lwd=3,cex.axis=1.5,cex.lab=1.5)
axis(side = 4, cex.axis=1.5,cex.lab=1.5)
mtext(side = 4, "pnorm()",line = 2.5,cex.axis=1.5,cex=1.5)


x <- seq(0,40)
plot(x,dpois(x,0.1),type = "l",lwd=3, cex.axis=1.5,cex.lab=1.5)
par(usr=c(-4,4,-0.04,1.54))
lines(x,ppois(x,0.1),lty=2,lwd=3,cex.axis=1.5,cex.lab=1.5)
axis(side = 4, cex.axis=1.5,cex.lab=1.5)
mtext(side = 4, "pnorm()",line = 2.5,cex.axis=1.5,cex=1.5)