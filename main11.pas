program Feu_tri;
uses crt;
var 
    rouge,orange,vert:boolean;
    i:integer;

procedure feuTricolore(rouge:boolean; orange:boolean; vert:boolean);
    begin 
        if (rouge=true) then
            writeln('obligatiob d arrêt')
        else if (orange=true) then
            writeln('peut passer')
        else if (vert=true) then
            writeln('permission de passer')
        else 
            writeln('aucune indication ')
    end;

procedure CycleFeuTri(trouge:integer; torange:integer; tvert:integer);
    begin 
        while true do 
            begin
                for i:=1 to trouge do
                    feuTricolore(true,false,false);
                for i:=1 to torange do
                    feuTricolore(false,true,false);
                for i:=1 to tvert do 
                    feuTricolore(false,false,true)
            end;
    end;

begin 
    CycleFeuTri(100,150,200);
end.

