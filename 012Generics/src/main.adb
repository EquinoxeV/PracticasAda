with Ada.Text_IO; use Ada.Text_IO;
with Generic_Demo; use Generic_Demo;

procedure Main is

   Default_Max_Jugadores : constant Integer := 23;
   Default_Min_Jugadores : constant Integer := 11;

   type Equipos is (Alfa, Beta, Gama, Epsilon, Iota);
   type Cantidad_Jugadores is new Integer range Default_Min_Jugadores..Default_Max_Jugadores;
   type Sueldo is range 0..2**40;
   type Metros_Sobre_Segundos is delta 0.001 digits 4;

   C1 : Cantidad_Jugadores;
   C2 : Cantidad_Jugadores;

   Equipo_Favorito : Equipos;
   Equipo_Odiado : Equipos;

   NumeroA : Natural;
   NumeroB : Natural;

   Sueldo_Sasazaki : Sueldo;
   Sueldo_Annaisha : Sueldo;

   -- Velocidad_Inicial : Metros_Sobre_Segundos;
   -- Velocidad_Final : Metros_Sobre_Segundos;


   procedure Swap_Equipos(Team1 : in out Equipos;
                          Team2 : in out Equipos) is
      Aux : Equipos;
   begin
      Aux := team1;
      Team1 := Team2;
      Team2 := Aux;
   end;


   procedure Swap_Numeros (Entrada1: in out Integer;
                           Entrada2: in out Integer)   is
      Aux:Integer;
   begin
      Aux := Entrada1;
      Entrada1 := Entrada2;
      Entrada2 := Aux;
   end;


   procedure Swap is new Generic_Swap(T => Cantidad_Jugadores);
   procedure Swap is new Generic_Swap(T => Equipos);
   procedure Swap is new Generic_Swap(T => Natural);
   procedure Swap is new Generic_Swap(T => Sueldo);



begin
   C1 := 23;
   C2 := 15;

   Put_Line(" ("& C1'Image & "," & C1'Image & ")");
   Put_Line(" ("& C2'Image & "," & C2'Image & ")");

   -- Otro ejemplo
   Equipo_Favorito := Alfa;
   Equipo_Odiado := Beta;
   Put_Line("(" & Equipo_Favorito'Image & "," & Equipo_Odiado'Image & ")");
   -- Swap_Equipos(Equipo_Favorito, Equipo_Odiado);
   Swap(Equipo_Favorito, Equipo_Odiado);
   Put_Line("(" & Equipo_Favorito'Image & "," & Equipo_Odiado'Image & ")");

   -- Otro mas
   NumeroA := 10;
   NumeroB := 20;
   Put_Line("(" & NumeroA'Image & "," & NumeroB'Image & ")");
   -- Swap_Numeros(NumeroA, NumeroB);
   Swap(NumeroA, NumeroB);
   Put_Line("(" & NumeroA'Image & "," & NumeroB'Image & ")");


   -- Otro
   Sueldo_Sasazaki := 100000000;
   Sueldo_Annaisha := 100000000;
   Put_Line("(" & Sueldo_Sasazaki'Image & "," & Sueldo_Annaisha'Image & ")");
   Swap(Sueldo_Sasazaki, Sueldo_Annaisha);
   Put_Line("(" & Sueldo_Sasazaki'Image & "," & Sueldo_Annaisha'Image & ")");

   null;
end Main;
