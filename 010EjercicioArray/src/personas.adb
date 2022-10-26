package body Personas is

   -- Declaramos la persona
     type Persona is record
        Nombre : Unbounded_String;
        Apellido : Unbounded_String;
        Edad : Integer;
     end record;
   
    -- type Arreglo_Personas is array(Persona) of Persona;
   
   
   type Dato_Persona is Unbounded_String;
   
   function Recoger_Datos (Nombre_Persona : Dato_Persona, 
                           Apellido_Persona : Dato_Persona,
                           Edad_Persona : Integer) return Persona is
   begin 
      -- Pediremos el nombre, apellido y edad para devolver un objeto de tipo persona
   
   
   
   end;



end Personas;
