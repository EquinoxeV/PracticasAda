with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with IO; use IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Juego; use Juego;


procedure Main is

   function Try_Get_Profesion(Profesion : out Profesiones) return Boolean is
   begin
      Profesion := Profesiones'Value(Get_NotEmpty_Line);
      return true;
   exception
         when others => return false;

   end;

   function Get_Profesion(Prompt : String := "";
                          Error_Message : String := "Entrada Invalida. Reintente.")
                          return Profesiones is
      Entrada_Correcta : Boolean;
      Result : Profesiones;
   begin
      if(Prompt'Length>0) then
         Put_Line(Prompt);
      end if;

      for P in Profesiones loop
            Put_Line(To_String(P));
      end loop;

      loop
         Entrada_Correcta := Try_Get_Profesion(Result);
         if(Entrada_Correcta) then
            return Result;
         end if;
         Put_Line(Error_Message);

      end loop;

   end;




begin

   Put_Line("Inicio del programa");

   -- Put_Line("Cuantos jugadores son? ");

   declare
      Lista_Jugadores : Jugadores(1..Get_Integer(Prompt => "Cuantos jugadores son?"));

   begin
      for  I in Lista_Jugadores'Range loop

         --  Put_Line("Cual es la profesión del personaje ");
         --  for P in Profesiones loop
         --     Put_Line(To_String(P));
         --  end loop;
         --
         --
         --  declare
         --     Profesion : Profesiones := Profesiones'Value(Get_NotEmpty_Line);
         --
         --  begin
         --     Put_Line("Eligio " & To_String(Profesion));
         --
         --  end;

         -- Put_Line("Como se llama el jugador: " & I'Image);



         declare


            Nombre_Jugador : String := Get_NotEmpty_Line("Como se llama el jugador? " & I'Image);

            Campeon : Jugador :=
              (Nombre => To_Unbounded_String(Nombre_Jugador),
               Profesion => Get_Profesion("Cual es la profesión?"),
               others => <>); -- Asignación
         begin
            Lista_Jugadores(I) := Campeon;
         end;

      end loop;

      -- Mostramos los jugadores
      for Champ of Lista_Jugadores loop
         Put_Line(To_String(Champ));
      end loop;


      Put_Line("Fin de programa");
   end;

end Main;
