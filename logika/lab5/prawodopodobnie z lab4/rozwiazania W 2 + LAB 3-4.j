CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.R(x)→S ⊢ ∀x.(R(x)→S)"
WHERE x NOTIN S 
INFER ∃x.R(x)→S 
     ⊢ ∀x.(R(x)→S)
FORMULAE
0 S,
1 ∃x.R(x),
2 ∃x.R(x)→S,
3 actual i,
4 R(i),
5 R(x),
6 i,
7 x,
8 R(x)→S 
IS
SEQ ("∀ intro"[i,P,x\6,8,7]) ("→ intro"[A,B\4,0]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\1,0]) ("∃ intro"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "actual j, R→∃x.S(x) ⊢ ∃x.(R→S(x))"
WHERE x NOTIN R 
INFER actual j,
     R→∃x.S(x)
     ⊢ ∃x.(R→S(x))
FORMULAE
0 ¬∃x.(R→S(x)),
1 ∃x.(R→S(x)),
2 actual j,
3 R→S(j),
4 R→S(x),
5 j,
6 x,
7 ⊥,
8 S(j),
9 actual i,
10 R→S(i),
11 i,
12 S(i),
13 R,
14 ∃x.S(x),
15 S(x),
16 R→∃x.S(x)
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\3,7]) ("→ intro"[A,B\13,8]) (cut[B,C\14,8]) ("→ elim"[A,B\13,14]) (hyp[A\16]) (hyp[A\13]) ("∃ elim"[i,C,P,x\11,8,15,6]) (hyp[A\14]) (cut[B,C\10,8]) ("→ intro"[A,B\13,12]) (hyp[A\12]) (cut[B,C\1,8]) ("∃ intro"[P,i,x\4,11,6]) (hyp[A\10]) (hyp[A\9]) (cut[B,C\7,8]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0]) ("contra (constructive)"[B\8]) (hyp[A\7]) (cut[B,C\1,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.(R(x)∧S(x)) ⊢ ∀y.R(y)∧∀z.S(z)"
INFER ∀x.(R(x)∧S(x))
     ⊢ ∀y.R(y)∧∀z.S(z)
FORMULAE
0 ∀z.S(z),
1 ∀y.R(y),
2 S(i1),
3 R(i1)∧S(i1),
4 R(i1),
5 actual i1,
6 ∀x.(R(x)∧S(x)),
7 R(x)∧S(x),
8 i1,
9 x,
10 S(z),
11 z,
12 ∀y.R(y)∧∀z.S(z),
13 R(i),
14 R(i)∧S(i),
15 S(i),
16 actual i,
17 i,
18 R(y),
19 y 
IS
SEQ (cut[B,C\1,12]) ("∀ intro"[i,P,x\17,18,19]) (cut[B,C\14,13]) ("∀ elim"[P,i,x\7,17,9]) (hyp[A\6]) (hyp[A\16]) (cut[B,C\13,13]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\13,15]) (hyp[A\14])) (hyp[A\13]) (cut[B,C\0,12]) ("∀ intro"[i,P,x\8,10,11]) (cut[B,C\3,2]) ("∀ elim"[P,i,x\7,8,9]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\2,2]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,2]) (hyp[A\3])) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∀x.(R(x)→S) ⊢ ∃x.R(x)→S"
WHERE x NOTIN S 
INFER ∀x.(R(x)→S)
     ⊢ ∃x.R(x)→S 
