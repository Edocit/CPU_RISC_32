

  
	  library IEEE;
	  use ieee.std_logic_1164.all;
	  use ieee.numeric_std.all;
		  
	  
	  ENTITY REGISTER_FILE IS
			PORT( en : IN  std_logic;
			      rst: IN  std_logic;
			      clk: IN  std_logic;
				   rw : IN  std_logic; 	
					A  : IN  std_logic_vector(4 DOWNTO 0);
					B  : IN  std_logic_vector(4 DOWNTO 0);
					C  : IN  std_logic_vector(4 DOWNTO 0);
					RA : OUT std_logic_vector(31 DOWNTO 0);
					RB : OUT std_logic_vector(31 DOWNTO 0);
					RC : IN  std_logic_vector(31 DOWNTO 0)
				  );			
	   END REGISTER_FILE;
	  
	  
	  ARCHITECTURE BEH OF REGISTER_FILE IS 
	  
	  TYPE registerFile IS ARRAY(0 to 31) OF std_logic_vector(31 DOWNTO 0);
	  SIGNAL registers : registerFile;
	  

	  
			BEGIN
					reg_process : process(clk, A, B, C, RC)
						BEGIN
							
							IF rst = '1' THEN
								--registers <= (others=>(others=>'0'));
								RA <= (OTHERS => '0');
								RB <= (OTHERS => '0');								
							ELSIF(en = '1' AND rw = '0' AND rst = '0') THEN
									RA <= registers(to_integer(unsigned(A)));
									RB <= registers(to_integer(unsigned(B)));
									
							ELSIF(en = '1' AND rw = '1' AND rst = '0') THEN
									registers(to_integer(unsigned(C))) <= RC;
									--RA <= (OTHERS => '0');
									--RB <= (OTHERS => '0');
							END IF;

					END process;			
						
			END BEH;
								
					
					
						
				
