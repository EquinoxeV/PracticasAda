with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   -- Funciones
   -- Sumar -> Suma los 2 valores que recibe
   -- Exponente -> Realiza el calculo sobre 2 valores
   --
   --
   -- Procedimientos
   -- Show_Float -> Muestra el valor float por consola con su formato correspondiente
   -- Show_Float es renombrado como Put_Line
   -- Swap_Integers -> Intercambia 2 valores de dos variables



   procedure Mayor_Menor (Valor1 : in Integer; -- in opcional indica que es una variable de entrada que no se modifica
                          Valor2 : in Integer;
                          Mayor : out Integer;
                          Menor : out Integer) is
   begin
      Mayor := (if(Valor1 > Valor2) then Valor1 else Valor2);
      Menor := (if(Valor1 < Valor2) then Valor1 else Valor2);

   end;



   function Sumar (N1 : Integer; N2 : Integer) return Integer is
   begin
      return N1+N2;
   end Sumar;

   function Exponente (Base: Integer; Exp : Integer := 2) return Float is
      Resultado : Float;
   begin
      if (Exp = 0) then
         return 1.0;
      end if;
      if (Exp=1) then
         return Float(Base);
      end if;

      Resultado := Float(Base);
      For I in 2 .. Exp loop
         Resultado := Resultado * Float(Base);
      end loop;

      if (Exp<0) then
         return 1.0 / Resultado;
      end if;

      return Resultado;

      -- Cerrar el end indicando de quien, no es obligatorio pero es una buena práctica
   end Exponente;

   procedure Show_Float(Value: Float) is
   begin
      Put(Value, Exp => 0, Fore => 0);
      Put_Line("");
   end Show_Float;

   procedure Put_Line(Value:Float) renames Show_Float; -- Ada permite renombrar métodos

   procedure Swap_Integers(Param1 : in out Integer; Param2 : in out Integer) is
      Aux : Integer;
   begin
      Aux := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end Swap_Integers;

   -- llamara a una o a otra dependiendo del nº de valores recibidos
   -- Sobrecarga 1º
   function Resta
     (Izquierda:in Integer;
      Derecha:in Integer;
      Negativo: out boolean) return Integer is
      Resultado : Integer;
   begin
      Resultado := Izquierda - Derecha;
      Negativo := (Resultado<0); -- variables explicativas
      return Resultado;
   end Resta;

   -- Sobrecarga 2º
   function Resta
     (Izquierda:in Integer;
      Derecha:in Integer) return Integer is
   begin
      return Izquierda - Derecha;
   end Resta;




   -- Primer_Valor : Integer;
   -- Segundo_Valor : Integer;
   -- Resultado : Integer;

begin
   -- El procedimiento no devuelve nada pero podría
   -- La función obliga a usar el valor de retorno Ada


   --  -- Invocando una función
   --  Primer_Valor := 6;
   --  Segundo_Valor := 9;
   --  Resultado := Sumar(Primer_Valor, Segundo_Valor);
   --  Put_Line("El Resultado de sumar " & Primer_Valor'Image
   --          & " y " & Segundo_Valor'Image & " es " & Resultado'Image);



   --  -- Invocando una función mediante parametros con nombre (named parameters)
   --  Primer_Valor := 6;
   --  Segundo_Valor := 9;
   --  Resultado := Sumar(N1 => Primer_Valor,
   --                     N2 => Segundo_Valor); -- se pueden poner desordenados al usar los nombres
   --  Put_Line("El Resultado de sumar " & Primer_Valor'Image
   --          & " y " & Segundo_Valor'Image & " es " & Resultado'Image);



   --  declare
   --     Res : Float;
   --  begin
   --     -- Sin el parametro por defecto
   --     res := Exponente(2);
   --     -- Put_Line(Res'Image);
   --     -- Put(Res, Exp => 0); -- Mostramos el valor de una forma mas cómoda
   --     -- Put_Line("");
   --     -- Show_Float(Res);
   --     Put_Line(Res);
   --     -- Sin el parametro por defecto
   --     Res := Exponente(2, 3);
   --     -- Put_Line(Res'Image);
   --     -- Put(Res, Exp => 0);
   --     -- Put_Line("");
   --     --Show_Float(Res);
   --     Put_Line(Res);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --  begin
   --     Put_Line("Antes " & A'Image & " " & B'Image);
   --     -- Swap_Integers(2, 3); -- No funciona, in out requiere una variable si o si
   --     Swap_Integers(A, B);
   --     Put_Line("Despues " & A'Image & " " & B'Image);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --     Resultado : Integer;
   --     Es_negativo : Boolean;
   --  begin
   --     Put_Line(Resta(40,30)'Image);
   --     -- Invoco la sobrecarga
   --     Resultado := Resta(A,B,Es_negativo);
   --     Put_Line("Resultado: " & Resultado'Image
   --              & (if(Es_negativo)
   --                then " Es negativo"
   --                else " Es positivo"));
   --  end;


   -- Ejercicio
   -- Realizar el Procedimiento MayorMenor
   -- Que reciba 2 números y devuelva 2 variables,
   -- una con el mayor y otra con el menor
   -- este subprograma tiene 4 parametros/variables


   declare
      Valor1 : Integer := 1;
      Valor2 : Integer := 2;
      Mayor : Integer;
      Menor : Integer;

   begin
      --Mayor_Menor(Valor1, Valor2, Mayor, Menor);
      Mayor_Menor(Valor1 => Valor1, Valor2 => Valor2, Mayor => Mayor, Menor => Menor);
      Put_Line("Valor Mayor: " & Mayor'Image);
      Put_Line("Valor Menor: " & Menor'Image);

   end;


end Main;
