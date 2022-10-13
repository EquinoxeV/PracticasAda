with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;
-- Libreria para Strings sin limite de espacio
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
-- Libreria para trabajar con String sin limite de espacio (espacio variable)
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

procedure Main is
   use Ada.Integer_Text_IO;

   Edad : Integer := 0; -- a Ada le gustara más que se especifique el rango de la Edad
   
   -- A Ada le gustara que se especifique lo máximo posible
   -- Nombre : String (1 .. 10); -- declaracion de String explicitamente, de 1 a 10 caracteres
   Nombre : Unbounded_String;

begin
   -- Pediremos la edad al usuario y mediante una estructura de control
   -- indicaremos si es mayor de edad

   Put_Line("Ingrese su edad: ");
   Get(Edad);
   Put(Edad);
   
   Put_Line("1er Tipo de if");
   if Edad >= 18 then
      Put_Line(""); -- Agregamos un salto de línea
      Put_Line("Es mayor de edad");
   else
      Put_Line(""); -- Agregamos un salto de línea
      Put_Line("Es menor de edad");
   end if;
   
   Put_Line("2do Tipo de if");
   -- Otra forma de realizar un if, con rangos
   if edad<18 then
      Put_Line("Es menor");
   elsif Edad in 18 .. 70 then -- rango
      Put_Line("Es un adulto");
   else
      Put_Line("Jubilado");
   end if;
   
   
   
   Put_Line("3er Tipo de if");
   -- Solicitar nombre
   Put_Line("Ingrese su nombre: ");
   -- Get no funciona para unbounded_string, por eso añadimos otra libreria
   
   Get_Line(Nombre); -- metodo 1
   Nombre := Get_Line; -- metodo 2
   Put_Line("Bienvenido " & Nombre & "a nuestro sistema");
   
  
   
   
   

end Main;
