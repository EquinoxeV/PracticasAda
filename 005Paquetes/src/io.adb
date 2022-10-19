With Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body IO is

   
function Get_NotEmpty_Line     
     (ErrorMessage : String := "Entrada Vacia. Vuelva a Ingresar") return String is
      use Ada.Text_IO;
      
   begin
      loop
         declare
            Entrada : String := Get_Line;
         begin
            declare
               Entrada_sin_espacios : String := Trim(Entrada, Both);
            begin
            if(Entrada_sin_espacios'Length > 0) then return Entrada_sin_espacios;
            end if;
            end;
         end;
         Put_Line(ErrorMessage);
      end loop;
      
      
   end Get_NotEmpty_Line;
   
   
   function Try_Get_Integer
     (Value: out Integer) return Boolean is
   begin
      Value := Integer'Value(Get_Line);
      --Get(Value);
      return true;
   exception
         when others => return false;
      
   end Try_Get_Integer;
   
   function Get_Integer
     (ErrorMessage: String := "No ingreso un numero. Vuelva a intentarlo") return Integer is  
   begin      
      loop         
         declare      
            Value : Integer;                     
         begin                   
            if (Try_Get_Integer(Value)) then   
               Put_Line("El valor es: " & Value'Image);
               return Value;                           
            end if;                               
         end;   
         Put_Line(ErrorMessage);
      end loop;               
   end Get_Integer;
   
   
end IO;
