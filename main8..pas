// creation des enregistrement , permet de creer des tableaux avec dufférentes valeurs 

program dec_tb_dyn;
uses crt; 

// declaration de l'enregistrement
type 
    chaussure= RECORD
                marque: string;
                prix:integer;
                taille:char
               END;

var 
    pairs : chaussure;

begin 
    write('entrer le nom de marque de la chaussure: ');
    readln(pairs.marque);

    write('entrer le prix en XOF: ');
    readln(pairs.prix);

    write('entrer la taille de la chaussure : M,S,L,X,XL,XXL');
    readln(pairs.taille);
end.

 