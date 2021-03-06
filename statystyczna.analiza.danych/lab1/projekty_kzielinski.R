# Kamil Zielinski 215521

# 1. Wybieramy katalog. Należy z katalogu odczytać wszystkie pliki z rozszerzeniem csv. Tym z nich, które zawierają więcej niż 1000 wierszy zmieniamy nazwę dodając na początku nazwy pliku ”1000+”.
zad1 = function() {
  fileList = list.files(pattern = "*.csv")
  for (i in 1:length(fileList))  {
    currentFile = read.csv(fileList[i])
    if (nrow(currentFile) > 1000) {
      newName = paste("1000+",fileList[i], sep = "")
      file.rename(fileList[i],newName)
      print(paste("Zmieniono nazwe pliku z",fileList[i],"na",newName))
    }
  }
}

# 2. Należy wczytać z klawiatury pewien ciąg liczb. Następnie należy przeprowadzić 10000 losowań pięciu z tych liczb (dopuszczalne powtórzenia),
# dla każdego losowania obliczyć średnią i zapamiętać ją. Po wszystkim należy wyświetlić histogram uzyskanych średnich.
zad2 = function() {
  ciag = c(1,3,5,6,8,12,24,53,120,43,532,100)
  zbrior_srednich = c()
  
  for (i in 1:1000) {
    wylosowaneWartosci = sample(ciag,5)
    sredniaWylosowanychWartosci = mean(wylosowaneWartosci)
    zbrior_srednich = c(zbrior_srednich,sredniaWylosowanychWartosci)
  }
  
  hist(
    zbrior_srednich,
    col = heat.colors(10), 
    main = "Histogram uzyskanych srednich",
    ylab = "Czestotliowsc", 
    xlab = "Zbior srednich"
  )
}



# 3. Należy wczytać z klawiatury ciąg 10 liczb i wygenerować wszystkie możliwe ciągi 4-elementowe złożone z wczytanych liczb (dopuszczalne powtórzenia).
# Dla każdego ciągu należy obliczyć średnią i zapamiętać ją a następnie średnie te należy pokazać na histogramie.
zad3 = function() {
  zbrior_srednich = c()
  wygenerowaneMozliweCiagi = combn(ciag,4) # i wygenerować wszystkie możliwe ciągi 4-elementowe złożone z wczytanych liczb
  
  for (i in 1:ncol(wygenerowaneMozliweCiagi)) {
    zbrior_srednich = c(zbrior_srednich,mean(wygenerowaneMozliweCiagi[,i]))
  }
  
  hist(
    zbrior_srednich,
    col = rainbow(10), 
    main = "Srednie wyliczone z mozliwych kombinacji 4 elementowych",
    ylab = "Czestotliowsc", 
    xlab = "Zbior srednich"
  )
}

# 5. Wylosować 11 wartości z rozkładu normalnego N (0, 1) i zapamiętać je w wektorze W .
# Wykonać 10000 razy eksperyment polegający na wylosowaniu 11-elementowego ciągu o wartościach z wektora W (powtórzenia dopuszczalne).
# Dla każdego loso- wania należy wyliczyć jego medianę.
# Zapamiętane mediany należy zaprezentować na histogramie.
zad5 = function() {
  W = rnorm(11)
  zapamietaneMediany = c()
  for (i in 1:10000) {
    wylosowana11 = sample(W,11,replace = TRUE)
    zapamietaneMediany = c(zapamietaneMediany, median(wylosowana11))
  }
  hist(
    zapamietaneMediany, 
    col = terrain.colors(10), 
    main = "Histogram wyliczonych median",
    ylab = "Czestotliowsc", 
    xlab = "Wartosc mediany"
  )
}

setwd("/Users/kamilzie/Documents/git/studia4/statystyczna.analiza.danych/lab1")
install.packages("readxl")

# 6. Dla tablic trwania życia ze stron Głównego Urzędu Statystycznego (http://demografia. stat.gov.pl/bazademografia/TrwanieZycia.aspx)
# należy wczytać dane z pli- ku(ów) oraz
# narysować wykresy prawdopodobieństwa zgonu qx osobno dla kobiet
# oraz mężczyzn w wieku 20 lat w latach 1990-2014.
zad6 = function() {
  library(readxl)
  sheets = c(1990:2014)
  qxKobiet = c()
  qxMezczyzn = c()
  for (sheett in sheets) {
    rok1990 = read_excel("lifetables1990-2014.xls", sheet = as.character(sheett))
    rok1990 = rok1990[-1,] # usuniecie pierwszego wiersza
    rok1990[4] = lapply(rok1990[4],as.numeric) # cast to numeric
    rok1990[2] = lapply(rok1990[2],as.numeric) # cast to numeric
    kobiety = rok1990[rok1990$`Płeć        1-mężcz.      2-kobiety` > 1.1,]
    qx20LetniejKobiety = kobiety[kobiety$Wiek == 20,4]
    print(paste("qx 20 letniej kobiety",qx20LetniejKobiety))
    qxKobiet = c(qxKobiet, qx20LetniejKobiety)
    
    mezczyzni = rok1990[rok1990$`Płeć        1-mężcz.      2-kobiety` <
                          1.1,]
    qx20LetniegoFaceta = mezczyzni[mezczyzni$Wiek == 20,4]
    print(paste("qx 20 letniego faceta",qx20LetniegoFaceta))
    qxMezczyzn = c(qxMezczyzn, qx20LetniegoFaceta)
  }
  
  plot(
    sheets,
    qxMezczyzn,
    type = "l",
    col = "blue",
    ylab = "",
    xlab = ""
  )
  par(new = TRUE)
  plot(
    sheets,
    qxKobiet,
    type = "l",
    axes = F,
    col = "pink",
    ylab = "Prawdopobienstwo",
    xlab = "Lata",
    main = "Prawdopodobienstwo zgonu kobiet i mezczyzn w wieku 20 lat"
  )
  par(new = F)
  legend("topright", c("kobieta","mezczyzna"), bty="n", fill=c("pink","blue"));
}

