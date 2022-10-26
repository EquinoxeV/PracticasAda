package Float_array is

      -- Declarar un tipo de arreglo de float
      type Array_Float is array(Positive range <>) of Float;
      
      -- declara una funcion que recibe un numero y me devuelve un arreglo
      -- de numeros al azar N posiciones
      function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Array_Float;     
      
      -- Declarar una funcion que recibe un arreglo de ese tipo y me devuelve
      -- la sumatoria con 'First y 'Last
      
      function Sumatoria(Entrada: Array_Float) return Float;
      
      -- declarar una funcion que recibe un arreglo de ese tipo y me devuelve
      -- el promediio
      
      function Promedio(Arreglo_Media : in Array_Float) return Float;
      
      -- un procedimiento que muestra el arreglo por pantalla
      
      
      
      procedure Muestreo_De_Datos;
      
      -- Una funcion que reciba un array y un valor
      -- Devuelve otro array con los valores mayores al parametro
      function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float;
      
   
   private
   
   type Array_Float is Array(1..100) of Float;

end Float_array;
