// ecrire un programme en Pascal qui permet de saisir une liste de personnes avec leur nom et leur âge, puis de trier cette liste par ordre croissant d'âge =. Afficher ensuite la liste triée. 

program triePlusAge;
uses crt; 

type 
    person = record
    nom : string; 
    age: integer; 
end; 
perso = array of person; // faites comme ça pour pouvoir mettre un tableau dans une fonction
//  creation d'une fonction qui enregistre les noms au préalable et qui arrête l'enregistrement lorsqu'on appui sur 0; la fonction doit retourner le tableau pour fonctionner
// persons : array of person, est ce qu'in peut implementer la un tableau directement dans la fonction 

function savPers(var nbPers: integer):perso; 
    var
        persons:perso;
        i:integer;  
    begin 
        setLength(nbPers, persons);

        for i:= 1 to length(persons) do 
            begin
                WriteLn('entrer personne ', i);
                ReadLn(persons[i].nom);
                WriteLn('vous avez entrez le nom de ', persons[i].nom, 'entrez maintenant son âge ');
                ReadLn(persons[i].age);
            end;
        savPers := persons;
    end;

procedure affPers(var personne:person);
    var 
        i:integer; 
    begin 
        for i:= 1 to Length(personne) do 
            writeln('inscrit ', i, '| nom: ', personne[i].nom, 'age: ', personne[i].age);
    end;

var 
    nbPers: string;
    personnes :person; 

begin 
    WriteLn('entrer le nombre de personnes que vous voulez enregistrez ?');
    ReadLn(nbPers);
    personnes := savPers(nbPers);
    affPers(personnes); 
end.

