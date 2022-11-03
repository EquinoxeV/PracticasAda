with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Selva is

   type Clase_Animal is abstract tagged private;
   type Animal is access Clase_Animal'Class;
   -- El 'Class sirve para que el access apunte a objetos de subclases
   
   -- Constructores
   -- lo quitamos porque animal es abstracta
   -- function Create(Un_Nombre : String) return Animal;
   -- Getter
   function Get_Nombre(This : in Clase_Animal) return String;
   -- Metodos
   procedure Hablar(This : Clase_Animal) is abstract;
   
   -- subclases
   type Clase_Leon is new Clase_Animal with private;
   function Create_Leon(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   function Create_Jirafa(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : Clase_Jirafa);
      
      private
      
   type Clase_Animal is abstract tagged 
      record
         Nombre : Unbounded_String;
      end record;
   
   type Clase_Leon is new Clase_Animal with 
      record
         null;
      end record;
   
   type Clase_Jirafa is new Clase_Animal with 
      record
         null;
      end record;
      

end Selva;
