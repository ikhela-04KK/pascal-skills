// creer une procedure qui affiche un nombred'étoile en fonction entré dans le proompt 
// creer un groupe de 2étoiles 25 fois 
program  sous_routine; 
uses crt; 

procedure ligne(n:integer);
    var j:integer;

    begin 
        for j:=1 to n do 
            write('*');
            writeln;
    end;

// programme principale 
var i:integer;
    long_n:integer;
begin 
    writeln('entrer la valeur de n pour le nombre d etoile  que tu veux afficher');
    readln(long_n);

    for i:=1 to 25 do// c'est le nombre de groupe de n etoile que tu veux afficher 
        ligne(long_n);
end.