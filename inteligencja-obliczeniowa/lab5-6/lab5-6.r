# https://inf.ug.edu.pl/~gmadejsk/io-niestac/lab5-6.pdf

# zad 2

iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE) 

names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

summary(iris)

library(class)

normalize <- function(x) {
num <- x - min(x)
denom <- max(x) - min(x)
return (num/denom)
}

iris_norm <- as.data.frame(lapply(iris[1:4], normalize))

set.seed(1234)

ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.67, 0.33))

iris.training <- iris[ind==1, 1:4]

iris.test <- iris[ind==2, 1:4]

iris.trainLabels <- iris[ind==1, 5]

iris.testLabels <- iris[ind==2, 5]

iris_pred <- knn(train = iris.training, test = iris.test, cl = iris.trainLabels, k=3)

#You see that the model makes reasonably accurate predictions, with the exception of one wrong classification in row 29, where "Versicolor” was predicted while the test label is “Virginica”.

install.packages("gmodels")

library(gmodels)

evaluations = data.frame(iris_pred, iris.testLabels)

CrossTable(x = iris.testLabels, y = iris_pred, prop.chisq=FALSE)

#to do napisac funkcje ktora obliczy ile sie wierszy sie ze soba zgadza podac liczbe i procent np 39/40 98%
Ewaluacja <- function() {
    ileRoznych = 0;
    for (index in 1:nrow(evaluations)) 
    { 
        row = evaluations[index, ]; 
        # print(row);
        if(row[1]!=row[2]) {
            ileRoznych = ileRoznych+1;
        }
    } 
    cat('Takich samych',nrow(evaluations)-ileRoznych,'/',nrow(evaluations))
    cat('', sep="\n\n")
    cat('Roznych w %',100 - ileRoznych/nrow(evaluations))
}
Ewaluacja()

confusion_matrix <- table(c(evaluations['iris_pred'])$iris_pred, c(evaluations['iris.testLabels'])$iris.testLabels)
confusion_matrix


# zad 3
# a)

# install.packages('e1071')
library(e1071)
library(class)

iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE) 
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")
summary(iris)


normalize <- function(x) {
num <- x - min(x)
denom <- max(x) - min(x)
return (num/denom)
}

iris_norm <- as.data.frame(lapply(iris[1:4], normalize))
set.seed(1234)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.67, 0.33))

iris.training <- iris[ind==1, 1:4]
iris.test <- iris[ind==2, 1:4]
iris.trainLabels <- iris[ind==1, 5]
iris.testLabels <- iris[ind==2, 5]

# naiveBayes(iris.training, iris.test)
classifier<-naiveBayes(iris[,1:4], iris[,5]) 
table(predict(classifier, iris[,-5]), iris[,5])
# na testowym

# lub

# iris = read.csv("iris.csv", sep = ",")
# data(iris)
# m <- naiveBayes(Species ~ ., data = iris) # m <- naiveBayes(iris[,-5], iris[,5])
# m
# table(predict(m, iris[,-5]), iris[,5]) 

#b)

# zad 4 ??
library(class)
install.packages("Formula")

install.packages("party")
library(party)

install.packages("partykit")
library("partykit")

install.packages('e1071')
library(e1071)

# install.packages("RWeka") #, dependencies = TRUE
# library("RWeka")

str(iris)
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
print(iris_ctree)
plot(iris_ctree) # plot(iris_ctree, type="simple")

# ewaluacja

m1 <- J48(class ~ sepallength + sepalwidth + petallength + petalwidth, data=iris)
plot(m1)
m2 <- J48(class ~ sepallength + sepalwidth + petallength + petalwidth, data=iris.training)
evaluate_Weka_classifier(m2, newdata = iris.test)


# zad 5 (lepiej zrobiona w innym pliku)

 setwd('/Users/kamilzie/Documents/git/studia4/inteligencja-obliczeniowa/lab5-6/')
library(class)
library(gmodels)

diabetes <- read.csv("diabetes.csv", sep = ",")
normalize <- function(x) {
    num <- x - min(x)
    denom <- max(x) - min(x)
    return (num/denom)
}
diabetes_norm <- as.data.frame(lapply(diabetes[1:8], normalize))

