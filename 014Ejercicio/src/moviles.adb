package body Moviles is

   function Create(Posicion_X:Posicion;
                   Posicion_Y : Posicion;
                   Velocidad_X : Velocidad;
                  Velocidad_Y : Velocidad) return Movil is
      Result : Movil;
   begin
      Result := new Clase_Movil;
      Result.Posicion_X := 0;
      Result.Posicion_Y := 0;
      Result.Velocidad_X := 0;
      Result.Velocidad_Y := 0;
      return Result;
   end;
   
   function Actualizar_Movil(Movil) return Movil is
   begin
   end;
   
   
function To_String(This : Clase_Movil) return String is
   begin
      return "Soy el movil nuevo: Mi posición es ->"
         & "(" & To_String(This.Posicion_X'Image) & ", " & To_String(This.Posicion_Y'Image) & ")";
        --  & " y mi velocidad de X " & To_String(This.Velocidad_X'Image)
        --  & " y mi velocidad de Y " & To_String(This.Velocidad_Y'Image);
   end;

end Moviles;
