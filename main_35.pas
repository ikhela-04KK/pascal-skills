// progra
program parf;
uses crt,math; 

var
    n,s,d:integer;

begin 
    WriteLn('entrez un nombre: ');
    ReadLn(n);
    // WriteLn((n)**1/2);
    s := 1;
    d := 2;
    while d < power(n, 1/2) do 
        begin 
            if (n mod d) = 0 then 
                s := (s+d) + (n div d); 
            d := d+1;       
        end;

    if (s = n) then 
        WriteLn('Nombre parfait')
    else 
        WriteLn('Nombre non parfait');
end.

// en arithmétique , nombre parfait est un entier naturel égal à la moitié de la somme de ses divsieurs ou encore à la somme de ses divseurs stricts. Plus formellement, nombre parfait n est un entier tel que r(n) = 2n est la somme des diviseurs positifs de n

