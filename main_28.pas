// Ecrire un algorithme qui permet de repondre au preocupation de MR PETTIGUEU
// chaque succursale reçois soit l'état des profits du mois / pertes mensuelles réalisées
program ppT; 
uses crt; 

// initialisation des mois
type ths = (janvier,fevrier,mars,avril,mai,juin,juillet,aout,septembre,octobre,novembre,decembre); 

// initialisation des succursale
type 
    succ = record
    profit : array[1..10] of Real;
end;

succs = array[ths] of succ; 

// initialiser toutes les variables nécessaires au projet 
var 
    th:ths; 
    i:integer;
    succu : succs;
    choix: ths;
    chsuc : integer;
    cRnet:real;


// question 1: quelle succursale ont réalisé un profit ou une perte pour un mois donnée
procedure prOpM;
    begin 
        WriteLn('Entrer un mois (miniscule , sans accent): ');
        ReadLn(choix);
        WriteLn('pour le mois de ', choix);
        for i:=1 to 10 do 
            begin 
                if succu[choix].profit[i] > 0 then
                    WriteLn('   succursale ',i , ' a realiser un profit de ', succu[choix].profit[i]:0:0)
                else 
                    WriteLn('   succursale ',i , ' a realiser une perte de ', succu[choix].profit[i]:0:0)
            end;
    end;

// question 2: pour une succursale quelles sont ces pertes et ces gains durant toutes l'année 
procedure prOpA; 
    begin 
        WriteLn('entrer un succursale (1-2): ');
        ReadLn(chsuc); 
        WriteLn('pour le succursale ', chsuc);
        for th:=janvier to decembre do 
            begin   
                if succu[th].profit[chsuc] > 0 then
                    WriteLn(th,' un profit de ', succu[th].profit[chsuc]:0:0)
                else 
                    WriteLn(th,' une perte de ', succu[th].profit[chsuc]:0:0)
            end;
    end;

// question 3: Combien de succursale sont déficitaires pour l'année en cours 
procedure defA;
    var 
        nbdef :Real; 
        def : Real;

    begin
        def := 0;
        nbdef := 0;
        for i:=1 to 10 do 
            begin
                for th:=janvier to decembre do
                    def := succu[th].profit[i] +def;
                    // WriteLn(th, '---', i)
                if def < 0 then
                    nbdef := nbdef + 1; 
            end;
        WriteLn('le nombre de succursale en deficite est ', nbdef:0:0)
    end;

// question 4: revenu net pour l'ensemble des succursales pour un mois donné
procedure revNetM; 
    begin
        cRnet :=0; 
        WriteLn('Entrer un mois (miniscule , sans accent): ');
        ReadLn(choix);
        WriteLn('pour le mois de ', choix);
        for i:=1 to 10 do  
            cRnet := succu[choix].profit[i] +cRnet;
        WriteLn('le revenu net est de: ', cRnet);
    end;

// question 5: revenu net engrenger pour l'ensemble des succursales pour une année 
procedure revNetA;
    begin
        WriteLn('pour l anne ,');
        cRnet := 0;
        for i:=1 to 10 do 
            begin
                for th:=janvier to decembre do
                    cRnet := succu[th].profit[i] +cRnet;
            end;
        WriteLn('les revenues net sont de: ', cRnet);
    end;


begin 
    for th:=janvier to mars do  
        begin
            for i:=1 to 10 do 
                begin   
                    WriteLn('entrer le profit/perte du mois de ', th, ' succursale ',i);
                    ReadLn(succu[th].profit[i]);
                end;
        end;
    // prOpM;
    // prOpA;
    // defA;
    // revNetM;
    // revNetA;
end.