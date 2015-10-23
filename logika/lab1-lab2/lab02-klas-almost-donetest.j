CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "((E→F)→E)→E"
INFER ((E→F)→E)→E 
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 E→F,
4 (E→F)→E,
5 F,
6 (E→F)→E,
7 ¬F 
IS
SEQ ("→ intro"[A,B\6,2]) ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("→ intro"[A,B\2,5]) (cut[B,C\0,5]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (classical)"[A\5]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬E→F, ¬E→¬F ⊢ E"
INFER ¬E→F,
     ¬E→¬F 
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 ¬E→F,
5 ¬E→¬F,
6 E 
IS
SEQ ("contra (classical)"[A\6]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\5]) (hyp[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "(E→F)∨(F→E)"
INFER (E→F)∨(F→E)
FORMULAE
0 ⊥,
1 ¬((E→F)∨(F→E)),
2 (E→F)∨(F→E),
3 F→E,
4 E→F,
5 F,
6 E,
7 ¬E 
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("→ intro"[A,B\5,6]) ("contra (classical)"[A\6]) (cut[B,C\4,0]) ("→ intro"[A,B\6,5]) (hyp[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "(E→F)∧(¬E→F) ⊢ F"
INFER (E→F)∧(¬E→F)
     ⊢ F 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→F,
5 ¬E,
6 ¬E→F,
7 (E→F)∧(¬E→F),
8 (E→F)∧(¬E→F)
IS
SEQ (cut[B,C\6,2]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,6]) (hyp[A\7])) (cut[B,C\4,2]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\4,6]) (hyp[A\7])) ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\5,2]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬¬E ⊢ E"
INFER ¬¬E 
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬¬E,
2 ¬E,
3 E 
IS
SEQ ("contra (classical)"[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
