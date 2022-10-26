with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Float_array; use Float_array;


procedure Main is




begin
   --  declare
   --     -- type Montos is array (Integer range <>) of Float;
   --     type Dinero is Digits 2;
   --     -- Empieza en la posicion 1
   --     type Montos is array (Positive range <>) of Dinero;
   --     -- Empieza en la posicion 0
   --     type Array_Natural is array (Natural range <>) of Dinero;
   --     -- Empieza en la posicion INteger':
   --     type Array_Integer is array (Integer range <>) of Dinero;
   --
   --
   --     -- Ventas : Montos (1..5);
   --     Ventas : Montos := (10.0, 2.3, 6.7);
   --     Ventas_Natural_Range : Array_Natural := (4.5, 3.4);
   --     Ventas_Integer_Range : Array_Integer := (6.7, 2.3);
   --  begin
   --     -- Ventas(0) := 2.3; -- por que da error?
   --
   --     Put_Line("Primera posicion (Positive range <>) " & Ventas'First'Image);
   --     Put_Line("Primera posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
   --     Put_Line("Primera posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);
   --  end;


   -- declare
      --  -- Declarar un tipo de arreglo de float
      --  type Array_Float is array(Positive range <>) of Float;
      --
      --  -- declara una funcion que recibe un numero y me devuelve un arreglo
      --  -- de numeros al azar N posiciones
      --  function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Array_Float is
      --     G : Generator;
      --     Result : Array_Float(1..Num_N);
      --  begin
      --     for I in Result'Range loop
      --        Result(I) := Float((Random(G) * 10.0) + 1.0);
      --     end loop;
      --     return Result;
      --  end;
      --
      --  -- Declarar una funcion que recibe un arreglo de ese tipo y me devuelve
      --  -- la sumatoria con 'First y 'Last
      --
      --  function Sumatoria(Entrada: Array_Float) return Float is
      --     Retorno:Float:=0.0;
      --  begin
      --     for I in Entrada'Range loop
      --        Retorno := Retorno + Entrada(I);
      --     end loop;
      --     return Retorno;
      --  end;
      --
      --  -- declarar una funcion que recibe un arreglo de ese tipo y me devuelve
      --  -- el promediio
      --
      --  function Promedio(Arreglo_Media : in Array_Float) return Float is
      --  begin
      --     return Sumatoria(Arreglo_Media)/Float(Arreglo_Media'Length);
      --  end;
      --
      --  -- un procedimiento que muestra el arreglo por pantalla
      --
      --
      --
      --  procedure Muestreo_De_Datos is
      --     Numeros : Array_Float := Arreglo_Numeros_Aleatorios(10);
      --  begin
      --     for I in reverse Numeros'Range loop
      --        Put(Numeros(I), Exp => 0);
      --        Put_Line("");
      --
      --     end loop;
      --
      --     Put_Line("La sumatoria es: ");
      --     Put(Sumatoria(Numeros), Exp => 0);
      --
      --     Put_Line("");
      --     Put_Line("El promedio es: ");
      --     Put(Promedio(Numeros), Exp => 0);
      --  end;
      --
      --  -- Una funcion que reciba un array y un valor
      --  -- Devuelve otro array con los valores mayores al parametro
      --  function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float is
      --     -- Result : Array_Float(1..0); -- un array vacio
      --     Aux : Array_Float := Arreglo; -- copio el arreglo para que tenga la misma longitud
      --     -- subtype Tipo_Indice is Integer range Arreglo'Range;
      --     Indice : Integer := Arreglo'First;
      --  begin
      --     for I in Arreglo'Range loop
      --        if Arreglo(I)> Valor then
      --           Aux(Indice) := Arreglo(I);
      --           Indice := Indice+1;
      --        end if;
      --
      --
      --     end loop;
      --
      --     declare
      --        Result:Array_Float(Arreglo'First..Indice-1); -- Me puede quedar vacio
      --     begin
      --        Result := Aux(Arreglo'First..Indice-1); -- Slice
      --        return Result;
      --     end;
      --
      --
      --  end;
      --
      --
      --
      --
      --



     Numeros : Array_Float := Arreglo_Numeros_Aleatorios(10);
   begin
      --  for I in reverse Numeros'Range loop
      --     Put(Numeros(I), Exp => 0);
      --     Put_Line("");
      --  end loop;
      Mostrar(Numeros);
      Put_Line("La Sumatoria es : ");
      Put(Sumatoria(Numeros),Exp =>0 );

      Put_Line("");
      Put_Line("El promedio es : ");
      Put(Promedio(Numeros), Exp =>0 );
      Put_Line("");

      declare
         Mayores_A_5 : Array_Float := Mayores(Numeros,5.0);
      begin
         Put_Line("Los mayores a 5 son");
         Mostrar(Mayores_A_5);
      end;


   end;

end Main;