FORMULAE
0 S,
1 R(i),
2 R(i)→S,
3 actual i,
4 ∀x.(R(x)→S),
5 R(x)→S,
6 i,
7 x,
8 ∃x.R(x),
9 R(x)
IS
SEQ ("→ intro"[A,B\8,0]) ("∃ elim"[i,C,P,x\6,0,9,7]) (hyp[A\8]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.R(x) ⊢ ¬∃y.¬R(y)"
INFER ∀x.R(x)
     ⊢ ¬∃y.¬R(y)
FORMULAE
0 ⊥,
1 ¬R(i),
2 R(i),
3 actual i,
4 ∀x.R(x),
5 R(x),
6 i,
7 x,
8 ∃y.¬R(y),
9 ¬R(y),
10 y 
IS
SEQ ("¬ intro"[A\8]) ("∃ elim"[i,C,P,x\6,0,9,10]) (hyp[A\8]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R→∀x.S(x) ⊢ ∀x.(R→S(x))"
WHERE x NOTIN R 
INFER R→∀x.S(x)
     ⊢ ∀x.(R→S(x))
FORMULAE
0 S(i),
1 actual i,
2 ∀x.S(x),
3 S(x),
4 i,
5 x,
6 R,
7 R→∀x.S(x),
8 R→S(x)
IS
SEQ ("∀ intro"[i,P,x\4,8,5]) ("→ intro"[A,B\6,0]) (cut[B,C\2,0]) ("→ elim"[A,B\6,2]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\0,0]) ("∀ elim"[P,i,x\3,4,5]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "actual j, R(j), ∀x.(R(x)→S(x)) ⊢ S(j)"
INFER actual j,
     R(j),
     ∀x.(R(x)→S(x))
     ⊢ S(j)
FORMULAE
0 S(j),
1 R(j),
2 R(j)→S(j),
3 actual j,
4 ∀x.(R(x)→S(x)),
5 R(x)→S(x),
6 j,
7 x 
IS
SEQ (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∃x.(R(x)∧S(x)) ⊢ ∃y.R(y)∧∃z.S(z)"
INFER ∃x.(R(x)∧S(x))
     ⊢ ∃y.R(y)∧∃z.S(z)
FORMULAE
0 ∃z.S(z),
1 ∃y.R(y),
2 actual i,
3 S(i),
4 S(z),
5 i,
6 z,
7 ∃y.R(y)∧∃z.S(z),
8 R(i)∧S(i),
9 R(i),
10 R(y),
11 y,
12 ∃x.(R(x)∧S(x)),
13 R(x)∧S(x),
14 x 
IS
SEQ ("∃ elim"[i,C,P,x\5,7,13,14]) (hyp[A\12]) (cut[B,C\9,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\9,3]) (hyp[A\8])) (cut[B,C\9,7]) (hyp[A\9]) (cut[B,C\1,7]) ("∃ intro"[P,i,x\10,5,11]) (hyp[A\9]) (hyp[A\2]) (cut[B,C\3,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\9,3]) (hyp[A\8])) (cut[B,C\3,7]) (hyp[A\3]) (cut[B,C\0,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R∨S(x)) ⊢ R∨∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R∨S(x))
     ⊢ R∨∃x.S(x)
FORMULAE
0 ¬(R∨∃x.S(x)),
1 R∨∃x.S(x),
2 ∃x.S(x),
3 R,
4 actual i,
5 S(i),
6 S(x),
7 i,
8 x,
9 R∨S(i),
10 ∃x.(R∨S(x)),
11 R∨S(x),
12 ⊥,
13 ∃x.(R∨S(x))
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\1,12]) ("∃ elim"[i,C,P,x\7,1,11,8]) (hyp[A\10]) ("∨ elim"[A,B,C\3,5,1]) (hyp[A\9]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\2,3]) (hyp[A\3])) (cut[B,C\5,1]) (hyp[A\5]) (cut[B,C\2,1]) ("∃ intro"[P,i,x\6,7,8]) (hyp[A\5]) (hyp[A\4]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,2]) (hyp[A\2])) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R→S(x)) ⊢ R→∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R→S(x))
     ⊢ R→∃x.S(x)
FORMULAE
0 actual i,
1 S(i),
2 S(x),
3 i,
4 x,
5 ∃x.S(x),
6 R,
7 R→S(i),
8 ∃x.(R→S(x)),
9 R→S(x),
10 ∃x.(R→S(x))
IS
SEQ ("→ intro"[A,B\6,5]) ("∃ elim"[i,C,P,x\3,5,9,4]) (hyp[A\8]) (cut[B,C\1,5]) ("→ elim"[A,B\6,1]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∃x.S(x) ⊢ ∃x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∃x.S(x)
     ⊢ ∃x.(R∧S(x))
FORMULAE
0 actual i,
1 R[x\i]∧S(i),
2 R∧S(x),
3 i,
4 x,
5 S(i),
6 R[x\i],
7 ∃x.(R∧S(x)),
8 R,
9 ∃x.S(x),
10 S(x),
11 R∧∃x.S(x)
IS
SEQ (cut[B,C\8,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\8,9]) (hyp[A\11])) (cut[B,C\9,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\8,9]) (hyp[A\11])) ("∃ elim"[i,C,P,x\3,7,10,4]) (hyp[A\9]) (cut[B,C\6,7]) (hyp[A\8]) (cut[B,C\1,7]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R∧S(x)) ⊢ R∧∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R∧S(x))
     ⊢ R∧∃x.S(x)
