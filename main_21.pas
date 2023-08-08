// ecrire unn algorithme qui permet d'afficher la valeur absolue de la différence 
program vabS; 
uses crt; 

// function vabD(a:integer; b:integer): integer;
//     // var 
//     //     diff:integer; 
//     begin
//         // if a>b then 
//         //     diff := a-b
//         // else 
//         //     diff := b-a;
//         // vabD := diff;
//         
//     end;

var 
    a,b:integer;
    // diff:integer;

begin 
    WriteLn('entrer la valeur de a et b ');
    ReadLn(a,b);
    // WriteLn(a, '-', b, ' = ', vabD(a,b));
    WriteLn(a, '-', b, ' = ',Abs(a-b));
end.