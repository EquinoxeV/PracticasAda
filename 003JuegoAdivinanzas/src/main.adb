with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

begin
   -- La computadora determina un número al azar entre el 1 y 100
   -- La computadora da 5 oportunidades al usuario para adivinar el número
   -- El usuario arriesga un número y la computadora dice si es mayor o menor
   -- al número secreto
   -- Si adivino antes de las 5 oportunidades gana, sino pierde

   Put_Line("Inicio de programa");

   declare
      -- Declaramos el generador
      G:Generator;
      Numero_Al_Azar : Integer;
      Valor_Del_Usuario : Integer := 0;
      Numero_De_Intentos : Integer := 1;
      Ganador : Boolean := false;
      Max_Oportunidad : constant Integer := 5; -- constante (variables de configuración)
   begin
      Reset(G); -- variamos la secuencia del generador
      Numero_Al_Azar := Integer( (Random(G) * 99.0) + 1.0);
      Put_Line("Adivina el número secreto");
      Put_Line("El valor ha sido generado, comienza el juego.");
      Put_Line("Tendras 5 oportunidades para acertar, suerte.");

      loop
         Put_Line("Introduce el número: ");
         Get(Valor_Del_Usuario);

         Ganador := Valor_Del_Usuario = Numero_Al_Azar;

         exit when Ganador;

         Put_Line("El valor ingresado es " &
                    (if(Valor_Del_Usuario > Numero_Al_Azar) then " mayor" else "menor")
                  & " al número secreto");

         --  if(Valor_Del_Usuario > Numero_Al_Azar) then
         --     Put_Line("El valor ingresado es mayor que el número secreto");
         --  elsif(Valor_Del_Usuario < Numero_Al_Azar) then
         --        Put_Line("El valor ingresado es menor que el número secreto");
         --     else
         --        Ganador := true;
         --  end if;
         Numero_De_Intentos := Numero_De_Intentos + 1;

         exit when (Numero_De_Intentos > Max_Oportunidad) or (Ganador);

      end loop;

      Put_Line(if Ganador then "Ganaste" else "Perdiste");
      Put_Line("El valor era: " & Numero_Al_Azar'Image);


   end;



   Put_Line("Fin de programa");
end Main;
