EXTEND_BOTTOM ~KAYL2~ 24
IF ~Global("JosephQuest","GLOBAL",1)~ THEN REPLY @0 GOTO Kay43
END

ADD_TRANS_TRIGGER ~KAYL2~ 31 ~!Global("JosephQuest","GLOBAL",1)~

EXTEND_BOTTOM ~KAYL2~ 31
IF ~Global("JosephQuest","GLOBAL",1)~ THEN REPLY @0 GOTO Kay43
END

ADD_TRANS_TRIGGER ~KAYL2~ 32 ~!Global("JosephQuest","GLOBAL",1)~

ADD_TRANS_TRIGGER ~KAYL2~ 33 ~!Global("JosephQuest","GLOBAL",1)~

ADD_TRANS_TRIGGER ~KAYL2~ 34 ~!Global("JosephQuest","GLOBAL",1)~

ADD_TRANS_TRIGGER ~KAYL2~ 35 ~!Global("JosephQuest","GLOBAL",1)~

APPEND ~KAYL2~

IF ~~ THEN BEGIN Kay43
  SAY @1
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~AddJournalEntry(75250,QUEST)~ EXTERN ~KELDORJ~ Kay257
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Nalia")~ THEN DO ~AddJournalEntry(75250,QUEST)~ EXTERN ~NALIAJ~ Kay423
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Nalia")~ THEN REPLY @2 DO ~AddJournalEntry(75250,QUEST)~ GOTO Kay46
END

IF ~~ THEN BEGIN Kay44
  SAY @3
  IF ~~ THEN EXTERN ~NALIAJ~ Kay424
END

IF ~~ THEN BEGIN Kay45
  SAY @4
  IF ~~ THEN DO ~RevealAreaOnMap("AR1700")~ EXTERN ~NALIAJ~ Kay425
END

IF ~~ THEN BEGIN Kay46
  SAY @3
  IF ~~ THEN REPLY @5 GOTO Kay47
END

IF ~~ THEN BEGIN Kay47
  SAY @4
  IF ~~ THEN DO ~SetGlobal("JosephQuest","GLOBAL",2)
RevealAreaOnMap("AR1700")~ EXIT
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN Kay423
  SAY @2
  IF ~~ THEN EXTERN ~KAYL2~ Kay44
END

IF ~~ THEN BEGIN Kay424
  SAY @6
  IF ~~ THEN EXTERN ~KAYL2~ Kay45
END

IF ~~ THEN BEGIN Kay425
  SAY @7
  IF ~~ THEN DO ~SetGlobal("JosephQuest","GLOBAL",2)~ EXIT
END

END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN Kay257
  SAY @2
  IF ~~ THEN EXTERN ~KAYL2~ Kay44
END

END
