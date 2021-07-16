



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY INSTRUCTION_FETCH_UNIT_TB IS
END INSTRUCTION_FETCH_UNIT_TB;


ARCHITECTURE BHV OF INSTRUCTION_FETCH_UNIT_TB IS 
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
   SIGNAL ir_out_tb       : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');			--
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	COMPONENT INSTRUCTION_FETCH_UNIT IS 
		PORT(		pc_en     : IN  STD_LOGIC;
					mar_en    : IN  STD_LOGIC;
					wr_en_pc  : IN  STD_LOGIC;
					wr_en_mar : IN  STD_LOGIC;
					ram_en    : IN  STD_LOGIC;
					ram_wr    : IN  STD_LOGIC;
					ram_addr  : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
					ram_din   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
					ir_en     : IN  STD_LOGIC;
					wr_en_ir  : IN  STD_LOGIC;
					ir_out    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
					rst       : IN  STD_LOGIC;
					clk       : IN  STD_LOGIC;
					jmp_addr  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
		IFU : INSTRUCTION_FETCH_UNIT
			PORT MAP(	pc_en       => pc_en_tb,
							mar_en      => mar_en_tb,
							wr_en_pc    => wr_en_pc_tb,
							wr_en_mar   => wr_en_mar_tb,
						   ram_en      => ram_en_tb,
					      ram_wr      => ram_wr_tb,
							ram_addr    => ram_addr_tb,
							ram_din     => ram_din_tb,
							ir_en       => ir_en_tb,
					      wr_en_ir    => wr_en_ir_tb,
					      ir_out      => ir_out_tb,
							rst         => reset_tb,
							clk         => clock_tb,
							jmp_addr    => jmp_v_tb
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
				WHEN 1  => pc_en_tb  <= '1'; mar_en_tb    <= '1'; wr_en_mar_tb <= '1';
				WHEN 2  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				WHEN 6  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0'; 
				WHEN 7  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0'; 
				WHEN 8  => ir_en_tb  <= '0'; 
				
				WHEN 10  => pc_en_tb  <= '1'; mar_en_tb    <= '1'; wr_en_mar_tb <= '1';
				WHEN 11  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				WHEN 15  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0';
				WHEN 16  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0'; 
				WHEN 17  => ir_en_tb  <= '0'; 
				
				--QUA SOTTO RAM_ADDR_TB E´ VOLUTAMENTE NON MULTIPLO DI 4 PER DIMOSTRARE COME IL RAM CONTROLLER FORZI A 8 QUELL' INDIRIZZO
				WHEN 20  => mar_en_tb <= '0'; ram_en_tb <= '1'; ram_wr_tb <= '1'; 
				            ram_addr_tb <= "00000000" & "00000000" & "00000000" & "00001001"; 
								ram_din_tb  <= "00000000" & "00000000" & "00000000" & "00001001";
				WHEN 24  => mar_en_tb <= '0'; ram_en_tb <= '0'; ram_wr_tb <= '0'; 
				
				--DATO CHE ABBIAMO SCRITTO ALL'INDIRIZZO 8 QUEL VALORE PROVIAMO A FARE UN SALTO A QUELLA LOCAZIONE E FETCHARE QUELLA LONG				
				WHEN 26  => pc_en_tb  <= '1'; wr_en_pc_tb <= '1'; jmp_v_tb <= "00000000" & "00000000" & "00000000" & "00001000"; 
				WHEN 27  => pc_en_tb  <= '0'; wr_en_pc_tb <= '0';  mar_en_tb <= '1'; wr_en_mar_tb <= '1';
				WHEN 28  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				WHEN 32  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0'; 
				WHEN 33  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0'; 
				WHEN 34  => ir_en_tb  <= '0'; 
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;
			