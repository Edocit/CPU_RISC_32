


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY MUX IS 
	PORT(		sig_a   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				sig_b   : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
				l_sel   : IN STD_LOGIC;
				sig_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END MUX;



ARCHITECTURE BHV OF MUX IS 
	BEGIN 
	
	mux_proc : PROCESS(sig_a, sig_b, l_sel)
	BEGIN 
		IF(l_sel = '0') THEN 
			sig_out <= "00000000" & "00000000" & "00000000" & "000" & sig_a;
		ELSE 
			sig_out <= "00000" & "00000" & sig_b;
		END IF;
	END PROCESS;

END BHV;