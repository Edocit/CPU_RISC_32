
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;



ENTITY REGISTER32 IS 
	PORT( en    : IN  STD_LOGIC;
	      rst   : IN  STD_LOGIC;
			wr_en : IN  STD_LOGIC;
			d_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			d_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END REGISTER32;


ARCHITECTURE BHV OF REGISTER32 IS
	SIGNAL data : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	
	BEGIN 
		PROCESS(en, rst, wr_en, d_in)
			BEGIN
				IF(rst = '0' AND en = '1') THEN d_out <= data; END IF;
				IF(rst = '0' AND en = '1' AND wr_en = '1') THEN data <= d_in; d_out <= d_in;  END IF;
				IF(rst = '0' AND en = '0' AND wr_en = '1') THEN data <= d_in; END IF;
				IF(rst = '0' AND en = '0') THEN d_out <= (OTHERS => 'Z'); END IF;
				IF(rst = '1') THEN data <= (OTHERS => '0'); d_out <= (OTHERS => '0'); END IF;
		END PROCESS;
			
END BHV;