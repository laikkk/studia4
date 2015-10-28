#install.packages("sets")
library(sets)

sets_options("universe", seq(from = 0, to = 140, by = 0.1))

powieksz = function(x){return(x*70+70)}

# aby zrobic linie pionowa
maxPlus = 3000
maxMinus = -3000

variables <- set(
	odległosc =
		fuzzy_variable(	
						mala = fuzzy_trapezoid(corners =c(maxMinus,maxMinus,20,45)),
						srednia = fuzzy_trapezoid(corners =c(20,45,105,130)),
						duza = fuzzy_trapezoid(corners =c(105,130,maxPlus,maxPlus))
		),
	 
	predkosc =
		fuzzy_variable(	
						mala = fuzzy_trapezoid(corners =c(maxMinus,maxMinus,15,65)),
						srednia = fuzzy_trapezoid(corners =c(15,65,65,115)),
						duza = fuzzy_trapezoid(corners =c(65,115,maxPlus,maxPlus))
		),
		 
	przyspieszenie =
		fuzzy_variable(
						duzeMinus = fuzzy_trapezoid(corners =powieksz( c(maxMinus,maxMinus,-0.4,0))),
# trojkaty zrobione z trapezu ;)
#						maleMinus = fuzzy_trapezoid(corners =powieksz( c(-0.4,0,0,0.1))),
#						malePlus = fuzzy_trapezoid(corners =powieksz( c(-0.1,0,0,0.4))),
						maleMinus = fuzzy_triangular(corners =powieksz( c(-0.4,0,0.1))),
						malePlus = fuzzy_triangular(corners =powieksz( c(-0.1,0,0.4))),
						duzePlus = fuzzy_trapezoid(corners =powieksz( c(0,0.4,maxPlus,maxPlus)))
		)
)
 
rules <-
set(
 fuzzy_rule(odległosc %is% mala || predkosc %is% mala, przyspieszenie %is% duzeMinus),
 fuzzy_rule(odległosc %is% srednia || predkosc %is% mala, przyspieszenie %is% maleMinus),
 fuzzy_rule(odległosc %is% duza || predkosc %is% mala, przyspieszenie %is% maleMinus),
 
 fuzzy_rule(odległosc %is% mala || predkosc %is% srednia, przyspieszenie %is% duzePlus),
 fuzzy_rule(odległosc %is% srednia || predkosc %is% srednia, przyspieszenie %is% maleMinus),
 fuzzy_rule(odległosc %is% duza || predkosc %is% srednia, przyspieszenie %is% maleMinus),
 
 fuzzy_rule(odległosc %is% mala || predkosc %is% duza, przyspieszenie %is% malePlus),
 fuzzy_rule(odległosc %is% srednia || predkosc %is% duza, przyspieszenie %is% duzeMinus),
 fuzzy_rule(odległosc %is% duza || predkosc %is% duza, przyspieszenie %is% maleMinus)
)
 
system <- fuzzy_system(variables, rules)

print(system)
plot(system) 

#fi <- fuzzy_inference(system, list(odległosc = 30, predkosc=50))
fi <- fuzzy_inference(system, list(odległosc = 100, predkosc=50))
#fi <- fuzzy_inference(system, list(odległosc = 30, predkosc=65))
plot(fi)

gset_defuzzify(fi, "centroid")
