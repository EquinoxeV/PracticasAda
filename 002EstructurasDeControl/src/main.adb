with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
   use Ada.Integer_Text_IO;

   Edad : Integer := 0; -- a Ada le gustara más que se especifique el rango de la Edad

begin
   -- Pediremos la edad al usuario y mediante una estructura de control
   -- indicaremos si es mayor de edad

   Put_Line("Ingrese su edad: ");
   Get(Edad);
   Put(Edad);
   if Edad >= 18 then
      Put_Line(""); -- Agregamos un salto de línea
      Put_Line("Es mayor de edad");
   else
      Put_Line(""); -- Agregamos un salto de línea
      Put_Line("Es menor de edad");
   end if;

end Main;
