// ecrire un programmme  qui repète  fonrce l'ecriture d'un nombre avec Repeat until 
Program force_number;
uses crt; 

// declaration des  variables 
var a:integer;
// const entry_number = 30;

begin 
    writeln('entrer le nombre: ');
    repeat
        readln(a)
    until a=Random(2);
    writeln('merci!!  de m avoir écouter');
end.