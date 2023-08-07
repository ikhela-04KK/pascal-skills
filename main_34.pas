// programme qui edite les jours de pluie pour le mois de janvier 
// essayer de traduire ça en type d'enregistrement 

program JOURDEPLUIE; 
uses crt; 

var Tsemp: array[1..31,1..4] of integer; 
    i,j:integer; 

begin 
    for i:= 1 to 31 do 
        begin 
            for j:= 1 to 4 do 
                begin 
                    WriteLn('entrez le jour de pluie et 0 pour pas de pluie');
                    WriteLn('2021/01/',i );
                    ReadLn(Tsemp[i,j]);
                end;
        end;
    for i:=1 to 31 do 
        begin 
            for j:=1 to 4 do 
                begin 
                    if Tsemp[i,j] <> 0 then 
                        WriteLn(i,j,Tsemp[i,j], 'de pluie ');
                end;
        end;
end.