FORMULAE
0 ∃x.S(x),
1 R,
2 actual i,
3 S(i),
4 S(x),
5 i,
6 x,
7 R∧∃x.S(x),
8 R∧S(i),
9 ∃x.(R∧S(x)),
10 R∧S(x),
11 ∃x.(R∧S(x))
IS
SEQ ("∃ elim"[i,C,P,x\5,7,10,6]) (hyp[A\9]) (cut[B,C\3,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,3]) (hyp[A\8])) (cut[B,C\1,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,3]) (hyp[A\8])) (cut[B,C\1,7]) (hyp[A\1]) (cut[B,C\3,7]) (hyp[A\3]) (cut[B,C\0,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Wykład 2"
PROOF "actual j, ∀x.R(x) ⊢ ∃y.R(y)"
INFER actual j,
     ∀x.R(x)
     ⊢ ∃y.R(y)
FORMULAE
0 actual j,
1 R(j),
2 R(y),
3 j,
4 y,
5 ∃y.R(y),
6 ∀x.R(x),
7 R(x),
8 x 
IS
SEQ (cut[B,C\1,5]) ("∀ elim"[P,i,x\7,3,8]) (hyp[A\6]) (hyp[A\0]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Wykład 2"
PROOF "∃y.P(y), ∀x.∀y.(P(x)→R(y)) ⊢ ∀y.R(y)"
INFER ∃y.P(y),
     ∀x.∀y.(P(x)→R(y))
     ⊢ ∀y.R(y)
FORMULAE
0 R(i),
1 P(i1),
2 P(i1)→R(i),
3 actual i,
4 ∀y.(P(i1)→R(y)),
5 P(i1)→R(y),
6 i,
7 y,
8 actual i1,
9 ∀x.∀y.(P(x)→R(y)),
10 ∀y.(P(x)→R(y)),
11 i1,
12 x,
13 ∃y.P(y),
14 P(y),
15 R(y)
IS
SEQ ("∀ intro"[i,P,x\6,15,7]) ("∃ elim"[i,C,P,x\11,0,14,7]) (hyp[A\13]) (cut[B,C\4,0]) ("∀ elim"[P,i,x\10,11,12]) (hyp[A\9]) (hyp[A\8]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Wykład 2"
PROOF "∀x.(R(x)→S(x)), ∃y.R(y) ⊢ ∃z.S(z)"
INFER ∀x.(R(x)→S(x)),
     ∃y.R(y)
     ⊢ ∃z.S(z)
FORMULAE
0 actual i,
1 S(i),
2 S(z),
3 i,
4 z,
5 ∃z.S(z),
6 R(i),
7 R(i)→S(i),
8 ∀x.(R(x)→S(x)),
9 R(x)→S(x),
10 x,
11 ∃y.R(y),
12 R(y),
13 y 
IS
SEQ ("∃ elim"[i,C,P,x\3,5,12,13]) (hyp[A\11]) (cut[B,C\7,5]) ("∀ elim"[P,i,x\9,3,10]) (hyp[A\8]) (hyp[A\0]) (cut[B,C\1,5]) ("→ elim"[A,B\6,1]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∨∀x.S(x) ⊢ ∀x.(R∨S(x))"
WHERE x NOTIN R 
INFER R∨∀x.S(x)
     ⊢ ∀x.(R∨S(x))
FORMULAE
0 ¬∀x.(R∨S(x)),
1 ∀x.(R∨S(x)),
2 S(i),
3 R,
4 actual i,
5 ∀x.S(x),
6 S(x),
7 i,
8 x,
9 R∨S(i),
10 R∨∀x.S(x),
11 R∨S(x),
12 ⊥ 
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\1,12]) ("∀ intro"[i,P,x\7,11,8]) ("∨ elim"[A,B,C\3,5,9]) (hyp[A\10]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\2,3]) (hyp[A\3])) (cut[B,C\2,9]) ("∀ elim"[P,i,x\6,7,8]) (hyp[A\5]) (hyp[A\4]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,2]) (hyp[A\2])) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∃x.(R(x)→S(x)) ⊢ ∀y.R(y)→∃z.S(z)"
INFER ∃x.(R(x)→S(x))
     ⊢ ∀y.R(y)→∃z.S(z)
