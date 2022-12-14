package Fisica is

   type Distancia is new Float; -- metros
   type Velocidad is new Float; -- metros/s
   type Tiempo is new Integer; -- En segundos
   type Aceleracion is new Float;
   
   subtype Posicion_Inicial is Distancia;
   subtype Velocidad_Final is Velocidad;
   subtype Velocidad_Inicial is Velocidad;
   subtype Tiempo_Transcurrido is Tiempo;
   
   function Posicion_Final(Posicion_Inicial : Distancia;
                           Velocidad_Inicial : Velocidad;
                           Tiempo_Transcurrido : Tiempo;
                          Aceleracion : Aceleracion) return Velocidad_Final;

end Fisica;
