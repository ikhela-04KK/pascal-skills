// ecrire un programme qui permet de savoir si un mot est un pallindrome ou pas 
program pall; 
uses crt; 

var 
    rep,cal:char;
    lmot,i:integer;
    mot,motc:string;

begin 
    WriteLn('VOULEZ VOUS SAVOIR SI VOTRE MOT EST UN PALINDROME ? ');
    ReadLn(rep);
    while (rep = 'O') or (rep ='o') do 
        begin 
            Writeln('entrz votre mot: ');
            ReadLn(mot);
            lmot := Length(mot);
            motc := '';
            for i:= 1 to lmot do 
                begin 
                    motc := mot[i]+motc; //placer l'interation du mot en premier pour pouvoir  inverser les mots 
                    // WriteLn(motc);
                end;
            if mot = motc then 
                WriteLn('le mot est un palindrome')
            else 
                WriteLn('le mot n est pas un palindrome');
            
            WriteLn('UN AUTRE MOT');
            ReadLn(rep);
        end;
end.