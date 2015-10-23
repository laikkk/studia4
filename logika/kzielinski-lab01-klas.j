﻿CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "((E→F)→F)→((F→E)→E)"
INFER ((E→F)→F)→((F→E)→E)
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 F,
4 F→E,
5 ¬F,
6 E→F,
7 (E→F)→F,
8 (E→F)→F,
9 (F→E)→E 
IS
SEQ ("→ intro"[A,B\8,9]) ("→ intro"[A,B\4,2]) ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\6,0]) ("→ intro"[A,B\2,3]) (cut[B,C\0,3]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (constructive)"[B\3]) (hyp[A\0]) (cut[B,C\3,0]) ("→ elim"[A,B\6,3]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\0,0]) ("¬ elim"[B\3]) (hyp[A\3]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬(E∧¬F) ⊢ E→F"
INFER ¬(E∧¬F)
     ⊢ E→F 
FORMULAE
0 ⊥,
1 ¬(E→F),
2 E→F,
3 ¬(E∧¬F),
4 E∧¬F,
5 ¬F,
6 E,
7 F,
8 ¬(E∧¬F)
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\2,0]) ("→ intro"[A,B\6,7]) ("contra (classical)"[A\7]) (cut[B,C\4,0]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "(E→F)→((¬E→F)→F)"
INFER (E→F)→((¬E→F)→F)
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→F,
5 ¬E,
6 ¬E→F,
7 (¬E→F)→F 
IS
SEQ ("→ intro"[A,B\4,7]) ("→ intro"[A,B\6,2]) ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\5,2]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬E→¬F ⊢ F→E"
INFER ¬E→¬F 
     ⊢ F→E 
FORMULAE
0 ⊥,
1 ¬(F→E),
2 F→E,
3 ¬F,
4 F,
5 ¬E,
6 ¬E→¬F,
7 E 
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\2,0]) ("→ intro"[A,B\4,7]) ("contra (classical)"[A\7]) (cut[B,C\3,0]) ("→ elim"[A,B\5,3]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
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
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬E→E ⊢ E"
INFER ¬E→E 
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 ¬E→E 
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\2,0]) ("→ elim"[A,B\1,2]) (hyp[A\3]) (hyp[A\1]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬(E→F) ⊢ E∧¬F"
INFER ¬(E→F)
     ⊢ E∧¬F 
FORMULAE
0 ⊥,
1 ¬(E→F),
2 E→F,
3 ¬(E∧¬F),
4 E∧¬F,
5 ¬F,
6 E,
7 F,
8 ¬(E→F)
IS
SEQ ("contra (classical)"[A\4]) (cut[B,C\2,0]) ("→ intro"[A,B\6,7]) ("contra (classical)"[A\7]) (cut[B,C\4,0]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬E→F ⊢ E∨F"
INFER ¬E→F 
     ⊢ E∨F 
FORMULAE
0 ⊥,
1 ¬(E∨F),
2 E∨F,
3 E,
4 F,
5 ¬E,
6 ¬E→F 
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\4,0]) ("→ elim"[A,B\5,4]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬(E→¬F) ⊢ E∧F"
INFER ¬(E→¬F)
     ⊢ E∧F 
FORMULAE
0 ⊥,
1 ¬(E→¬F),
2 E→¬F,
3 ¬(E∧F),
4 E∧F,
5 F,
6 E,
7 ¬F,
8 ¬(E→¬F)
IS
SEQ ("contra (classical)"[A\4]) (cut[B,C\2,0]) ("→ intro"[A,B\6,7]) ("¬ intro"[A\5]) (cut[B,C\4,0]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬(¬E∨F) ⊢ E"
INFER ¬(¬E∨F)
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬(¬E∨F),
2 ¬E∨F,
3 ¬E,
4 F,
5 E,
6 ¬(¬E∨F)
IS
SEQ ("contra (classical)"[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 1"
PROOF "¬E→F ⊢ ¬F→E"
INFER ¬E→F 
     ⊢ ¬F→E 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 ¬E→F,
5 E 
IS
SEQ ("→ intro"[A,B\1,5]) ("contra (classical)"[A\5]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
