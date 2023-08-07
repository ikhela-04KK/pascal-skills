// creer des tickets de cinéma aléatoire et leur attribuer à des propriétaire de façon aléatoire, tu dois attribuer 20 tickers à 20 tickets de façon aléatoire. 

// shinzou = coeur 
// sasageyo = sacrifice

program tickCin; 
uses crt; 

type 
    numTick = (A324, B246, EB55, D799, MA474, NM339, O3389, P34E8, Q118Z,Z1OL,F324, L246, CB55, X799, YA474, GM339, H389, I34E8, J118,K1OL);  // listes des tickets disponibles

    names  = (koffi, kan, marc, ephrem, lydie, jeremie, antoine, sabrina, kounion, sanemi, rayane,paola, saga, dago, lombert, jores,pouvant, junior,desmont, oprah); // listes des noms disponibles pour l'attribution des tickets 

    person = record
    nom : names;
    age : integer; 
    tick : numTick;
end;

perso = array of person;  // initialisation du type personne

// fonction qui permet de verifier qu'une unique personne est la seul à reçevoir à ticker
function verifName(nbPers:integer; persons:perso; randName:names):names;
    var
        i:integer; 
        found: Boolean;
    begin 
        repeat
            found := False;
            for i:=1 to nbPers do 
                begin 
                    if persons[i].nom = randName then 
                        begin 
                            found := True;
                            Break;
                        end;
                end;
            if found then 
                randName := names(random(20));
        until not found;
        verifName := randName; 
    end;

// fonction qui permet de verifier qu'il n' y a pas de doublons dans le tableau des tickets
function verifTick(nbPers:integer; persons:perso;randTick:numTick):numTick;
    var 
        i:integer; 
        found: Boolean;
    begin
        repeat
            found := false;
            for i:=1 to nbPers do 
                begin
                    if persons[i].tick = randTick then 
                        begin  
                            found := true;
                            Break;
                        end;
                end;
            if found then 
                randTick := numTick(random(20));
        until not found;
        verifTick := randTick;
    end;

// function qui permet de saisir l'âge , d'attribuer des tickets de valeurs aléatoires à des noms aléatoires
function givTicksToName(nbPers: integer):perso;
    var 
        i:integer;
        persons: perso;
    begin
        SetLength(persons, nbPers);
        for i:= 1 to Length(persons) do 
            begin
                persons[i].nom := verifName(i-1, persons, names(random(20)));
                persons[i].tick := verifTick(i-1, persons, numTick(random(20)));
                WriteLn('Entrer l age de ', persons[i].nom, ' qui est ticket ', persons[i].tick);
                ReadLn(persons[i].age);
            end;
        givTicksToName := persons;
    end;

// function qui permet de trier l'âge 
procedure triAge(nbPers:integer ; personne:perso);
    var 
        i,j:integer;
        temp:person; 
    begin
        for i:=1 to nbPers - 1 do 
            begin 
                for j := i+1 to nbPers do 
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

// afficher toutes les valeurs 
procedure affPers(nbPers:integer ; personne:perso);
var 
    i:integer;
begin
  for i:= 1 to nbPers do 
    writeln( i, ' | Nom: ', personne[i].nom, ' | Age: ', personne[i].age, ' | Tickets: ', personne[i].tick);
end;

// programme principald
var 
    nbPers:integer;
    personnes : perso;

begin
    WriteLn('Combien de personnes voulez vous enregistrez: ');
    ReadLn(nbPers);
    personnes:=givTicksToName(nbPers);
    // write(Length(personnes));
    triAge(Length(personnes) , personnes);
    affPers(Length(personnes), personnes);

end.
