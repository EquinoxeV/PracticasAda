with Ada.Text_IO; use Ada.Text_IO;
with Figuras; use Figuras;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Main is

   Un_Rectangulo : Figura;

begin
   -- Figuras!!
   -- Crear un paquete
   -- Tenemos la clase abstracta figura con el método abstracto (calcular_Area)
   -- Heredan el cuadrado y el círculo
   -- El rectangulo tiene base y altura
   -- El circulo tiene radio
   -- No se olviden de los Getters!! y los constructores!!
   -- Las subclases implementan el método area
   -- El el main generar un vector de 10 figuras en forma aleatoria que tenga
   -- circulos (Pi * radio al cuadrado) y rectangulos
   -- Calcular con tamaño tambien aleatorio
   -- Mostrar la sumatoria del Area de todas las figuras una vez cargado al array


   -- Creamos un rectangulo y le pasamos la base
   Un_Rectangulo := Create_Rectangulo(5);
   -- depuración
   Put_Line(Un_Rectangulo.Get_Base'Image);

   null;
end Main;
