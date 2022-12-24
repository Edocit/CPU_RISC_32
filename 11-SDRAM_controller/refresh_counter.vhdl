


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY REFRESH_COUNTER IS 
	PORT ( en      : IN STD_LOGIC;
	       clk     : IN STD_LOGIC;
			 cnt_v   : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
			 refresh : OUT STD_LOGIC
	);
END REFRESH_COUNTER;



ARCHITECTURE BHV OF REFRESH_COUNTER IS 
	CONSTANT dram_rows    : INTEGER := 8192; --13 BIT DI INDIRIZZO RIGA --> 2^13 = 8192 --> CONTATORE DA 0 A 8191
	SIGNAL   internal_cnt : INTEGER := 0;
	
	BEGIN

		refresh_pr : PROCESS(clk)
		BEGIN
			IF(en = '1') THEN 
				IF(rising_edge(clk)) THEN 
					IF(internal_cnt = (dram_rows - 1)) THEN 
						internal_cnt <= 0;
						refresh <= '0';
					ELSE 
						refresh <= '1';
						internal_cnt <= internal_cnt + 1;
					END IF;
				END IF;
			ELSE
				internal_cnt <= 0;
				refresh <= '0';
			END IF;
		END PROCESS;
		
		cnt_v <= STD_LOGIC_VECTOR(TO_UNSIGNED(internal_cnt, cnt_v'length));

END BHV;