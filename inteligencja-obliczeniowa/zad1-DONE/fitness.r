#					1,2,3,4
#					1,1,0,1
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
				#print("dodaje")
				#print(iloscDobrych)
			}
	}
	
	return(iloscDobrych)
}