with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package Figuras is

   type Clase_Figura is abstract tagged private;
   -- El 'Class sirve para que el access apunte a objetos de subclases
   type Figura is access Clase_Figura'Class;
   
   -- Constructores
   --  -- Getters
   --  function Get_Base(This : in Clase_Rectangulo) return Float;
   
   -- Metodos
   procedure Calcular_Area(This : Clase_Figura) is abstract;
   
   -- Subclases
   type Clase_Rectangulo is new Clase_Figura with private;
   function Create_Rectangulo(Base_Rectangulo : Float) return Figura;
   overriding procedure Calcular_Area(This : Clase_Rectangulo);
   
   -- Getters
   function Get_Base(This : in Clase_Rectangulo) return Float;
   
   
   
   type Clase_Circulo is new Clase_Figura with private;
   
   overriding procedure Calcular_Area(This : Clase_Circulo);
   
   
private
   type Clase_Figura is abstract tagged
      record
         Base : Float;
      end record;
   
   type Clase_Rectangulo is new Clase_Figura with
      record
         Base_Rectangulo : Float;
         -- null;
      end record;
   
   type Clase_Circulo is new Clase_Figura with
      record
         null;
      end record;
   
   

end Figuras;
