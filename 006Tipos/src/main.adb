with Ada.Text_IO; use Ada.Text_IO;
with Geometria; use Geometria;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   --  -- Formas de definir el tipo cantidad
   --  -- type Cantidad is new range 0 .. 300;
   --  -- type Cantidad is range 0 .. Integer'Last; -- 0 hasta ultimo valor posible de Integer
   --  -- type Cantidad is range 0 .. 2**63-1; -- uso 64 bits
   --  type Cantidad is range 0 .. 2**127-1; -- uso 128 bits
   --  -- Projecteuler.net -> Ejercicios dificiles
   --
   --
   --  -- type Cantidad is new Integer;
   --  -- type Cantidad is new Natural;
   --  --  type Cantidad_Peras is new Integer; -- no pedir memoria, sino nuevo entero
   --  --  type Cantidad_Manzanas is new Integer;
   --
   --  subtype Cantidad_Peras is Cantidad; -- no pedir memoria, sino nuevo entero
   --  subtype Cantidad_Manzanas is Cantidad;
   --
   --
   --  Peras : Cantidad_Peras;
   --  Manzanas : Cantidad_Manzanas;
   --  Frutas : Cantidad;
   --  -- Total : Integer;
begin
   --  --  Insert code here.
   --  Peras := 2;
   --  Manzanas := 2;
   --  -- Peras := Manzanas; -- En cualquier lenguaje esto es una asignaci�n valida, menos en Ada
   --  Frutas := Peras + Manzanas; -- esta no es una asignacion valida y semanticamente valida
   --  --Total := Peras + Manzanas; -- esta no es una asignacion valida
   --
   --  Put_Line("En total tengo " & Frutas'Image & " frutas");
   --
   --  Frutas := 300;
   --  Frutas := Frutas + 50; -- falla en ejecucion si supera el valor de 300 (maximo en ese momento) error de contencion / excepcion
   --  Put_Line("En total tengo " & Frutas'Image & " frutas");
   --  Frutas := 3**3; -- operador exponente
   --  Put_Line("Ahora en total tengo " & Frutas'Image & " frutas");
   --
   --  declare
   --     type Mi_Tipo is new Integer; -- puedo declarar tipos en el bloque declare
   --     Variable : Mi_Tipo;
   --  begin
   --     Variable := 3;
   --  end;

--     declare
--        type Distancia is new Float;
--        type Area is new Float;
--        Base : Distancia;
--        Altura : Distancia;
--        Superficie : Area;
--
--        procedure Procedure_En_Delcare is
--        begin
--           null;
--        end;
--
--        function "*"(Left: in Distancia ;
--                     Right: in Distancia ) return Area is
--        begin
--           return Area(Float(Left) * Float(Right));
--        end;
--
--
--  begin
--        Base := 10.0;
--        Altura := 30.0;
--        -- Superficie := Altura * Base; -- Asignacion no compatible
--        --Superficie := Area(Base * Altura);
--        Superficie := Base * Altura; -- Funciona por la funcion *
--
--
--  end;

   --  declare
   --     Base : Distancia := 10.0;
   --     Altura : Distancia := 5.0;
   --     Area_Triangulo : Area;
   --  begin
   --     Area_Triangulo := (Base * Altura) / 2.0;
   --  end;


   --  -- Enumerados en Ada
   --  declare
   --     type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     type Meses is (Enero, Febreo, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
   --     Primer_Dia_Semana : Dias;
   --     Dia : Dias;
   --  begin
   --     Primer_Dia_Semana := Lunes;
   --     for Dia in Dias loop
   --        Put_Line("Hoy es: "  & Dia'Image);
   --        case Dia is
   --           when Lunes =>
   --              Put_Line("Feliz comienzo de semana");
   --           when Sabado..Domingo =>
   --              Put_Line("Feliz finde");
   --           when Martes =>
   --              Put_Line("A tope en la semana");
   --           when Viernes =>
   --              Put_Line("Tu cuerpo lo sabe");
   --        end case;
   --     end loop;
   --  end;



   --  -- Tipos de datos modulares
   --  declare
   --     type Max_1000 is mod 1000; -- va de 0 a 1000
   --     Numero : Max_1000;
   --
   --  begin
   --     Numero := 500;
   --     Put_Line("Vale " & Numero'Image);
   --     Numero := Numero + 400;
   --     Put_Line("Ahora vale " & Numero'Image);
   --     Numero := Numero + 102;
   --     Put_Line("Ahora vale " & Numero'Image); -- Se pasa de 1000, y reinicia y sigue
   --  end;


   -- Tipos de datos flotantes
   declare
      type Dinero is digits 2;
      Riqueza : Dinero;
      F : Float := 4.5;
   begin
      Riqueza := 100.43;
      Put(Float(Riqueza), Exp => 0);
      Put(Float(Riqueza), Aft => Dinero'Digits, Exp => 0);

   end;




end Main;
