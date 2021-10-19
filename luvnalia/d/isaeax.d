BEGIN ~ISAEAX~

IF ~Global("Isduel","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~NALIAJ~ N394
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NALIAJ~ N395
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @6 GOTO 6
  IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @7 GOTO 7
  IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @8 GOTO 8
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ IsaeaBoo
END

IF ~~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISDUEL02")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISDUEL02")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @12
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISDUEL02")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~Global("Isduel","GLOBAL",2)~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN EXTERN ~NALIAJ~ N396
END

IF ~Global("Isduel","GLOBAL",3)~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @16
  IF ~~ THEN DO ~ClearAllActions()
IncrementGlobal("Isduel","GLOBAL",1)
StartCutSceneMode()
StartCutScene("ISDUEL05")~ EXIT
END

IF ~Global("Isduel","GLOBAL",7)~ THEN BEGIN 14
  SAY @17
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ISAEAF02")~ EXIT
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N394
  SAY @19
  IF ~~ THEN EXTERN ~ISAEAX~ 1
END

IF ~~ THEN BEGIN N395
  SAY @20
  IF ~~ THEN EXTERN ~ISAEAX~ 2
END

IF ~~ THEN BEGIN N396
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Isduel","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ISDUEL03")~ EXIT
END

END
