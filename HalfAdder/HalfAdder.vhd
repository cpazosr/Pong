-- Entidad base Half Adder: sumador de dos bits sin carry in, y con carry out en el resultado

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: HalfAdder
-- Pertenece a la entidad top: Pong (pero diseñado para funcionar con otra diversidad de entidades)
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- 

-- Descripcion
-- Este codigo es la entidad que suma dos bits sin carry in
-- Entrega carry out en resultado de su operacion
-- Entradas:
	-- A, B: bits de suma
-- Salidas:
	-- S: bit de resultado
	-- Co: carry out de la operacion

-- Comentarios extra:
--

Library IEEE;							-- declaracion de librerias
use ieee.std_logic_1164.ALL;

Entity HalfAdder is
PORT (A, B: IN std_logic;			-- entidad
		S, Co: OUT std_logic);
END HalfAdder;

Architecture ARC of HalfAdder is --arquitectura
begin
	S <= A xor B;						-- instrucciones concurrentes
	Co <= A and B;
end ARC;