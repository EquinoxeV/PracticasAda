package Geometria is

   type Distancia is new Float;
   type Area is new Float;
   subtype Metros is Distancia;
   
   function "*"(Left, -- si varios parametros llevan lo mismo, con una coma recogen ambos lo mismo
                   Right: in Distancia ) return Area; -- sobrecarga de operadores
   

end Geometria;
