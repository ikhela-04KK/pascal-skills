// algo decalage 
program algoDecalage; 
uses crt; 

var 
    enf:array[1..6] of string;
    i,indd:integer;

begin 
    for i:=1 to 6 do 
        begin 
            WriteLn('entrez le nom de l enfant: ');
            ReadLn(enf[i])
        end;
    
    WriteLn('entrez l indice du demissionnaire: ');
    ReadLn(indd);
    while ((indd<1) or (indd>6)) do 
        begin 
            WriteLn('indice non valide, redonnez l indice ');
            ReadLn(indd);
        end;
    i := indd;
    while ((i<6) and (enf[i] <> ' ')) do 
        begin 
            enf[i] := enf[i+1];//algorithme qui permet de supprimer un éléménet dans un tableau
            i:=i+1;
        end;
    if i=6 then 
        enf[6] := ' ';

    for i:=1 to 6 do 
        WriteLn(' ',enf[i]);
end.
