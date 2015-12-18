https://inf.ug.edu.pl/~gmadejsk/io2015/lab6.pdf 

1. 

iris = read.csv("iris.csv", sep = ",")
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

evaluation <- data.frame('Predicted Classes' = iris_pred, 'Observed Classes' = iris.testLabels)
evaluationStats <- function(){
    max <- nrow(evaluation)
	predicted <- c(evaluation['Predicted.Classes'])$Predicted.Classes
	observed <- c(evaluation['Observed.Classes'])$Observed.Classes
	classes <- unique(iris$class)
	cat('Łącznie rekordów: ', max, '\n')
	for (i in 1:length(classes)) {
		cat('Gatunek : ', as.character(classes[i]), '\n')
		cat('Ilość (przewidziany): ', sum(iris_pred == classes[i]), '(', (sum(iris_pred == classes[i])*100)/max, '%)\n')
		cat('Ilość: (realny)', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
	}
}
evaluationStats()

CrossTable(x = iris.testLabels, y = iris_pred, prop.chisq=FALSE)

2.

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


#diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr',~'blood-pressure', fill = ~diabetes_pred) %>% layer_points()
#	diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr', fill = ~diabetes_pred) %>% layer_points()

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

	#	diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr',~'blood-pressure', fill = ~diabetes_pred) %>% layer_points()
	#diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr', fill = ~diabetes_pred) %>% layer_points()
	
	
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

	#	diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr',~'blood-pressure', fill = ~diabetes_pred) %>% layer_points()
	#diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr', fill = ~diabetes_pred) %>% layer_points()
	
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

#diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr',~'blood-pressure', fill = ~diabetes_pred) %>% layer_points()
#	diabetes.test %>% ggvis(~'pregnant-times', ~'glucose-concentr', fill = ~diabetes_pred) %>% layer_points()	
	
k = 7

	diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=7)
	
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
	
https://inf.ug.edu.pl/~gmadejsk/io2015/lab7.pdf

install.packages('e1071')
install.packages("party")
library(e1071)
library(party)
library(class)

install.packages("party")
install.packages("RWeka", dependencies = TRUE)
install.packages("partykit")
library("RWeka")
library("party")
library("partykit")

1. 

W tym zadanku dodałem ten rekord, który był omawiany w przykładzie. On nie miał być dodany.

age,income,student,credit.rating,buys
31..40,high,no,fair,yes
>40,medium,no,fair,yes
>40,high,yes,excellent,yes
>40,low,yes,excellent,no
31..40,low,no,excellent,yes
<=30,medium,no,fair,no
<=30,low,yes,fair,no
#>40,medium,no,excellent,yes

Krok 1.
P(buys=yes)=5/8 P(buys=no)=3/8

Krok 2.
P(age>40|buys=yes) = 3/8  *  8/5 = 3/5
P(age>40|buys=no) = 1/8  * 8/3 = 1/3
P(income=medium|buys=yes) = 2/8 * 8/5 = 2/5
P(income=medium|buys=no) = 1/8 * 8/3 = 1/3
P(student=no|buys=yes) = 4/8 * 8/5 = 4/5
P(student=no|buys=no) = 1/8 * 8/3 = 1/3
P(credit.rating=excellent|buys=yes) = 3/8 * 8/5 = 3/5
P(credit.rating=excellent|buys=no) = 1/8 * 8/3 = 1/3

Krok 3.
P(X|buys=yes) = (3/5) * (2/5) * (4/5) * (3/5) = 72/625
P(X|buys=no) = (1/3) * (1/3) * (1/3) * (1/3) = 1/81

Krok 4.
P(buys=yes|X)=P(X|buys=yes)*P(buys=yes) = (72/625)*(5/8) = 0.072
P(buys=no|X)=P(X|buys=no)*P(buys=no) =(1/81)*(3/8) = 0.00462963

2.

a)

iris = read.csv("iris.csv", sep = ",")
data(iris)
m <- naiveBayes(Species ~ ., data = iris) # m <- naiveBayes(iris[,-5], iris[,5])
m
table(predict(m, iris[,-5]), iris[,5]) 

b)

Krok 1.

P(Species=setosa) = 1/3 = 0.3333333
P(Species=versicolor) = 1/3 = 0.3333333
P(Species=virginica) = 1/3 = 0.3333333

Krok 2.

P(Sepal.Length=5.936|Species=setosa) = 0.3524897
P(Sepal.Length=5.936|Species=versicolor) = 0.5161711
P(Sepal.Length=5.936|Species=virginica) = 0.6358796
P(Sepal.Width=2.974|Species=setosa) = 0.3790644
P(Sepal.Width=2.974|Species=versicolor) = 0.3137983
P(Sepal.Width=2.974|Species=virginica) = 0.3224966
P(Petal.Length=4.260|Species=setosa) = 0.1736640
P(Petal.Length=4.260|Species=versicolor) = 0.4699110
P(Petal.Length=4.260|Species=virginica) = 0.5518947
P(Petal.Width=2.026|Species=setosa) = 0.1053856
P(Petal.Width=2.026|Species=versicolor) = 0.1977527
P(Petal.Width=2.026|Species=virginica) = 0.2746501

Krok 3.
P(X|Species=setosa) = 0.3524897 * 0.3790644 * 0.1736640 * 0.1053856 = 0.002445403
P(X|Species=versicolor) = 0.5161711 * 0.3137983 * 0.4699110 * 0.1977527 = 0.01505159
P(X|Species=virginica) = 0.6358796 * 0.3224966 * 0.5518947 * 0.2746501 = 0.03108394

Krok 4.
P(Species=setosa|X) = P(X|Species=setosa) * P(Species=setosa) = 0.002445403 * 0.3333333 = 0.0008151343
P(Species=versicolor|X) = P(X|Species=versicolor) * P(Species=versicolor) = 0.01505159 * 0.3333333 = 0.005017196
P(Species=virginica|X) = P(X|Species=virginica) * P(Species=virginica) = 0.03108394 * 0.3333333 = 0.01036131

Sepal.Length | Sepal.Width | Petal.Length | Petal.Width | Species
5.936		 | 2.974	   | 4.260        | 2.026       | virginica

c) 

# podział

set.seed(1234)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
iris.training <- iris[ind==1, 1:4]
iris.test <- iris[ind==2, 1:4]
iris.trainLabels <- iris[ind==1, 5]
iris.testLabels <- iris[ind==2, 5]

data(iris.training)
m <- naiveBayes(Species ~ ., data = iris.training) # m <- naiveBayes(iris.trainLabels, iris.trainLabels)
m
table(predict(m, iris.test), iris.testLabels)

3.

str(iris)
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
print(iris_ctree)
plot(iris_ctree) # plot(iris_ctree, type="simple")

Sepal.Length | Sepal.Width | Petal.Length | Petal.Width | Species
5.936		 | 2.974	   | 1.5          | 2.026       | setosa
5.936		 | 2.974	   | 2.0          | 1.6         | versicolor

# ewaluacja
# U mnie to nie działało, ale zbytnio się nie czepiał jak się tego nie miało.

m1 <- J48(class ~ sepallength + sepalwidth + petallength + petalwidth, data=iris)
plot(m1)
m2 <- J48(class ~ sepallength + sepalwidth + petallength + petalwidth, data=iris.training)
evaluate_Weka_classifier(m2, newdata = iris.test)