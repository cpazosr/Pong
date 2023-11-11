-- Programacion RGB del juego pong en movimiento (behavioural)
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: RGBpong
-- Pertenece a la entidad top: Pong
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- HalfAdder.vhd
-- MasUno10b.vhd
-- Contador10b.vhd
-- ContadorMod525.vhd
-- ContadorMod800.vhd
-- SyncVGA800x525.vhd

-- Descripcion
-- Este codigo es la entidad de diseño comportamental de lo que hay que dibujar en la pantalla
-- Incluye la lógica y dinámica del juego completo Pong, y la lógica de dibujado en VGA 640 x 480
-- Entradas:
	-- CLK, RST, START: señales para control y sincronía del juego con VGA
	-- JOYSTICK_Y, JOYSTICK_X: senales de control de joystick analogica a digital (ADC) para control de paddle izquierdo
	-- PAR_SWITCH2: controles de paddle derecho (automatico o manual)
	-- DIFICULTAD: interruptores que controlan la velocidad de juego
-- Salidas:
	-- H_SYNC, V_SYNC: sincronia horizontal y vertical para configuracion VGA
	-- R, G, B: señales de color a usar para los pixeles del VGA

-- Comentarios extra:
--

-- Librerias a usar
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;											-- standard logic
USE IEEE.std_logic_unsigned.ALL;										-- unsigned
-------------------------------------------------------------------

-- Entidad
ENTITY RGBpong IS
	PORT (CLK, RST, START: IN std_logic;							-- senales  clk, rst y start para tiempos y control
			JOYSTICK_Y, JOYSTICK_X: IN std_logic; 					-- senales del joystick para paddle izquierdo
			PAR_SWITCH2: IN std_logic_vector (2 DOWNTO 0);		-- controles de paddle derecho
			DIFICULTAD: IN std_logic_vector (1 DOWNTO 0);		-- interuptores controladores de dificultades
			H_SYNC, V_SYNC: OUT std_logic;							-- syncs horizontales y verticales
			R, G, B: OUT std_logic_vector (3 DOWNTO 0));			-- combinacion de colores en vector de 4 cada uno
END ENTITY RGBpong;
-------------------------------------------------------------------

-- Arquitectura
ARCHITECTURE ARC OF RGBpong IS

-- Componentes:
-- Senales de sincronizacion VGA
COMPONENT SyncVGA800x525 IS
	PORT (CLK, RST, START: IN std_logic;							-- senales de control clk y reset y start
			PIXEL, LINEA: OUT std_logic_vector (9 DOWNTO 0);	-- cuentas de ambos contadores (X, Y respectivamente)
			H_SYNC, V_SYNC: OUT std_logic);							-- senales sincronizacion horizontal y vertical
END COMPONENT SyncVGA800x525;
-------------------------------------------------------------------
								
-- Senales de conexion componentes y maquinas de estado
SIGNAL SCREEN_X, SCREEN_Y: std_logic_vector (9 DOWNTO 0);	-- cuentas en x y
-------------------------------------------------------------------

-- Soporte para el juego:

-- Colores:
-- Background del juego										-- azulado
CONSTANT	R_BACKGROUND: std_logic_vector (3 DOWNTO 0) := X"7";
CONSTANT G_BACKGROUND: std_logic_vector (3 DOWNTO 0) := X"A";
CONSTANT B_BACKGROUND: std_logic_vector (3 DOWNTO 0) := X"A";

-- Color paddle izquierdo									-- amarillo
CONSTANT	R_LPADDLE: std_logic_vector (3 DOWNTO 0) := X"F";
CONSTANT G_LPADDLE: std_logic_vector (3 DOWNTO 0) := X"F";
CONSTANT B_LPADDLE: std_logic_vector (3 DOWNTO 0) := X"5";

-- Color paddle derecho										-- negro
CONSTANT	R_RPADDLE: std_logic_vector (3 DOWNTO 0) := X"0";
CONSTANT G_RPADDLE: std_logic_vector (3 DOWNTO 0) := X"0";
CONSTANT B_RPADDLE: std_logic_vector (3 DOWNTO 0) := X"0";

