Program test5;
Uses Crt;


var nom:string;

Procedure Saisie (nom : String);
    Begin
        Write('Entrez votre nom : ');
        ReadLn(nom);
    End;

Procedure Affichage (info : String);
    Begin
        WriteLn('l''element koffi kan ', info);
    End;

// Var chaine : String;

BEGIN
  ClrScr;
  nom:= 'marc';
  Saisie(nom);
  Affichage( nom);
END.