program test3;
uses crt; 

var
    phrase :string; 
    Nom:string;

begin 
    Nom:= 'marc';
    phrase := 'b' + chr(64)+Nom;// CHR permet de convertir un code asciien son caractère 
    WriteLn(phrase);
end.

// 