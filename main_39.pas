program names;
uses crt;

// declaration d'une constant avec des éléments ou plusieurs éléments se fait avec = après le string
  const 
    noms:array[1..100] of string = ('Chloe','Sophia', 'Emma', 'Olivia', 'Isabella', 'Mia', 'Lucas', 'Liam', 'Noah', 'Ethan', 'Aiden',
    'Sebastian', 'Gabriel', 'Elijah', 'Carter', 'Avery', 'Harper', 'Evelyn', 'Abigail', 'Emily', 'Scarlett',
    'Madison', 'Mila', 'Riley', 'Lily', 'Nora', 'Hannah', 'Grace', 'Aria', 'Charlotte',
    'Ariana', 'Zoe', 'Ella', 'Stella', 'Tella', 'Leah', 'Maya', 'Aaliyah', 'Natalie', 'Eva',
    'Emilia', 'Elizabeth', 'Scarlet', 'Victoria', 'Julia', 'Addison', 'Aubrey', 'Brooklyn', 'Mackenzie', 'Hazel',
    'Audrey', 'Samantha', 'Allison', 'Anna', 'Claire', 'Penelope', 'Layla', 'Skylar', 'Aria', 'Ellie',
    'Arianna', 'Kinsley', 'Sadie', 'Aurora', 'Kylie', 'Camila', 'Violet', 'Savannah', 'Genesis', 'Naomi',
    'Paisley', 'Isabel', 'Elena', 'Arielle', 'Reagan', 'Caroline', 'Autumn', 'Josephine', 'Ruby', 'Delilah',
    'Sophie', 'Luna', 'Willow', 'London', 'Tianna', 'Eliana', 'Jasmine', 'Valentina', 'Isabelle', 'Alice',
    'Ivy', 'Annabelle', 'Athena', 'Lucia', 'Tiliana', 'Marley', 'Alexandra', 'Ximena', 'Haley', 'Rose'
    );
var 
    i:integer;
    j:integer;
    long:integer;
    // a:string;
    found:Boolean;
begin
    // a:='';
    for i := 1 to 100 do 
        begin
             //est ce qu'il y' a impact differend sur les autres éléments 
            // for j:= 1 to 2 do 
            //     a:=a+noms[i][j];
            // if (a <> 'Ar') or (a <> 'Ti')  then
                // begin 
                //  if (a <> 'Ti')  then 
                //     WriteLn(noms[i],'  ', a);
                // end; 
            // a :='';
            //? */ */ si l'on demande de faire de telle sorte qu'il ne contiennent pas deux lettres 
            found := False;
            long := Length(noms[i]);
            for j:= 1 to long do 
            // if (noms[i][1] <> 'A') then 
            //     begin 
            //         if (noms[i][1] <> 'T') then 
            //             WriteLn(noms[i]);
            //? s'il l'on demande de faire un qui ne commence pas par la lettre A
                begin 
                    if ((noms[i][j] ) = 'A') or ((noms[i][j] ) = 'a') or ((noms[i][j] ) = 'T') or ((noms[i][j] ) = 't') then
                        begin 
                            found := True;
                            Break;
                        end;
                end;
            if not found then 
                WriteLn(noms[i]);
        end;
end.
