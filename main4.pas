// Faire un programme qui calcule la moyenne de N nombres. N doit être demandé par un READLN.

program moyN; 
uses crt; 

var n:integer;
    moyenne:real;
    note:integer;
    long_note:integer;
    som:integer;

begin 
    som:=0;
    writeln('entrer le nombre de note que vous voulez saisie: ');
    readln(long_note);
    for n:=1 to long_note do
        begin 
            write('entrer  note ', n,': ');
            readln(note);
            som:=som+note;
        end;
        moyenne:= som /long_note;
        writeln('la somme est ',som);
        writeln('la moyenne des ',long_note, ' est: ', trunc(moyenne));
end.