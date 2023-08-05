// ecrire un programme qui permet d'éffectuer le trie dans l'ordre decroissant 

program ordDr; 
uses crt; 

//  initialisation des variables 
var 
    i,n:integer; 
    tab: array of integer; 

begin 
    WriteLn('entrer la longueur du tableau: ');
    ReadLn(n); 

    //  entrer les valeurs dans le tableau 
    for i:= 1 to n do 
        WriteLn(tab[i]); 
        ReadLn(tab[i])




end.