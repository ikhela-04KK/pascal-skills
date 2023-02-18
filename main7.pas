// utiliser les tableaux avec les types dynamiques  

// essaye de creer des snippets danns un language de programmation 
// est ce qu'on peut appeler un fichier dans un autre comme un module 

//
Program dec_tab; 
uses crt; 

type tjour = (lundi, mardi ,mercredi , jeudi , vendredi, samedi, dimanche);

var 
    tj:tjour;
    nh_cours: array[tjour] of integer; 

begin
    for tj:=lundi to samedi do
        begin
            writeln('entrer l heure de cours que tu as le ', tj);
            readln(nh_cours[tj]);
            writeln;
        end;

    for tj:= lundi to samedi do
        writeln(nh_cours[tj],' heure de cours les ', tj); 
end.

