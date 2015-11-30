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
9 R(x),
10 ∀x.(R(x)→S)
IS
SEQ ("→ intro"[A,B\8,0]) ("∃ elim"[i,C,P,x\6,0,9,7]) (hyp[A\8]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
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
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R∨S(x)) ⊢ R∨∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R∨S(x))
     ⊢ R∨∃x.S(x)
FORMULAE
0 ⊥,
1 ¬(R∨∃x.S(x)),
2 R∨∃x.S(x),
3 ∃x.S(x),
4 R,
5 actual i,
6 S(i),
7 S(x),
8 i,
9 x,
10 R∨S(i),
11 ∃x.(R∨S(x)),
12 R∨S(x),
13 ∃x.(R∨S(x))
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\2,0]) ("∃ elim"[i,C,P,x\8,2,12,9]) (hyp[A\11]) ("∨ elim"[A,B,C\4,6,2]) (hyp[A\10]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\6,2]) (hyp[A\6]) (cut[B,C\3,2]) ("∃ intro"[P,i,x\7,8,9]) (hyp[A\6]) (hyp[A\5]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
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
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∃x.S(x) ⊢ ∃x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∃x.S(x)
     ⊢ ∃x.(R∧S(x))
FORMULAE
0 actual i,
1 R∧S(i),
2 R∧S(x),
3 i,
4 x,
5 S(i),
6 R,
7 ∃x.(R∧S(x)),
8 ∃x.S(x),
9 S(x),
10 R∧∃x.S(x)
IS
SEQ (cut[B,C\6,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\6,8]) (hyp[A\10])) (cut[B,C\8,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\6,8]) (hyp[A\10])) ("∃ elim"[i,C,P,x\3,7,9,4]) (hyp[A\8]) (cut[B,C\1,7]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∨∀x.S(x) ⊢ ∀x.(R∨S(x))"
WHERE x NOTIN R 
INFER R∨∀x.S(x)
     ⊢ ∀x.(R∨S(x))
FORMULAE
0 ⊥,
1 ¬∀x.(R∨S(x)),
2 ∀x.(R∨S(x)),
3 S(i),
4 R,
5 actual i,
6 ∀x.S(x),
7 S(x),
8 i,
9 x,
10 R∨S(i),
11 R∨∀x.S(x),
12 R∨S(x)
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\2,0]) ("∀ intro"[i,P,x\8,12,9]) ("∨ elim"[A,B,C\4,6,10]) (hyp[A\11]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\3,10]) ("∀ elim"[P,i,x\7,8,9]) (hyp[A\6]) (hyp[A\5]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, ∀x.(R∧S(x)) ⊢ R∧∀x.S(x)"
WHERE x NOTIN R 
INFER actual j,
     ∀x.(R∧S(x))
     ⊢ R∧∀x.S(x)
FORMULAE
0 ⊥,
1 ¬(R∧∀x.S(x)),
2 R∧∀x.S(x),
3 ∀x.S(x),
4 R,
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
SEQ (cut[B,C\13,2]) ("∀ elim"[P,i,x\9,16,11]) (hyp[A\8]) (hyp[A\15]) (cut[B,C\4,2]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\4,14]) (hyp[A\13])) ("contra (classical)"[A\2]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\3,0]) ("∀ intro"[i,P,x\10,12,11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,10,11]) (hyp[A\8]) (hyp[A\7]) (cut[B,C\5,5]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,5]) (hyp[A\6])) (hyp[A\5]) (cut[B,C\2,0]) ("∧ intro"[A,B\4,3]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
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
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∀x.S(x) ⊢ ∀x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∀x.S(x)
     ⊢ ∀x.(R∧S(x))
FORMULAE
0 S(i),
1 R,
2 actual i,
3 ∀x.S(x),
4 S(x),
5 i,
6 x,
7 R∧S(i),
8 R∧S(x),
9 R∧∀x.S(x),
10 ∀x.(R∧S(x))
IS
SEQ (cut[B,C\1,10]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,3]) (hyp[A\9])) (cut[B,C\3,10]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,3]) (hyp[A\9])) ("∀ intro"[i,P,x\5,8,6]) (cut[B,C\0,7]) ("∀ elim"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
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
9 ∀x.S(x),
10 ∀x.(R→S(x))
IS
SEQ ("→ intro"[A,B\1,9]) ("∀ intro"[i,P,x\6,8,7]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, R∨∃x.P(x) ⊢ ∃x.(R∨P(x))"
WHERE x NOTIN R 
INFER actual j,
     R∨∃x.P(x)
     ⊢ ∃x.(R∨P(x))
FORMULAE
0 ⊥,
1 ¬∃x.(R∨P(x)),
2 ∃x.(R∨P(x)),
3 actual j,
4 R∨P(j),
5 R∨P(x),
6 j,
7 x,
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
SEQ ("contra (classical)"[A\2]) (cut[B,C\8,0]) ("∨ elim"[A,B,C\8,14,8]) (hyp[A\16]) (hyp[A\8]) ("contra (classical)"[A\8]) (cut[B,C\2,0]) ("∃ elim"[i,C,P,x\12,2,15,7]) (hyp[A\14]) (cut[B,C\11,2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\8,13]) (hyp[A\13])) ("∃ intro"[P,i,x\5,12,7]) (hyp[A\11]) (hyp[A\10]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\4,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\9,8]) (hyp[A\8])) (cut[B,C\2,0]) ("∃ intro"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
