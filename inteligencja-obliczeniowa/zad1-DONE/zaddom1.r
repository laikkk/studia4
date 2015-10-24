phi1= matrix(c(-1,2,4,0,-2,3,4,0,1,-3,4,0,1,-2,-4,0,2,-3,-4,0,-1,3,-4,0,1,2,3,0),ncol=4,byrow=TRUE)
colnames(phi1) = c("x1","x2","x3","sep")
phi1
as.table(phi1)

getwd()
phi2 = read.csv("aim-100-1_6-no-1.cnf", header=TRUE, sep=" ")

podstawienie = c(1,0,1,1)

# source("fitness.r")
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
	
	return(iloscDobrych)
}


fitness(c(1,1,1,1),phi1)