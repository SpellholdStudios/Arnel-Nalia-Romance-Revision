EXTEND_BOTTOM ~HLSHANG~ 1
+~Global("NaliaQuest","GLOBAL",1)~+ @0 + ISEA1
END

EXTEND_BOTTOM ~HLSHANG~ 3
+~Global("NaliaQuest","GLOBAL",1)~+ @0 + ISEA1
END

APPEND ~HLSHANG~

IF ~~ THEN BEGIN ISEA1
  SAY @1
  IF ~~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554])
Wait(1)
CreateVisualEffect("SPFLSRIN",[962.554])
JumpToPoint([532.744])
SetGlobal("ShangalarMove","AR1008",1)~ EXIT
END

END
