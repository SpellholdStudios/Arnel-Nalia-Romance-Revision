ADD_TRANS_TRIGGER ~NALIA~ 45 ~Gender(Player1,MALE) 
!Race(Player1,DWARF) 
!Race(Player1,GNOME) 
!Race(Player1,HALFORC)
OR(3)
Class(Player1,FIGHTER_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)~

ADD_TRANS_ACTION ~NALIA~ BEGIN 45 END BEGIN 
END
~SetGlobal("Naliamatch","GLOBAL",1) SetGlobal("NaliaRomanceActive","GLOBAL",1) SetGlobal("NaliaBranch1","LOCALS",1)~

EXTEND_BOTTOM ~NALIA~ 45
IF ~!Class(Player1,FIGHTER_ALL) !Class(Player1,PALADIN_ALL) !Class(Player1,RANGER_ALL)~ THEN DO ~SetGlobal("NaliaTalkedTo","LOCALS",1)~ GOTO 0
IF ~OR(3) Race(Player1,DWARF) Race(Player1,GNOME) Race(Player1,HALFORC)~ THEN DO ~SetGlobal("NaliaTalkedTo","LOCALS",1)~ GOTO 0
IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("NaliaTalkedTo","LOCALS",1)~ GOTO 0
END
