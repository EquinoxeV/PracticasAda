


procedure Main is




begin
   declare
      -- type Montos is array (Integer range <>) of Float;
      type Dinero is Digits 2;
      -- Empieza en la posicion 1
      type Montos is array (Positive range <>) of Dinero;
      -- Empieza en la posicion 0
      type Array_Natural is array (Natural range <>) of Dinero;
      -- Empieza en la posicion INteger':
      type Array_Integer is array (Integer range <>) of Dinero;


      -- Ventas : Montos (1..5);
      Ventas : Montos := (10.0, 2.3, 6.7);
      Ventas_Natural_Range : Array_Natural := (4.5, 3.4);
      Ventas_Integer_Range : Array_Integer := (6.7, 2.3);
   begin
      -- Ventas(0) := 2.3; -- por que da error?

      Put_Line("Primera posicion (Positive range <>) " & Ventas'First'Image);
      Put_Line("Primera posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
      Put_Line("Primera posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);
   end;


end Main;
