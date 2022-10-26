with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Text_IO;



procedure Main is

begin
   --  declare
   --     type Nota is range(0..10) with Default_Value => 7;
   --     type Array_Numeros is array(Positive range <>) of Integer with Default_Component_Value => 10;
   --     -- type Numeros array(Positive range <>) of Integer with Default_Component_Value => 10;
   --     -- Muchos_Numeros : Array_Numeros(1..15);
   --     -- Muchos_Numeros : Array_Numeros(1,3,4,5,6,7,1,3,4);
   --     Pedacito : Array_Numeros := Muchos_Numeros(1..4); -- Array Slice
   --     Muchos_Numeros : Array_Numeros := Muchos_Numeros & Pedacito;
   --
   --     Mi_Nota : Nota;
   --  begin
   --     for I in Muchos_Numeros'Range loop
   --        Put_Line(Muchos_Numeros(I)'Image);
   --     end loop;
   --     Put_Line("");
   --     Put_Line(Mi_Nota'Image);
   --     Put_Line("El array Vacio tiene longitud " & Arr);
   --     Put_Line("");
   --
   --  end;


   --  declare
   --     type Componente_Adn is (A, G, C, T);
   --       -- (Adenina, Guanina, Citosina, Timina);
   --     -- Componente : Componente_Adn := A;
   --
   --
   --     function To_String(Enum:Componente_Adn) return String is
   --     begin
   --        return
   --          (Case Enum is
   --              when A => "Adenina",
   --              when G => "Guanina",
   --              when C => "Citosina",
   --              when T => "Timina");
   --
   --     end;
   --     Componente : Componente_Adn := A;
   --  begin
   --     -- Put_Line(Componente'Image);
   --     Put_Line(To_String(Componente));
   --  end;



   declare
      type Dia is range 1..31;
      type Mes is range 1..12;

      type Fecha is record
         Dia : range 1..31;
         Mes : range 1..12;
         Año : range 1900..3000;
      end record;

      Nacimiento : Fecha := (20,9,1980);
   begin

   end;


   null;
end Main;