-- Color de las lineas arriba y abajo					-- blanco
CONSTANT	R_LINES: std_logic_vector (3 DOWNTO 0) := X"F";
CONSTANT G_LINES: std_logic_vector (3 DOWNTO 0) := X"F";
CONSTANT B_LINES: std_logic_vector (3 DOWNTO 0) := X"F";

-- Color de la pelota										-- rojo obscuro
CONSTANT	R_BALL: std_logic_vector (3 DOWNTO 0) := X"9";
CONSTANT G_BALL: std_logic_vector (3 DOWNTO 0) := X"3";
CONSTANT B_BALL: std_logic_vector (3 DOWNTO 0) := X"3";

-- Tamaños:
-- Tamaño paddles
CONSTANT PADDLE_HEIGHT: natural := 70;		-- altura
CONSTANT PADDLE_WIDTH: natural := 10;		-- anchura
-- Tamaños limites pantalla y bordes
CONSTANT LEFT_BOUND: natural := 200;		-- borde izquierdo
CONSTANT RIGHT_BOUND: natural := 750;		-- borde derecho
CONSTANT UPPER_BOUND: natural := 60;		-- borde superior
CONSTANT DOWN_BOUND: natural := 480;		-- borde inferior
-- Tamaño pelota
CONSTANT BALL_RADIUS: natural := 10;		-- radio

