// creer un programme qui permet d'inscrire un candidat et on l'assigne un num�ro al�atoire de telle sorte � pouvoir trier ces num�ro pour avoir le gagnant d'un lot celui qui 1er ressor avec le lot

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

// essayer de faire un tri avec des valeurs initialis�s ---OK
// essayer de faire un trie avec setLenght comme j'ai vu dans le chapitre pr�cedent ---> utilisation de setLenght --> OK
// tu dois bosser et implementer le maximum de trie possible ----> avec diff�rentes m�thodes je vais le faire tout de suite
// essayer de mieux comprendre cette histoire de type ---> trie plus type
//  tu dois faire des exercice sur les fonctions et procedure --> trie plus fonction plus procedure plus type
//  tu dois aussi conna�tre les m�thodes qui peuvent te permettre d'aller plus vite que possible en pascal ---> rechercher maintenant
// essayer de faire aussi ces m�mes implementations en c --> plus tard