ADD_STATE_TRIGGER ~PLAYER1~ 7 ~!Global("NaliaRomanceActive","GLOBAL",1) !Global("NaliaRomanceActive","GLOBAL",2) !IfValidForPartyDialogue("NALIA")~

EXTEND_BOTTOM ~PLAYER1~ 10
IF ~Global("EndangerLovedOne","GLOBAL",6) !IsValidForPartyDialogue("Nalia")~ THEN
 DO ~SetGlobal("DrowTalk","GLOBAL",5)~ GOTO 12
END

EXTEND_BOTTOM ~PLAYER1~ 10
IF ~Global("EndangerLovedOne","GLOBAL",6) IsValidForPartyDialogue("Nalia")~ THEN
 DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN ~NALIAJ~ N447
END

ADD_TRANS_TRIGGER ~PLAYER1~ 33 ~!Global("NaliaRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM ~PLAYER1~ 33
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 GOTO Nalia48
END

APPEND ~PLAYER1~

IF ~Global("drowTalk","GLOBAL",2)
OR(2)
Global("NaliaRomanceActive","GLOBAL",1)
Global("NaliaRomanceActive","GLOBAL",2)
IsValidForPartyDialogue("NALIA")~ THEN BEGIN Nalia1
  SAY @0
  IF ~~ THEN EXTERN ~NALIAJ~ NaliaSlayer
END

IF ~~ THEN BEGIN Nalia48
  SAY @1
  IF ~~ THEN REPLY @2 EXTERN ~NALIAJ~ Nalia444
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN Nalia444
  SAY @3
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN NaliaSlayer
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO N446
  IF ~~ THEN REPLY @6 DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO N446
  IF ~~ THEN REPLY @7 DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO N446
END

IF ~~ THEN BEGIN N446
  SAY @8
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ THEN BEGIN N447
  SAY @9
  IF ~~ THEN GOTO N448
END

IF ~~ THEN BEGIN N448
  SAY @10
  IF ~~ THEN EXIT
END

END

EXTEND_BOTTOM ~AERIEJ~ 185
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~ANOMENJ~ 299
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~CERNDJ~ 136
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~EDWINJ~ 160
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~HAERDAJ~ 149
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~IMOEN2J~ 38
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~JAHEIRAJ~ 519
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~JANJ~ 181
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~KELDORJ~ 248
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~KORGANJ~ 187
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~MAZZYJ~ 199 
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~VALYGARJ~ 106
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

EXTEND_BOTTOM ~VICONIJ~ 177
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
 EXTERN ~PLAYER1~ Nalia48
END

