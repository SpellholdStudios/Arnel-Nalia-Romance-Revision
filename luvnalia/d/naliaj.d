ADD_TRANS_TRIGGER ~NALIAJ~ 0 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 9 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 15 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 16 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 27 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 28 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 44 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 53 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 91 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 95 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 108 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 109 ~!Global("NaliaRomanceActive","GLOBAL",1)~

EXTEND_BOTTOM ~NALIAJ~ 109
IF ~Global("NaliaRomanceActive","GLOBAL",1)~ THEN GOTO Nalia365
END

ADD_TRANS_TRIGGER ~NALIAJ~ 148 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 165 ~!Global("NaliaRomanceActive","GLOBAL",1)~

EXTEND_BOTTOM ~NALIAJ~ 165
IF ~Global("NaliaRomanceActive","GLOBAL",1)~ THEN DO ~RealSetGlobalTimer("NaliaBranch2","GLOBAL",300)
SetGlobal("NaliaBranch2","LOCALS",1)
SetGlobal("PCKeepOwner","GLOBAL",1)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutScene("Cut32a")~ EXIT
END

ADD_TRANS_TRIGGER ~NALIAJ~ 186 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 187 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 192 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 193 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 200 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 201 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 223 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 246 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

ADD_TRANS_TRIGGER ~NALIAJ~ 247 ~!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~

EXTEND_BOTTOM ~NALIAJ~ 315
IF ~IsValidForPartyDialog("Nalia") Global("NaliaRomanceActive","GLOBAL",2)~ THEN 
EXTERN ~PLAYER1~ Nalia48
END


APPEND ~NALIAJ~

IF ~Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
Global("PlayerHasStronghold","GLOBAL",0)
OR(8)
Global("Naliamatch","GLOBAL",1)
!Class(Player1,FIGHTER)
!Class(Player1,FIGHTER_MAGE)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,FIGHTER_THIEF)
!Class(Player1,FIGHTER_MAGE_THIEF)
!Class(Player1,FIGHTER_DRUID)
!Class(Player1,FIGHTER_MAGE_CLERIC)
!Global("Isduel","GLOBAL",8)
!Global("NaliaBranch3","LOCALS",12)
!Global("NaliaBranch3","LOCALS",14)
!Global("JosephQuest","GLOBAL",6)~ THEN BEGIN Nalia53
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ JOURNAL @2 GOTO 54
  IF ~~ THEN REPLY @3 DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ JOURNAL @2 GOTO 54
  IF ~~ THEN REPLY @4 DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ JOURNAL @2 GOTO 55
  IF ~~ THEN REPLY @5 DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ JOURNAL @2 GOTO 56
  IF ~~ THEN REPLY @6 DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ JOURNAL @2 GOTO 56
END

IF ~~ THEN BEGIN Nalia365
  SAY @7
  IF ~~ THEN GOTO Nalia366
END

IF ~~ THEN BEGIN Nalia366
  SAY @8
  IF ~~ THEN GOTO Nalia367
END

IF ~~ THEN BEGIN Nalia367
  SAY @9
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Viconia")~ THEN REPLY @10 GOTO N368
  IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN ~AERIEJ~ N219
  IF ~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ N533
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Viconia")~ THEN EXTERN ~VICONIJ~ N183
END

IF ~~ THEN BEGIN N368
  SAY @11
  IF ~~ THEN REPLY @12 GOTO N369
  IF ~~ THEN REPLY @13 GOTO N370
  IF ~~ THEN REPLY @14 GOTO N373
END

IF ~~ THEN BEGIN N369
  SAY @15
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Marry01")~ EXIT
END

IF ~~ THEN BEGIN N370
  SAY @16
  IF ~~ THEN REPLY @17 GOTO N371
  IF ~~ THEN REPLY @18 GOTO N372
END

IF ~~ THEN BEGIN N371
  SAY @19
  IF ~~ THEN REPLY @20 GOTO N372
  IF ~~ THEN REPLY @21 GOTO N369
END