FORMULAE
0 actual i,
1 S(i),
2 S(z),
3 i,
4 z,
5 ∃z.S(z),
6 R(i),
7 R(i)→S(i),
8 ∀y.R(y),
9 R(y),
10 y,
11 ∃x.(R(x)→S(x)),
12 R(x)→S(x),
13 x 
IS
SEQ ("→ intro"[A,B\8,5]) ("∃ elim"[i,C,P,x\3,5,12,13]) (hyp[A\11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,3,10]) (hyp[A\8]) (hyp[A\0]) (cut[B,C\1,5]) ("→ elim"[A,B\6,1]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.(R(x)→S(x)) ⊢ ∃y.R(y)→∃z.S(z)"
INFER ∀x.(R(x)→S(x))
     ⊢ ∃y.R(y)→∃z.S(z)
FORMULAE
0 actual i,
1 S(i),
2 S(z),
3 i,
4 z,
5 ∃z.S(z),
6 R(i),
7 R(i)→S(i),
8 ∀x.(R(x)→S(x)),
9 R(x)→S(x),
10 x,
11 ∃y.R(y),
12 R(y),
13 y 
IS
SEQ ("→ intro"[A,B\11,5]) ("∃ elim"[i,C,P,x\3,5,12,13]) (hyp[A\11]) (cut[B,C\7,5]) ("∀ elim"[P,i,x\9,3,10]) (hyp[A\8]) (hyp[A\0]) (cut[B,C\1,5]) ("→ elim"[A,B\6,1]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.R(x)∧∀y.S(y) ⊢ ∀z.(R(z)∧S(z))"
INFER ∀x.R(x)∧∀y.S(y)
     ⊢ ∀z.(R(z)∧S(z))
FORMULAE
0 S(i),
1 R(i),
2 R(i)∧S(i),
3 actual i,
4 ∀y.S(y),
5 S(y),
6 i,
7 y,
8 ∀x.R(x),
9 R(x),
10 x,
11 R(z)∧S(z),
12 z,
13 ∀x.R(x)∧∀y.S(y),
14 ∀z.(R(z)∧S(z))
IS
SEQ (cut[B,C\8,14]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\8,4]) (hyp[A\13])) (cut[B,C\4,14]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\8,4]) (hyp[A\13])) ("∀ intro"[i,P,x\6,11,12]) (cut[B,C\1,2]) ("∀ elim"[P,i,x\9,6,10]) (hyp[A\8]) (hyp[A\3]) (cut[B,C\1,2]) (hyp[A\1]) (cut[B,C\0,2]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,2]) (hyp[A\0]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, ∀x.(R∧S(x)) ⊢ R∧∀x.S(x)"
WHERE x NOTIN R 
INFER actual j,
     ∀x.(R∧S(x))
     ⊢ R∧∀x.S(x)
FORMULAE
0 ¬(R∧∀x.S(x)),
1 R∧∀x.S(x),
2 ∀x.S(x),
3 R,
4 ⊥,
5 S(i),
6 R∧S(i),
7 actual i,
8 ∀x.(R∧S(x)),
9 R∧S(x),
10 i,
11 x,
12 S(x),
13 R∧S(j),
14 S(j),
15 actual j,
16 j,
17 ∀x.(R∧S(x))
IS
SEQ (cut[B,C\13,1]) ("∀ elim"[P,i,x\9,16,11]) (hyp[A\8]) (hyp[A\15]) (cut[B,C\3,1]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\3,14]) (hyp[A\13])) ("contra (classical)"[A\1]) (cut[B,C\3,4]) (hyp[A\3]) (cut[B,C\2,4]) ("∀ intro"[i,P,x\10,12,11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,10,11]) (hyp[A\8]) (hyp[A\7]) (cut[B,C\5,5]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\3,5]) (hyp[A\6])) (hyp[A\5]) (cut[B,C\1,4]) ("∧ intro"[A,B\3,2]) (hyp[A\3]) (hyp[A\2]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R(x)→S) ⊢ ∀x.R(x)→S"
WHERE x NOTIN S 
INFER ∃x.(R(x)→S)
     ⊢ ∀x.R(x)→S 