# 8. Wykorzystując dane ze zmiennej anscombe zademonstrować obliczanie parametrów regresji liniowej.
zad8 = function() {
  x1 = anscombe$x1
  y1 = anscombe$y1
  regresja = lm(x1 ~ y1)
  intercept = regresja$coefficients[1]
  coefficientsY1 = regresja$coefficients[2]
  plot(x1,y1,main = "Regresja liniowa stosunku x1 do y1")
  abline(intercept,coefficientsY1,col = "red")
}

# 10. Napisać funkcję, która symuluje działanie gry Parrondo polegającej na tym, że w każdym kroku losujemy pomiędzy jedną z gier A lub B (opisanych poniżej).
# Po każdym kroku nasz kapitał (początkowo 0) zmienia się o +1 lub −1.
#     Gra A to rzut monetą z wygraną (+1) z prawdopodobieństwem pA < 0.5 (podanym jako parametr pA funkcji).
#     Gra B polega na tym, że w sytuacji gdy nasz aktualny kapitał jest podzielny przez 3, rzucamy monetą, która daje wygraną z prawdopodobieństwem pB < 0.1 (podanym jako parametr pB funkcji),
#     w przeciwnym razie rzucamy monetą, która daje wygraną z prawdopodobieństwem pC < 0.75 (podanym jako parametr pB funkcji).
# Dla danej gry wykonujemy 1000 kroków i sprawdzamy czy zakończyła się wygraną (kapitał nieujemny) czy przegraną (kapitał ujemny).
# Należy wykonać 1000 symulacji i zliczyć wygrane oraz przegrane.
zad10 = function() {
  kapital = 0
  
  graA = function(pA) {
    # pA < 0.5
    # print("gra A")
    wynikRzutuMoneta = rbinom(1, size = 1, prob = pA) # rzut moneta
    # print(paste("Wynik rzutu moneta z prob = ",pA," rowna sie ",wynikRzutuMoneta))
    if (wynikRzutuMoneta > 0) {
      kapital <<- kapital + 1
    } else {
      kapital <<- kapital - 1
    }
  }
  
  graB = function(pB, pC) {
    # pB < 0.1, pC < 0.75
    # print("gra B")
    if (kapital %% 3 == 0) {
      graA(pB)
    } else {
      graA(pC)
    }
  }
  
  graj = function() {
    # logika ktora gre wybrac
    for (i in 1:1000) {
      # print(paste("Gram, kapital == ", kapital))
      ktoraGra = runif(1)
      if (ktoraGra < 0.5) {
        graA(runif(1,min = 0,max = 0.5)) # 1 param
      } else {
        graB(runif(1,min = 0,max = 0.1),
             runif(1,min = 0,max = 0.75)) # podaj 2 parametry
      }
    }
  }
  
  graj()
  
  print(paste("Twoj kapital == ", kapital))
  if (kapital > 0) {
    print("Wygrales")
  } else {
    print("Przegrales")
  }
}

# 11. Symulacja ruiny gracza w ruletkę. Zakładamy, że gracz obstawia jedynie czarne lub czerwone i stawka (oraz wygrana) mają wartość 1.
# Na wejściu mamy kapitał K gracza (będący liczbą całkowitą). Symulacja kończy się w sytuacji gdy gracz przegra wszystko lub osiągnie podany cel Kmax.
# Cel domyślnie równy jest 2K. Przy pomocy zbudowanej funkcji zademonstrować przykładową trajektorię
# oraz wykonać 1000 symulacji pokazując liczbę porażek oraz liczbę zwycięstw wraz ze średnim czasem do porażki lub wygranej.
zad11 = function() {
  kapital = 100
  czarne = c(2,4,6,8,10,11,13,15,17,20,22,24,26,28,29,31,33,35)
  biale = c(1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36)
  podsumowanie = data.frame()
  
  graj = function(kapitalK) {
    kMax = 2 * kapitalK
    iloscIteracji = 0
    repeat {
      iloscIteracji = iloscIteracji + 1
      kapitalK = kapitalK - 1 #oplata za obstawienie koloru
      ktoryKolor = runif(1)
      wylosowanyNumer = sample(1:36,1)
      
      if (wylosowanyNumer %in% czarne && ktoryKolor < 0.5) {
        # obstawilem czarne i trafilem
        kapitalK = kapitalK + 1
      } else if (wylosowanyNumer %in% biale && ktoryKolor > 0.5) {
        # obstawilem bialem i trafilem
        kapitalK = kapitalK + 1
      }
      
      if (kapitalK == 0 || kapitalK == kMax) {
        wygral = 0
        if (kapitalK == kMax) {
          wygral = 1
        }
        return(list(wygral,iloscIteracji))
        break
      }
    }
  }
  
  for (i in 1:10) { podsumowanie = rbind(podsumowanie,graj(kapital)) }
  setNames(podsumowanie,c("czyWygral","iloscIteracji"))
  
  sredniCzas = if (is.na(mean(podsumowanie[0 == 0,2]))) 0 else mean(podsumowanie[0 == 0,2])
  print(paste("Ilosc PORAZEK =",length(podsumowanie[0 == 0,1]),", sredni czas = ",sredniCzas))
  
  sredniCzas = if (is.na(mean(podsumowanie[0 == 1,2]))) 0 else mean(podsumowanie[0 == 1,2])
  print(paste("ilosc WYGRANYCH =",length(podsumowanie[0 == 1,1]),", sredni czas = ",sredniCzas))
}
