with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;


procedure Main is
   type Edad is range 0 .. 150;

   --  Nombre : Unbounded_String;
   --  Apellido : Unbounded_String;
   --  Edad_Persona : Edad;

   -- Forma de declarar variables relacionadas POO
   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad_Persona : Edad;
   end record;

   Una_Persona : Persona;




begin
   Put_Line("Inicio del programa");

   Put_Line("Cual es tu nombre?");
   -- Nombre := To_Unbounded_String(Get_Line);
   Una_Persona.Nombre := To_Unbounded_String(Get_Line);

   Put_Line("Cual es tu apellido?");
   --Apellido := To_Unbounded_String(Get_Line);
   Una_Persona.Apellido := To_Unbounded_String(Get_Line);

   Put_Line("Cual es tu edad?");
   --Edad_Persona := Edad(Integer'Value(Get_Line));
   Una_Persona.Edad_Persona := Edad(Integer'Value(Get_Line));

   --  Put_Line("Hola " & To_String(Nombre)
   --           & " " & To_String(Apellido)
   --           & " veo que tienes " & Edad_Persona'Image & " años.");

   Put_Line("Hola " & To_String(Una_Persona.Nombre)
            & " " & To_String(Una_Persona.Apellido)
            & " veo que tienes " & Una_Persona.Edad_Persona'Image & " años.");


   Put_Line("Fin del programa");
end Main;
