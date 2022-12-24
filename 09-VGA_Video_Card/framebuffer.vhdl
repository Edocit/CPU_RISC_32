
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


--N.B. questa memoria e´ strutturata cosi´ per poter essere riconosciuta come "inferred single port ram" ed usare
--     i memory bits della scheda

ENTITY FRAMEBUFFER IS
	PORT( en      : IN  STD_LOGIC;
			clk : IN  STD_LOGIC;
			we      : IN  STD_LOGIC; 
	      addr    : IN  STD_LOGIC_VECTOR(18 DOWNTO 0); -- 640x480 = 1001011000000000000 = 19bit
			din     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);	
			dout    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END FRAMEBUFFER;


ARCHITECTURE BHV OF FRAMEBUFFER IS 
	TYPE frame IS ARRAY(0 TO 307200) OF STD_LOGIC_VECTOR(2 DOWNTO 0);
	--SIGNAL buffer_mem    : frame;  	--la memoria effettiva del nostro framebuffer
	SIGNAL internal_en   : STD_LOGIC;  --creo il segtnale interno per gestirlo in modo asincorno ripetto al processo col clk
	SIGNAL internal_we   : STD_LOGIC;  --creo il segtnale interno per gestirlo in modo asincorno ripetto al processo col clk
	CONSTANT buffer_mem    : frame := (OTHERS => "001");
	
	BEGIN
		internal_en   <= en;	--cambia in modo asincrono left associative (se cambia en in qualsiasi momento cambia il segnale internal)
		internal_we   <= we;	--cambia in modo asincrono left associative (se cambia en in qualsiasi momento cambia il segnale internal)
	
		buffer_pr : PROCESS(clk) 
		BEGIN
			IF(internal_en = '1') THEN 
				IF(rising_edge(clk)) THEN
					--IF(internal_we = '1') THEN 
						--buffer_mem(to_integer(unsigned(addr))) <= din;
					--ELSE
						dout <= buffer_mem(to_integer(unsigned(addr)));
					--END IF;
				END IF;
			END IF;		
		END PROCESS;
	
END BHV;