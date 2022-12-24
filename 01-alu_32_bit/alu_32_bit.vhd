


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



ENTITY ALU_32_BIT IS
	PORT(	en     : IN  STD_LOGIC;
			op_sel : IN  STD_LOGIC_VECTOR( 4 DOWNTO 0);
			RA     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RB     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RZ     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			FLAG_B : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)	
	);
END ALU_32_BIT;



ARCHITECTURE BHV OF ALU_32_BIT IS
   SIGNAL   sumsub_out : STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
   --SIGNAL   FLAG_S     : STD_LOGIC_VECTOR( 7 DOWNTO 0) := (OTHERS => '0');
	
	
	BEGIN
		PROCESS(en, op_sel, RA, RB, sumsub_out)
			BEGIN
				IF(en = '1') THEN 
						CASE op_sel IS
							WHEN "00000" =>	sumsub_out <= ('0' & RA) + ('0' & RB);
													FLAG_B(0) <= sumsub_out(32);
													RZ <= sumsub_out(31 DOWNTO 0);
													
												 
							WHEN "00001" =>   sumsub_out <= ('0' & RA) + NOT('0' & RB) + 1;
													FLAG_B(1) <= sumsub_out(32);
													RZ <= sumsub_out(31 DOWNTO 0);
												 
							WHEN "00010" => RZ <= RA AND RB; 					--AND
							WHEN "00011" => RZ <= RA OR  RB;             	--OR
							WHEN "00100" => RZ <= NOT(RA);                 	--NOT
							WHEN "00101" => RZ <= RA XOR RB;                --XOR
							WHEN "00110" => RZ <= '0' & RA(31 DOWNTO 1);    --RLS
							WHEN "00111" => RZ <= RA(30 DOWNTO 0) & '0';    --LLS 
	--						WHEN "01000" => IF(TO_INTEGER(UNSIGNED(RA)) = TO_INTEGER(UNSIGNED(RB))) THEN RZ <= (OTHERS => '0')
	--						WHEN "01001" => 
	--						WHEN "01010" => 
	--						WHEN "01011" => 
	--						WHEN "01100" => 
	--						WHEN "01101" => 
	--						WHEN "01110" => 
	--						WHEN "01111" => 
							--WHEN "10000" => IF(TO_INTEGER(UNSIGNED(RA)) > TO_INTEGER(UNSIGNED(RB)))  THEN RZ <= x"00000001"; ELSE RZ <= x"00000000"; END IF;
							--WHEN "10001" => IF(TO_INTEGER(UNSIGNED(RA)) >= TO_INTEGER(UNSIGNED(RB))) THEN RZ <= x"00000001"; ELSE RZ <= x"00000000"; END IF;
							--WHEN "10010" => IF(TO_INTEGER(UNSIGNED(RA)) < TO_INTEGER(UNSIGNED(RB)))  THEN RZ <= x"00000001"; ELSE RZ <= x"00000000"; END IF;
							--WHEN "10011" => IF(TO_INTEGER(UNSIGNED(RA)) <= TO_INTEGER(UNSIGNED(RB))) THEN RZ <= x"00000001"; ELSE RZ <= x"00000000"; END IF;
	--						WHEN "10100" => 
	--						WHEN "10101" => 
	--						WHEN "10110" => 
	--						WHEN "10111" => 
	--						WHEN "11000" => 
	--						WHEN "11001" => 
	--						WHEN "11010" => 
	--						WHEN "11011" => 
	--						WHEN "11100" => 
	--						WHEN "11101" => 
	--						WHEN "11110" => 
	--						WHEN "11111" => 
							WHEN OTHERS  => NULL;
						END CASE;
				END IF;
		END PROCESS;
END BHV;