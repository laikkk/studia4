# Kamil Zielinski
# Zad 1
zad1 <- function(X) {
  # pierwsza czesc zadania
  liczebnosc = length(X)
  srednia = summary(X)["Mean"]
  odchylenieStandardowe = sd(X)
  minimum = summary(X)["Min."]
  pierwszyKwadryl = summary(X)["1st Qu."]
  mediana = summary(X)["Median"]
  trzeciKwadryl = summary(X)["3rd Qu."]
  maximum = summary(X)["Max."]
  
  tabela <- data.frame(
    "Podsumowanie" = c(
      liczebnosc,
      srednia,
      odchylenieStandardowe,
      minimum,
      pierwszyKwadryl,
      mediana,
      trzeciKwadryl,
      maximum
    ),
    row.names = c(
      "liczebnosc",
      "srednia",
      "odchylenie standardowe",
      "minimum",
      "Q1",
      "mediana",
      "Q3",
      "maksimum"
    )
  )
  write.csv2(tabela,
             file = "tabelazad1.csv",
             quote = FALSE,
             row.names = TRUE)
  
  # druga czesc
  jpeg("zad1czesc2.jpg")
  par(mfrow = c(2,1))
  plot(density(X), main = "Gestosc X", ylab = "Gestosc", col = "blue")
  
  hist(
    X, main = "Histogram X", xlab = "Wartosci X", ylab = "Czestotliwosc", col =
      heat.colors(max(X)), border = "blue"
  )
  lines(density(X))
  dev.off()
  
  #czesc trzecia
  jpeg("zad1czesc3.jpg")
  par(mfrow = c(1,1))
  boxplot(X, las = 2, col = "palevioletred1", main = "Boxplot dla X")
  dev.off()
}

zad2 <- function(x,y,...) {
  #pierwsza czesc zadania
  liczebnosc = tapply(x, y, FUN = "length")
  srednia = tapply(x, y, FUN = "mean")
  odchylenieStandardowe = tapply(x, y, FUN = "sd")
  minimum = tapply(x, y, FUN = "min")
  pierwszyKwadryl = tapply(
    x, y, FUN = "quantile", type = 6, names = TRUE, probs = c(1 / 4)
  )
  mediana = tapply(x, y, FUN = "median")
  trzeciKwadryl = tapply(
    x,y,FUN = "quantile", type = 6, names = TRUE, probs = c(3 / 4)
  )
  maximum = tapply(x, y, FUN = "max")
  
  tabela <- data.frame(
    "Podsumowanie" = c(
      liczebnosc,
      srednia,
      odchylenieStandardowe,
      minimum,
      pierwszyKwadryl,
      mediana,
      trzeciKwadryl,
      maximum
    ),
    row.names = c(
      "liczebnosc",
      "srednia",
      "odchylenie standardowe",
      "minimum",
      "Q1",
      "mediana",
      "Q3",
      "maksimum"
    )
  )
  write.csv2(tabela,
             file = "tabelazad2.csv",
             quote = FALSE,
             row.names = TRUE)
  
  #druga czesc zadania
  jpeg("zad2czesc2.jpg")
  par(mfrow = c(1,1))
  boxplot(x ~ y, las = 2, col = "palevioletred1", main = "Boxplot dla X",...)
  dev.off()
}