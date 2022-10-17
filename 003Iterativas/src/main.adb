with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   -- Sumatoria : Integer := 0;
   -- Entrada_Datos : Integer;

begin
   Put_Line("Inicio del programa");

   --  -- Calcule la sumatoria de Valores hasta que el usuario ingrese un 0
   --  Put_Line("Ingrese valores, un 0 finaliza el proceso");
   --  Put_Line("Se realizara una sumatoria de los valores");
   --
   --  --  -- Bucle infinito
   --  --  loop
   --  --     Get(Entrada_Datos);
   --  --     exit when Entrada_Datos = 0; -- Condición de corte
   --  --     Sumatoria := Sumatoria + Entrada_Datos;
   --  --  end loop;
   --  --
   --  --  Put_Line("Ha finalizado el ingreso de valores");
   --  --  Put_Line("La sumatoria es: " &Sumatoria'Image);
   --
   --  -- Mismo Ejemplo con el while
   --  Get(Entrada_Datos); -- Lectura adelantada
   --  while Entrada_Datos /= 0 loop -- Valor distinto en Ada /=
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --     Get(Entrada_Datos);
   --  end loop;
   --  Put_Line("Ha finalizado el ingreso de valores");
   --  Put_Line("La sumatoria es: " &Sumatoria'Image);




   --  -- Ejercicio nº2
   --  -- Mediante Iterativas haz un programa que pida la edad y dependiento del valor
   --  -- indica lo siguiente:
   --  -- 0 - 2 -> Es un recien nacido
   --  -- 3 - 9 -> Es un Infante
   --  -- 10 - 15 -> Es un prepuber
   --  -- 15 - 18 -> Es un adolescente
   --  -- 19 - 49 -> Es un adulto
   --  -- 50 -> Medio siglo de vida
   --  -- Mayor de 50 -> Mayor de 50
   --
   --  declare
   --     Edad : Integer;
   --  begin
   --     Put_Line("Ingrese su edad: ");
   --     Get(Edad);
   --     case Edad is
   --        when 0 | 1 | 2 =>
   --           Put_Line("Es un recién nacido");
   --        when 3 .. 9 =>
   --           Put_Line("Es un infante");
   --        when 10 .. 15 =>
   --           Put_Line("Es un prepuber");
   --        when 19 .. 49 =>
   --           Put_Line("Es un adulto");
   --        when 50 =>
   --           Put_Line("medio siglo de vida");
   --        when others =>
   --           Put_Line("Mayor de 50");
   --     end case;
   --  end;





   -- introduciendo a los Strings

   -- Forma explicita de definir un String (Sabemos la longitud del string)
   --  declare
   --     S : String (1 .. 7); -- Explicita de definir un String
   --  begin
   --     S := "Esteban";
   --     Put_Line(S);
   --  end;

   -- Forma implicita de definir un String (no sabemos su longitud)
   --  Put_Line("Ingrese su nombre: ");
   --  declare
   --     Nombre : String := Get_Line;
   --     -- Nombre : String := "Esteban";
   --  begin
   --     Put_Line("Hola, " &Nombre);
   --  end;


   -- Ejercicio
   -- Un programa que pregunte valores positivos hasta que ingrese un 0
   -- utilizar bloque declare
   -- El programa me muestra el máximo
   --  declare
   --     Valor_Maximo : Integer := 0;
   --     Valor_Ingresado : Integer := 0;
   --  begin
   --     loop
   --        Put_Line("Ingrese un valor (0 para finalizar): ");
   --        Get(Valor_Ingresado);
   --        if Valor_Ingresado > Valor_Maximo
   --        then
   --           Valor_Maximo := Valor_Ingresado;
   --        end if;
   --
   --
   --        exit when Valor_Ingresado = 0;
   --     end loop;
   --
   --     Put_Line("El valor máximo ha sido: " &Valor_Maximo'Image);



   --  --Operador ternario
   --  -- Operador ternario en java
   --  -- a>0 ? "Es mayor":"Es Menor"; -- Si no sale el primero ejecuta el segundo
   --
   --  -- Ahora veremos lo mismo en Ada
   --  -- Operador ternario - if como expresión - case como expresión
   --  declare
   --     Edad : Integer;
   --  begin
   --     Get(Edad);
   --     -- Como estructura de control
   --     --  if(Edad>=18) then
   --     --     Put_Line("Es mayor");
   --     --  else
   --     --     Put_Line("Es menor");
   --     --  end if;
   --
   --     -- If omo expresion (como operador ternario de Java)
   --     --  Put_Line( if (Edad>18) then "Es Mayor" else "Es menor");
   --
   --     -- Case como expresión
   --     Put_Line(case Edad is when 0 .. 17 => "Es menor",
   --                 when 18 .. 60 => "Es mayor",
   --              when others => "Es Senior"
   --             );
   --  end;


   -- Que el ususario ingrese números
   -- Calcular cantidad de numeros pares, impares y numeros ingresados
   -- utilizar una expresión if
   declare
      Valor_Ingresado : Integer := 0;
      Cantidad_Pares : Integer := 0;
      Cantidad_Impares : Integer := 0;
      Cantidad_Valores : Integer := 0;
   begin
      Put_Line("Ingrese un valor(para finalizar 0): ");
      Get(Valor_Ingresado);
      while Valor_Ingresado /= 0 loop
         Put_Line("Ingrese un valor(para finalizar 0): ");
         Get(Valor_Ingresado);

         -- Operaciones
         Cantidad_Valores := Cantidad_Valores + 1;
         Cantidad_Pares := Cantidad_Pares + (if ((Valor_Ingresado mod 2) =0) then 1 else 0);


      end loop;
      Cantidad_Impares := Cantidad_Valores - Cantidad_Pares;

      Put_Line("Ha finalizado el programa. Resultados: ");
      Put_Line("Cantidad de Valores: " &Cantidad_Valores'Image);
      Put_Line("Cantidad de Pares: " &Cantidad_Pares'Image);
      Put_Line("Cantidad de Impares: " &Cantidad_Impares'Image);
   end;




   Put_Line("Fin de programa");
end Main;
