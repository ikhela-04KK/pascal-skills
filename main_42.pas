// algorithme coupe du monde 
program coupe; 
uses crt;

var 
    tick:integer;
    nbticket,nbfaux,i:integer;
    prix,mtantPrej:real;
    ref :string[20]; // on peut specifier la taille des chaînes de caractères

// fonction qui permet d'extraire les chaînes de caractères
function extract(n:integer;ch:string):String;
    var 
        rch:string;
    begin
        rch := ''; 
        for i:= 1 to n do 
            begin 
                rch := rch+ch[i];
                // WriteLn(rch);
            end;
        extract := rch;
    end;

begin 
    mtantPrej := 0;
    nbfaux := 0;

    WriteLn('entrez le nombre de ticket a verifier: ');
    ReadLn(nbticket);
    tick := nbticket; //ajout pour plus de style 
    while nbticket>0 do
        begin
            // nbticket := nbticket-1; correcte mais peut faire mieux 
            Dec(nbticket);
            WriteLn('entrer les caracteres du tickets ',tick-nbticket,' : '); 
            ReadLn(ref);
            // appeler la fonction extract(2,ref);
            if extract(2,ref) <> 'CM' then
                begin
                    WriteLn('Entrez le prix du ticket ', ref);
                    ReadLn(prix);
                    //** nbfaux := nbfaux +1; // correcte mais pet faire mieux 
                    Inc(nbfaux);
                    mtantPrej := mtantPrej + prix;
                end;
            // nbticket := nbticket-1;
        end;
    WriteLn('Au total , il y a ',nbfaux,' faux tickets pour un montant de ',mtantPrej:0:0);
end.

{
    trunc() prend la partie entiere sans arrondi tout reel
    int() prend la partie entire sans arrondi longInt / tout reel
    Frac(a) prend la partie fractionnaire uniquement 
    
}
