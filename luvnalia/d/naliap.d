ADD_TRANS_TRIGGER ~NALIAP~ 0 ~!Global("NaliaVampire","GLOBAL",5) !Global("RoenalConvict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~NALIAP~ 3 ~!Global("NaliaVampire","GLOBAL",5) !Global("RoenalConvict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~NALIAP~ 6 ~!Global("NaliaVampire","GLOBAL",5) !Global("RoenalConvict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~NALIAP~ 7 ~!Global("NaliaVampire","GLOBAL",5) !Global("RoenalConvict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~NALIAP~ 10 ~!Global("NaliaVampire","GLOBAL",5) !Global("RoenalConvict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~NALIAP~ 12 ~!Global("NaliaVampire","GLOBAL",5)~

ADD_TRANS_ACTION ~NALIAP~ BEGIN 12 END BEGIN
END
~SetGlobal("RoenalConvict","GLOBAL",2) SetGlobal("NaliaJamie","GLOBAL",2)~

ADD_TRANS_TRIGGER ~NALIAP~ 14 ~!GlobalGT("NaliaRomanceActive","GLOBAL",0)~

EXTEND_BOTTOM ~NALIAP~ 14
 IF ~Global("NaliaRomanceActive","GLOBAL",1)~ THEN DO ~RealSetGlobalTimer("NaliaBranch2","GLOBAL",15)
SetGlobal("NaliaBranch2","LOCALS",5)
SetGlobal("EdwinInteractionx","GLOBAL",1)
RealSetGlobalTimer("EdwinTimerx","GLOBAL",300)
JoinParty()~ EXIT
END

ADD_TRANS_TRIGGER ~NALIAP~ 18 ~!Global("NaliaVampire","GLOBAL",5)~

APPEND ~NALIAP~

IF ~Global("NaliaVampire","GLOBAL",5)~ THEN BEGIN N25
  SAY @0
  IF ~~ THEN REPLY @1 DO ~IncrementGlobal("NaliaVampire","GLOBAL",1)~ GOTO N26
  IF ~~ THEN REPLY @2 DO ~IncrementGlobal("NaliaVampire","GLOBAL",1)~ GOTO N28
  IF ~~ THEN REPLY @3 DO ~IncrementGlobal("NaliaVampire","GLOBAL",1)~ GOTO N29
END

IF ~~ THEN BEGIN N26
  SAY @4
  IF ~~ THEN GOTO N27
END

IF ~~ THEN BEGIN N27
  SAY @5
  IF ~~ THEN REPLY @6 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 GOTO 17
END

IF ~~ THEN BEGIN N28
  SAY @8
  IF ~~ THEN GOTO N27
END

IF ~~ THEN BEGIN N29
  SAY @9
  IF ~~ THEN GOTO N27
END

END
