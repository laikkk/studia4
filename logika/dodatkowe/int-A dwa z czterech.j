﻿CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "E→F→G ⊢ (E→F)→(E→G)"
INFER E→F→G 
     ⊢ (E→F)→(E→G)
FORMULAE
0 G,
1 F,
2 F→G,
3 E,
4 E→F→G,
5 E→F,
6 E→G 
IS
SEQ ("→ intro"[A,B\5,6]) ("→ intro"[A,B\3,0]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\5]) (hyp[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\1,0]) (hyp[A\1]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - 01"
PROOF "E∧(F→G) ⊢ (E→F)→G"
INFER E∧(F→G)
     ⊢ (E→F)→G 
FORMULAE
0 G,
1 F,
2 F→G,
3 E,
4 E→F,
5 E∧(F→G),
6 (E→F)→G,
7 E∧(F→G)
IS
SEQ (cut[B,C\2,6]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\3,2]) (hyp[A\5])) (cut[B,C\3,6]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\3,2]) (hyp[A\5])) ("→ intro"[A,B\4,0]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
