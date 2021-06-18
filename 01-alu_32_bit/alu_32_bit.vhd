

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



ENTITY ALU_32_BIT IS
	PORT(	en     : IN  STD_LOGIC;
	      rst    : IN  STD_LOGIC;
			clk    : IN  STD_LOGIC;
			op_sel : IN  STD_LOGIC_VECTOR( 4 DOWNTO 0);
			RA     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RB     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RZ     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			FLAG_B : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)	
	);
END ALU_32_BIT;



ARCHITECTURE BHV OF ALU_32_BIT IS
   SIGNAL   out_s  : STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
   SIGNAL   FLAG_S : STD_LOGIC_VECTOR( 7 DOWNTO 0) := (OTHERS => '0');
	
	
	
	BEGIN
		PROCESS(clk, out_s, FLAG_S)
			BEGIN
				IF(rst = '1') THEN 
					--SULLA CONDIZIONE DI RESET OVVERO rst = '1'
					-- I REGISTRI {RA, RB} SONO INPUT E QUINDI NON
					-- POSSONO ESSERE GUIDATI DAL RESET
						RZ     <= (OTHERS => '0');
						FLAG_B <= (OTHERS => '0');
				ELSIF(en = '1' AND rising_edge(clk)) THEN 
						RZ <= out_s(31 DOWNTO 0);
						FLAG_B <= FLAG_S;
				END IF;
		END PROCESS;
		
		PROCESS(clk, op_sel, RA, RB) IS
			BEGIN
				CASE op_sel IS
				WHEN "00000" =>	out_s <= ('0' & RA) + ('0' & RB);
										IF(out_s(32) = '1') THEN FLAG_S <= FLAG_S(7 DOWNTO 1) & "1"; ELSE FLAG_S <= FLAG_S(7 DOWNTO 1) & "0"; END IF;
									 
				WHEN "00001" =>   out_s <= ('0' & RA) + NOT('0' & RB) + 1;
										IF(out_s(32) = '1') THEN FLAG_S <= FLAG_S(7 DOWNTO 2) & "1" & FLAG_S(0); ELSE FLAG_S <= FLAG_S(7 DOWNTO 2) & "0" & FLAG_S(0); END IF;
									 
				WHEN "00010" => out_s <= "0" & (RA AND RB); 
				WHEN "00011" => out_s <= "0" & (RA OR  RB);             
				WHEN "00100" => out_s <= "0" & (NOT(RA));                 
				WHEN "00101" => out_s <= "0" & (RA XOR RB);                
				WHEN "00110" => out_s <= "0" & '0' & RA(31 DOWNTO 1);    
				WHEN "00111" => out_s <= "0" & RA(30 DOWNTO 0) & '0';     
		--						WHEN "01000" => 
		--						WHEN "01001" => 
		--						WHEN "01010" => 
		--						WHEN "01011" => 
		--						WHEN "01100" => 
		--						WHEN "01101" => 
		--						WHEN "01110" => 
		--						WHEN "01111" => 
		--						WHEN "10000" => 
		--						WHEN "10001" => 
		--						WHEN "10010" => 
		--						WHEN "10011" => 
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
	END PROCESS;
END BHV;
		