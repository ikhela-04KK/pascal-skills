// ecrire un programme en Pascal qui permet de saisir une liste de personnes avec leur nom et leur âge, puis de trier cette liste par ordre croissant d'âge =. Afficher ensuite la liste triée. 

program triePlusAge;
uses crt; 

type names  = (koffi, kan, marc, ephrem, lydie, jeremie, antoine, sabrina, kounion, sanemi, rayane,paola, saga, dago, lombert, jores,pouvant, junior,desmont, oprah);

type 
    person = record
    nom : names; // specifier pour pouvoir utilisé le type énumération 
    age: integer; 
end; 


perso = array of person;  // condense l'enregistrement en un type utilisable par les fonctions et procedure et variables 
 // faites comme ça pour pouvoir mettre un tableau dans une fonction
//  creation d'une fonction qui enregistre les noms au préalable et qui arrête l'enregistrement lorsqu'on appui sur 0; la fonction doit retourner le tableau pour fonctionner
// persons : array of person, est ce qu'in peut implementer la un tableau directement dans la fonction 

// creer une fonction qui evite les doublons
function verifName(nbPers:integer; persons:perso ; randName:names):names;
    var 
        i:integer;
        found : Boolean;
        begin
            for i:= 1 to nbPers do
                    begin
                        if persons[i].nom = randName then
                            begin
                                found := true;
                                break;
                            end;
                        end;
                    if found then
                        persons[i].nom := names(random(nbPers));
            // verifName := persons[i].nom
    end;


function savPers(nbPers:integer):perso; // l'élément var devant la variable n'est pas obligatoire 
    var
        persons:perso;
        i:integer;
        randName: names;
        // found: boolean;
        // name :names;  

    begin 
        setLength(persons,nbPers);
        for i:= 1 to nbPers do 
            begin
                // WriteLn('entrer personne ', i);
                // ReadLn(persons[i].nom);
                // found := False;
                randName:=names(random(nbPers));
                randName:=verifName(nbPers,randName);
                persons[i].nom := randName;
                WriteLn('vous avez entrez le nom de ', persons[i].nom, ' entrez maintenant son age ');
                ReadLn(persons[i].age);
            end;
        savPers := persons;
    end;

// implementation d'une fonction de tri pour trier l'âge 

procedure affPers(var personne:perso; nbPers:integer);
    var 
        i,inv:integer;
        arret: Boolean;

    begin 
        arret := true;
        while arret do 
            begin 
                arret := false;
                for i:= 1 to nbPers-1 do // mettre toujours -1 pour eviter qui ne trie pas le 1er 
                    begin 
                        if personne[i].age > personne[i+1].age then 
                            begin 
                                inv := personne[i].age;
                                personne[i].age := personne[i+1].age;
                                personne[i+1].age := inv; // faites attention aux égales2
                                arret := true;
                            end;
                    end;            
            end;
        for i:= 1 to nbPers do 
            writeln('inscrit ', i, '| nom: ', personne[i].nom, ' | age: ', personne[i].age);
    end;

var 
    nbPers: integer;
    personnes:perso; 

begin 
    WriteLn('entrer le nombre de personnes que vous voulez enregistrez ?');
    ReadLn(nbPers);
    personnes := savPers(nbPers);
    affPers(personnes,nbPers); 
end.

