
abstract sig Stanowisko {}
one sig ekspedient extends Stanowisko{}
one sig kasjer extends Stanowisko {}
one sig biurowy extends Stanowisko {}
one sig administrator extends Stanowisko {}
one sig kierownik extends Stanowisko {}

abstract sig Bool{}
one sig True extends Bool {}
one sig False extends Bool {}

abstract sig Person { ownLunch: Bool, sister:Bool, stanowisko:Stanowisko, likes:Bool }

sig Man extends Person {}
sig Woman extends Person {}

one sig Allen extends Woman {}
one sig Clark extends Woman {}

one sig Bennett extends Man {}
one sig Davis extends Man {}
one sig Ewing extends Man {}


fact {

	all p : Person | (p.stanowisko= kasjer || p.stanowisko = administrator ) => p.ownLunch = True

	all p:  Person | (p.stanowisko != kasjer && p.stanowisko != administrator) => p.ownLunch = False

	Allen.sister = True
	Clark.sister = True


	all p: Person | (p != Allen && p != Clark) => p.sister = False

// kasjer i pracownik biurowy pracują razem, nazywani są przez kolegów "starymi, nierozłącznymi kawalerami".
   all p: Person | p.sister = True => p.stanowisko != biurowy && p.stanowisko != kasjer  // bo muszą to być faceci

// Allen i Bennett przynoszą własne kanapki, a w przerwie na lunch grywają w kanastę.
Bennett.stanowisko != kasjer
Bennett.stanowisko != administrator
Allen.stanowisko != kasjer
Allen.stanowisko != administrator

// Davis i Ewing nie kontaktują się ze sobą od czasu, gdy Davis wrócił z lunchu wcześniej, zobaczył, że Ewing przedwcześnie opuścił miejsce pracy i doniósł kierownikowi.
Ewing.stanowisko != kierownik  // bo Dawis skarży do kierownika na niego
Davis.stanowisko != kierownik // bo sam nie może do siebie skarżyć na Ewing'a

Ewing.ownLunch = False // bo idzie na przerwę zanim Davis z niej wrócił
Davis.ownLunch = True  // bo idzie wcześniej na przerwę

Davis.likes = False && Ewing.likes= False
all p: Person | p.stanowisko = kasjer || p.stanowisko = biurowy => p.likes = True && p.sister = False

all disj p,q: Person | p.stanowisko!=q.stanowisko
}

run {}

// Allen -> Kierownik
// Bennett -> Pracownik Biurowy
// Davis -> Kasjer
// Clark -> Administrator
// Ewing -> Ekspedient
