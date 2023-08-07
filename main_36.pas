program names;
uses crt;

type
  TName = (
    Sophia, Emma, Olivia, Isabella, Mia, Lucas, Liam, Noah, Ethan, Aiden,
    Sebastian, Gabriel, Elijah, Carter, Avery, Harper, Evelyn, Abigail, Emily, Scarlett,
    Madison, Mila, Riley, Lily, Chloe, Nora, Hannah, Grace, Aria, Charlotte,
    Ariana, Zoe, Ella, Stella, Tella, Leah, Maya, Aaliyah, Natalie, Eva,
    Emilia, Elizabeth, Scarlet, Victoria, Julia, Addison, Aubrey, Brooklyn, Mackenzie, Hazel,
    Audrey, Samantha, Allison, Anna, Claire, Penelope, Layla, Skylar, Ellie,
    Arianna, Kinsley, Sadie, Aurora, Kylie, Camila, Violet, Savannah, Genesis, Naomi,
    Paisley, Isabel, Elena, Arielle, Reagan, Caroline, Autumn, Josephine, Ruby, Delilah,
    Sophie, Luna, Willow, London, Gianna, Eliana, Jasmine, Valentina, Isabelle, Alice,
    Ivy, Annabelle, Athena, Lucia, Liliana, Marley, Alexandra, Ximena, Haley, Rose
  );

var 
    name:string;
    t:array[1..2] of string;
begin 
    t[1]:='marco';
    t[2]:= 'ikeha';
    WriteLn(TName(0));
    name := 'ikhela';
    WriteLn(t[1][1]);
    WriteLn(t[1]+t[2]);
end.