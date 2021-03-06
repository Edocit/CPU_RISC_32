



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTio.ALL;
use ieee.STD_LOGIC_TEXTio.ALL;
  USE ieee.numeric_std.ALL;

ENTITY RAM_TB IS
END RAM_TB;


ARCHITECTURE BHV OF RAM_TB IS 
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench CONSTANTS                                                                                                                								           --
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	CONSTANT T_CLK   : TIME := 10 ns;                                      -- CLOCK PERIOD                                                       						           --
	CONSTANT T_RESET : TIME := 5 ns;                                       -- PERIOD BEFORE THE RESET DEASSERTION                                                                                       --
	CONSTANT N_TB	  : NATURAL := 3;	                                      -- GENERIC CONSTANT DEFINITION   
   CONSTANT D_TB	  : TIME := 3 ns;	                                      -- GENERIC CONSTANT DEFINITION   	--
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Testbench SIGNALS																							   --    
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SIGNAL clock_tb        : STD_LOGIC := '0';                                    -- CLOCK SIGNAL, INTIALIZED TO '0'                                             						   --
	SIGNAL clock2_tb       : STD_LOGIC := '0';
	SIGNAL reset_tb        : STD_LOGIC := '1';                                    -- RESET SIGNAL ACTIVE HIGH
   SIGNAL en_tb           : STD_LOGIC := '0'; 
	SIGNAL wr_tb           : STD_LOGIC := '0'; 
	SIGNAL mem_busy_tb     : STD_LOGIC := '0'; 
	SIGNAL addr_tb         : STD_LOGIC_VECTOR(29 DOWNTO 0) := (OTHERS => '0');	
	SIGNAL data_in_tb      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');	
   SIGNAL rm_tb           : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');			--
	SIGNAL end_sim         : STD_LOGIC := '1';                                    -- SIGNAL TO USE TO STOP THE SIMULATION WHEN THERE IS NOTHING ELSE TO TEST   
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- COMPONENT TO TEST (DUT) DECLARATION (DUT = DESIGN UNDER TEST)                                                                                          							   --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------
	--COMPONENTS
  COMPONENT RAM IS 
		PORT( ram_clk  : IN  STD_LOGIC;								--SE UTILIZZIAMO LA SRAM FISICA CHE AVETE NELLA EXPANSION BOARD QUESTA NECESSITA DI UN CLK MOLTO PIU' BASSO DEL SYSTICK
		      en       : IN  STD_LOGIC;								--ABILITA IL CHIP DALLA CONTROL UNIT AL BUS ALLE ALTRE PERIFIERICHE 
				wr       : IN  STD_LOGIC;								--QUESTO SEGNALE GUIDA SE LEGGIAMO O SCRIVIAMO (STIAMO USANDO 1 SCRITTURA 0 LETTURA)
				addr     : IN  STD_LOGIC_VECTOR(29 DOWNTO 0);	--PRESENTA (IL PRIMO !!!) INDIRIZZO DA/IN CUI SI DESIDERA LEGGERE O SCRIVERE
				data_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	--SE E' UNA SCRITTURA PRESENTA IL DATO DA SCRIVERE 
				mem_busy : OUT STD_LOGIC;								--ALLA FINE DEL CICLO LETTURA/SCRITTURA (4 LETTURE O SCRITTURE AL CASO PEGGIORE) SEGNALA ALLA CPU CHE PUO' CAMPIONARE IL DATO
				rm       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		--SE E' UNA LETTURA CONTIENE IL DATO A 32 BIT LETTO 
	    );
  END COMPONENT;

	
	
	BEGIN 																					   --
	  clock_tb  <= (NOT(clock_tb) AND end_sim) AFTER ((T_CLK / 2));     -- THE CLOCK TOGGLES AFTER T_CLK / 2 WHEN END_SIM IS HIGH. WHEN END_SIM IS FORCED LOW, THE CLOCK STOPS TOGGLING AND THE SIMULATION ENDS     --
	  clock2_tb <= (NOT(clock_tb) AND end_sim) AFTER T_CLK / 4; 
	  reset_tb <= '0' AFTER T_RESET;                               -- DEASSERTING THE RESET AFTER T_RESET NANOSECODS                                                                                           --
		
		RAM_UNIT : RAM
			PORT MAP(	ram_clk  => clock_tb,
							en       => en_tb,
				         wr       => wr_tb,
				         addr     => addr_tb,
				         data_in  => data_in_tb,
				         mem_busy => mem_busy_tb,
				         rm       => rm_tb			
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
				WHEN 1      => en_tb <= '1'; wr_tb <= '1'; addr_tb <= "000000" & "00000000" & "00000000" & "00000010"; 
                                                          data_in_tb <= "00000001" & "00000011" & "00000111" & "00001111";
				WHEN 5      => en_tb <= '0';
				WHEN 7 => en_tb <= '1'; wr_tb <= '0'; addr_tb <= "000000" & "00000000" & "00000000" & "00000010"; 
				WHEN 11     => en_tb <= '0';
				WHEN OTHERS => NULL;                                            --
		  END CASE;
		  t := t + 1;                                                                                                                                                  --
	  END IF;																								   --
	END PROCESS;   
END BHV;