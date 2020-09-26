EXTEND_BOTTOM ~HLSION~ 1
+~Global("NaliaQuest","GLOBAL",1)~+ @0 GOTO ISEA1
+~Global("NaliaQuest","GLOBAL",1)~+ @1 GOTO ISEA2
END

APPEND ~HLSION~

IF ~~ THEN BEGIN ISEA1
  SAY @2
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ SIONISEA
  IF ~!InParty("Nalia")~ THEN DO ~StartCutSceneMode()
ActionOverride("hlketta",MoveToObjectNoInterrupt("HLSION"))
ActionOverride("hlketta",Wait(1))
ActionOverride("hlketta",EndCutSceneMode())
ActionOverride("hlketta",DestroySelf())
SetGlobal("TalkedToHlsion","GLOBAL",2)
SetGlobal("TalkedToHlketta","GLOBAL",2)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN ISEA2
  SAY @3
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ SIONISEA
  IF ~!InParty("Nalia")~ THEN DO ~StartCutSceneMode()
ActionOverride("hlketta",MoveToObjectNoInterrupt("HLSION"))
ActionOverride("hlketta",Wait(1))
ActionOverride("hlketta",EndCutSceneMode())
ActionOverride("hlketta",DestroySelf())
SetGlobal("TalkedToHlsion","GLOBAL",2)
SetGlobal("TalkedToHlketta","GLOBAL",2)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN ISEA3
  SAY @4
  IF ~~ THEN EXTERN ~NALIAJ~ SIONISEA1
END

IF ~~ THEN BEGIN ISEA4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO SION1
END

IF ~~ THEN BEGIN SION1
  SAY @8
  IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride("hlketta",MoveToObjectNoInterrupt("HLSION"))
ActionOverride("hlketta",Wait(1))
ActionOverride("hlketta",EndCutSceneMode())
ActionOverride("hlketta",DestroySelf())
SetGlobal("TalkedToHlsion","GLOBAL",2)
SetGlobal("TalkedToHlketta","GLOBAL",2)
ForceSpell(Myself,DRYAD_TELEPORT)
AddJournalEntry(75242,QUEST)~ EXIT
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN SIONISEA
  SAY @9
  IF ~~ THEN EXTERN ~HLSION~ ISEA3
END

IF ~~ THEN BEGIN SIONISEA1
  SAY @10
  IF ~~ THEN EXTERN ~HLSION~ ISEA4
END

END
