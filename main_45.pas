// calcul la moyenne de trois notes en utilisant la structure fonction 
program calculMoy;
uses crt; 

var 
    a,b,c:real;
    moy:real;

function moyenne(e,f,g:real):real;
    var som:Real;
    begin 
        som := e+f+g;
        moy := som / 3;
        moyenne := moy;
    end;

begin 
    WriteLn('entrez les 3 notes: ');
    Readln(a,b,c);
    moy := moyenne(a,b,c);
    WriteLn('la moyenne des trois notes est = ', moy:0:0);
end.

//* copy('ABCDEFG',1,2)  
// *{ s ='AB'}
// * delete(s,2,3) 
// * s = AEF
// * str(123,s) converti 123 en '123'
// * val('123',i)
// * val('1.23',r) permet de convertir un nombre en decimal 
// upcase(k) permet de convertit des miniscule en majucule 
//  chr cette fonction renvoie le caractère d'indice n de la table ascii 
// ord renvoie l indice (en byte) correspondant au caractère k dans la table ascii
// insert(s1,s2,i) insert la chaine s1 dans la chaine s2
// val(s,n,e) 