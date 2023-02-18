Program cercle;
Uses crt;
var r,p:real;
const pi =3.14;
// utiliser round(x) pour arrondir et trunc(x) pour truncer 
// ,'Hack NF',FiraCode NF  Mono',Lekton Nerd Font Mono',Consolas
begin 
    writeln('Debut du calcul du perimètre');
    write('entrer le rayon du cercle: ');
    read(r);
    p:=2*pi*r;//  n'oublie pas  l'affectation en pascal se fait :=

    writeln('Pc = ',Trunc(p));
    readln;
end.