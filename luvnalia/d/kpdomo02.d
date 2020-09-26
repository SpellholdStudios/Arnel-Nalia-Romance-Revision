BEGIN ~KPDOMO02~

IF ~Global("Marriage","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~NALIAJ~ N378
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NALIAJ~ N379
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~NALIAJ~ N381
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~NALIAJ~ N382
END

IF ~Global("Marriage","GLOBAL",3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXTERN ~NALIAJ~ N383
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetDialog("kpdomo01")~ EXTERN ~NALIAJ~ N384
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N378
  SAY @6
  IF ~~ THEN EXTERN ~KPDOMO02~ 1
END

IF ~~ THEN BEGIN N379
  SAY @7
  IF ~~ THEN GOTO N380
END

IF ~~ THEN BEGIN N380
  SAY @8
  IF ~~ THEN EXTERN ~KPDOMO02~ 2
END

IF ~~ THEN BEGIN N381
  SAY @9
  IF ~~ THEN EXTERN ~KPDOMO02~ 3
END

IF ~~ THEN BEGIN N382
  SAY @10
  IF ~~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry03")~ EXIT
END

IF ~~ THEN BEGIN N383
  SAY @11
  IF ~~ THEN EXTERN ~KPDOMO02~ 5
END

IF ~~ THEN BEGIN N384
  SAY @12
  IF ~~ THEN REPLY @13 GOTO N385
  IF ~~ THEN REPLY @14 GOTO N385
END

IF ~~ THEN BEGIN N385
  SAY @15
  IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Minsc")~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry05")~ EXIT
  IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN ~VICONIJ~ N187
  IF ~!IsValidForPartyDialog("Viconia")
IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ N223
  IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ N185
  IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ N242
END

END

APPEND ~JANJ~

IF ~~ THEN BEGIN N185
  SAY @16
  IF ~!IsValidForPartyDialog("Minsc")~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry05")~ EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ N242
END

END

APPEND ~KORGANJ~

IF ~~ THEN BEGIN N223
  SAY @17
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Minsc")~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry05")~ EXIT
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ N185
  IF ~!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ N242
END

END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN N242
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry05")~ EXIT
END

END

APPEND ~VICONIJ~

IF ~~ THEN BEGIN N187
  SAY @19
  IF ~!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Minsc")~ THEN DO ~IncrementGlobal("Marriage","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Marry05")~ EXIT
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ N223
  IF ~!IsValidForPartyDialog("Korgan")
IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ N185
  IF ~!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ N242
END

END

