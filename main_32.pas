program tri_croi; 
uses crt; 

var i,j:integer; 
    nbre:array[1..10] of real; 
    temp:real; 

begin 
// saisie de donnée 
for i:=1 to 10 do 
    begin 
        WriteLn('entrz nombre Nombre ', i, ': ');
        ReadLn(nbre[i]);
    end;

// inintialisation du trie ç bulle 
for i:= 1 to 9 do 
    begin 
        for j:= i+1 to 10 do 
            begin 
                if nbre[j] < nbre[j-1] then 
                    begin 
                        temp := nbre[j];
                        nbre[j] := nbre[j-1];
                        nbre[j-1]:= temp;
                    end;
            end;
    end;

// afficher les valeurs
WriteLn; 
for i:=1 to 10 do 
    WriteLn(nbre[i]:0:0);
end.