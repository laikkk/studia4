# Kamil Zieliński 215521
# zad 1
liczbyOd0do50 = c(1:50)
potegi = liczbyOd0do50^2
jednosci = potegi %% 10
table(jednosci) # bez uzycia factora !
s<-summary(as.factor(jednosci))
s

#zad 2 
stopnie = c(0:89)
radiany = stopnie*(pi/180) # obliczenie radianow
sinusy = sin(radiany)
consinusy = cos(radiany)
tangusy = sinusy/consinusy
contanges = cos(radiany)/sin(radiany)
tablica = data.frame(stopnie, radiany, sinusy, consinusy, tangusy, contanges)
is.num <- sapply(tablica, is.numeric)
tablica = lapply(tablica[is.num], round, 5)
tablica = as.data.frame(tablica)
tablica

# zad 3
paste(1:30, LETTERS[1:3], sep = ".")

# zad 4
daneO = read.csv("daneO.csv", header = TRUE, sep = ",", quote = "\"",dec = ".", fill = TRUE, comment.char = "")
classy = sapply(daneO[1,], class)
typy = sapply(daneO[1,], typeof)
data.frame(classy,typy)

# zad 5
for (i in 1:nrow(daneO)) { if(i %% 2 == 0){ print(daneO[i,]) } }

# zad 6
olimpiada = read.csv("olimpiad.csv", header = TRUE, sep = ";", quote = "\"",dec = ".", fill = TRUE, comment.char = "")
# Drukuje wiersze gdzie 11 kol (szkola == "III LO im.Mar.Woj. RP")
# olimpiada[olimpiada[,11] == "III LO im.Mar.Woj. RP",]

# UWAGA
# nazwy sa bardzo podobne. najwieksza wspolna czesc to 'III LO im.'
# szkoly = levels(factor(olimpiada[[11]])) # nazwy sa bardzo podobne. najwieksza wspolna czesc to 'III LO im.'

# Drukuje wszystkie wiersze gdzie szkola zaczyna sie na 'III LO im.'
olimpiada[ grepl("(III LO)",olimpiada[,11]) ,]

# zad 7
olimpiada = read.csv("olimpiad.csv", header = TRUE, sep = ";", quote = "\"",dec = ".", fill = TRUE, comment.char = "")
wiek.dirty = levels(factor(olimpiada[[13]]))
wiek = as.numeric(gsub("-latek", "", wiek.dirty)) # usuwamy  -latek
mean(wiek)