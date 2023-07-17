// creer un programme qui implemente setlength et voir comment l'utiliser en situation réel 

program usesSetenght; 
uses crt; 

var 
    tab: array of integer;
    i,n: integer; 

begin
    Writeln('entrer la longueur que vous souhaitez attribuer au tableau: ??');
    ReadLn(n);
    SetLength(tab, n); // permet d'atrribuer une longueur au tableau sans passer pas de long de chemin d'attribution de longue variable 
    for i:= 1 to Length(tab) do 
        tab[i] := random(100);

    for i:=1 to Length(tab) do 
        writeln(tab[i]);  



end.