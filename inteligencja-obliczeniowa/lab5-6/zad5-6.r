install.packages('e1071')
install.packages("party")
library(e1071)
library(party)
library(class)

# 5.

getTPRAndFPR <- function(confusion_matrix) {
	tp <- confusion_matrix[1,1]
	fn <- confusion_matrix[1,2]
	fp <- confusion_matrix[2,1]
	tn <- confusion_matrix[2,2]
	tpr <- tp / (tp + fn)
	fpr <- fp / (fp + tn)
	c(fpr, tpr)
}
evaluationsStats <- function(title, evaluation, diabetes_pred, confusion_matrix){
	cat('\n', title, '\n\n')
	max <- nrow(evaluation)
	predicted <- c(evaluation['Predicted'])$Predicted
	observed <- c(evaluation['Observed'])$Observed
	classes <- unique(diabetes$class)
	for (i in 1:length(classes)) {
		cat(as.character(classes[i]), ':\n')
		cat('Ilość (przewidziane): ', sum(diabetes_pred == classes[i]), '(', (sum(diabetes_pred == classes[i])*100)/max, '%)\n')
		cat('Ilość (realne):', sum(observed == classes[i]), '(', (sum(observed == classes[i])*100)/max, '%)\n')
	}
	cat('Macierz błędu:\n')
	print(confusion_matrix)
	fpr_tpr <- getTPRAndFPR(confusion_matrix)
	cat('TPR = ', fpr_tpr[2], '\n')
	cat('FPR = ', fpr_tpr[1], '\n')
}

diabetes <- read.csv("diabetes.csv", sep = ",")
normalize <- function(x) {
	num <- x - min(x)
	denom <- max(x) - min(x)
	return (num/denom)
}
diabetes_norm <- as.data.frame(lapply(diabetes[1:8], normalize))

# KNN

set.seed(1234)
ind <- sample(2, nrow(diabetes), replace=TRUE, prob=c(0.67, 0.33))
diabetes.training <- diabetes[ind==1, 1:8]
diabetes.test <- diabetes[ind==2, 1:8]
diabetes.trainLabels <- diabetes[ind==1, 9]
diabetes.testLabels <- diabetes[ind==2, 9]

# KNN k = 1

diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=1)
evaluation <- data.frame('Predicted' = diabetes_pred, 'Observed' = diabetes.testLabels)
confusion_matrix <- table(c(evaluation['Predicted'])$Predicted, c(evaluation['Observed'])$Observed)
knn_1_fpr_tpr <- getTPRAndFPR(confusion_matrix)
evaluationsStats('KNN k = 1', evaluation, diabetes_pred, confusion_matrix)

# KNN k = 3

diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=3)
evaluation <- data.frame('Predicted' = diabetes_pred, 'Observed' = diabetes.testLabels)
confusion_matrix <- table(c(evaluation['Predicted'])$Predicted, c(evaluation['Observed'])$Observed)
knn_3_fpr_tpr <- getTPRAndFPR(confusion_matrix)
evaluationsStats('KNN k = 3', evaluation, diabetes_pred, confusion_matrix)

# KNN k = 5

diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=5)
evaluation <- data.frame('Predicted' = diabetes_pred, 'Observed' = diabetes.testLabels)
confusion_matrix <- table(c(evaluation['Predicted'])$Predicted, c(evaluation['Observed'])$Observed)
knn_5_fpr_tpr <- getTPRAndFPR(confusion_matrix)
evaluationsStats('KNN k = 5', evaluation, diabetes_pred, confusion_matrix)

# KNN k = 11

diabetes_pred <- knn(train = diabetes.training, test = diabetes.test, cl = diabetes.trainLabels, k=11)
evaluation <- data.frame('Predicted' = diabetes_pred, 'Observed' = diabetes.testLabels)
confusion_matrix <- table(c(evaluation['Predicted'])$Predicted, c(evaluation['Observed'])$Observed)
knn_11_fpr_tpr <- getTPRAndFPR(confusion_matrix)
evaluationsStats('KNN k = 11', evaluation, diabetes_pred, confusion_matrix)

# naiveBayes

