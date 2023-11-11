-- Entidad que divide la frecuencia de reloj a la mitad

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: DivisorFrecuenciaPorMitad
-- Pertenece a la entidad top: Pong (pero funciona para diversidad de otras entidades)
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- FlipFlopJK.vhd

-- Descripcion
-- Este codigo es la entidad que recibe una señal de reloj y resulta en la mitad de su frecuencia
-- Entradas:
	-- CLK_ENTRADA, RST: señales de reloj a dividir y reset de control
-- Salidas:
	-- CLK_SALIDA: señal de reloj con su frecuencia dividida a la mitad

-- Comentarios extra:
-- Se puede o no utilizar la salida negada del Flip Flop JK
-- Para su implementacion con Pong.vhd, no se utiliza

	
-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;									-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY DivisorFrecuenciaPorMitad IS
	PORT (CLK_ENTRADA, RST: IN std_logic;					-- reloj entrada y reset
			CLK_SALIDA: OUT std_logic);						-- reloj mitad de frecuencia
END ENTITY DivisorFrecuenciaPorMitad;
-------------------------------------------------------------------

-- Arquitectura
ARCHITECTURE ARC OF DivisorFrecuenciaPorMitad IS

-- Componentes
COMPONENT FlipFlopJK IS
	PORT (CLK, RST, J, K: IN std_logic;						-- ENTRADAS CONTROL
			Q, NOT_Q: OUT std_logic);							-- salidas Q+ y /Q+
END COMPONENT FlipFlopJK;

-- Señales
SIGNAL NOT_Q: std_logic;
-------------------------------------------------------------------

-- Inicio de Arquitectura
BEGIN
	-- Instancias
	FF0: FlipFlopJK PORT MAP (CLK_ENTRADA, RST, '1', '1', CLK_SALIDA, NOT_Q);	-- Flip Flop

END ARCHITECTURE ARC;