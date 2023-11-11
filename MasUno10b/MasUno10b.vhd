-- Entidad que suma 1 a una cuenta de 10 bits

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: MasUno10b
-- Pertenece a la entidad top: Pong (pero diseñado para funcionar con otra diversidad de entidades)
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- HalfAdder.vhd

-- Descripcion
-- Este codigo es la entidad que suma 1 a un numero de 10 bits que recibe
-- Instancia 10 half adders para obtener los 10 bits
-- Entradas:
	-- A: numero de 10 bits para la suma
-- Salidas:
	-- S: numero resultante de la suma en 10 bits
	-- Cout: carry out de la suma en 10 bits

-- Comentarios extra:
-- Usualmente instanciada para construir un contador de 10 bits

-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
-------------------------------------------------------------------

-- Entidad
ENTITY MasUno10b IS
	PORT (A: IN std_logic_vector (9 DOWNTO 0);			-- 10 bits entrada: 1
			S: OUT std_logic_vector (9 DOWNTO 0);			-- cuenta sumada
			Cout: OUT std_logic);								-- carry out si necesario
END ENTITY MasUno10b;
-------------------------------------------------------------------

-- Arquitectura
ARCHITECTURE ARC OF MasUno10b IS

-- Componentes
COMPONENT HalfAdder is
	PORT (A, B: IN std_logic;									-- componente Half Adder
			S, Co: OUT std_logic);
END COMPONENT HalfAdder;

-- Señales
SIGNAL C: std_logic_vector (9 DOWNTO 1);					-- cables para sumar los carry
-------------------------------------------------------------------

-- Inicio de la Aqruitectura
BEGIN 
	-- Instancias
	-- 1 Half Adder por cada bit
	I0: HalfAdder PORT MAP (A(0), '1', S(0), C(1));		-- se suma 1 en bit
	I1: HalfAdder PORT MAP (A(1), C(1), S(1), C(2));
	I2: HalfAdder PORT MAP (A(2), C(2), S(2), C(3));
	I3: HalfAdder PORT MAP (A(3), C(3), S(3), C(4));
	I4: HalfAdder PORT MAP (A(4), C(4), S(4), C(5));
	I5: HalfAdder PORT MAP (A(5), C(5), S(5), C(6));
	I6: HalfAdder PORT MAP (A(6), C(6), S(6), C(7));
	I7: HalfAdder PORT MAP (A(7), C(7), S(7), C(8));
	I8: HalfAdder PORT MAP (A(8), C(8), S(8), C(9));
	I9: HalfAdder PORT MAP (A(9), C(9), S(9), Cout);	-- define el carry out

END ARCHITECTURE ARC;