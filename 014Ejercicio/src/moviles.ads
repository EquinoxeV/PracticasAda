package Moviles is
   
   type Posicion is new Integer;
   type Velocidad is new Integer;

   type Clase_Movil is tagged private;
   type movil is access Clase_Movil;
   
    -- Constructor
   function Create(Posicion_X:Posicion;
                   Posicion_Y : Posicion;
                   Velocidad_X : Velocidad;
                  Velocidad_Y : Velocidad) return Movil;
   -- Métodos de la clase Movil
   -- Se dan cuando el primer parametro es un tagged record
   function To_String(This : Clase_Movil) return String;

   
   private
   type Clase_Movil is tagged record
      Posicion_X : Posicion;
      Posicion_Y : Posicion;
      Velocidad_X : Velocidad;
      Velocidad_Y : Velocidad;
   end record;

end Moviles;
