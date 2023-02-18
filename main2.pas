// ecrire un programme qui permet de reperter le nom de l'utilisateur et le mot de passe  
Program bd_uti;
uses crt; 

var mdp:integer; 
    name:string;
    const sv_name ='ikhela-04KK';
    const sv_mdp = 2003;

//REPEAT UNITL  

begin 

    writeln('entrer le mot de passe que vous avez sauvegarder dernierement: ');
    readln(name);
    writeln('entrer  votre mot de passe: ');
    readln(mdp);


    while (sv_name <> name) or (sv_mdp <> mdp) do
        begin
            writeln('vous avez rentrez un mot de passe incorrecte');
            writeln('entrer à nouveau le mot de passe : ');
            readln(name);
            writeln('entrer votre mot de passe: ');
            readln(mdp);
        end;
    writeln('le mot de passe est correcte!!');
end.