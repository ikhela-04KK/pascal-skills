program factures;

uses crt;

type
  TDate = record
    jour : 1..31;
    mois : 1..12;
    an : 1980..1999;
  end;
  
  TFacture = record
    reference : integer;
    jour : TDate;
    client : string[100];
    total_HT : real;
    prix : real;
  end;
  
const
  nb_fact = 100;
  
var
  comptes : array[1..nb_fact] of TFacture;
  fact : TFacture;
  i : integer;
// erreur dans ce code 
begin 
  writeln('Référence de la facture ? '); 
  readln(fact.reference); 
  writeln('Mois de la facture ? '); 
  readln(fact.jour.mois); 
  writeln('Jour de la facture ? '); 
  readln(fact.jour.jour);
  writeln('Client ? '); 
  readln(fact.client);
  writeln('Total HT ? '); 
  readln(fact.total_HT); 
  writeln('Prix ? '); 
  readln(fact.prix);

  comptes[fact.reference] := fact;

  for i := 1 to nb_fact do
    writeln(comptes[i].prix);

end.
