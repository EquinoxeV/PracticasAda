with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Figuras is

   
   function Get_Base(This : in Clase_Rectangulo) return Float is 
   begin
      Return To_String(This.Base_Rectangulo);
   end;
   
   
   function Create_Rectangulo(Base_Rectangulo : Float) return Figura is
      Result : Figura := new Clase_Rectangulo;
   begin
      Result.Base := Base_Rectangulo;
      return Result;
   end;
   
   procedure Calcular_Area(This : in Clase_Rectangulo) is 
   begin
      Put_Line("calcular area del rectangulo");
   end Calcular_Area;
   
   
   procedure Calcular_Area(This : in Clase_Circulo) is 
   begin
      Put_Line("calcular area del circulo");
   end Calcular_Area;

end Figuras;
