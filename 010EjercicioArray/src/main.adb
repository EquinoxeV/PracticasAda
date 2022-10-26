with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
use Personas; use Personas;


procedure Main is

   --  Crear un tipo para un registro de personas (Nombre, apellido, edad)
   -- Crear un tipo para un array unconstrained de personas
   -- Preguntar al usuario cuantas personas ingresarLeer las personas una
   -- a una de forma segura y agregarla al arrayPodemos utilizar el paquete de
   -- lectura segura de datos que hicimosMostrar la lista de forma bonita
   -- Poner los tipos y los metodos en otro paquete

begin


   Put_Line("Inicio del programa.");


   declare
   --  -- Declaramos la persona
   --    type Persona is record
   --       Nombre : Unbounded_String;
   --       Apellido : Unbounded_String;
   --       Edad : Integer;
   --    end record;
   --
   --   type Arreglo_Personas is array(Persona) of Persona;



      Cantidad_Personas : Integer;
      Cantidad_Personas_Ingresadas : Integer := 1;

   begin
      Put_Line("Cuantas personas quieres ingresar: ");
      Get(Cantidad_Personas);
      Put_Line("Vas a ingresar a " & Cantidad_Personas'Image & " personas.");
      Put_Line("Gracias");



      while Cantidad_Personas_Ingresadas <= Cantidad_Personas loop
         -- llamar al método ingreso

         Put_Line("Has ingresado a la persona Nº " & Cantidad_Personas_Ingresadas'Image);


         Cantidad_Personas_Ingresadas := Cantidad_Personas_Ingresadas + 1;
      end loop;


   end;





   Put_Line("Fin del programa");
end Main;
