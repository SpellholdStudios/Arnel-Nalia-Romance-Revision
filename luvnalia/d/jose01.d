BEGIN ~JOSE01~

IF ~Global("JosephQuest","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~JOS01~ 0
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~JOS01~ 1
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~JOS01~ 2
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~JOS01~ 3
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXTERN ~NALIAJ~ Nalia426
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN Nalia426
  SAY @5
  IF ~~ THEN DO ~ActionOverride("Jose01",Enemy())
ActionOverride("Jose02",Enemy())
ActionOverride("Jose03",Enemy())
ActionOverride("Jose04",Enemy())~ EXIT
END

END
