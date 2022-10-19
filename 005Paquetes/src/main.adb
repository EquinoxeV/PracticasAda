with Ada.Text_IO; use Ada.Text_IO;
with IO; use IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Constantes;

procedure Main is

begin
   Put_Line(Constantes.Titulo);

   Put_Line("Versión " & Constantes.Version'Image);
   New_Line(2);
   Put_Line("Ingrese su nombre");
   declare
      Nombre : String := Get_NotEmpty_Line;
   begin
      Put_Line("Hola " & Nombre);
   end;

   Put_Line("Ingrese su edad: ");
   declare
      Edad : Integer;
   begin
      --  if(Try_Get_Integer(Edad)) then
      --     Put_Line("Edad " & Edad'Image);
      --  else
      --     Put_Line("No ingresaste número.");
      --  end if;
      Edad := Get_Integer;
      Put_Line("No ingresaste un número");
   end;



   null;
end Main;
