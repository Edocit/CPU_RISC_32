



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY MUX_TB IS
END MUX_TB;


ARCHITECTURE BHV OF MUX_TB IS 
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
   SIGNAL l_sel_tb        : STD_LOGIC := '0'; 	--
	SIGNAL ir_tb           : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	   
	SIGNAL sig_a_tb        : STD_LOGIC_VECTOR(4  DOWNTO 0) := (OTHERS => '0');	
   	SIGNAL sig_b_tb        : STD_LOGIC_VECTOR(21 DOWNTO 0) := (OTHERS => '0');			--
	SIGNAL sig_out_tb      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS

	COMPONENT MUX IS 
		PORT(		sig_a   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
					sig_b   : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
					l_sel   : IN STD_LOGIC;
					sig_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;


	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  MUX_2 : MUX
		PORT MAP(
				sig_a	  => ir_tb(21 DOWNTO 17),
				sig_b   => ir_tb(21 DOWNTO 0),
				l_sel   => ir_tb(30),
				sig_out => sig_out_tb
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
		  CASE(t) IS   	--        	       OPCODE     RA        RB		XXXXXXXXXXXXXXX         
				WHEN 1  => ir_tb <=  "00000" & "00001" & "01010" &  "00000000000000000";	--REGISTER TYPE INSTRUCTION 
					     --        OPCODE     RA        IMMEDIATE
				WHEN 4  => ir_tb <=  "01000" & "11111" & "1101000000000000000011";   --IMMEDIATE TYPE INSTRUCTION 
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			