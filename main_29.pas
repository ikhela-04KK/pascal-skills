program moiss;
uses crt; 

type mois =(janvier, fevrier , mars);

type 
    def = record
    th : array[1..2] of mois;
end; 

defs = def;

var 
    deff : defs;
begin
    deff.th[1] := janvier;
    WriteLn(deff.th[1]);
end.