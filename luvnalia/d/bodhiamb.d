ADD_TRANS_TRIGGER ~BODHIAMB~ 5 ~OR(2) !InParty("Nalia") !Global("NaliaRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM ~BODHIAMB~ 5
IF ~Global("NaliaRomanceActive","GLOBAL",2) InParty("Nalia")~ THEN GOTO N20
END

APPEND ~BODHIAMB~

IF ~~ THEN BEGIN N20
 SAY @0
  IF ~OR(2) !InPartyAllowDead("Nalia") Dead("Nalia")~ THEN GOTO 6
  IF ~InPartyAllowDead("Nalia") !Dead("Nalia")~ THEN GOTO N21
END

IF ~~ THEN BEGIN N21
  SAY @1
  IF ~~ THEN EXTERN ~NALIAJ~ N442
END

IF ~~ THEN BEGIN N22
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut53NR")~ JOURNAL @3 EXIT
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N442
  SAY @4
  IF ~~ THEN EXTERN ~BODHIAMB~ N22
END

END
