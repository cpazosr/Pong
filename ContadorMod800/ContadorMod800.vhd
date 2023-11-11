-- Entidad contador modulo 800

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: ContadorMod800
-- Pertenece a la entidad top: Pong
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- HalfAdder.vhd
-- MasUno10b.vhd
-- Contador10b.vhd

-- Descripcion
-- Este codigo es la entidad que genera la cuenta horizontal modulo 800 para recorrido horizontal VGA
-- Instancia contador de 10 bits
-- Usa reset asincorno y reset interno modulo 800 en el contador de 10 bits
-- Entradas:
	-- CLK, RST: señales para control y sincronía de la cuenta
-- Salidas:
	-- CUENTA: salida del contador
	-- Cout: overflow al terminar cuenta en su modulo 800

-- Comentarios extra:
-- Para la implementacion con Pong.vhd, Cout se utiliza como ENABLE para cuenta modulo 525

--Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;										-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY ContadorMod800 IS											-- entidad
	PORT (CLK, RST: IN std_logic;									-- entradas
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- cuenta de 10 bits
			Cout: OUT std_logic);									-- carry out ENABLE para la otra cuenta
END ENTITY ContadorMod800;
-------------------------------------------------------------------

-- Arquitctura
ARCHITECTURE ARC OF ContadorMod800 IS

-- Componentes
COMPONENT Contador10b IS
	PORT (CLK, RST: IN std_logic;									-- entradas de control y avance
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- cuenta 10 bits
			Cout: OUT std_logic);									-- Cout fin de cuenta = 1
END COMPONENT Contador10b;

-- Señales
SIGNAL RST_MOD800: std_logic;										-- Reset en modulo 800
SIGNAL Q: std_logic_vector (9 DOWNTO 0);						-- salida FF
SIGNAL CarryOut: std_logic;										-- salida de carry out del contador
-------------------------------------------------------------------

-- Inicio de la Arquitectura
BEGIN	
	-- Instancias
	I0: Contador10b PORT MAP (CLK, RST_MOD800, Q, CarryOut);	-- instancia contador con reset modulo
	
	-- Proceso de reset interno para reiniciar la cuenta en modulo 800
	P1: PROCESS (RST, Q)
	BEGIN
		IF (RST = '0') THEN 											-- reset asincrono en bajo
			Cout <= '0';												-- no hay enable
			RST_MOD800 <= '0';										-- no resetear
		ELSIF (Q = "1100100000") THEN								-- Modulo 800
			Cout <= '0';												-- bajo en enable
			RST_MOD800 <= '0';										-- resetear
		ELSIF (Q = "1100011111") THEN								-- si llega a 799
			Cout <= '1';												-- enable
			RST_MOD800 <= '1';										-- no resetear la cuenta
		ELSE
			Cout <= '0';												-- no enable aun
			RST_MOD800 <= '1';										-- sino no se resetea, continua la cuenta
		END IF;
	END PROCESS P1;
	
	-- La salida Q del Flip Flop es la salida CUENTA
	CUENTA <= Q;														-- actualizar la cuenta
	
END ARCHITECTURE ARC;