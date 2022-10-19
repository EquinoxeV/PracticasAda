package IO is   
   function Get_NotEmpty_Line     
     (ErrorMessage : String := "Entrada Vacia. Vuelva a Ingresar") return String;
   
   function Try_Get_Integer
     (Value: out Integer) return Boolean;
   
   function Get_Integer
     (ErrorMessage: String := "No ingreso un numero. Vuelva a intentarlo") return Integer;
end IO;
