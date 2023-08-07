program names;
uses crt;

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
  i, j, long: integer;
  containsAorT: Boolean;

begin
  for i := 1 to 100 do 
  begin
    containsAorT := False;
    long := Length(noms[i]);
    for j := 1 to long do 
    begin 
      if (noms[i][j] = 'A') or (noms[i][j] = 'T') or (noms[i][j] = 'a') or (noms[i][j] = 't') then
      begin
        containsAorT := true;
        Break;
      end;
    end;

    if not containsAorT then 
      WriteLn(noms[i]);
  end;
end.
