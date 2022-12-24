


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;

ENTITY CPU_TB IS
END CPU_TB;


ARCHITECTURE BHV OF CPU_TB IS 
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
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
	COMPONENT CPU IS
		PORT(
				clk         : IN STD_LOGIC;
				ram_clk	    : IN STD_LOGIC;
				global_rst  : IN STD_LOGIC
		);
	END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
 	
		
		CPU_RSIC : CPU
			PORT MAP( clk        => clock_tb,
				  ram_clk    => clock2_tb,
				  global_rst => reset_tb     );

		
		
		
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
				--WHEN 1  => pc_en_tb  <= '1'; mar_en_tb    <= '1'; wr_en_mar_tb <= '1';
				--WHEN 2  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				--WHEN 6  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0'; reg_file_en_tb <= '1'; reg_file_wr_tb <= '0'; 
				--WHEN 7  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0';  
				--WHEN 8  => 
				
				--WHEN 10  => pc_en_tb  <= '1'; mar_en_tb    <= '1'; wr_en_mar_tb <= '1';
				--WHEN 11  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				--WHEN 15  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0';
				--WHEN 16  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0'; 
				--WHEN 17  => ir_en_tb  <= '0'; 
				
				--QUA SOTTO RAM_ADDR_TB E´ VOLUTAMENTE NON MULTIPLO DI 4 PER DIMOSTRARE COME IL RAM CONTROLLER FORZI A 8 QUELL' INDIRIZZO
				--WHEN 20  => mar_en_tb <= '0'; ram_en_tb <= '1'; ram_wr_tb <= '1'; 
				          --  ram_addr_tb <= "00000000" & "00000000" & "00000000" & "00001001"; 
							 --ram_din_tb  <= "00000000" & "00000000" & "00000000" & "00001001";
				--WHEN 24  => mar_en_tb <= '0'; ram_en_tb <= '0'; ram_wr_tb <= '0'; 
				
				--DATO CHE ABBIAMO SCRITTO ALL'INDIRIZZO 8 QUEL VALORE PROVIAMO A FARE UN SALTO A QUELLA LOCAZIONE E FETCHARE QUELLA LONG				
				--WHEN 26  => pc_en_tb  <= '1'; wr_en_pc_tb <= '1'; jmp_v_tb <= "00000000" & "00000000" & "00000000" & "00001000"; 
				--WHEN 27  => pc_en_tb  <= '0'; wr_en_pc_tb <= '0';  mar_en_tb <= '1'; wr_en_mar_tb <= '1';
				--WHEN 28  => pc_en_tb  <= '0'; wr_en_mar_tb <= '0'; mar_en_tb    <= '1'; ram_en_tb <= '1'; ram_wr_tb <= '0';
				--WHEN 32  => ram_en_tb <= '0'; ir_en_tb     <= '1'; wr_en_ir_tb  <= '1'; mar_en_tb <= '0'; 
				--WHEN 33  => ir_en_tb  <= '1'; wr_en_ir_tb  <= '0'; 
				--WHEN 34  => ir_en_tb  <= '0'; 
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;