

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY ALU_32_BIT_TB IS
END ALU_32_BIT_TB;


ARCHITECTURE BHV OF ALU_32_BIT_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK   : TIME := 6  ns;                                             -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET : TIME := 25 ns;                                             -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION                                                                                               --
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   --
	SIGNAL reset_tb        : STD_LOGIC := '1';                                    -- RESET SIGNAL ACTIVE HIGH												   --
	SIGNAL a_tb  			  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 			
	SIGNAL b_tb  			  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 			--
   SIGNAL rz_tb           : STD_LOGIC_VECTOR(31 DOWNTO 0);   
   SIGNAL op_sel_tb       : STD_LOGIC_VECTOR(4 DOWNTO 0);  
   SIGNAL flag_b_tb       : STD_LOGIC_VECTOR(7 DOWNTO 0);  	
	SIGNAL en_tb           : STD_LOGIC := '1';                                                                                                               --
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
   SIGNAL c               : STD_LOGIC := '1';	--
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	COMPONENT ALU_32_BIT IS
		PORT(	en     : IN  STD_LOGIC;
				rst    : IN  STD_LOGIC;
				clk    : IN  STD_LOGIC;
				op_sel : IN  STD_LOGIC_VECTOR( 4 DOWNTO 0);
				RA     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
				RB     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
				RZ     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				FLAG_B : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)	
		);
END COMPONENT;
	
	
	BEGIN 																					   --
	  clock_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 2;     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  ALU : ALU_32_BIT
		PORT MAP(
			en  => en_tb,
			rst => reset_tb,
			clk => clock_tb,
			op_sel => op_sel_tb,
			RA => a_tb,
			RB => b_tb,
			RZ => rz_tb,
			FLAG_B => flag_b_tb
		);
		

	d_PROCESS: PROCESS(clock_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS   
				WHEN 1  => op_sel_tb <= "00000"; a_tb <= "11111111111111111111111111111111";   b_tb <= "00000000000000000000000000000001"; 
				WHEN 5  => op_sel_tb <= "00001"; a_tb <= "11111111111111111111111111111111"; b_tb <= "00000000000000000000000000000001"; 		 		
				WHEN 10  => op_sel_tb <= "00000"; a_tb <= "00000000000000000000000000000011";  b_tb <= "00000000000000000000000000000110"; 
				WHEN 15  => op_sel_tb <= "00100"; a_tb <= "11111111111111110000000000000000";
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
					