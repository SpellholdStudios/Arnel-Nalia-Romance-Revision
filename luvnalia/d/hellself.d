ADD_TRANS_TRIGGER ~HELLSELF~ 25 ~OR(2) !Global("NaliaRomanceActive","GLOBAL",2) !IsValidForPartyDialog("Nalia")~ 

EXTEND_BOTTOM ~HELLSELF~ 25
  IF ~Global("NaliaRomanceActive","GLOBAL",2) IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIAJ~ N457
END

ADD_TRANS_TRIGGER ~HELLSELF~ 30 ~!Global("NaliaTaken","AR2904",1)~

EXTEND_BOTTOM ~HELLSELF~ 30
  IF ~Global("NaliaTaken","AR2904",1)~ THEN DO ~ForceSpell("Nalia",HELL_DISPELL)
SetGlobal("Player1Selfish","GLOBAL",1)~ GOTO 32
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N457
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("NaliaTaken","AR2904",1)
StartCutScene("Hellnali")~ EXIT
END

END