FORMULAE
0 S,
1 R(i),
2 R(i)→S,
3 actual i,
4 ∀x.R(x),
5 R(x),
6 i,
7 x,
8 ∃x.(R(x)→S),
9 R(x)→S,
10 ∃x.(R(x)→S)
IS
SEQ ("→ intro"[A,B\4,0]) ("∃ elim"[i,C,P,x\6,0,9,7]) (hyp[A\8]) (cut[B,C\1,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∃x.R(x) ⊢ ¬∀y.¬R(y)"
INFER ∃x.R(x)
     ⊢ ¬∀y.¬R(y)
FORMULAE
0 ⊥,
1 ¬R(i),
2 R(i),
3 actual i,
4 ∀y.¬R(y),
5 ¬R(y),
6 i,
7 y,
8 ∃x.R(x),
9 R(x),
10 x 
IS
SEQ ("¬ intro"[A\4]) ("∃ elim"[i,C,P,x\6,0,9,10]) (hyp[A\8]) (cut[B,C\1,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∀x.S(x) ⊢ ∀x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∀x.S(x)
     ⊢ ∀x.(R∧S(x))
FORMULAE
0 S(i),
1 R,
2 R∧S(i),
3 actual i,
4 ∀x.S(x),
5 S(x),
6 i,
7 x,
8 R∧S(x),
9 R∧∀x.S(x),
10 ∀x.(R∧S(x))
IS
SEQ (cut[B,C\4,10]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,4]) (hyp[A\9])) (cut[B,C\1,10]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,4]) (hyp[A\9])) ("∀ intro"[i,P,x\6,8,7]) (cut[B,C\0,2]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,2]) (hyp[A\0]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "actual j, actual k, ∃x.¬R(x) ⊢ ∃y.(R(y)→R(j)∧R(k))"
INFER actual j,
     actual k,
     ∃x.¬R(x)
     ⊢ ∃y.(R(y)→R(j)∧R(k))
FORMULAE
0 actual i,
1 R(i)→R(j)∧R(k),
2 R(y)→R(j)∧R(k),
3 i,
4 y,
5 ⊥,
6 R(j)∧R(k),
7 ¬R(i),
8 R(i),
9 ∃y.(R(y)→R(j)∧R(k)),
10 ∃x.¬R(x),
11 ¬R(x),
12 x,
13 actual k,
14 actual j 
IS
SEQ ("∃ elim"[i,C,P,x\3,9,11,12]) (hyp[A\10]) (cut[B,C\1,9]) ("→ intro"[A,B\8,6]) (cut[B,C\5,6]) ("¬ elim"[B\8]) (hyp[A\8]) (hyp[A\7]) ("contra (constructive)"[B\6]) (hyp[A\5]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.(R(x)→S(x)), ∀y.(S(y)→T(y)) ⊢ ∀z.(R(z)→T(z))"
INFER ∀x.(R(x)→S(x)),
     ∀y.(S(y)→T(y))
     ⊢ ∀z.(R(z)→T(z))
FORMULAE
0 T(i),
1 S(i),
2 S(i)→T(i),
3 R(i),
4 R(i)→S(i),
5 actual i,
6 ∀x.(R(x)→S(x)),
7 R(x)→S(x),
8 i,
9 x,
10 R(i)→T(i),
11 ∀y.(S(y)→T(y)),
12 S(y)→T(y),
13 y,
14 R(z)→T(z),
15 z 
IS
SEQ ("∀ intro"[i,P,x\8,14,15]) (cut[B,C\2,10]) ("∀ elim"[P,i,x\12,8,13]) (hyp[A\11]) (hyp[A\5]) (cut[B,C\4,10]) ("∀ elim"[P,i,x\7,8,9]) (hyp[A\6]) (hyp[A\5]) ("→ intro"[A,B\3,0]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "actual j, ∀x.R(x)→S ⊢ ∃x.(R(x)→S)"
WHERE x NOTIN S 
INFER actual j,
     ∀x.R(x)→S 
     ⊢ ∃x.(R(x)→S)
FORMULAE
0 ¬∃x.(R(x)→S),
1 ∃x.(R(x)→S),
2 actual j,
3 R(j)→S,
4 R(x)→S,
5 j,
6 x,
7 ⊥,
8 S,
9 ∀x.R(x),
10 ∀x.R(x)→S,
11 actual i,
12 R(i)→S,
13 i,
14 ¬R(i),
15 R(i),
16 R(x),
17 R(j)
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\3,7]) ("→ intro"[A,B\17,8]) (cut[B,C\9,8]) ("∀ intro"[i,P,x\13,16,6]) ("contra (classical)"[A\15]) (cut[B,C\12,7]) ("→ intro"[A,B\15,8]) (cut[B,C\7,8]) ("¬ elim"[B\15]) (hyp[A\15]) (hyp[A\14]) ("contra (constructive)"[B\8]) (hyp[A\7]) (cut[B,C\1,7]) ("∃ intro"[P,i,x\4,13,6]) (hyp[A\12]) (hyp[A\11]) (cut[B,C\7,7]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0]) (hyp[A\7]) (cut[B,C\8,8]) ("→ elim"[A,B\9,8]) (hyp[A\10]) (hyp[A\9]) (hyp[A\8]) (cut[B,C\1,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Wykład 2"
PROOF "∀x.(P(x)→R(x)), ∀y.P(y) ⊢ ∀z.R(z)"
INFER ∀x.(P(x)→R(x)),
     ∀y.P(y)
     ⊢ ∀z.R(z)
FORMULAE
0 R(i),
1 P(i),
2 P(i)→R(i),
3 actual i,
4 ∀x.(P(x)→R(x)),
5 P(x)→R(x),
6 i,
7 x,
8 ∀y.P(y),
9 P(y),
10 y,
11 R(z),
12 z 
IS
SEQ ("∀ intro"[i,P,x\6,11,12]) (cut[B,C\1,0]) ("∀ elim"[P,i,x\9,6,10]) (hyp[A\8]) (hyp[A\3]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∀x.(R→S(x)) ⊢ R→∀x.S(x)"
WHERE x NOTIN R 
INFER ∀x.(R→S(x))
     ⊢ R→∀x.S(x)
FORMULAE
0 S(i),
1 R,
2 R→S(i),
3 actual i,
4 ∀x.(R→S(x)),
5 R→S(x),
6 i,
7 x,
8 S(x),
9 ∀x.S(x)
IS
SEQ ("→ intro"[A,B\1,9]) ("∀ intro"[i,P,x\6,8,7]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∃x.R(x)∨∃y.S(y) ⊢ ∃z.(R(z)∨S(z))"
INFER ∃x.R(x)∨∃y.S(y)
     ⊢ ∃z.(R(z)∨S(z))
FORMULAE
0 actual i,
1 R(i)∨S(i),
2 R(z)∨S(z),
3 i,
4 z,
5 S(i),
6 R(i),
7 ∃z.(R(z)∨S(z)),
8 ∃y.S(y),
9 S(y),
10 y,
11 actual i1,
12 R(i1)∨S(i1),
13 i1,
14 R(i1),
15 S(i1),
16 ∃x.R(x),
17 R(x),
18 x,
19 ∃x.R(x)∨∃y.S(y)
IS
SEQ ("∨ elim"[A,B,C\16,8,7]) (hyp[A\19]) ("∃ elim"[i,C,P,x\13,7,17,18]) (hyp[A\16]) (cut[B,C\12,7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\15,14]) (hyp[A\14])) ("∃ intro"[P,i,x\2,13,4]) (hyp[A\12]) (hyp[A\11]) ("∃ elim"[i,C,P,x\3,7,9,10]) (hyp[A\8]) (cut[B,C\1,7]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\6,5]) (hyp[A\5])) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∀x.(R(x)→S(x)) ⊢ ∀y.R(y)→∀z.S(z)"
INFER ∀x.(R(x)→S(x))
     ⊢ ∀y.R(y)→∀z.S(z)
FORMULAE
0 S(i),
1 R(i),
2 R(i)→S(i),
3 actual i,
4 ∀x.(R(x)→S(x)),
5 R(x)→S(x),
6 i,
7 x,
8 ∀y.R(y),
9 R(y),
10 y,
11 S(z),
12 z,
13 ∀z.S(z)
IS
SEQ ("→ intro"[A,B\8,13]) ("∀ intro"[i,P,x\6,11,12]) (cut[B,C\1,0]) ("∀ elim"[P,i,x\9,6,10]) (hyp[A\8]) (hyp[A\3]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, R∨∃x.P(x) ⊢ ∃x.(R∨P(x))"
WHERE x NOTIN R 
INFER actual j,
     R∨∃x.P(x)
     ⊢ ∃x.(R∨P(x))
FORMULAE
0 ¬∃x.(R∨P(x)),
1 ∃x.(R∨P(x)),
2 actual j,
3 R∨P(j),
4 R∨P(x),
5 j,
6 x,
7 ⊥,
8 R,
9 P(j),
10 actual i,
11 R∨P(i),
12 i,
13 P(i),
14 ∃x.P(x),
15 P(x),
16 R∨∃x.P(x),
17 ¬R 
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\8,7]) ("∨ elim"[A,B,C\8,14,8]) (hyp[A\16]) (hyp[A\8]) ("contra (classical)"[A\8]) ("∃ elim"[i,C,P,x\12,7,15,6]) (hyp[A\14]) (cut[B,C\11,7]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\8,13]) (hyp[A\13])) (cut[B,C\1,7]) ("∃ intro"[P,i,x\4,12,6]) (hyp[A\11]) (hyp[A\10]) (cut[B,C\7,7]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0]) (hyp[A\7]) (cut[B,C\3,7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\9,8]) (hyp[A\8])) (cut[B,C\1,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek predykatów"
PROOF "∃x.(R(x)∨S(x)) ⊢ ∃y.R(y)∨∃z.S(z)"
INFER ∃x.(R(x)∨S(x))
     ⊢ ∃y.R(y)∨∃z.S(z)
FORMULAE
0 ∃z.S(z),
1 ∃y.R(y),
2 actual i,
3 S(i),
4 S(z),
5 i,
6 z,
7 ∃y.R(y)∨∃z.S(z),
8 R(i),
9 R(y),
10 y,
11 R(i)∨S(i),
12 ∃x.(R(x)∨S(x)),
13 R(x)∨S(x),
14 x 
IS
SEQ ("∃ elim"[i,C,P,x\5,7,13,14]) (hyp[A\12]) ("∨ elim"[A,B,C\8,3,7]) (hyp[A\11]) (cut[B,C\8,7]) (hyp[A\8]) (cut[B,C\1,7]) ("∃ intro"[P,i,x\9,5,10]) (hyp[A\8]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) (cut[B,C\3,7]) (hyp[A\3]) (cut[B,C\0,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "∀x.(R∨S(x)) ⊢ R∨∀x.S(x)"
WHERE x NOTIN R 
INFER ∀x.(R∨S(x))
     ⊢ R∨∀x.S(x)
FORMULAE
0 ¬(R∨∀x.S(x)),
1 R∨∀x.S(x),
2 ∀x.S(x),
3 R,
4 ⊥,
5 S(i),
6 R∨S(i),
7 actual i,
8 ∀x.(R∨S(x)),
9 R∨S(x),
10 i,
11 x,
12 S(x),
13 ¬(R∨∀x.S(x))
IS
SEQ ("contra (classical)"[A\1]) (cut[B,C\2,4]) ("∀ intro"[i,P,x\10,12,11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,10,11]) (hyp[A\8]) (hyp[A\7]) ("∨ elim"[A,B,C\3,5,5]) (hyp[A\6]) (cut[B,C\1,5]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\2,3]) (hyp[A\3])) (cut[B,C\4,5]) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0]) ("contra (constructive)"[B\5]) (hyp[A\4]) (hyp[A\5]) (cut[B,C\1,4]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,2]) (hyp[A\2])) ("¬ elim"[B\1]) (hyp[A\1]) (hyp[A\0])
END
