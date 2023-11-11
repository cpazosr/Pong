-- Entidad de sincronia con VGA

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: SyncVGA800x525
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

-- Descripcion
-- Este codigo es la entidad que genera las señales de sincronía VGA horizontal y vertical
-- Instancia contadores modulo 525 y modulo 800 para recorrer la pantalla
-- Usa una máquina de estados vertical y una horizontal para las señales de sincronización de acuerdo al protocolo VGA
-- Entradas:
	-- CLK, RST, START: señales para control y sincronía del juego con VGA
-- Salidas:
	-- PIXEL, LINEA: cuentas de contadores modulo 800 y 525 respectivamente para coordenadas X,Y de VGA
	-- H_SYNC, V_SYNC: sincronia horizontal y vertical para configuracion VGA

-- Comentarios extra:
-- 


-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;										-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY SyncVGA800x525 IS
	PORT (CLK, RST, START: IN std_logic;							-- senales de control clk y reset y start
			PIXEL, LINEA: OUT std_logic_vector (9 DOWNTO 0);	-- cuentas de ambos contadores
			H_SYNC, V_SYNC: OUT std_logic);							-- senales sincronizacion
END ENTITY SyncVGA800x525;

-------------------------------------------------------------------

-- Aqruitectura
ARCHITECTURE ARC OF SyncVGA800x525 IS

-- Componentes
COMPONENT ContadorMod800 IS										-- componente contador modulo 800
	PORT (CLK, RST: IN std_logic;									-- entradas
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- cuenta de 10 bits
			Cout: OUT std_logic);									-- carry out ENABLE para la otra cuenta
END COMPONENT ContadorMod800;

COMPONENT ContadorMod525 IS										-- componente contador modulo 525
	PORT (CLK, RST, ENABLE: IN std_logic;						-- entradas de control
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- cuenta de 10 bits
			Cout: OUT std_logic);									-- carry out ENABLE para otra cuenta
END COMPONENT ContadorMod525;

-- Estados en horizontal
TYPE ESTADOS_X IS (IDLE_X, E_ALTO_X, E_BAJO_X);				-- estados IDLE, SYNC alto o bajo de pixeles en x
SIGNAL EDO_X, EDO_FUTURO_X: ESTADOS_X;							-- estado actual y futuro en x

-- Estados en vertical
TYPE ESTADOS_Y IS (IDLE_Y, E_ALTO_Y, E_BAJO_Y);				-- estados IDLE, SYNC alto o bajo de lineas en y
SIGNAL EDO_Y, EDO_FUTURO_Y: ESTADOS_Y;							-- estado actual y futuro en y

-- Señales de conexion
SIGNAL ENABLE: std_logic;											-- cable enable entre cuentas
SIGNAL C: std_logic;													-- cable para carry out siempre 0 de mod 525
SIGNAL VGA_X, VGA_Y: std_logic_vector (9 DOWNTO 0);		-- cables para salidas de cuentas

-------------------------------------------------------------------

-- Comienzo de la Arquitectura
BEGIN
	-- Instancias
	I0: ContadorMod800 PORT MAP (CLK, RST, VGA_X, ENABLE);			-- instancia contador mod 800
	I1: ContadorMod525 PORT MAP (CLK, RST, ENABLE, VGA_Y, C);		-- insancia contador mod 525
	
	-- Maquina de estados en vertical
	P1: PROCESS (CLK, RST)								-- Flip Flops cambio de estado en x
		BEGIN
			IF (RST = '0') THEN
				EDO_X <= IDLE_X;
			ELSIF (CLK'EVENT AND CLK = '1') THEN
				EDO_X <= EDO_FUTURO_X;
			END IF;
	END PROCESS P1;
	
	P2: PROCESS (EDO_X, VGA_X, START)				-- transiciones estados en x
		BEGIN
			CASE (EDO_X) IS
				WHEN IDLE_X =>		IF (START = '1') THEN
											EDO_FUTURO_X <= E_BAJO_X;
										ELSE
											EDO_FUTURO_X <= IDLE_X;
										END IF;
										
				WHEN E_BAJO_X =>	IF (VGA_X = "0001011111") THEN
											EDO_FUTURO_X <= E_ALTO_X;
										ELSE
											EDO_FUTURO_X <= E_BAJO_X;
										END IF;
				
				WHEN E_ALTO_X => 	IF (VGA_X = "1100011111") THEN
											EDO_FUTURO_X <= E_BAJO_X;
										ELSE
											EDO_FUTURO_X <= E_ALTO_X;
										END IF;
				
				WHEN OTHERS => NULL;
			
			END CASE;
	END PROCESS P2;
	
	P3: PROCESS (EDO_X)									-- salidas de estados en h_SYNC con la cuenta en x pixeles
		BEGIN
			CASE (EDO_X) IS
				WHEN IDLE_X =>		H_SYNC <= '0';
				WHEN E_ALTO_X =>	H_SYNC <= '1';
				WHEN E_BAJO_X =>	H_SYNC <= '0';
				WHEN OTHERS => NULL;
			END CASE;
	END PROCESS P3;
	
	-- Maquina de estados en vertical
	P4: PROCESS (CLK, RST)								-- Flip Flops cambio de estado en lineas y
		BEGIN
			IF (RST = '0') THEN
				EDO_Y <= IDLE_Y;
			ELSIF (CLK'EVENT AND CLK = '1') THEN
				EDO_Y <= EDO_FUTURO_Y;
			END IF;
	END PROCESS P4;
	
	P5: PROCESS (EDO_Y, VGA_Y, START)				-- transiciones en y
		BEGIN
			CASE (EDO_Y) IS
				WHEN IDLE_Y =>		IF (START = '1') THEN
											EDO_FUTURO_Y <= E_BAJO_Y;
										ELSE
											EDO_FUTURO_Y <= IDLE_Y;
										END IF;
				
				WHEN E_BAJO_Y =>	IF (VGA_Y = "0000000011") THEN
											EDO_FUTURO_Y <= E_ALTO_Y;
										ELSE
											EDO_FUTURO_Y <= E_BAJO_Y;
										END IF;
				
				WHEN E_ALTO_Y => 	IF (VGA_Y = "1000001100") THEN
											EDO_FUTURO_Y <= E_BAJO_Y;
										ELSE
											EDO_FUTURO_Y <= E_ALTO_Y;
										END IF;
				
				WHEN OTHERS => NULL;
			
			END CASE;
	END PROCESS P5;
	
	P6: PROCESS (EDO_Y)									-- salidas v sync por estado en y
		BEGIN
			CASE (EDO_Y) IS
				WHEN IDLE_Y => 	V_SYNC <= '0';
				WHEN E_ALTO_Y =>	V_SYNC <= '1';
				WHEN E_BAJO_Y =>	V_SYNC <= '0';
				WHEN OTHERS => NULL;
			END CASE;
	END PROCESS P6;
	
	-- Salidas de los contadores
	PIXEL <= VGA_X;
	LINEA <= VGA_Y;

END ARCHITECTURE ARC;