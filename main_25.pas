// selon le choix effectu à partir d'une menu affiché à l'écran , on désire calculer la somme ou le produit ou la moyenne ou chercher le minimum de ces trois nombres

program Menu; 
uses crt; 

var 
    a,b,c,x,inv:integer; 

begin 
    WriteLn('------------------------MENU------------------------');
    WriteLn('1------------------------somme------------------------');
    WriteLn('2------------------------produit------------------------');
    WriteLn('3------------------------Moyenne------------------------');
    WriteLn('4------------------------Minimum------------------------');
    WriteLn('5------------------------Maximum------------------------');
    WriteLn;
    WriteLn('entrer Votre choix______  ');
    Read(x); 
    WriteLn(' saisir trois nombre: ');
    read(a,b,c);

    inv := a; 
    case x of 
        1 : WriteLn('l addition de ', a, '+', b, '+', c, ' = ', a+b+c);
        2 : WriteLn('la multiplication de ', a, '*', b, '*', c, ' = ',a*b*c);
        3 : WriteLn('la moyenne est: ', ((a+b+c) div 3));
        4:begin
            if b<inv then  
                WriteLn('minimum est ',b );
            if c<inv then
                WriteLn('le minum est ', c);
            end;
        5:begin 
            if b>inv then 
                WriteLn('la maximum est: ', b);
            if c> inv then 
                WriteLn('la maximum est: ',c);
            end;
        else WriteLn(' Invalid number ');
    end;
end.