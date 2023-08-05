Program dec_type; 
uses crt; 

type 
  tjour = (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);

var 
  jour1, jour2: tjour;

begin 
  // Affichage aléatoire des jours
  randomize; // Initialise le générateur de nombres aléatoires

  jour1 := tjour(random(7)); // Génère un jour aléatoire
  writeln('Jour 1: ', jour1);

  jour2 := tjour(random(ord(high(tjour)) + 1)); // Génère un autre jour aléatoire
  writeln('Jour 2: ', jour2);

  // Boucle aléatoire sur les jours
  for jour1 := low(tjour) to high(tjour) do 
  begin
    writeln(jour1);
  end;
end.
