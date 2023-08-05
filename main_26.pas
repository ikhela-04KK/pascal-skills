// trier un tableau dans l'ordre decroissant et afficher la table de multiplication de chaque élémént du tableau 
program trie; 
uses crt; 

type 
    tab = array of integer;

// initialisation des valeurs array et des valeurs similaire pour l'ensemble des fonction
var 
    i,j:integer; 
    temp:integer; 
    n:integer;

    // fonction qui permet d'enregistrer les valeurs
    function eTab(tab:tab):tab;
        begin
            for i:= 1 to n do 
                begin
                    WriteLn('entrer nombre ', i);  
                    Read(tab[i]); 
                end;
            eTab := tab;
        end;

    
    //function qui permet  trier dans l'ordre decroissant 
    function decTab(tab:tab):tab;
        begin 
            for i:= 1 to n-1 do 
                begin 
                    for j:= i+1 to n do 
                        begin 
                            if tab[i] < tab[j] then 
                                begin 
                                    temp := tab[i];
                                    tab[i] := tab[j]; 
                                    tab[j]:= temp;
                                end;
                        end;
                end;
            decTab := tab;
        end;

    //function qui permet d'afficher les éléments avec leur multiplication
    procedure pTab(tab:tab);
        begin
            for i:= 1 to n do 
                begin
                    WriteLn; 
                    WriteLn(' TABLE DE MULTIPLICATION DE ', tab[i]); 
                    for j:= 1 to 10 do  
                        WriteLn(tab[i],' * ',j, ' = ', tab[i]*j);
                    WriteLn;
                end;
        end;

    // afficher un tableau inversé avec ces valeurs 
    function iTab(tab:tab):tab; 
        begin
            WriteLn; 
            for i:= 0 to n-1 do 
                WriteLn(' nombre ', n-i, ' est : ', tab[n-i]);
            WriteLn;
        iTab:=tab;
        end;

// function du programme principal
var 
    tabs:tab; // duplicate value: tab


begin 
    WriteLn('entrer la longueur du tableau: ');
    ReadLn(n);
    SetLength(tabs, n);
    pTab(decTab(iTab(eTab(tabs))));
end.
