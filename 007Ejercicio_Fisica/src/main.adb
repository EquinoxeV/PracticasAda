with Fisica; use Fisica;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

begin
   --  Crear una libreria que se llama Fisica
   -- Definir los siguientes tipos de datos en esa libreria
   -- Distancia, Velocidad, Tiempo, Aceleración
   -- Agregar un metodo que calcula la velocidad de un movil
   -- despues de x tiempo
   -- Vf = V_Inicial * t + 1/2 * a * t^2
   -- m/s = m/s + 1/2 * M/s^2 * s^2

   -- funcion Posicion_final(Distancia, Velocidad_Inicial, Tiempo, aceleracion) returns Distancia ..
   -- function Posicion_Final(Posicion_Inicial : Distancia, Velocidad_Inicial, tiempo_transcurrido, Aceleracion)

   Put_Line("Inicio del programa.");

   declare
   begin
      Aceleracion := ;
      Posicion_Inicial := ;
      Velocidad_Inicial := ;
      Tiempo_Transcurrido := ;

      Velocidad_Final := Posicion_Final(Posicion_Inicial, Velocidad_Inicial, Tiempo_Transcurrido, Aceleracion);

      Put_Line("La velocidad final es: " & Float(Velocidad_Final), Exp => 0);

   end;



   Put_Line("Fin del programa");
end Main;
