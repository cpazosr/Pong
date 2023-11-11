-- Entidad contador de 10 bits

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: Contador10b
-- Pertenece a la entidad top: Pong (pero diseñado para funcionar con otra diversidad de entidades)
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- HalfAdder.vhd
-- MasUno10b.vhd

-- Descripcion
-- Este codigo es la entidad que genera una cuenta de 10 bits
-- Instancia un componente que suma 1 a una cuenta de 10 bits
-- Actualiza la cuenta con 1 sumado
-- Entradas:
	-- CLK, RST: señales para control y sincronía de la cuenta
-- Salidas:
	-- CUENTA: salida del contador
	-- Cout: overflow al terminar la cuenta (reiniciarse naturalmente)

-- Comentarios extra:
-- 

-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;										-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY Contador10b IS
	PORT (CLK, RST: IN std_logic;									-- entradas
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- salidas
			Cout: OUT std_logic);									-- Cout fin de cuenta = 1
END ENTITY Contador10b;
-------------------------------------------------------------------

-- Arquitectura
ARCHITECTURE ARC OF Contador10b IS								-- aqruitectura

-- Componentes
COMPONENT MasUno10b IS												-- componente sumador en 1
	PORT (A: IN std_logic_vector (9 DOWNTO 0);				-- 10 bits entrada: 1
			S: OUT std_logic_vector (9 DOWNTO 0);				-- cuenta sumada
			Cout: OUT std_logic);									-- carry out si necesario
END COMPONENT MasUno10b;

-- Señales
SIGNAL D, Q: std_logic_vector (9 DOWNTO 0);					-- cables D y Q de 4 bits
-------------------------------------------------------------------

-- Inicio de la Arquitectura
BEGIN 
	-- Instancias
	I0: MasUno10b PORT MAP (Q, D, Cout);						-- instancia sumado en 1 a 10 bits
	
	-- Proceso de actualizacion de la cuenta
	P1: PROCESS (CLK, RST)											-- Flip Flop
	BEGIN 
		IF (RST = '0') THEN											-- reset asincrono en bajo
			Q <= "0000000000";
		ELSIF (CLK'EVENT AND CLK = '1') THEN					-- aumenta cuenta en clk alto
			Q <= D;
		END IF;
	END PROCESS P1;
	
	-- Salida de Flip Flop es la CUENTA
	CUENTA <= Q;

END ARCHITECTURE ARC;