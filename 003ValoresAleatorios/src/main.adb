with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

begin
   --  -- Generar números flotantes al azar
   --  declare
   --     G:Generator;
   --     Numero_Al_Azar : Uniformly_Distributed;
   --  begin
   --     Reset(G); -- para variar la secuencia del generador
   --     for I in 1 .. 10 loop
   --        Numero_Al_Azar := Random(G);
   --        Put(Numero_Al_Azar, 0, 3, 0);
   --        Put_Line("");
   --     end loop;
   --  end;

   --  -- Generador de numeros enteros al azar entre 1 y 10
   --  declare
   --     G : Generator;
   --     Numero_Al_Azar : Integer;
   --  begin
   --     Reset(G);
   --     for I in 1 .. 20 loop
   --        Numero_Al_Azar := Integer(Random(G) * 9.0) + 1; -- metodo 1
   --        -- Numero_Al_Azar := Integer((Random(G) * 9.0) + 1.0); -- metodo 2
   --        Put_Line(Numero_Al_Azar'Image);
   --     end loop;


   end;



end Main;
