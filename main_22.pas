// ecrire un code qui permet d'affciher le le nombre correspondant à un  jour 

program jourJ; 
uses crt; 

type Dj = (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);

var 
    n:integer;
begin
    WriteLn('entrer un nombre: '); 
    ReadLn(n);
    Write('le jour correspondant au chiffre: ', n, ' est: ',Dj(n-1)); // Affiche "jeudi"
end.
