With Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body IO is

   
function Get_NotEmpty_Line     
     (Prompt : String := "";
      Error_Message : String := Default_String_Error_Message) return String is
      use Ada.Text_IO;
      
   begin
      
      if(Prompt'Length>0) then
         Put_Line(Prompt);
      end if;
      
      
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
         Put_Line(Error_Message);
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
   
   --  function Get_Integer
   --    (ErrorMessage: String := "No ingreso un numero. Vuelva a intentarlo") return Integer is
   --  begin
   --     loop
   --        declare
   --           Value : Integer;
   --        begin
   --           if (Try_Get_Integer(Value)) then
   --              Put_Line("El valor es: " & Value'Image);
   --              return Value;
   --           end if;
   --        end;
   --        Put_Line(ErrorMessage);
   --     end loop;
   --  end Get_Integer;
   
   
   function Get_Integer
     (Prompt : String := "";
      Error_Message: String := Default_Integer_Error_Message) return Integer is  
      EntradaCorrecta : Boolean := false;
      Value : Integer; 
   begin
      -- Lenght(Prompt)
      if(Prompt'Length>0) then
         Put_Line(Prompt);
      end if;
      
      
      while not(EntradaCorrecta) loop
         EntradaCorrecta := Try_Get_Integer(Value);   
         
         if (not EntradaCorrecta) then 
              Put_Line(Error_Message);
         end if;
         
      end loop;
      return Value;
   end Get_Integer;
   
 
end IO;
