






LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY REGISTER32_TB IS
END REGISTER32_TB;


ARCHITECTURE BHV OF REGISTER32_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK   : TIME := 10 ns;                                             -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET : TIME := 25 ns;                                             -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION                                                                                               --
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'   
	SIGNAL clock2_tb       : STD_LOGIC := '0'; --
	SIGNAL reset_tb        : STD_LOGIC := '1';  
	SIGNAL w_en_tb         : STD_LOGIC := '0'; -- RESET SIGNAL ACTIVE HIGH
	SIGNAL din_tb  		  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 			
	SIGNAL dout_tb  		  : STD_LOGIC_VECTOR(31 DOWNTO 0) := ( others => '0' ); 					--
	SIGNAL en_tb           : STD_LOGIC := '1';                                                                                                               --
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	COMPONENT REGISTER32 IS 
		PORT( en    : IN  STD_LOGIC;
				rst   : IN  STD_LOGIC;
				wr_en : IN  STD_LOGIC;
				d_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
				d_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 2;     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock2_tb) AND end_sim) AFTER T_CLK / 4;
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  R : REGISTER32
		PORT MAP(
				    en    => en_tb,
				    rst   => reset_tb,
				    wr_en   => w_en_tb,
				    d_in  => din_tb,
				    d_out => dout_tb 
		 );
		

	d_PROCESS: PROCESS(clock_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS   
				WHEN 1  => en_tb <= '1'; 	
				WHEN 2 => w_en_tb <= '1'; din_tb <= "00000000" & "11111111" &  "00000000" & "11111111";
				WHEN 3 => en_tb <= '0';
				WHEN 5 => en_tb <= '1';
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			