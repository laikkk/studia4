CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "E ⊢ ¬¬E"
INFER E 
     ⊢ ¬¬E 
FORMULAE
0 ⊥,
1 ¬E,
2 E 
IS
SEQ ("¬ intro"[A\1]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "¬E∨¬F ⊢ ¬(E∧F)"
INFER ¬E∨¬F 
     ⊢ ¬(E∧F)
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 E,
5 ¬E∨¬F,
6 E∧F 
IS
SEQ ("¬ intro"[A\6]) (cut[B,C\2,0]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,2]) (hyp[A\6])) (cut[B,C\4,0]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\4,2]) (hyp[A\6])) ("∨ elim"[A,B,C\3,1,0]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "E∧F ⊢ ¬(¬E∨¬F)"
INFER E∧F 
     ⊢ ¬(¬E∨¬F)
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 E,
5 ¬E∨¬F,
6 E∧F,
7 ¬(¬E∨¬F)
IS
SEQ (cut[B,C\2,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,2]) (hyp[A\6])) (cut[B,C\4,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\4,2]) (hyp[A\6])) ("¬ intro"[A\5]) ("∨ elim"[A,B,C\3,1,0]) (hyp[A\5]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "F→G ⊢ (E∨F)→(E∨G)"
INFER F→G 
     ⊢ (E∨F)→(E∨G)
FORMULAE
0 G,
1 E,
2 F,
3 F→G,
4 E∨G,
5 E∨F 
IS
SEQ ("→ intro"[A,B\5,4]) ("∨ elim"[A,B,C\1,2,4]) (hyp[A\5]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) (cut[B,C\0,4]) ("→ elim"[A,B\2,0]) (hyp[A\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "¬(E∧¬E)"
INFER ¬(E∧¬E)
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 E∧¬E 
IS
SEQ ("¬ intro"[A\3]) (cut[B,C\1,0]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\2,1]) (hyp[A\3])) (cut[B,C\2,0]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\2,1]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "¬E∧¬F ⊢ ¬(E∨F)"
INFER ¬E∧¬F 
     ⊢ ¬(E∨F)
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 E,
5 E∨F,
6 ¬E∧¬F,
7 ¬(E∨F)
IS
SEQ (cut[B,C\1,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\3,1]) (hyp[A\6])) (cut[B,C\3,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\3,1]) (hyp[A\6])) ("¬ intro"[A\5]) ("∨ elim"[A,B,C\4,2,0]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
