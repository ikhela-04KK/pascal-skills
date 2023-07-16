//  essayons d'implementer une fonction de tri 
program tri; 
uses crt; 

// initialisation des variables 
var 
    tab: array [1..10] of integer; 
    i,inv:integer;
    arret: Boolean; 

begin 
    for i:= 1 to 10 do 
        tab[i] := random(100);

    arret := true;
    while arret do 
        begin
            arret := false; 
            for i:= 1 to 10 do 
                begin 
                    if tab[i] > tab[i+1] then
                        begin 
                            inv := tab[i];
                            tab[i] := tab[i+1];
                            tab[i+1] := inv;
                            arret := true;
                        end;
                end;
        end;
    for i:=1  to 10 do 
        Write(tab[i]:4);

end.
    