diabetes_pred <- naiveBayes(class ~ ., data = diabetes)
cat(rownames(diabetes_pred$apriori)[1], ': ', as.integer(diabetes_pred$apriori[1]), '(', (as.integer(diabetes_pred$apriori[1])*100)/nrow(diabetes), '%)\n')
cat(rownames(diabetes_pred$apriori)[2], ': ', as.integer(diabetes_pred$apriori[2]), '(', (as.integer(diabetes_pred$apriori[2])*100)/nrow(diabetes), '%)\n')
confusion_matrix <- table(predict(diabetes_pred, diabetes[,-9]), diabetes[,9])
cat('Macierz błędu:\n')
print(confusion_matrix)
naive_bayes_fpr_tpr <- getTPRAndFPR(confusion_matrix)
cat('TPR = ', naive_bayes_fpr_tpr[2], '\n')
cat('FPR = ', naive_bayes_fpr_tpr[1], '\n')

# Drzewa decyzyjne

str(diabetes)
diabetes_ctree <- ctree(class ~ pregnant.times + glucose.concentr + blood.pressure + skin.thickness + insulin + mass.index + pedigree.func + age, data=diabetes)
print(diabetes_ctree)
plot(diabetes_ctree)

# Wykres

plot(c(knn_1_fpr_tpr[1], knn_3_fpr_tpr[1], knn_5_fpr_tpr[1], knn_11_fpr_tpr[1], naive_bayes_fpr_tpr[1]),c(knn_1_fpr_tpr[2], knn_3_fpr_tpr[2], knn_5_fpr_tpr[2], knn_11_fpr_tpr[1], naive_bayes_fpr_tpr[2]),	xlab="FPR",	ylab="TPR",	main="Klasyfikatory", ylim=0:1, xlim=0:1, col=c(1,2,3,4,5))
legend(0.77,1,	c('KNN k = 1', 'KNN k = 3', 'KNN k = 5', 'KNN k = 11', 'naiveBayes'),col=c(1, 2, 3, 4, 5),pch=c(1,1,1,1,1))

# zad 6.

# usunięcie rekordów

adult <- read.csv("adult.dat", sep = ",", header = FALSE)
adult.delete = subset(adult, V1 != "?" & V2 != "?" & V3 != "?" & V4 != "?" & V5 != "?" & V6 != "?" & V7 != "?" & V8 != "?" & V9 != "?" & V10 != "?" & V11 != "?" & V12 != "?" & V13 != "?" & V14 != "?") 
cat('Przed usunięciem: ', nrow(adult), ' wierszy\n')
cat('Po usunieciu: ', nrow(adult.delete), ' wierszy\n')

# średnia

getMean <- function(adult){
	for (i in 1:nrow(adult)){
		for (j in 1:ncol(adult)){
			if (adult[i,j] == '?'){
				try(adult[i,j] <- mean(as.numeric(adult[j])))
			}
		}
	}
	adult
}
adult.mean <- getMean(adult)

# średnia (klasa)

getMeanByClass <- function(values, value) {
	new_values <- c()
	class = class(value)
	for (i in 1:length(values)) {
		if (class(values[i]) == "numeric") { # class
			new_values <- append(new_values, values[i])
		}
	}
	if (length(new_values) > 0) {
		mean(new_values)
	} else {
		value
	}
}
getMean <- function(adult){
	for (i in 1:nrow(adult)){
		for (j in 1:ncol(adult)){
			if (adult[i,j] == '?') {
				adult[i,j] <- getMeanByClass(adult[j], adult[i,j])
			}
		}
	}
	adult
}
adult.mean.c <- getMean(adult)

# średnia (mediana)

getMedianByClass <- function(values, value) {
	new_values <- c()
	class = class(value)
	for (i in 1:length(values)) {
		if (class(values[i]) == "numeric") { # class
			new_values <- append(new_values, values[i])
		}
	}
	if (length(new_values) > 0) {
		median(new_values)
	} else {
		value
	}
}
getMedian <- function(adult){
	for (i in 1:nrow(adult)){
		for (j in 1:ncol(adult)){
			if (adult[i,j] == '?') {
				adult[i,j] <- getMedianByClass(adult[j], adult[i,j])
			}
		}
	}
	adult
}
adult.median.c <- getMedian(adult)

# zastąpienie wartością najczęściej występującą

getNominal <- function(adult){
	for (i in 1:nrow(adult)){
		for (j in 1:ncol(adult)){
			if (adult[i,j] == '?') {
				adult[i,j] <- getMedianByClass(adult[j], adult[i,j])
			}
		}
	}
	adult
}
adult.nominal.c <- getNominal(adult)