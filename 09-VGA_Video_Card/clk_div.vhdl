



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY CLK_DIV IS 
	PORT( clk_in   : IN STD_LOGIC;
	      clk_out  : OUT STD_LOGIC
	);
END CLK_DIV;


ARCHITECTURE BHV OF CLK_DIV IS 
	CONSTANT div   : INTEGER := 0; --DIVIDE PER DUE PERCHE' PRENDE {0, 1}
	SIGNAL   cnt   : INTEGER := 0;
	SIGNAL   int_o : STD_LOGIC := '0';
	
	BEGIN 
		dr_pr : PROCESS(clk_in)
		BEGIN 
			IF(rising_edge(clk_in)) THEN 
				IF(cnt = div)THEN --268435455
					int_o <= NOT(int_o);
					cnt <= 0;
				ELSE
					cnt <= cnt + 1;
				END IF;
			END IF;	
		END PROCESS;
		
		clk_out <= int_o;
END BHV;