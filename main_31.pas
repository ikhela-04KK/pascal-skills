// ce code permet de calculer et d'afficher année par année le montant du capital et des intérêts acquis pour une somme S.
program cap_int; 
uses crt,math;
// uses crt; 
var 
    cap,taux_int:Real; 
    n:integer;
    i:integer; // disponible dans tous l'ensemble du programme 
    new_file : Real;
    aa:Real;


procedure calcul_cap_int(a,b:real; c:integer);
    var 
        interet:Real;
    begin
        aa:= a;
        for i:= 1 to c do 
            begin 
                // interet:= (a * b) / 100;
                // a := a + interet;
                WriteLn('le montant de l interet a la fin de l annne ', i , ' est ', (aa*b/100):0:0); 
                aa :=a*power((1+b/100),i);
                WriteLn('le montant du capital a la fin de l annee ', i, 'est ', aa:0:0);
                // WriteLn('le montant de l interet a la fin de l annne ', i , ' est ', interet:0:0);
                // WriteLn('le montant du capital a la fin de l annee ', i, 'est ', a:0:0);
            end;
        
    end;

begin 
    WriteLn('entrez le capital initial: ');
    ReadLn(cap);
    WriteLn('entrez le taux d interet: ');
    ReadLn(taux_int);
    WriteLn('entrez le nombre d anne: ');
    ReadLn(n);
    calcul_cap_int(cap, taux_int,n);
end.


