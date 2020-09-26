BEGIN ~XXARATXX~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~NumTimesTalkedTo(0)
!InParty("Nalia")
!Global("Dumbasswhatever","GLOBAL",1)~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("Dearnise",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)
InParty("Nalia")
!Global("Dumbasswhatever","GLOBAL",1)~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN EXTERN ~NALIAJ~ Nalia327
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXTERN ~NALIAJ~ Nalia328
END

IF ~!Global("Dumbasswhatever","GLOBAL",1)~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @6 DO ~StartStore("Dearnise",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Dumbasswhatever","GLOBAL",1)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN EXIT
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN Nalia327
  SAY @17
  IF ~~ THEN EXTERN ~XXARATXX~ 0
END

IF ~~ THEN BEGIN Nalia328
  SAY @18
  IF ~~ THEN DO ~LeaveParty()
GivePartyAllEquipment()
EscapeArea()
SetGlobal("PCKeepOwner","GLOBAL",0)
SetGlobal("SPRITE_IS_DEADNalia","GLOBAL",1)
SetGlobal("NaliaRomanceActive","GLOBAL",3)
SetGlobal("PlayerHasStronghold","GLOBAL",0)~ EXIT
END

END
