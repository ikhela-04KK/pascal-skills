// programme qui cherche le plus petit élément dans un tableau 
program ppT; 
uses crt; 

// preparation du traitement 
var 
    i,max,n:integer; 
    tab :array of integer;

begin

    //initialiser la taille du tableau  
    WriteLn('entrer la taille du tableau ');
    ReadLn(n);
    SetLength(tab,n); 

    // enregistrement des valeurs 
    for i:= 1 to n do 
        begin 
            WriteLn('entrez nombre ', i);
            ReadLn(tab[i]);
        end;

    //  determination du plus grand nombre
    max := tab[1];
    for i:= 1 to n do 
        begin
            if max < tab[i] then 
                max := tab[i]
        end; 
    WriteLn('le plus grand element du tableau est: ', max);


end.