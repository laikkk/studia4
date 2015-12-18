CONJECTUREPANEL "Równoważności z kwantyfikatorami"
    THEOREM IS actual j, ∀x.(R∧S(x)) ⊢ R∧∀x.S(x)
    THEOREM IS R∧∀x.S(x) ⊢ ∀x.(R∧S(x))
    THEOREM IS ∃x.R(x)→S ⊢ ∀x.(R(x)→S)
    THEOREM IS ∀x.(R(x)→S) ⊢ ∃x.R(x)→S
    THEOREM IS R→∀x.S(x) ⊢ ∀x.(R→S(x))
    THEOREM IS ∀x.(R→S(x)) ⊢ R→∀x.S(x)
    THEOREM IS ∃x.(R∨S(x)) ⊢ R∨∃x.S(x)
    THEOREM IS actual j, R∨∃x.P(x) ⊢ ∃x.(R∨P(x))
    THEOREM IS ∃x.(R∧S(x)) ⊢ R∧∃x.S(x)
    THEOREM IS R∧∃x.S(x) ⊢ ∃x.(R∧S(x))
    THEOREM IS R∨∀x.S(x) ⊢ ∀x.(R∨S(x))
    THEOREM IS ∃x.(R→S(x)) ⊢ R→∃x.S(x)
    THEOREM IS ∃x.(R(x)→S) ⊢ ∀x.R(x)→S

    BUTTON Apply IS apply TheoremForwardOrBackward COMMAND
END