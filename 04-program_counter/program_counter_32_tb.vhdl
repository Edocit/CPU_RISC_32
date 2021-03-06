



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY PROGRAM_COUNTER_32_TB IS
END PROGRAM_COUNTER_32_TB;


ARCHITECTURE BHV OF PROGRAM_COUNTER_32_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK    : TIME := 10 ns;                                             -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET  : TIME := 5 ns;                                             -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION   
        CONSTANT D_TB	  : TIME := 3 ns;	                                      -- GENERIC CONSTANT DEFINITION   	--
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   --
	SIGNAL clock2_tb       : STD_LOGIC := '0';
	SIGNAL reset_tb        : STD_LOGIC := '1';                                    -- RESET SIGNAL ACTIVE HIGH
   SIGNAL wr_en_tb        : STD_LOGIC := '0'; 	--
	SIGNAL en_tb           : STD_LOGIC := '1';      
	SIGNAL jmp_v_tb        : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
   SIGNAL cnt_v_tb        : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');			--
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	COMPONENT PROGRAM_COUNTER_32_BIT IS
		PORT(	en		  : IN  STD_LOGIC;
				clk     : IN  STD_LOGIC;
				wr_en   : IN  STD_LOGIC;
				rst     : IN  STD_LOGIC;
				jmp_v   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	
				cnt_v   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		
		);
	END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  PC : PROGRAM_COUNTER_32_BIT
		PORT MAP(
				en		  => en_tb,
				clk     => clock_tb,
				wr_en   => wr_en_tb,
				rst     => reset_tb,
				jmp_v   => jmp_v_tb,
				cnt_v   => cnt_v_tb		
		);
		

	d_PROCESS: PROCESS(clock_tb, clock2_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS   
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		ELSIF(rising_edge(clock2_tb)) then   
		  CASE(t) IS   
				WHEN 1  => en_tb <= '1';
				WHEN 2  => en_tb <= '1'; 
				WHEN 3  => en_tb <= '1'; 
				WHEN 4  => en_tb <= '0';
				WHEN 7  => wr_en_tb <= '1'; jmp_v_tb <= x"B0000000";
				WHEN 8  => wr_en_tb <= '0'; 
				WHEN 9  => en_tb <= '1'; 
				WHEN 10 => en_tb <= '0'; 
				WHEN 11  => en_tb <= '1'; 
				WHEN 12 => en_tb <= '0'; 
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			