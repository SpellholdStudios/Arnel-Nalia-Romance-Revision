EXTEND_BOTTOM ~UDPHAE01~ 106
IF ~OR(2) Global("NaliaRomanceActive","GLOBAL",1) Global("NaliaRomanceActive","GLOBAL",2)~ THEN REPLY @0 GOTO 110
END

EXTEND_BOTTOM ~WARSAGE~ 0

IF ~!Dead("c6bodhi") Global("NaliaVampire","GLOBAL",2)~ THEN 
 REPLY @1 GOTO 6
IF ~PartyHasItem("Nalbdy")~ THEN 
 REPLY @2 GOTO 5
END

ADD_TRANS_ACTION ~KPDOMO01~ BEGIN 0 END BEGIN
END
~SetGlobal("Aratblacksmith","GLOBAL",1)~

ADD_TRANS_ACTION ~KPDOMO01~ BEGIN 59 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",9)~

ADD_TRANS_ACTION ~KPDOMO01~ BEGIN 60 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",1)~

ADD_TRANS_ACTION ~KPGRD01~ BEGIN 0 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",9)~

ADD_TRANS_ACTION ~KPCHAP01~ BEGIN 8 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",5)~

ADD_TRANS_ACTION ~KPCHAP01~ BEGIN 9 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",9)~

ADD_TRANS_ACTION ~KPCHAP01~ BEGIN 10 END BEGIN
END
~SetGlobal("NaliaInteractionx","GLOBAL",9)~

ADD_TRANS_TRIGGER ~AERIEJ~ 185 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~EDWINJ~ 160 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~HAERDAJ~ 149 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~IMOEN2J~ 38 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~JANJ~ 181 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 519 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~KELDORJ~ 248 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~KORGANJ~ 187 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~VALYGARJ~ 106 ~!Global("NaliaRomanceActive","GLOBAL",2)~

ADD_TRANS_TRIGGER ~VICONIJ~ 177 ~!Global("NaliaRomanceActive","GLOBAL",2)~
