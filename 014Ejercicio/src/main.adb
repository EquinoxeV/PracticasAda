with Ada.Text_IO; use Ada.Text_IO;
with Moviles; use Moviles;


procedure Main is

   Movil_1 : Movil;
begin
   -- Generar la clase movil con los siguientes atributos
   -- PosicionX, PosicionY, VelocidadX, VelocidadY
   -- Los objetos de esa clase se inicializan en el (0,0) con una velocidad X e Y que debe
   -- ser definida al momento de instanciar un objeto
   -- Agregar un metodo To_String() que muestra la posición actual del movil
   -- Agregar un metodo Actualizar que recibe un delta del tiempo
   -- y actualiza la posicion del movil


   Movil_1 := Create(0,0,0,0);
   Put_Line(Movil_1.To_String);
   null;
end Main;
