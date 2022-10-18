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



   -- Primer_Valor : Integer;
   -- Segundo_Valor : Integer;
   -- Resultado : Integer;

begin
   -- El procedimiento no devuelve nada
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



   declare
      Res : Float;
   begin
      -- Sin el parametro por defecto
      res := Exponente(2);
      -- Put_Line(Res'Image);
      -- Put(Res, Exp => 0); -- Mostramos el valor de una forma mas cómoda
      -- Put_Line("");
      -- Show_Float(Res);
      Put_Line(Res);
      -- Sin el parametro por defecto
      Res := Exponente(2, 3);
      -- Put_Line(Res'Image);
      -- Put(Res, Exp => 0);
      -- Put_Line("");
      --Show_Float(Res);
      Put_Line(Res);
   end;



end Main;
