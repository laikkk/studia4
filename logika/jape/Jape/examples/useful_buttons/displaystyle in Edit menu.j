﻿/* $Id: displaystyle\040in\040Edit\040menu.j,v 1.8 2008/12/17 14:46:25 rbornat Exp $ */

MENU Edit IS
    RADIOBUTTON displaystyle IS
        "Box display" IS box
    AND "Tree display" IS tree
    END
    
    SEPARATOR
    
    CHECKBOX showallprovisos      "show all provisos"
    CHECKBOX showallproofsteps    "show all proof steps"
    CHECKBOX hideuselesscuts      "hide unnecessary forward steps"
    
    SEPARATOR
    
    CHECKBOX hidecut              "hide cuts"
    CHECKBOX hidehyp              "hide identity lines"
    
    SEPARATOR
    
    CHECKBOX hidetransitivity     "hide transitive steps"
    CHECKBOX hidereflexivity      "hide reflexive steps"
    
    SEPARATOR
    
    CHECKBOX foldsequents         "fold long sequents in tree display"
    CHECKBOX multiassumptionlines "multiple assumptions per line in box display"
    CHECKBOX foldformulae         "fold long formulae in box display"
END
