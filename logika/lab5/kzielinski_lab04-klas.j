CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "∀x.(R∨S(x)) ⊢ R∨∀x.S(x)"
WHERE x NOTIN R 
INFER ∀x.(R∨S(x))
     ⊢ R∨∀x.S(x)
FORMULAE
0 ⊥,
1 ¬(R∨∀x.S(x)),
2 R∨∀x.S(x),
3 ∀x.S(x),
4 R,
5 S(i),
6 R∨S(i),
7 actual i,
8 ∀x.(R∨S(x)),
9 R∨S(x),
10 i,
11 x,
12 S(x),
13 ∀x.(R∨S(x))
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("∀ intro"[i,P,x\10,12,11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,10,11]) (hyp[A\8]) (hyp[A\7]) ("∨ elim"[A,B,C\4,5,5]) (hyp[A\6]) (cut[B,C\2,5]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,5]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (constructive)"[B\5]) (hyp[A\0]) (hyp[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
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