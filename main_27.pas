// ecrire un algorithme qui permet de determiner les chances de remporter le tiercets, le quartets , et les autres impôts 
program timeSkip;
uses crt; 

var 
    i:integer; 
    n,p:integer;
    x,X1,Y1,y:Real;
    // y:integer;
    //  si tu as affaire à une femme qui ne comprend pas que tu es dans le proccessus met la de côté
// fonction pour X
function forX(n:integer ; p:integer):Real;
    begin 
        x := n;
        for i:= 1 to p-1 do
            begin 
                WriteLn(i, '----', n-i, '----', n, '----', x);
                    x := x * (n-i);
                end;
        forX := x;
    end;
// fonction pour Y

function forY(X1:Real; p:integer):Real;
    var 
        p1:integer;
        
    begin
        p1:=1; 
        // y :=0;
        for i:=1 to p do  
            p1:= i*p1;a 
        // WriteLn(p1, 'fact');
        y := X / p1;
        forY := y;
    end;

begin
    // x:=1;
    WriteLn(' Quelle est le nombre de chevaux partant: ');
    ReadLn(n); 
    WriteLn(' Quelle est le nombre de chevaux joués: ');
    ReadLn(p); 
    WriteLn;
    X1 :=forX(n,p); // retourne la valeur de x 
    Y1 := forY(X1,p);
    WriteLn('la chance sur X de gagner est : ',X1:0:0);
    WriteLn('la chance sur Y de gagner est : ', Y1:0:0);
end.