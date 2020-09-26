APPEND ~EDWINJ~

IF ~Global("EdwinInteractionx","GLOBAL",2)~ THEN BEGIN 189
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed190
  IF ~~ THEN REPLY @2 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed191
  IF ~~ THEN REPLY @3 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed192
  IF ~~ THEN REPLY @4 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed192
  IF ~~ THEN REPLY @5 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed190
  IF ~~ THEN REPLY @6 DO ~SetGlobal("EdwinInteractionx","GLOBAL",3)~ GOTO Ed193
END

IF ~~ THEN BEGIN Ed190
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ed191
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ed192
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ed193
  SAY @10
  IF ~~ THEN EXIT
END

END