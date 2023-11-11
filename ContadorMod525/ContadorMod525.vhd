-- Entidad contador modulo 525

-- Autores: 
-- Carlos A. Pazos Reyes	A0137826
-- Manuel Agustin Diaz Vivanco	A01379673

-- Ultima revision: 10 marzo 2021
-- Diseño entidad: ContadorMod525
-- Pertenece a la entidad top: Pong
-- Diseñado para: Intel DE10-Lite
-- 10M50DAF484C6
-- Quartus v18.1

-- Dependencias: --
-- HalfAdder.vhd
-- MasUno10b.vhd

-- Descripcion
-- Este codigo es la entidad que genera la cuenta vertical modulo 525 para recorrido vertical VGA
-- Instancia un componente que suma 1 a una cuenta de 10 bits
-- Usa reset asincorno y reset interno modulo 525 en la cuenta acumulada de 10 bits
-- Entradas:
	-- CLK, RST, ENABLE: señales para control y sincronía de la cuenta. ENABLE para sincronia en FlipFlops
-- Salidas:
	-- CUENTA: salida del contador
	-- Cout: overflow al terminar cuenta en su modulo 525

-- Comentarios extra:
-- Para la implementacion con Pong.vhd, Cout no se utiliza, pero puede usarse como overflow o ENABLE para otro componente

-- Librerias
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;										-- librerias
-------------------------------------------------------------------

-- Entidad
ENTITY ContadorMod525 IS											-- entidad
	PORT (CLK, RST, ENABLE: IN std_logic;						-- entradas de control
			CUENTA: OUT std_logic_vector (9 DOWNTO 0);		-- cuenta de 10 bits
			Cout: OUT std_logic);									-- carry out ENABLE para otra cuenta
END ENTITY ContadorMod525;
-------------------------------------------------------------------

-- Aqruitectura
ARCHITECTURE ARC OF ContadorMod525 IS

-- Componentes
COMPONENT MasUno10b IS
	PORT (A: IN std_logic_vector (9 DOWNTO 0);				-- 10 bits entrada: 1
			S: OUT std_logic_vector (9 DOWNTO 0);				-- cuenta sumada
			Cout: OUT std_logic);									-- carry out si necesario
END COMPONENT MasUno10b;

-- Señales
SIGNAL D, Q: std_logic_vector (9 DOWNTO 0);					-- cables FF tipo D
SIGNAL C_last: std_logic;											-- cable para carry
-------------------------------------------------------------------

-- Inicio de la Arquitectura
BEGIN 
	-- Instancias
	I0: MasUno10b PORT MAP (Q, D, C_last);						-- instanciar sumador con FF
	CUENTA <= Q;														-- usar salida del FF para alimentar al contador
	
	-- Proceso de reset, enable a la cuenta y reset interno para modulo 525
	P1: PROCESS (RST, CLK, ENABLE, Q)							-- proceso de FF
		BEGIN
			IF (ENABLE = '1') THEN									-- sincronia con enable
				IF (RST = '0') THEN									-- reset asincrono dentro del enable
					Q <= "0000000000";								-- reinicio de cuenta
				ELSIF (Q = "1000001101") THEN						-- modulo525
					Q <= "0000000000";
				ELSIF (CLK'EVENT AND CLK = '1') THEN			-- avance de cuenta
					Q <= D;												-- salida Flip Flop
				END IF;
			END IF;
			IF (RST = '0') THEN										-- reset asincrono para entidades mas arriba de esta
				Q <= "0000000000";
			END IF;
	END PROCESS;

	-- Salida Cout como overflow: 1 solo al temrinar la cuenta en mod 252
	Cout <= C_last;
	
END ARCHITECTURE ARC;