-- Top Entity de codigo para juego Pong en VGA

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: Pong
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
-- RGBpong.vhd
-- FlipFlopJK.vhd
-- DivisorFrecuenciaPorMitad.vhd

-- Descripcion
-- Este codigo es la entidad más alta de la implementacion completa de una version VGA del juego Pong
-- Instancia todos los componentes y cuenta con los pines de conexion para trabajar correctamente con la placa DE10 lite
-- Entradas:
	-- CLK, RST, START: señales para control y sincronía del juego con VGA
	-- JOYSTICK_Y, JOYSTICK_X: senales de control de joystick analogica a digital (ADC) para control de paddle izquierdo
	-- PAR_SWITCH2: controles de paddle derecho (automatico o manual)
	-- DIFICULTAD: interruptores que controlan la velocidad de juego
-- Salidas:
	-- H_SYNC, V_SYNC: sincronia horizontal y vertical para configuracion VGA
	-- R, G, B: señales de color a usar para los pixeles del VGA

-- Comentarios extra:
-- Entrega final de la materia Diseño con Lógica Programable TE2002B grupo 101
-- Impartida por los Profesores:
	-- Dr. Andrés David García García
	-- Dr. Francisco Javier Ortiz Cerecedo

	
-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;									-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY Pong IS
	PORT (CLK, RST, START: IN std_logic;						-- senales de tiempo y control
			JOYSTICK_Y, JOYSTICK_X: IN std_logic;				-- controles paddle izquierdo	
			SWITCHES2: IN std_logic_vector (2 DOWNTO 0);		-- controles de paddle derecho
			DIFICULTAD: IN std_logic_vector (1 DOWNTO 0);	-- interuptores controladores de dificultades
			H_SYNC, V_SYNC: OUT std_logic;						-- sincronizacion horizontal y vertical con VGA
			R, G, B: OUT std_logic_vector (3 DOWNTO 0));		-- salida de colores 12 bits hex
END ENTITY Pong;
-------------------------------------------------------------------

-- Arquitctura
ARCHITECTURE ARC Of Pong IS

-- Componentes
COMPONENT DivisorFrecuenciaPorMitad IS						-- component divisor de frecuencia
	PORT (CLK_ENTRADA, RST: IN std_logic;					-- reloj entrada y reset
			CLK_SALIDA: OUT std_logic);						-- reloj mitad de frecuencia
END COMPONENT DivisorFrecuenciaPorMitad;

COMPONENT RGBpong IS
	PORT (CLK, RST, START: IN std_logic;									-- senales  clk, rst y start para tiempos y control
			JOYSTICK_Y, JOYSTICK_X: IN std_logic; 							-- senales del joystick para paddle izquierdo
			PAR_SWITCH2: IN std_logic_vector (2 DOWNTO 0);				-- controles de paddle derecho
			DIFICULTAD: IN std_logic_vector (1 DOWNTO 0);				-- interuptores controladores de dificultades
			H_SYNC, V_SYNC: OUT std_logic;									-- syncs horizontales y verticales
			R, G, B: OUT std_logic_vector (3 DOWNTO 0));					-- combinacion de colores en vector de 4 cada uno
END COMPONENT RGBpong;

-- Señales
SIGNAL C: std_logic;												-- cable Clk 25Mhz para sincronizacion VGA
-------------------------------------------------------------------

-- Comienzo de la arquitectura
BEGIN
	-- Instancias
	Freq: DivisorFrecuenciaPorMitad PORT MAP (CLK, RST, C);				-- 25Mhz
	RGBs: RGBpong PORT MAP (C, RST, START, JOYSTICK_Y, JOYSTICK_X, SWITCHES2, DIFICULTAD, H_SYNC, V_SYNC, R, G, B);	-- coloreado

END ARCHITECTURE ARC;