-------------------------------------------------------------------
-- Inicio de la arquitectura
BEGIN
	-- Inicializacion componente
	SYNC: SyncVGA800x525 PORT MAP (CLK, RST, START, SCREEN_X, SCREEN_Y, H_SYNC, V_SYNC);	-- cuentas y syncs
	
	-------------------------------------------------------------------
	-- Dinamica de juego
	GAME: PROCESS (CLK, SCREEN_X, SCREEN_Y, JOYSTICK_Y, JOYSTICK_X, PAR_SWITCH2, DIFICULTAD, RST)
	
	-- Variables para juego (comportamental):
	-- Coordenadas verticales Paddles
	VARIABLE LEFT_PADDLE_Y: std_logic_vector (9 DOWNTO 0) := "0001101110";	-- 110
	VARIABLE RIGHT_PADDLE_Y: std_logic_vector (9 DOWNTO 0) := "0110010000";	-- 400
	-- Coordenadas pelota (X,Y)
	VARIABLE BALL_X: std_logic_vector (9 DOWNTO 0) := "0111010000";	-- 464
	VARIABLE BALL_Y: std_logic_vector (9 DOWNTO 0) := "0100010011";	-- 275
	-- Direcciones de la pelota (X, Y)
	VARIABLE BALL_DIRECTION_X: std_logic := '1';		-- mueve hacia derecha
	VARIABLE BALL_DIRECTION_Y: std_logic := '1';		-- mueve hacia abajo
	-- Gol y puntajes
	VARIABLE GOAL: std_logic := '0';		-- anotacion
	VARIABLE GOALJ1: natural := 0;		-- puntaje jugador 1
	VARIABLE GOALJ2: natural := 0;		-- puntaje jugador 2
	-- Velocidades de juego
	VARIABLE PADDLE_VEL: natural := 1;			-- velocidad paddle
	VARIABLE BALL_VEL_X: natural := 1;			-- velocidad en x de la pelota
	VARIABLE BALL_VEL_Y: natural := 1;			-- velocidad en y de la pelota
	
		BEGIN	
			-- Dificultades
			IF (DIFICULTAD = "00") THEN			-- dificultad facil y lenta
				PADDLE_VEL := 1;
				BALL_VEL_X := 1;
				BALL_VEL_Y := 1;
			ELSIF (DIFICULTAD = "01") THEN 		-- juego tendido en horizontal
				PADDLE_VEL := 2;
				BALL_VEL_X := 3;
				BALL_VEL_Y := 2;
			ELSIF (DIFICULTAD = "10") THEN		-- juego tendido en vertical
				PADDLE_VEL := 2;
				BALL_VEL_X := 2;
				BALL_VEL_Y := 3;
			ELSE											-- dificultad dificil y rapida
				PADDLE_VEL := 2;
				BALL_VEL_X := 3;
				BALL_VEL_Y := 3;
			END IF;
			
			-- Dinamica de paddles y pelota
			IF (CLK'EVENT AND CLK = '1') THEN											-- a cada alza de reloj: sincronia
				IF (SCREEN_X = "0000000000" AND SCREEN_Y = "0000000000") THEN	-- a cada frame
					
					-- Movimiento de paddles:
					-- Paddle izquierdo
					IF (JOYSTICK_Y = '0') THEN												-- joystick para ir arriba
						IF (LEFT_PADDLE_Y > UPPER_BOUND) THEN							-- verificar que no sobrepase la linea superior
							LEFT_PADDLE_Y := LEFT_PADDLE_Y - PADDLE_VEL;				-- mover paddle hacia arriba
						END IF;
					END IF;
					IF (JOYSTICK_X = '0') THEN												-- joystick para ir abajo (izquierda fisicamente)
						IF (LEFT_PADDLE_Y < DOWN_BOUND - PADDLE_HEIGHT) THEN		-- verificar que no sobrepase la linea inferior
							LEFT_PADDLE_Y := LEFT_PADDLE_Y + PADDLE_VEL;				-- mover paddle hacia abajo
						END IF;
					END IF;
					
					-- Paddle derecho
					IF (PAR_SWITCH2(2) = '1') THEN										-- movimiento automatico (sincronizado a la coordenada Y de la pelota)
						IF (RIGHT_PADDLE_Y + (PADDLE_HEIGHT / 2) >= BALL_Y AND 	-- si la pelota esta mas abajo que la mitad del paddle
							RIGHT_PADDLE_Y > UPPER_BOUND) THEN							-- sin sobrepasar el limite inferior
								RIGHT_PADDLE_Y := RIGHT_PADDLE_Y - PADDLE_VEL;		-- paddle va hacia abajo
						END IF;
						IF (RIGHT_PADDLE_Y + (PADDLE_HEIGHT / 2) <= BALL_Y AND 	-- si la pelota esta mas arriba que la mitad del paddle
							RIGHT_PADDLE_Y < DOWN_BOUND - PADDLE_HEIGHT) THEN		-- no sobrepasa el limite superior
								RIGHT_PADDLE_Y := RIGHT_PADDLE_Y + PADDLE_VEL;		-- paddle va hacia arriba
						END IF;
					ELSE																			-- movimiento manual jugador 2
						IF (PAR_SWITCH2(0) = '1') THEN 									-- interruptor para ir arriba
							IF (RIGHT_PADDLE_Y > UPPER_BOUND) THEN						-- verificar que no sobrepase la linea superior
								RIGHT_PADDLE_Y := RIGHT_PADDLE_Y - PADDLE_VEL;
							END IF;
						END IF;
						IF (PAR_SWITCH2(1) = '1') THEN 									-- boton para ir abajo
							IF (RIGHT_PADDLE_Y < DOWN_BOUND - PADDLE_HEIGHT) THEN -- verificar que no sobrepase la linea inferior
								RIGHT_PADDLE_Y := RIGHT_PADDLE_Y + PADDLE_VEL;
							END IF;
						END IF;
					END IF;
					
					-- Movimiento de pelota:
					-- Movimiento horizontal
					IF (GOALJ1 /= 3 AND GOALJ2 /= 3) THEN	-- moverse solo si nadie ha ganado (3 puntos para ganar)
						IF (BALL_DIRECTION_X = '1') THEN
							BALL_X := BALL_X + BALL_VEL_X;	-- mueve derecha
						ELSE
							BALL_X := BALL_X - BALL_VEL_X;	-- mueve izquierda
						END IF;
						-- Movimiento vertical
						IF (BALL_DIRECTION_Y = '1') THEN
							BALL_Y := BALL_Y + BALL_VEL_Y;	-- mueve abajo
						ELSE
							BALL_Y := BALL_Y - BALL_VEL_Y;	-- mueve arriba
						END IF;
					END IF;
					
					-- Colisiones:
					-- Colision pelota con bordes
					IF (BALL_Y <= UPPER_BOUND OR 											-- si toca o sobrepasa el borde superior
						BALL_Y >= DOWN_BOUND - BALL_RADIUS) THEN						-- si toca o sobrepasa el borde inferior
							BALL_DIRECTION_Y := NOT BALL_DIRECTION_Y;					-- cambiar de direccion vertical
					END IF;
					-- Colision pelota con paddle izquierdo
					IF (BALL_X >= LEFT_BOUND AND
						BALL_X <= LEFT_BOUND + PADDLE_WIDTH AND						-- si entra en el area horizontal de paddle
						BALL_Y >= LEFT_PADDLE_Y AND										-- y entra en el area vertical del paddle
						BALL_Y <= LEFT_PADDLE_Y + PADDLE_HEIGHT) THEN
							BALL_DIRECTION_X := NOT BALL_DIRECTION_X;					-- cambiar de direccion horizontal
					END IF;
					-- Colision pelota con paddle derecho
					IF (BALL_X + BALL_RADIUS >= RIGHT_BOUND - PADDLE_WIDTH AND
						BALL_X <= RIGHT_BOUND AND											-- si entra en el area horzontal del paddle
						BALL_Y >= RIGHT_PADDLE_Y AND										-- y entra en el area vertical del paddle
						BALL_Y <= RIGHT_PADDLE_Y + PADDLE_HEIGHT) THEN
							BALL_DIRECTION_X := NOT BALL_DIRECTION_X;					-- cambiar de direccion horizontal
					END IF;
					
					-- Logica de puntaje
					IF (BALL_X <= "0010010000") THEN	-- 144 		-- pelota sale por el lado izquierdo
						GOAL := '1';										-- anotacion
						BALL_DIRECTION_X := '1';						-- nueva pelota movimiento a la derecha
						GOALJ2 := GOALJ2 + 1;							-- aumenta puntaje del jugador 2
					ELSIF (BALL_X >= "1100010000") THEN	-- 748	-- pelota sale por el lado derecho
						GOAL := '1';										-- anotacion
						BALL_DIRECTION_X := '0';						-- nueva pelota movimiento a la izquierda
						GOALJ1 := GOALJ1 + 1;							-- aumenta puntaje del jugador 1
					ELSE
						GOAL := '0';										-- sin anotacion
					END IF;
					
					IF (GOAL = '1') THEN									-- si hay un gol
						BALL_X := "0111001011";	-- 459				-- centrar la pelota
						BALL_Y := "0100010011";	-- 275
					END IF;
					
				END IF;
			END IF;
			
			-------------------------------------------------------------------
			-- Reset
			IF (RST = '0') THEN
				BALL_X := "0111010000";	-- 464	-- centrar la pelota, pero se queda con el momentum de cuando se presiono
				BALL_Y := "0100010011";	-- 275	-- asi es algo "similar" a "direccion aleatoria" inicial del juego
				
				LEFT_PADDLE_Y := "0011111010";	-- 250	-- centrar posicion de los paddles
				RIGHT_PADDLE_Y := "0011111010";	-- 250
				
				GOALJ1 := 0;		-- reiniciar puntajes de ambos jugadores
				GOALJ2 := 0;
				
				IF (( SCREEN_X <= (LEFT_BOUND + 169) and 	-- limpiar texto de partida terminada lado izquierdo
					SCREEN_X >= (LEFT_BOUND + 149) and 
					SCREEN_Y >= (UPPER_BOUND + 220) and 
					SCREEN_Y <= (UPPER_BOUND + 233))) THEN
						R <= R_BACKGROUND;
						G <= G_BACKGROUND;
						B <= B_BACKGROUND;
				END IF;
				IF (( SCREEN_X >= (RIGHT_BOUND - 169) and -- limpiar texto de partida terminada lado derecho
					SCREEN_X <= (RIGHT_BOUND - 149) and 
					SCREEN_Y >= (UPPER_BOUND + 220) and 
					SCREEN_Y <= (UPPER_BOUND + 233))) THEN
						R <= R_BACKGROUND;
						G <= G_BACKGROUND;
						B <= B_BACKGROUND;
				END IF;
			END IF;
			
			-------------------------------------------------------------------------
			-- Pixels:
			-- Background
									-- 144								-- 784
			IF (SCREEN_X >= "0010010000" AND SCREEN_X <= "1100010000" AND			-- todo dentro de la zona visible VGA
				SCREEN_Y >= "0000100011" AND SCREEN_Y <= "1000000011") THEN
									-- 35									-- 515
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
					
			-- Cualquier cosa fuera de la zona visible
			ELSE
					R <= X"0";			-- negro
					G <= X"0";
					B <= X"0";
			END IF;
			
			-- Linea borde superior
			IF (SCREEN_Y = UPPER_BOUND AND SCREEN_X >= LEFT_BOUND AND SCREEN_X <= RIGHT_BOUND) THEN	-- marcar el borde superior
					R <= R_LINES;
					G <= G_LINES;
					B <= B_LINES;
			END IF;
			
			-- Linea borde inferior
			IF (SCREEN_Y = DOWN_BOUND AND SCREEN_X >= LEFT_BOUND AND SCREEN_X <= RIGHT_BOUND) THEN		-- marcar el borde inferior
					R <= R_LINES;
					G <= G_LINES;
					B <= B_LINES;
			END IF;
			
			-- Linea central		-- 464
			IF (SCREEN_X = "0111010000" AND SCREEN_Y >= UPPER_BOUND AND SCREEN_Y <= DOWN_BOUND) THEN 	-- linea mitad de cancha
					R <= R_LINES;
					G <= G_LINES;
					B <= B_LINES;
			END IF;
			
			-- Paddles
			-- Left paddle
			IF ((SCREEN_X >= LEFT_BOUND AND SCREEN_X <= LEFT_BOUND + PADDLE_WIDTH) AND					-- grosor
				(SCREEN_Y >= LEFT_PADDLE_Y AND SCREEN_Y <= LEFT_PADDLE_Y + PADDLE_HEIGHT)) THEN		-- altura
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;
			END IF;
			
			-- Right paddle
			IF ((SCREEN_X >= RIGHT_BOUND - PADDLE_WIDTH AND SCREEN_X <= RIGHT_BOUND) AND				-- grosor
				(SCREEN_Y >= RIGHT_PADDLE_Y AND SCREEN_Y <= RIGHT_PADDLE_Y + PADDLE_HEIGHT)) THEN	-- altura
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;
			END IF;
			
			-- Pelota
			IF ((SCREEN_X >= BALL_X AND SCREEN_X <= BALL_X + BALL_RADIUS) AND		-- grosor
				(SCREEN_Y >= BALL_Y AND SCREEN_Y <= BALL_Y + BALL_RADIUS)) THEN	-- altura (cuadrada)
					R <= R_BALL;
					G <= G_BALL;
					B <= B_BALL;
			END IF;
			
			-- Texto Players
			--------------------- Indicacion de los jugadores y sus marcadores -------------------------	
			-- Indicar  J1         
			-- Creamos la P para el jugador 1
			IF( SCREEN_X <= (LEFT_BOUND + 23) and 
				SCREEN_X >= (LEFT_BOUND + 15) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;
			END IF;
			IF( SCREEN_X <= (LEFT_BOUND + 21) and 
				SCREEN_X >= (LEFT_BOUND + 18) and 
				SCREEN_Y >= (UPPER_BOUND - 19) and 
				SCREEN_Y <= (UPPER_BOUND - 15) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF( SCREEN_X <= (LEFT_BOUND + 23) and 
				SCREEN_X >= (LEFT_BOUND + 18) and 
				SCREEN_Y >= (UPPER_BOUND - 10) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Creamos el 1 del jugador 1
			-- Creamos un rectangulo del color del jugador
			IF( SCREEN_X <= (LEFT_BOUND + 33) and 
				SCREEN_X >= (LEFT_BOUND + 25) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;
			END IF;
			
			-- Creamos un hoyo en la parte superio del rectangulo para el hoyo de la P (lado izquierdo de la pantalla)
			IF( SCREEN_X <= (LEFT_BOUND + 33) and 
				SCREEN_X >= (LEFT_BOUND + 31) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 5) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Borramos el exceso para el palo de la P (lado izquierdo de la pantalla)
			IF( SCREEN_X <= (LEFT_BOUND + 28) and 
				SCREEN_X >= (LEFT_BOUND + 25) and 
				SCREEN_Y >= (UPPER_BOUND - 21) and 
				SCREEN_Y <= (UPPER_BOUND - 5) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Indicar J2  
			-- Creamos la P para el jugador 2
			IF( SCREEN_X >= (RIGHT_BOUND - 33) and 
				SCREEN_X <= (RIGHT_BOUND - 25) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;
			END IF;
			
			-- Creamos un hoyo en la parte superio del rectangulo para el hoyo de la P (lado derecho de la pantalla)
			IF( SCREEN_X >= (RIGHT_BOUND - 30) and 
				SCREEN_X <= (RIGHT_BOUND - 27) and 
				SCREEN_Y >= (UPPER_BOUND - 19) and 
				SCREEN_Y <= (UPPER_BOUND - 15) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Borramos el exceso para el palo de la P (lado derecho de la pantalla)
			IF( SCREEN_X >= (RIGHT_BOUND - 30) and 
				SCREEN_X <= (RIGHT_BOUND - 25) and 
				SCREEN_Y >= (UPPER_BOUND - 10) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Creamos el 2 del jugador 2
			-- Se crea un rectangulo del color del Jugador
			IF( SCREEN_X >= (RIGHT_BOUND - 23) and 
				SCREEN_X <= (RIGHT_BOUND - 15) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2) ) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;
			END IF;
			
			-- Se borra un rectangulo de la parte superior izquierda 
			IF( SCREEN_X >= (RIGHT_BOUND - 23) and 
				SCREEN_X <= (RIGHT_BOUND - 19) and 
				SCREEN_Y >= (UPPER_BOUND - 20) and 
				SCREEN_Y <= (UPPER_BOUND - 15) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Se borra un rectangulo de la parte inferior derecha
			IF( SCREEN_X >= (RIGHT_BOUND - 20) and 
				SCREEN_X <= (RIGHT_BOUND - 15) and 
				SCREEN_Y >= (UPPER_BOUND - 11) and 
				SCREEN_Y <= (UPPER_BOUND - 6) ) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			--------------------- Puntuacion Jugador 1 ---------------------------------------	
			-- Se dibuja 1 en el marcador 
			IF (GOALJ1 = 1 AND 
				( SCREEN_X <= (LEFT_BOUND + 138) and 
				SCREEN_X >= (LEFT_BOUND + 130) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2))) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;		
			END IF;
			IF (GOALJ1 = 1 AND 
				( SCREEN_X <= (LEFT_BOUND + 132) and 
				SCREEN_X >= (LEFT_BOUND + 130) and 
				SCREEN_Y >= (UPPER_BOUND - 21) and SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF (GOALJ1 = 1 AND 
				( SCREEN_X <= (LEFT_BOUND + 138) and 
				SCREEN_X >= (LEFT_BOUND + 136) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Se dibuja 2 en el marcador 
			IF (GOALJ1 = 2 AND 
				( SCREEN_X <= (LEFT_BOUND + 138) and 
				SCREEN_X >= (LEFT_BOUND + 130) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2))) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;		
			END IF;
			IF (GOALJ1 = 2 AND 
				( SCREEN_X <= (LEFT_BOUND + 135) and 
				SCREEN_X >= (LEFT_BOUND + 130) and 
				SCREEN_Y >= (UPPER_BOUND - 20) and 
				SCREEN_Y <= (UPPER_BOUND - 15))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF (GOALJ1 = 2 AND 
				( SCREEN_X <= (LEFT_BOUND + 138) and 
				SCREEN_X >= (LEFT_BOUND + 133) and 
				SCREEN_Y >= (UPPER_BOUND - 9) and 
				SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Gana el Jugador 1 
			IF (GOALJ1 >= 3 AND 
				( SCREEN_X <= (LEFT_BOUND + 169) and 
				SCREEN_X >= (LEFT_BOUND + 149) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 233))) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;
			END IF;
			IF (GOALJ1 >= 3 AND 
				( SCREEN_X <= (LEFT_BOUND + 165) and 
				SCREEN_X >= (LEFT_BOUND + 162) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 228))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF (GOALJ1 >= 3 AND 
				( SCREEN_X <= (LEFT_BOUND + 156) and 
				SCREEN_X >= (LEFT_BOUND + 153) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 228))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Pierde Jugador 2
			IF (GOALJ1 >= 3 AND 
				( SCREEN_X >= (RIGHT_BOUND - 169) and 
				SCREEN_X <= (RIGHT_BOUND - 149) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 233))) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;
			END IF;
			IF (GOALJ1 >= 3 AND 
				( SCREEN_X >= (RIGHT_BOUND - 160) and 
				SCREEN_X <= (RIGHT_BOUND - 149) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 229))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
					GOALJ2 := 0;
		   END IF;		
		
			--------------------- Puntuacion Jugador 2 ---------------------------------------	
			-- Se dibuja 1 en el marcador 
			IF (GOALJ2 = 1 AND 
				( SCREEN_X >= (RIGHT_BOUND - 138) and 
				SCREEN_X <= (RIGHT_BOUND - 130) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2))) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;		
			END IF;
			IF (GOALJ2 = 1 AND 
				( SCREEN_X >= (RIGHT_BOUND - 138) and 
				SCREEN_X <= (RIGHT_BOUND - 136) and 
				SCREEN_Y >= (UPPER_BOUND - 21) and 
				SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF (GOALJ2 = 1 AND
				( SCREEN_X >= (RIGHT_BOUND - 132) and 
				SCREEN_X <= (RIGHT_BOUND - 130) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Se dibuja 2 en el marcador 
			-- Se crea un rectangulo del color del Jugador
			IF (GOALJ2 = 2 AND 
				( SCREEN_X >= (RIGHT_BOUND - 138) and 
				SCREEN_X <= (RIGHT_BOUND - 130) and 
				SCREEN_Y >= (UPPER_BOUND - 23) and 
				SCREEN_Y <= (UPPER_BOUND - 2))) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;		
			END IF;
		
			-- Se borra un rectangulo de la parte superior izquierda 
			IF(GOALJ2 = 2 AND 
				( SCREEN_X >= (RIGHT_BOUND - 138) and 
				SCREEN_X <= (RIGHT_BOUND - 134) and 
				SCREEN_Y >= (UPPER_BOUND - 20) and 
				SCREEN_Y <= (UPPER_BOUND - 15))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Se borra un rectangulo de la parte inferior derecha
			IF(GOALJ2 = 2 AND 
				( SCREEN_X >= (RIGHT_BOUND - 135) and 
				SCREEN_X <= (RIGHT_BOUND - 130) and 
				SCREEN_Y >= (UPPER_BOUND - 9) and 
				SCREEN_Y <= (UPPER_BOUND - 5))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Gana el Jugador 2 
			IF (GOALJ2 >= 3 AND 
				( SCREEN_X >= (RIGHT_BOUND - 169) and 
				SCREEN_X <= (RIGHT_BOUND - 149) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 233))) THEN
					R <= R_RPADDLE;
					G <= G_RPADDLE;
					B <= B_RPADDLE;
			END IF;
			IF (GOALJ2 >= 3 AND 
				( SCREEN_X >= (RIGHT_BOUND - 165) and 
				SCREEN_X <= (RIGHT_BOUND - 162) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 228))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			IF (GOALJ2 >= 3 AND 
				( SCREEN_X >= (RIGHT_BOUND - 156) and 
				SCREEN_X <= (RIGHT_BOUND - 153) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 228))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
			END IF;
			
			-- Pierde Jugador 1
			IF (GOALJ2 >= 3 AND 
				( SCREEN_X <= (LEFT_BOUND + 169) and 
				SCREEN_X >= (LEFT_BOUND + 149) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 233))) THEN
					R <= R_LPADDLE;
					G <= G_LPADDLE;
					B <= B_LPADDLE;
			END IF;
			IF (GOALJ2 >= 3 AND 
				( SCREEN_X <= (LEFT_BOUND + 169) and 
				SCREEN_X >= (LEFT_BOUND + 158) and 
				SCREEN_Y >= (UPPER_BOUND + 220) and 
				SCREEN_Y <= (UPPER_BOUND + 229))) THEN
					R <= R_BACKGROUND;
					G <= G_BACKGROUND;
					B <= B_BACKGROUND;
					GOALJ1 := 0;
		   END IF;
			
	END PROCESS GAME;

END ARCHITECTURE ARC;