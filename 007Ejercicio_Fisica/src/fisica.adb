package body Fisica is

   function Posicion_Final(Posicion_Inicial : Distancia,
                           Velocidad_Inicial : Velocidad,
                           Tiempo_Transcurrido : Tiempo,
                          Aceleracion) return Velocidad_Final is 
      -- Vf = V_Inicial * t + 1/2 * a * t^2
      -- m/s = m/s + 1/2 * M/s^2 * s^2
   begin
      -- Velocidad_Final = Velocidad_Inicial * Tiempo_Transcurrido + 1/2 * Aceleracion * Tiempo_Transcurrido^2;
      Velocidad_Final := Velocidad_Inicial * Tiempo_Transcurrido + 1/2 * Aceleracion * Tiempo_Transcurrido^2;
      return Velocidad_Final;
      
   end;

end Fisica;
