# install.packages("genalg")
# library(genalg)
# install.packages("ggplot2")
# library(ggplot2)

phi1= matrix(c(-1,2,4,0,-2,3,4,0,1,-3,4,0,1,-2,-4,0,2,-3,-4,0,-1,3,-4,0,1,2,3,0),ncol=4,byrow=TRUE)
colnames(phi1) = c("x1","x2","x3","sep")
phi1
as.table(phi1)

getwd()
phi2 = read.csv("aim-100-1_6-no-1.cnf", header=TRUE, sep=" ")

# source("fitness.r")
# MINUS!
# evalFunc
fitness = function(podstawienie,phi){
	kopia_phi = phi
	
	iloscDobrych=0
	
	for(i in 1:nrow(kopia_phi)) {
		row <- kopia_phi[i,]
		index = 1
		for(i in row){
				wartoscBezwzgleda = abs(i)
				if(wartoscBezwzgleda>0){
					wartoscZPodsawienia = podstawienie[wartoscBezwzgleda]
				
					if(i<=0){
						if(wartoscZPodsawienia==0)
						{
							wartoscZPodsawienia = 1;
						}else{
							wartoscZPodsawienia = 0;
						}
					}
				
					row[index]=wartoscZPodsawienia
				}
				
				index=index+1;
			}
			print(row)
			
			if(row[1]==1 | row[2]==1 | row[3]==1 ){
				iloscDobrych=iloscDobrych+1;
			}
	}
	
	# MINUS!
	return(-iloscDobrych)
}

#size
highestFromPhi <- max(phi1, na.rm = TRUE)

# wraped fitness func
fitnessFunc <- function(x) fitness(x,phi1)

GAmodel1 <- rbga.bin(size = highestFromPhi, popSize = 200, iters = 100, mutationChance = 0.01, elitis = T, evalFunc = fitnessFunc)

summary(GAmodel1, echo=TRUE)

iter<-100
animate_plot <- function() {
 for (i in seq(1, iter)) {
 temp <- data.frame(Iteracja = c(seq(1, i), seq(1, i)), Legenda = c(rep("Średnia",
 i), rep("Najlepsza", i)), WartoscFitness = c(-GAmodel1$mean[1:i], -GAmodel1$best[1:i]))
 pl <- ggplot(temp, aes(x = Iteracja, y = WartoscFitness, group = Legenda,
 colour = Legenda)) + geom_line() + scale_x_continuous(limits = c(0,
 iter)) + scale_y_continuous(limits = c(0, 110)) + geom_hline(y =
max(temp$WartoscFitness),
 lty = 2) + annotate("text", x = 1, y = max(temp$WartoscFitness) +
 2, hjust = 0, size = 3, color = "black", label = paste("Najlepsze rozwiązanie:",
 max(temp$WartoscFitness))) + scale_colour_brewer(palette = "Set1")
 print(pl)
 }
}

animate_plot()