
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



ENTITY PROGRAM_COUNTER_32_BIT IS
	PORT(	en		  : IN  STD_LOGIC;
	      clk     : IN  STD_LOGIC;
			wr_en   : IN  STD_LOGIC;
			rst     : IN  STD_LOGIC;
			jmp_v   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	
			cnt_v   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		
	);
END PROGRAM_COUNTER_32_BIT;



ARCHITECTURE BHV OF PROGRAM_COUNTER_32_BIT IS
	SIGNAL cnt : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); -- RESET VECTOR 0X00000000
	
	BEGIN 
		PROCESS(clk)
			BEGIN 
				IF(rising_edge(clk)) THEN 
					IF(en = '1') THEN
						cnt_v <= cnt;
						cnt <= cnt + 4;
					ELSIF(wr_en = '1') THEN 
						cnt <= jmp_v;
					ELSIF(rst = '1') THEN 
						cnt   <= (OTHERS => '0'); --QUA SI METTE IL RESET VECTOR
						cnt_v <= (OTHERS => '0');
					END IF;
				END IF;
		END PROCESS;
			

END BHV;