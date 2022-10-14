with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
   -- Declaraciones
    N : Integer;

begin
   --  Bucles, Estructuras de Control Iterativas
   Put_Line("Inicio del programa.");

   -- Bucle for
   for I in 1 .. 10 loop
      Put_Line("Loop for, linea " & I'Image);
   end loop;

   --  -- Receso en el ejercicio (Atributos)
   --  N := 10;
   --  Put_Line(N'Image);
   --  Put_Line(Integer'Succ(N)'Image); -- Valor siguiente de N
   --  Put_Line(Integer'Pred(N)'Image); -- Valor previo de N
   --
   --  -- Ver valores pares
   --  -- if (N mod 2 = 0) then -- lo mismo que abajo pero con parentesis
   --  if N mod 2 = 0 then
   --     Put_Line(" Es Par");
   --  end if;


   -- Ejercicio
   -- Programa que liste los numeros pares del 1 al 20
   for I in 1 .. 20 loop
      if ((I mod 2) = 0) then
         Put_Line("El valor " & I'Image & " es par");
         -- Put_Line("Es par " & Integer'Image(I)); -- metodo 2
      end if;
   end loop;

   -- Jugando con la consola


   -- Ejercicio
   -- Programa que muestre la sumatoria de valores entre 1 y 15
   N := 0;
   for I in 1 .. 15 loop
      N := N + I;
   end loop;
   Put_Line("La sumatoria de 1 a 15 dio: " & N'Image);
   -- Forma de resolver el ejercicio de sumatoria
   declare -- Permite declarar variables en cualquier parte del codigo
      Sumatoria : Integer := 0;
      begin
         for I in 1 .. 15 loop
            Sumatoria := Sumatoria + I;
         end loop;
         Put_Line("Sumatoria: " & Sumatoria'Image);
   end;

   -- calcular promedio de 10 valores, pedir estos 2 valores al usuario
   declare
      use Ada.Integer_Text_IO;

      Sumatoria : Integer := 0;
      Valor_ingresado : Integer := 0;
      Promedio : Float;
   begin
      Put_Line("Procederemos con el calculo promedio de 10 valores: ");

      for I in 1 .. 10 loop
         Put_Line("Ingrese el valor nº " &  I'Image & ":");
         -- recoger valor
         Get(Valor_ingresado);
         -- Promedio := Float(Sumatoria); -- Deberia hacer un casteo
         Sumatoria := Sumatoria + Valor_ingresado;
      end loop;
      -- Calculos para el promedio
      Promedio := Float(Sumatoria) / 10.0; -- operaciones con datos del mismo tipo
      -- integer con integer -- Float con float
      Put_Line("El promedio es: " & Promedio'Image); -- lo muestra en notación cientifica

   end;





   Put_Line("Fin del programa");

end Main;
