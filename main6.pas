// declaration de nouveau type, pourplus de flexibilité 
Program dec_type; 
uses crt; 

type tjour  = (koffi, kan, marc, ephrem, lydie, jeremie, antoine, sabrina, kounion, sanemi, rayane,paola, saga, dago, lombert, jores,pouvant, junior,desmont, oprah);
// combien d'élément peuventprendre les types que l'on crée soit même
// ttjour =lundi..vendredi
// mois = 1..12
// tettre = 'a'..'z'
// essayer de voir si je peux combiner des couples de valeurs dans ce même exemple 

// comment  savoir le type en pascal
var jour1,jour2:tjour;
    // tab: array[lundi..dimanche] of tjour;

begin 
    randomize;
    writeln(tjour(random(20)));

    //essayer de  boucler dessus 
    // write(tb);
    
end.

