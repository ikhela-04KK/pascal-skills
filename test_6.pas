program test6;
uses crt; 

type 
    alpha = 'A'..'Z';
    Cent = 1..100;
    name = (alexia, leonord);

var 
    alphabet : alpha;
    nombre :Cent;
    names :name;

begin
    // cent
    alphabet := 'U';
    nombre := 14;
    names := alexia;
    Inc(alphabet); // il écremente d'une lettre 
    WriteLn(succ(alphabet));  // destiné à être lire ou initialiser à une variable afin de l'afficher 
    WriteLn(alphabet);
    WriteLn(Ord(alphabet));
    WriteLn(ord(nombre)); // JE CROIS QU4IL AFFICHE L'INDEX DE LA VARIABLE DANS L INTERVALLE 
    inc(names);
    WriteLn(names);
    WriteLn(ord(names)); // affiche l index de lemenet qui est dans le type enumeré
    WriteLn(succ(name(0))); // appliquer ça directement au type enuméré
end.
//  un type enuméré consiste à declarer une liste de valeurs possibles associées à un type 