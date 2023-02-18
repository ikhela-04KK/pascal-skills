// declaration de nouveau type, pourplus de flexibilité 
Program dec_type; 
uses crt; 

type tjour  = (lundi, mardi, mercredi, jeudi,vendredi, samedi,dimanche);
// combien d'élément peuventprendre les types que l'on crée soit même
// ttjour =lundi..vendredi
// mois = 1..12
// tettre = 'a'..'z'
// essayer de voir si je peux combiner des couples de valeurs dans ce même exemple 

// comment  savoir le type en pascal
var jour1,jour2:tjour;

begin 
    jour1:= mercredi;
    jour2:=samedi; // un type imcopatible lorsque j'ai essayé de mettre jour2:=1
    writeln(jour2);

    //essayer de  boucler dessus 

    for jour1:=lundi to vendredi do 
        begin
             writeln(jour1);
        end;
end.

