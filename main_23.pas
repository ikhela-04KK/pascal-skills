// écrire un algorithme qui teste si une année est bissextile ou nom
// n div 4 =0  non par 100  ou si elle est n div 400

program YearBix; 
uses crt; 

var 
    n:integer; 

begin 
    WriteLn('entrer une année '); 
    ReadLn(n); 


    if ((n mod 4 = 0) and ( n mod 100 <> 0)) or ( n mod 400 = 0) then  // faire attention au parenthèse 
        WriteLn(n , ' est une année bissextile ')
    else 
        writeln(n, ' n est pas une année bissextile'); 
end.h