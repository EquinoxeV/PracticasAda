with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Personaje; use Personaje;

procedure Main is
   Ahri : Campeon;
begin
   --Ahri := new Clase_Campeon;
   -- Ahri.Nombre := To_Unbounded_String("Ahri");
   Ahri := Create("Ahri");
   -- Ahri.Nivel := 5; -- Estaría mal, no respeta el encapsulamiento
   -- Ahri.Experiencia := 2000; -- Estaría mal, no respeta el encapsulamiento
   Put_Line(Ahri.To_String);
   Put_Line("Probando los Getters");
   Put_Line("Nombre: " & Ahri.Get_Nombre);
   Put_Line("Nivel: " & Ahri.Get_Nivel'Image );


   null;
end Main;
