program triePlusAge;
uses crt; 

type 
  names = (koffi, kan, marc, ephrem, lydie, jeremie, antoine, sabrina, kounion, sanemi, rayane, paola, saga, dago, lombert, jores, pouvant, junior, desmont, oprah);

  person = record
    nom: names;
    age: integer;
  end;

  perso = array of person;

// Fonction qui vérifie si un nom existe déjà dans le tableau et retourne un nouveau nom s'il y a un doublon
function verifName(nbPers: integer; persons: perso; randName: names): names;
var 
  i: integer;
  found: Boolean;
begin
  repeat
    found := False;
    for i := 1 to nbPers do
    begin
      if persons[i].nom = randName then
      begin
        found := true;
        break;
      end;
    end;

    if found then
      randName := names(random(20));
  until not found;
  verifName := randName;
end;


// Fonction qui enregistre les personnes et retourne le tableau
function savPers(nbPers: integer): perso;
var
  persons: perso;
  i: integer;
//   randName: names;
begin 
  setLength(persons, nbPers);
  for i := 1 to nbPers do 
  begin
    // randName := names(random(20));
    // randName := verifName(i - 1, persons, names(random(20))); // Passer i-1 car on vérifie avant d'ajouter la nouvelle personne
    persons[i].nom := verifName(i - 1, persons, names(random(20)));
    WriteLn('Entrez l''age de ', persons[i].nom);
    ReadLn(persons[i].age);
  end;
  savPers := persons;
end;

// Procédure de tri par ordre croissant d'âge
procedure triPlusAge(var personne: perso; nbPers: integer);
var 
  i, j: integer;
  temp: person;
begin 
  for i := 1 to nbPers - 1 do
  begin
    for j := i + 1 to nbPers do
    begin
      if personne[i].age > personne[j].age then 
      begin 
        temp := personne[i];
        personne[i] := personne[j];
        personne[j] := temp;
      end;
    end;
  end;
end;

// Procédure d'affichage des personnes triées par âge
procedure affPers(const personne: perso; nbPers: integer);
var 
  i: integer;
begin 
  for i := 1 to nbPers do 
    writeln('Inscrit ', i, ' | Nom: ', personne[i].nom, ' | Age: ', personne[i].age);
end;

var 
  nbPers: integer;
  personnes: perso; 

begin 
  WriteLn('Entrez le nombre de personnes que vous voulez enregistrer:');
  ReadLn(nbPers);
  personnes := savPers(nbPers);
  triPlusAge(personnes, nbPers);
  affPers(personnes, nbPers); 
end.