IF ~~ THEN BEGIN N372
  SAY @22
  IF ~~ THEN DO ~SetGlobal("NaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN N373
  SAY @23
  IF ~~ THEN GOTO N374
END

IF ~~ THEN BEGIN N374
  SAY @24
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Marry01")~ EXIT
END

IF ~~ THEN BEGIN N375
  SAY @25
  IF ~~ THEN REPLY @10 GOTO N368
END

IF ~~ THEN BEGIN N376
  SAY @26
  IF ~~ THEN REPLY @10 GOTO N368
END

IF ~~ THEN BEGIN N377
  SAY @27
  IF ~~ THEN REPLY @10 GOTO N368
END

IF ~~ THEN BEGIN N398
  SAY @28
  IF ~~ THEN EXTERN ~AERIEJ~ N222
END

IF ~~ THEN BEGIN N399
  SAY @29
  IF ~~ THEN EXTERN ~AERIEJ~ N223
END

IF ~~ THEN BEGIN N400
  SAY @30
  IF ~~ THEN EXTERN ~AERIEJ~ N224
END

IF ~Global("Isduel","GLOBAL",8)~ THEN BEGIN N397
  SAY @31
  IF ~~ THEN REPLY @32 GOTO N401
  IF ~~ THEN REPLY @33 GOTO N403
  IF ~~ THEN REPLY @34 GOTO N404
END

IF ~~ THEN BEGIN N401
  SAY @35
  IF ~~ THEN GOTO N402
END

IF ~~ THEN BEGIN N402
  SAY @36
  IF ~~ THEN DO ~SetGlobal("Isduel","GLOBAL",9)~ EXTERN ~ISAEAX~ N16
END

IF ~~ THEN BEGIN N403
  SAY @37
  IF ~~ THEN GOTO N402
END

IF ~~ THEN BEGIN N404
  SAY @38
  IF ~~ THEN GOTO N402
END

IF ~~ THEN BEGIN N405
  SAY @39
  IF ~~ THEN GOTO N406
END

IF ~~ THEN BEGIN N406
  SAY @40
  IF ~~ THEN REPLY @41 GOTO N407
  IF ~~ THEN REPLY @42 GOTO N413
END

IF ~~ THEN BEGIN N407
  SAY @43
  IF ~~ THEN REPLY @44 GOTO N408
  IF ~~ THEN REPLY @45 GOTO N411
  IF ~~ THEN REPLY @46 GOTO N413
END

IF ~~ THEN BEGIN N408
  SAY @47
  IF ~~ THEN GOTO N409
END

IF ~~ THEN BEGIN N409
  SAY @48
  IF ~~ THEN GOTO N410
END

IF ~~ THEN BEGIN N410
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISAEAF06")~ EXIT
END

IF ~~ THEN BEGIN N411
  SAY @47
  IF ~~ THEN GOTO N412
END

IF ~~ THEN BEGIN N412
  SAY @50
  IF ~~ THEN GOTO N410
END

IF ~~ THEN BEGIN N413
  SAY @51
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ISAEAF05")~ EXIT
END

IF ~Global("PhaereInnuendo","GLOBAL",1)
Global("NaliaMad1","LOCALS",0)~ THEN BEGIN N449
  SAY @52
  IF ~~ THEN REPLY @53 DO ~SetGlobal("NaliaMad1","LOCALS",1)~ GOTO N450
  IF ~~ THEN REPLY @54 DO ~SetGlobal("NaliaMad1","LOCALS",1)~ GOTO N451
  IF ~~ THEN REPLY @55 DO ~SetGlobal("NaliaMad1","LOCALS",1)~ GOTO N452
END

IF ~~ THEN BEGIN N450
  SAY @56
  IF ~~ THEN REPLY @54 GOTO N451
  IF ~~ THEN REPLY @55 GOTO N452
END

IF ~~ THEN BEGIN N451
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN N452
  SAY @58
  IF ~~ THEN DO ~SetGlobal("NaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("PhaereInnuendo","GLOBAL",2)
Global("NaliaMad2","LOCALS",0)~ THEN BEGIN N453
  SAY @59
  IF ~~ THEN DO ~SetGlobal("NaliaMad2","LOCALS",1)~ GOTO N454
END

IF ~~ THEN BEGIN N454
  SAY @60
  IF ~~ THEN DO ~SetGlobal("NaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("PhaereInnuendo","GLOBAL",3)
Global("NaliaMad3","LOCALS",0)~ THEN BEGIN N455
  SAY @61
  IF ~~ THEN DO ~SetGlobal("NaliaMad3","LOCALS",1)~ GOTO N456
END

IF ~~ THEN BEGIN N456
  SAY @62
  IF ~~ THEN EXIT
END

END

CHAIN
IF ~Global("NaliaRomanceActive","GLOBAL",1)
Global("NaliaBranch3","LOCALS",12)~ THEN ~NALIAJ~ BadBad1
@63
DO ~IncrementGlobal("NaliaBranch3","LOCALS",1)~
== ~BADBAD01~ @64
== ~NALIAJ~   @65
== ~BADBAD01~ @66
== ~NALIAJ~   @67
== ~BADBAD01~ @68
== ~NALIAJ~   @69
== ~BADBAD01~ @70
== ~NALIAJ~   @71
== ~BADBAD01~ @72
== ~BADBAD01~ @73
== ~BADBAD01~ @74
== ~NALIAJ~   @75
== ~BADBAD01~ @76
== ~BADBAD01~ @77
== ~NALIAJ~   @78
== ~BADBAD01~ @79 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("BADBAD01")~ 
EXIT

CHAIN
IF ~Global("NaliaRomanceActive","GLOBAL",1)
Global("NaliaBranch3","LOCALS",14)~ THEN ~NALIAJ~ BadBad2
@80
DO ~IncrementGlobal("NaliaBranch3","LOCALS",1)~
== ~BADBAD02~ @81
== ~NALIAJ~   @82
== ~BADBAD02~ @83
== ~BADBAD02~ @84
== ~BADBAD02~ @85
== ~KELDORJ~ IF ~IsValidForPartyDialog("Keldorn")~ THEN @86 DO ~SetGlobal("BADBADGO","AR2000",1) StartCutSceneMode() StartCutScene("BADBAD02")~ 
== ~NALIAJ~ IF ~!IsValidForPartyDialog("Keldorn")~ THEN @87 DO ~SetGlobal("BADBADGO","AR2000",1) StartCutSceneMode() StartCutScene("BADBAD02")~
EXIT

CHAIN
IF ~Global("JosephQuest","GLOBAL",6)~ THEN ~NALIAJ~ Jos01
@88
DO ~IncrementGlobal("JosephQuest","GLOBAL",1)~
== ~JOS01~  @89
== ~NALIAJ~ @90
== ~JOS01~  @91
== ~NALIAJ~ @92
== ~JOS01~  @93
== ~NALIAJ~ @94
== ~JOS01~  @95
== ~JOS01~  @96
== ~NALIAJ~ @97
== ~JOS01~  @98
== ~NALIAJ~ @99
== ~JOS01~  @100
== ~NALIAJ~ @101
== ~JOS01~  @102
EXIT


APPEND ~AERIEJ~

IF ~~ THEN BEGIN N219
  SAY @103
  IF ~~ THEN EXTERN ~NALIAJ~ N398
END

IF ~~ THEN BEGIN N222
  SAY @104
  IF ~~ THEN EXTERN ~NALIAJ~ N399
END

IF ~~ THEN BEGIN N223
  SAY @105
  IF ~~ THEN EXTERN ~NALIAJ~ N400
END

IF ~~ THEN BEGIN N224
  SAY @106
  IF ~~ THEN EXTERN ~NALIAJ~ N375
END

END

APPEND ~ISAEAX~

IF ~~ THEN BEGIN N16
  SAY @107
  IF ~~ THEN EXTERN ~NALIAJ~ N405
END

END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN N533
  SAY @108
  IF ~~ THEN EXTERN ~NALIAJ~ N376
END

END

APPEND ~VICONIJ~

IF ~~ THEN BEGIN N183
  SAY @109
  IF ~~ THEN EXTERN ~NALIAJ~ N377
END

END
