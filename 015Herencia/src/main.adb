with Ada.Text_IO; use Ada.Text_IO;
with Selva; use Selva;

procedure Main is
   -- Leon : Animal;
   Un_Animal : Animal;

begin
   -- Leon := Create("Mufasa");
   -- Leon := new Clase_Leon("Mufasa");
   -- Put_Line("Hola soy " & Leon.Get_Nombre);

   -- Un_Animal := new Clase_Jirafa;
   -- Put_Line("Hola soy " & Un_Animal.G);


   -- Ahora uso constructores
   -- Un_Animal := Create_Leon("Alex");
   Un_Animal := Create_Jirafa("Mellman");
   Put_Line("Hola soy " & Un_Animal.Get_Nombre);
   Un_Animal.Hablar;

   null;
end Main;
