program names;
uses crt;

type
  TNamesArray = array[1..100] of string;

var 
    // nom:string;
    Nnom,nom:array[1..100] of string; 
    mot: string;
    car:string;
    long,i,j,cpt:integer

const
  Noms: TNamesArray = (
    'Sophia', 'Emma', 'Olivia', 'Isabella', 'Mia', 'Lucas', 'Liam', 'Noah', 'Ethan', 'Aiden',
    'Sebastian', 'Gabriel', 'Elijah', 'Carter', 'Avery', 'Harper', 'Evelyn', 'Abigail', 'Emily', 'Scarlett',
    'Madison', 'Mila', 'Riley', 'Lily', 'Chloe', 'Nora', 'Hannah', 'Grace', 'Aria', 'Charlotte',
    'Ariana', 'Zoe', 'Ella', 'Stella', 'Tella', 'Leah', 'Maya', 'Aaliyah', 'Natalie', 'Eva',
    'Emilia', 'Elizabeth', 'Scarlet', 'Victoria', 'Julia', 'Addison', 'Aubrey', 'Brooklyn', 'Mackenzie', 'Hazel',
    'Audrey', 'Samantha', 'Allison', 'Anna', 'Claire', 'Penelope', 'Layla', 'Skylar', 'Aria', 'Ellie',
    'Arianna', 'Kinsley', 'Sadie', 'Aurora', 'Kylie', 'Camila', 'Violet', 'Savannah', 'Genesis', 'Naomi',
    'Paisley', 'Isabel', 'Elena', 'Arielle', 'Reagan', 'Caroline', 'Autumn', 'Josephine', 'Ruby', 'Delilah',
    'Sophie', 'Luna', 'Willow', 'London', 'Gianna', 'Eliana', 'Jasmine', 'Valentina', 'Isabelle', 'Alice',
    'Ivy', 'Annabelle', 'Athena', 'Lucia', 'Liliana', 'Marley', 'Alexandra', 'Ximena', 'Haley', 'Rose'
);

begin
    for i:= 1 to 100 do 
        randomize;
        Nnom[i]:=noms[random(100)];
    
    for i:= 1 to 100 do 
        begin 
            cpt := 0;
            mot := nom[i];
            long := Length(mot);
            for j:= to long do 
                begin 
                    car := sschaine(mot,j,i);
                    if (car = 'A' ) or (car = 'T') then 
                        cpt := cpt + 1;
                end;
        if cpt = 0 then 
            begin 
                k := k+1;
                Nnom[k] := nom[i];
            end;
        end;
    if k <> 0 then 
        begin 
            for i:= 1 to k do 
                WriteLn(Nnom[i]);
        end;
end.