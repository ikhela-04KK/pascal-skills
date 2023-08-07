// un algorithme qui calcule une serie de salaires en incorporant une fonction de calcul de la partie varial du salaire (commission du salaire)
program salaire;
uses crt; 

const 
    fixe = 5000; taux1 =0.03; taux2=0.05; plafond =100000;

var 
    ca,salBrut:Real;


// function qui permet de calculer la comisssion 
function comission(montant:Real):real;
    begin 
        if montant > plafond then 
            comission := plafond * taux1 +(montant - plafond) * taux2
        else
            comission := montant * taux1;
    end;

// procedure qui permet de saisir le CA
procedure saisica;
    begin 
        WriteLn('Entrez le chiffre d affaires (<0 fin) ');
        ReadLn(ca);
    end;

// programme principal
begin
    saisica;
    while ca >=0 do
        begin 
            salBrut := fixe + comission(ca); 
            WriteLn('le salaire calcule est = ',salBrut:0:0);
            saisica;
        end;
end.