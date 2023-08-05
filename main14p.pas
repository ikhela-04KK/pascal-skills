// creer un programme qui permet d'inscrire un candidat et on l'assigne un numéro aléatoire de telle sorte à pouvoir trier ces numéro pour avoir le gagnant d'un lot celui qui 1er ressor avec le lot

program tb_ls;
uses crt;

// instanciation des enregistrements
type
    Tcandidat = record
    num: integer;
    nom: string;
end;

// initialisation des variables
var
    TTcandidat:array [1..100] of Tcandidat;
    i,taille:integer;
    candidat: string;
    arret : Boolean;
    inv: integer;

// debut de l'algorithme
begin
    // phhase d'initialisation
    taille :=1;
    while taille<100 do
        begin
            WriteLn('entrer un candidat');
            ReadLn(candidat);
            if candidat ='' then
                break;
            TTcandidat[taille].num := random(100);
            TTcandidat[taille].nom := candidat;
            taille := taille+1;
        end;

    // phase de tri
    arret := true;
    while arret do
        begin
            arret := false;
            for i:= 1 to taille-2 do
                begin
                    if TTcandidat[i].num > TTcandidat[i+1].num then
                      begin
                        inv := TTcandidat[i].num;
                        TTcandidat[i].num := TTcandidat[i+1].num;
                        TTcandidat[i+1].num := inv;
                        arret := true;
                      end;
                end;
        end;
    for i:= 1 to taille-1 do
        WriteLn(TTcandidat[i].num , '    ', TTcandidat[i].nom);
end.

// essayer de faire un tri avec des valeurs initialisés ---OK
// essayer de faire un trie avec setLenght comme j'ai vu dans le chapitre précedent ---> utilisation de setLenght --> OK
// tu dois bosser et implementer le maximum de trie possible ----> avec différentes méthodes je vais le faire tout de suite
// essayer de mieux comprendre cette histoire de type ---> trie plus type
//  tu dois faire des exercice sur les fonctions et procedure --> trie plus fonction plus procedure plus type
//  tu dois aussi connaître les méthodes qui peuvent te permettre d'aller plus vite que possible en pascal ---> rechercher maintenant
// essayer de faire aussi ces mêmes implementations en c --> plus tard