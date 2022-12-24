


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY VGA_VIDEO_CARD_TB IS
END VGA_VIDEO_CARD_TB;


ARCHITECTURE BHV OF VGA_VIDEO_CARD_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK   : TIME := 10 ns;                                             -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET : TIME := 25 ns;                                             -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION                                                                                               --
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   ----
	SIGNAL reset_tb        : STD_LOGIC := '0';
	SIGNAL out_tb          : STD_LOGIC := '0';                                                                                                               --
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   

	SIGNAL fb_en_tb        : STD_LOGIC := '0';
	SIGNAL fb_we_tb        : STD_LOGIC := '0'; 
	SIGNAL fb_din_tb       : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";	
	SIGNAL ctrl_en_tb      : STD_LOGIC := '0';   

	SIGNAL H_SYNCH_tb    :  STD_LOGIC;
	SIGNAL V_SYNCH_tb    :  STD_LOGIC;
	SIGNAL vga_out_tb    :  STD_LOGIC_VECTOR(11 DOWNTO 0);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS

	COMPONENT VGA_VIDEO_CARD IS 
		PORT( fb_en      : IN  STD_LOGIC;
				fb_px_clk  : IN  STD_LOGIC;
				fb_we      : IN  STD_LOGIC; 
				fb_din     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);	
				ctrl_en    : IN  STD_LOGIC;
				H_SYNCH    : OUT STD_LOGIC;
				V_SYNCH    : OUT STD_LOGIC;
				vga_out    : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;


	
	
	BEGIN 																					   --
	  clock_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 2;     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
	  VGA : VGA_VIDEO_CARD
		PORT MAP(
					fb_en     => fb_en_tb,
				   fb_px_clk => clock_tb,	
					fb_we     => fb_we_tb, 
					fb_din    => fb_din_tb,
				   ctrl_en	 => ctrl_en_tb,
H_SYNCH => H_SYNCH_tb,
V_SYNCH => V_SYNCH_tb,
vga_out => vga_out_tb
		);
		

	d_PROCESS: PROCESS(clock_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS  
				WHEN 0 => fb_en_tb <= '1'; ctrl_en_tb <= '1';
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			