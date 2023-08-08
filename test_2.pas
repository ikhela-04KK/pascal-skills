// utilisation de keyPress 
program ex2;
uses crt; 

Var 
    i:integer;
    x:Char;

const bornSup = 1000;
begin 
    i:=0;
    repeat
      WriteLn(sqrt(i));
      Inc(i); // on ne pas lire Inc(i)
      WriteLn('i=',i);
    until (i = bornSup) or KeyPressed;
    x:=readKey; // permet d'afficher une commande taper au clavier 
    WriteLn(x);
end. 
