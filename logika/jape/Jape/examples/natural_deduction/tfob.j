/*
    $Id: I2L_problems.j,v 1.20 2008/12/18 11:46:04 rbornat Exp $

    Copyright (C) 2000-8 Richard Bornat
     
        richard@bornat.me.uk

    This file is part of the I2L logic encoding, distributed with jape.

    Jape is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Jape is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with jape; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
    (or look at http://www.gnu.org).

*/

TACTIC TheoremForward (thm) IS CUTIN (ALT thm (RESOLVE thm))

TACTIC TheoremForwardOrBackward(thm) IS
    WHEN    
        (LETHYP _A 
            (ALT    (TheoremForward (WITHHYPSEL (WITHARGSEL thm)))))
        (LETHYPS _As
            (Fail ("At present I2L Jape can't deal with multiple hypothesis selections when applying theorems. Sorry.\
                    \\nCancel all but one of them and try again.")))
        (LETGOAL _A
            (ALT (WITHARGSEL thm) 
                (RESOLVE (WITHARGSEL thm)) 
                (TheoremForward (WITHARGSEL thm))
                (Fail   "Theorem application failed -- tell Richard Bornat")))
        (LETOPENSUBGOAL G _A 
            (Fail ("Error in I2L Jape (open subgoal in TheoremForwardOrBackward). Tell Richard Bornat.")))
        (LETOPENSUBGOALS _As
            (ALERT  ("There is more than one unproved conclusion in the proof. Please select one – \
                        \or select a hypothesis – to show \
                        \Jape where to apply the theorem.")
                    ("OK", STOP) 
                    ("Huh?", Explainhypothesisandconclusionwords)))
        (ALERT  "The proof is finished -- there are no unproved conclusions left."
                ("OK", STOP) 
                ("Huh?", Explainunprovedconclusionwords))