set.seed(1234)
ind <- sample(2, nrow(diabetes), replace=TRUE, prob=c(0.67, 0.33))
diabetes.training <- diabetes[ind==1, 1:8]
diabetes.test <- diabetes[ind==2, 1:8]
diabetes.trainLabels <- diabetes[ind==1, 9]
diabetes.testLabels <- diabetes[ind==2, 9]


k = 1

    diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=1)
    
    evaluation <- data.frame('Predicted Classes' = diabetes_pred, 'Observed Classes' = diabetes.testLabels)
    evaluationStats <- function(){
        max <- nrow(evaluation)
        predicted <- c(evaluation['Predicted.Classes'])$Predicted.Classes
        observed <- c(evaluation['Observed.Classes'])$Observed.Classes
        classes <- unique(diabetes$class)
        cat('Łącznie rekordów: ', max, '\n')
        for (i in 1:length(classes)) {
            cat('Klasa : ', as.character(classes[i]), '\n')
            cat('Ilość (przewidziana): ', sum(diabetes_pred == classes[i]), '(', (sum(diabetes_pred == classes[i])*100)/max, '%)\n')
            cat('Ilość: (realna)', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
        }
    }
    evaluationStats()
    
    CrossTable(x = diabetes.testLabels, y = diabetes_pred, prop.chisq=FALSE)

k = 3

    diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=3)
    
    evaluation <- data.frame('Predicted Classes' = diabetes_pred, 'Observed Classes' = diabetes.testLabels)
    evaluationStats <- function(){
        max <- nrow(evaluation)
        predicted <- c(evaluation['Predicted.Classes'])$Predicted.Classes
        observed <- c(evaluation['Observed.Classes'])$Observed.Classes
        classes <- unique(diabetes$class)
        cat('Łącznie rekordów: ', max, '\n')
        for (i in 1:length(classes)) {
            cat('Klasa : ', as.character(classes[i]), '\n')
            cat('Ilość (przewidziana): ', sum(diabetes_pred == classes[i]), '(', (sum(diabetes_pred == classes[i])*100)/max, '%)\n')
            cat('Ilość: (realna)', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
        }
    }
    evaluationStats()
    
    CrossTable(x = diabetes.testLabels, y = diabetes_pred, prop.chisq=FALSE)

    k = 5

    diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=5)
    
    evaluation <- data.frame('Predicted Classes' = diabetes_pred, 'Observed Classes' = diabetes.testLabels)
    evaluationStats <- function(){
        max <- nrow(evaluation)
        predicted <- c(evaluation['Predicted.Classes'])$Predicted.Classes
        observed <- c(evaluation['Observed.Classes'])$Observed.Classes
        classes <- unique(diabetes$class)
        cat('Łącznie rekordów: ', max, '\n')
        for (i in 1:length(classes)) {
            cat('Klasa : ', as.character(classes[i]), '\n')
            cat('Ilość (przewidziana): ', sum(diabetes_pred == classes[i]), '(', (sum(diabetes_pred == classes[i])*100)/max, '%)\n')
            cat('Ilość: (realna)', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
        }
    }
    evaluationStats()

    CrossTable(x = diabetes.testLabels, y = diabetes_pred, prop.chisq=FALSE)

k = 11

    diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=11)
    
    evaluation <- data.frame('Predicted Classes' = diabetes_pred, 'Observed Classes' = diabetes.testLabels)
    evaluationStats <- function(){
        max <- nrow(evaluation)
        predicted <- c(evaluation['Predicted.Classes'])$Predicted.Classes
        observed <- c(evaluation['Observed.Classes'])$Observed.Classes
        classes <- unique(diabetes$class)
        cat('Łącznie rekordów: ', max, '\n')
        for (i in 1:length(classes)) {
            cat('Klasa : ', as.character(classes[i]), '\n')
            cat('Ilość (przewidziana): ', sum(diabetes_pred == classes[i]), '(', (sum(diabetes_pred == classes[i])*100)/max, '%)\n')
            cat('Ilość: (realna)', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
        }
    }
    evaluationStats()
    
    CrossTable(x = diabetes.testLabels, y = diabetes_pred, prop.chisq=FALSE)


