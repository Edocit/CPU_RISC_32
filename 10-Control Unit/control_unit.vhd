

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY CONTROL_UNIT IS
	PORT(
			clk         : IN STD_LOGIC;
			global_rst  : IN STD_LOGIC;
			en	    : IN STD_LOGIC;
			pc_en	      : OUT STD_LOGIC;
			pc_wr_en    : OUT STD_LOGIC;
			mar_en	   : OUT STD_LOGIC;
			mar_wr_en   : OUT STD_LOGIC;
			ir_en	      : OUT STD_LOGIC;
			ir_wr_en    : OUT STD_LOGIC;
			ram_en      : OUT STD_LOGIC;
			ram_wr	   : OUT STD_LOGIC;	
			reg_file_en : OUT STD_LOGIC;
			reg_file_wr : OUT STD_LOGIC;
			alu_en      : OUT STD_LOGIC
	);
END CONTROL_UNIT;


ARCHITECTURE BHV OF CONTROL_UNIT IS 
	SIGNAL cnt : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); -- RESET VECTOR 0X00000000


	BEGIN 
		PROCESS(clk)
			BEGIN 
				IF(global_rst = '0') THEN
					IF(rising_edge(clk) AND en = '1') THEN 
						IF(to_integer(unsigned(cnt)) = 0) THEN
							pc_en  <= '1'; mar_en <= '1'; mar_wr_en <= '1';
						ELSIF(to_integer(unsigned(cnt)) = 1) THEN 
							pc_en  <= '0'; mar_wr_en <= '0'; mar_en <= '1'; ram_en <= '1'; ram_wr <= '0';
						ELSIF(to_integer(unsigned(cnt)) = 5) THEN 
							ram_en <= '0'; ir_en <= '1'; ir_wr_en <= '1'; mar_en <= '0'; reg_file_en <= '1'; reg_file_wr <= '0';
						ELSIF(to_integer(unsigned(cnt)) = 6) THEN
							ir_en  <= '1'; ir_wr_en  <= '0';  		
						END IF;
						

						IF(to_integer(unsigned(cnt)) = 6) THEN
							cnt <= (OTHERS => '0');
						ELSE
							cnt <= cnt + 1;
						END IF;
						
					END IF;
				ELSE
					pc_en	      <= '0';
					pc_wr_en    <= '0';
					mar_en	   <= '0';
					mar_wr_en   <= '0';
					ir_en	      <= '0';
					ir_wr_en    <= '0';
					ram_en      <= '0';
					ram_wr	   <= '0';	
					reg_file_en <= '0';
					reg_file_wr <= '0';
					alu_en      <= '0';
				END IF;
					
				
		END PROCESS;	

END BHV;