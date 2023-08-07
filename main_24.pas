// ecrire un programme qui resoudre une équation du second dégré

program equation;
uses crt; 

var 
    a,b,c:real;
    D,x1,x2:real;

begin 
    WriteLn('entrer a: , b: , c: ');
    ReadLn(a,b,c); 
    if a = 0 then 
        begin
            if b = 0 then 
                begin
                    if c = 0 then 
                        write('S = R')
                    else
                        write('Pas de solution ');
                end
            else
                WriteLn('S = ', (-c/b):0:2);
        end
    else        
        begin 
            D :=sqr(b)-(4*a*c);
            if D>0 then
                begin
                    x1 := ((-b-sqrt(D))/(2*a));
                    x2 := ((-b+sqrt(D))/(2*a));
                    WriteLn('x1 = ',x1:0:2 , ' et ', 'x2 = ',x2:0:2);
                    // WriteLn('(x ',-x1:0:2,')(x ',-x2:0:2,')');
                end
            else if D = 0 then 
                WriteLn('S = ', (-b/(2*a)):0:2)
            else 
                WriteLn('il n y a pas de solution')
        end;
end. 