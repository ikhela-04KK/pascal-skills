// Faire un programme simulant une calculatrice à 4 opérations en utilisant CASE pour le choix de l'opération à effectue
program calculatrices;
uses crt; 

procedure calculatrice(choice:integer ; a:integer; b:integer);

    var     
        resultat:integer;
    begin
        if b = 0 then 
            begin 
                WriteLn('la division n est pas possible / essayez un autre opérateur: ');
                // calculatrice(choice, a, b); 
            end;
        case choice of 
            1:resultat:=a+b;
            2:resultat:=a-b;
            3:resultat:=a*b;
            4:resultat:=a div b;
        end;
        writeln('le resultat de l operation choisir est: ', resultat);
    end;
var 
    choice:integer;
    a,b:integer;
begin 
    writeln('entrer votre choix: \n entrer 1-addition \n 2-soustraction \n 3-multiplication \n 4-division '); 
    readln(choice); 
    writeln('entrer deux nombres: ');
    readln(a,b);
    calculatrice(choice, a , b);
end.