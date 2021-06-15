



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY REGISTER_FILE_TB IS
END REGISTER_FILE_TB;


ARCHITECTURE BHV OF REGISTER_FILE_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK   : TIME := 10 ns;                                             -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET : TIME := 25 ns;                                             -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION                                                                                               --
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   --
	SIGNAL reset_tb        : STD_LOGIC := '1';                                    -- RESET SIGNAL ACTIVE HIGH
   SIGNAL rw_tb           : STD_LOGIC := '0'; 	--
	SIGNAL a_tb  			  : STD_LOGIC_VECTOR(4 DOWNTO 0) := ( others => '0' ); 			
	SIGNAL b_tb  			  : STD_LOGIC_VECTOR(4 DOWNTO 0) := ( others => '0' ); 		
	SIGNAL ra_tb  			  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 			
	SIGNAL rb_tb  			  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 		
	SIGNAL rc_tb  			  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 			--
   SIGNAL c_tb            : STD_LOGIC_VECTOR(4 DOWNTO 0);   
	SIGNAL en_tb           : STD_LOGIC := '1';                                                                                                               --
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	  COMPONENT REGISTER_FILE IS
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
	   END COMPONENT;
	
	
	BEGIN 																					   --
	  clock_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 2;     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  RF : REGISTER_FILE
		PORT MAP(
				   en => en_tb,
					rst => reset_tb,
			      clk => clock_tb,
				   rw => rw_tb,
					A  => a_tb,
					B  => b_tb,
					C  => c_tb,
					RA => ra_tb,
					RB => rb_tb,
					RC => rc_tb
		);
		

	d_PROCESS: PROCESS(clock_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS   
				WHEN 1  => rw_tb <= '0'; en_tb <= '1'; a_tb <= "00000"; b_tb <= "00010";
				WHEN 3  => rw_tb <= '1'; en_tb <= '1'; c_tb <= "00000"; rc_tb <= "00000000000000000000000000000010";
				WHEN 4  => rw_tb <= '1'; en_tb <= '1'; c_tb <= "00010"; rc_tb <= "00000000000000000000000000000111";
				WHEN 5  => rw_tb <= '0'; en_tb <= '1'; a_tb <= "00000"; b_tb <= "00010";			
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			