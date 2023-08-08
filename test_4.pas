// tester les differentes valeurs de certaines fonctions 
program test4; 
uses crt; 

var 
    tab:array[1..3] of integer;
begin 
    tab[1]:= 41;
    tab[2]:= 48;
    tab[3] := 7;
    WriteLn(succ(tab[2]):10); {low et high retourne l'index le petit index et le grand index 
                            pred(tab[2]) renvoie la valeur antérieur de l élément 48 qui 47
                            succ(tab[2] renvoie la valeur d après qui est 49)
                            }
     



end.