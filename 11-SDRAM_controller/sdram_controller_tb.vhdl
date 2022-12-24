


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY SDRAM_CONTROLLER_TB IS
END SDRAM_CONTROLLER_TB;


ARCHITECTURE BHV OF SDRAM_CONTROLLER_TB IS 
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
	SIGNAL reset_tb        : STD_LOGIC := '1';                                                                                                            --
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   

	SIGNAL ram_clk_in_tb      : STD_LOGIC;
	SIGNAL ram_clk_out_tb     : STD_LOGIC;
				
	SIGNAL addr_in_tb         : STD_LOGIC_VECTOR(12 DOWNTO 0);
	SIGNAL addr_out_tb        : STD_LOGIC_VECTOR(12 DOWNTO 0);
				
	SIGNAL bank_sel_in_tb     : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL bank_sel_out_tb    : STD_LOGIC_VECTOR(1 DOWNTO 0);
				
	SIGNAL n_dqml_in_tb       : STD_LOGIC;
	SIGNAL n_dqml_out_tb      : STD_LOGIC;
				
	SIGNAL n_dqmh_in_tb       : STD_LOGIC ;
	SIGNAL n_dqmh_out_tb      : STD_LOGIC ;
				
	SIGNAL clk_en_tb          : STD_LOGIC ;
	SIGNAL n_cs_tb            : STD_LOGIC ;
	SIGNAL n_ras_tb           : STD_LOGIC ;
	SIGNAL n_cas_tb           : STD_LOGIC ;
	SIGNAL n_we_tb            : STD_LOGIC ;
	SIGNAL data_out_tb        : STD_LOGIC_VECTOR(15 DOWNTO 0);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS

	COMPONENT SDRAM_CONTROLLER IS 
		PORT(	ram_clk_in      : IN  STD_LOGIC;
				ram_clk_out     : OUT STD_LOGIC;
				
				addr_in         : IN  STD_LOGIC_VECTOR(12 DOWNTO 0);
				addr_out        : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
				
				bank_sel_in     : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
				bank_sel_out    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				
				n_dqml_in       : IN  STD_LOGIC;
				n_dqml_out      : OUT STD_LOGIC;
				
				n_dqmh_in       : IN  STD_LOGIC;
				n_dqmh_out      : OUT STD_LOGIC;
				
				clk_en          : OUT STD_LOGIC; --NON E´ NEGATO 
				n_cs            : OUT STD_LOGIC;
				n_ras           : OUT STD_LOGIC;
				n_cas           : OUT STD_LOGIC;
				n_we            : OUT STD_LOGIC;
				data_out        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;


	
	
	BEGIN 																					   --
	  clock_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 2;     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
		SDRAM_CTRL : SDRAM_CONTROLLER
		PORT MAP(
				ram_clk_in    => clock_tb,
				ram_clk_out   => ram_clk_out_tb,
				
				addr_in       => addr_in_tb,
				addr_out      => addr_out_tb,
				
				bank_sel_in  => bank_sel_in_tb, 
				bank_sel_out => bank_sel_out_tb,
				
				n_dqml_in    => n_dqml_in_tb,
				n_dqml_out   => n_dqml_out_tb,
				
				n_dqmh_in    => n_dqmh_in_tb, 
				n_dqmh_out   => n_dqmh_out_tb,
				
				clk_en       => clk_en_tb,
				n_cs         => n_cs_tb, 
				n_ras        => n_ras_tb,
				n_cas        => n_cas_tb,
				n_we         => n_we_tb,
				data_out     => data_out_tb
		);
		

	d_PROCESS: PROCESS(clock_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;   																						
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS  
				WHEN 0 => n_cs_tb <= '0';
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			