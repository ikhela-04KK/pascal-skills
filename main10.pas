// creer une procedure qui fait le factorielle 

program sous_routine; 
uses crt; 

function factorielle(n:integer):integer;
    begin
        if (n<=1) then 
            factorielle:=1
        else 
            factorielle:=n*factorielle(n-1)
    end;
// programme principale 

var nb:integer; 
begin 
    writeln('entrer un nombre: ');
    readln(nb);
    writeln('le factorielle de ', nb  , ' est:  ', factorielle(nb));
end.
