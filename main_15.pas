// creer un programme qui permet d'inscrire un candidat et on l'assigne un numéro aléatoire de telle sorte à pouvoir trier ces numéro pour avoir le gagnant d'un lot celui qui 1er ressor avec le lot 

program tb_ls; 
uses crt; 

// instanciation des enregistrements 
type 
    Tcandidat = record 
    num: integer; 
    nom: string; 
end;

var 
    TTcandidat:array [1..10] of Tcandidat; 
    i,taille:integer;
    candidat: string;

begin 
   write('bonjour');

    // for i:= 1 to taille do 
    //     WriteLn(TTcandidat[i].num , '    ', TTcandidat[i].nom);
end. 