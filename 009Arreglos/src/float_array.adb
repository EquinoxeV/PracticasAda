package body Float_array is

    --declara una funcion que recibe un numero N y me devuelve un arreglo
      --de N numeros al azar
      function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Array_Float is
         G : Generator;
         Result : Array_Float(1..Num_N);
      begin
         for I in Result'Range loop
            Result(I) := Float((Random(G) * 10.0) + 1.0);
         end loop;
         return Result;
      end;    
      
      --declarar una funcion que recibe un arreglo de ese tipo y me devuelve la
      --sumatoria con 'First y 'Last
      function Sumatoria(Entrada:in Array_Float) return Float is
         Retorno:Float := 0.0;
      begin
         for I in Entrada'Range loop
            Retorno := Retorno + Entrada(I);
         end loop;
         return Retorno;
      end;    
      
      --declarar una funcion que recibe un arreglo de ese tipo y me devuelve la
      --promedio
      function Promedio(Arreglo_Media : in Array_Float) return Float is
      begin       
        return Sumatoria(Arreglo_Media)/Float(Arreglo_Media'Length);
      end;
      
      --Un procedimiento que muestra el arreglo por pantalla
      procedure Mostrar (Arr : Array_Float) is
      begin
         for I in Arr'Range loop
            Put(Arr (I), Exp=>0);
            Put_Line("");
         end loop;
      end Mostrar; 
      
      --Mayores
      --Una function que reciba un array y un valor
      --Devuelve otro array con los valores mayores al parametro
      function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float is
         --Result : Array_Float(1..0); --Un array Vacio
         Aux : Array_Float := Arreglo; --Copio el arreglo para que tenga la misma longitud
         Indice : Integer := Arreglo'First;
      begin
         
         for I in Arreglo'Range loop
            if Arreglo(I)>Valor then
               Aux(Indice) := Arreglo(I);
               Indice := Indice+1;
            end if;
         end loop;
         
         declare
            Result : Array_Float(Arreglo'First..Indice-1); --Me puede quedar vacio
         begin
            Result := Aux(Arreglo'First..Indice-1);--Slice
            return Result;
         end;
      end Mayores;

end Float_array;
