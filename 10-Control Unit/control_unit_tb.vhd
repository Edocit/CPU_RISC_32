

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY CONTROL_UNIT_TB IS
END CONTROL_UNIT_TB;


ARCHITECTURE BHV OF CONTROL_UNIT_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK    : TIME := 10 ns;                                        -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET  : TIME := 5 ns;                                         -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	   : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION   
   CONSTANT D_TB	   : TIME := 3 ns;	                                      -- GENERIC CONSTANT DEFINITION   	--
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   --
	SIGNAL clock2_tb       : STD_LOGIC := '0';
	SIGNAL reset_tb        : STD_LOGIC := '1';                                    -- RESET SIGNAL ACTIVE HIGH
   SIGNAL wr_en_pc_tb     : STD_LOGIC := '0'; 
   SIGNAL wr_en_mar_tb    : STD_LOGIC := '0'; 	--
	SIGNAL pc_en_tb        : STD_LOGIC := '0';  
   SIGNAL ram_wr_tb       : STD_LOGIC := '0'; 	--
	SIGNAL ram_en_tb       : STD_LOGIC := '0';  
	SIGNAL ram_addr_tb     : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
	SIGNAL ram_din_tb      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
	SIGNAL mar_en_tb       : STD_LOGIC := '0'; 
	SIGNAL ir_en_tb        : STD_LOGIC := '0'; 
	SIGNAL wr_en_ir_tb     : STD_LOGIC := '0';  	
	SIGNAL jmp_v_tb        : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
   SIGNAL ir_out_tb       : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');		

	SIGNAL reg_file_en_tb  : STD_LOGIC := '0'; 
	SIGNAL reg_file_wr_tb  : STD_LOGIC := '0'; 
	SIGNAL alu_en_tb       : STD_LOGIC := '0';
	
	SIGNAL mem_busy_tb     : STD_LOGIC := '0';

	--
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
COMPONENT CONTROL_UNIT IS
	PORT(
			clk         : IN STD_LOGIC;
			global_rst  : IN STD_LOGIC;
			en				: IN STD_LOGIC;
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
END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
		CU : CONTROL_UNIT
			PORT MAP(	clk         => clock_tb,
							global_rst  => reset_tb,
							en          => mem_busy_tb,
							pc_en       => pc_en_tb,
							mar_en      => mar_en_tb,
							pc_wr_en    => wr_en_pc_tb,
							mar_wr_en   => wr_en_mar_tb,
						   ram_en      => ram_en_tb,
					      ram_wr      => ram_wr_tb,
							ir_en       => ir_en_tb,
					      ir_wr_en    => wr_en_ir_tb,
							reg_file_en => reg_file_en_tb,
							reg_file_wr => reg_file_wr_tb,
							alu_en      => alu_en_tb
		);

		
		
		
	d_PROCESS: PROCESS(clock_tb, clock2_tb, reset_tb)         
	  VARIABLE t : INTEGER := 0;         

	  BEGIN																							
	    if( rising_edge(clock_tb) and reset_tb = '1') then																					
		  t := 0;  
		ELSIF(rising_edge(clock_tb)) THEN     
		  CASE(t) IS    
				WHEN 0 => mem_busy_tb <= '1';
				WHEN 7 => mem_busy_tb <= '0';
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;