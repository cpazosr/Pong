-- Entidad que construye un Flip Flop tipo JK

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: FlipFlopJK
-- Pertenece a la entidad top: Pong (pero funciona para diversidad de otras entidades)
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- 

-- Descripcion
-- Este codigo es la entidad que modela un Flip Flop Jk a partir de su tabla de verdad
-- Se modela con el uso de compuertas dado que vhdl sintetiza unicamente Flip Flops tipo D
-- Entradas:
	-- CLK, RST: señales de sincronia y control
	-- J, K: señales del flip flop para obtener el dato futuro
-- Salidas:
	-- Q, NOT_Q: salida del bit a partir de la tabla de verdad, y su respectivo negado

-- Comentarios extra:
-- Usualmente se utiliza para construir divisores de frecuencia

	
-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;												-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY FlipFlopJK IS
	PORT (CLK, RST, J, K: IN std_logic;									-- ENTRADAS CONTROL
			Q, NOT_Q: OUT std_logic);										-- salidas Q+ y /Q+
END ENTITY FlipFlopJK;
-------------------------------------------------------------------

-- Arquitectura
ARCHITECTURE ARC OF FlipFlopJK IS

-- Señales
SIGNAL C: std_logic;															-- Q interna, pq salida es Q+ y /Q+
-------------------------------------------------------------------

-- Inicio de Arquitectura
BEGIN
	
	-- Salidas
	Q <= C;
	NOT_Q <= NOT(C);
	
	-- Proceso de funcionamiento a partir de la tabla de verdad
	P1: PROCESS (CLK, RST, J, K)
		BEGIN
			IF (RST = '0') THEN
				C <= '0';
			ELSIF (CLK'EVENT AND CLK = '1') THEN
				IF (J = '0' AND K = '0') THEN
					C <= C;  
				ELSIF (J = '1' AND K = '0') THEN
					C <= '1';
				ELSIF (J = '0' AND K ='1') THEN
					C <= '0';
				ELSE -- (K = '1' AND K = '1') THEN
					C <= NOT(C);
				END IF;
			END IF;
	END PROCESS P1;

END ARCHITECTURE ARC;

--		 TABLA DE VERDAD FF JK:
--			J	K	Q+
--			0	0	Q
--			1	0	1
--			0	1	0
--			1	1	/Q