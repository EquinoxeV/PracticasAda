with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
   -- Bloque declarativo
   
   N : Integer;

begin
   -- Bloque de procedimiento
   
   
   -- Muestro un mensaje por consola
   Ada.Text_IO.Put_Line("Holaaaaaa :D");
   -- Ada.Text_IO.Put_Line("Bienvenidos a un nuevo lenguaje de programación");
   -- Una vez agregamos el use no es necesario anteponer el nombre de la libreria
   Put_Line("Bienvenidos a un nuevo lenguaje de programación");
   
   -- Declaramos la variable N
   N := 10;
   -- ' funciona como atributo
   Put_Line(N'Image & " es el valor de N.");
   -- El put de la libreria Integer no añade un salto de línea y
   -- añade un espacio previo al valor que muestra
   Ada.Integer_Text_IO.Put(N);
   Put_Line("");
   
   -- Sin especificar parametro (invocación posicional)
   Ada.Integer_Text_IO.Put(N, 3);
   Put_Line("");
   -- Especifico el parametro a pasar (invocación por nombre)
   Ada.Integer_Text_IO.Put(Item => N, width => 3);
   Put_Line("");
   
   -- Probamos el conversor de base, de decimal a binario en este caso
   Put_Line("Pasamos N a base 2");
   Ada.Integer_Text_IO.Put(Item => N, Base => 2);
   Put_Line("");
   
   -- Obtener valores de la entrada/salida y mostrarlos
   Put_Line("Ingrese un número: ");
   Ada.Integer_Text_IO.Get(N);
   Put_Line("El valor ingresado por el usuario ha sido: " & N'Image);
   
   
   Put_Line("Fin de programa.");
   
   null;
end Main;
