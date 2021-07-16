

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY INSTRUCTION_FETCH_UNIT IS 
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
END INSTRUCTION_FETCH_UNIT;



ARCHITECTURE BHV OF INSTRUCTION_FETCH_UNIT IS
	SIGNAL mid_cnt_v             : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL busy_mem              : STD_LOGIC := '0';
	SIGNAL ir_temp               : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ram_addr_internal     : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ram_addr_internal_mar : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	
	COMPONENT PROGRAM_COUNTER_32_BIT IS
		PORT(	en		  : IN  STD_LOGIC;
				clk     : IN  STD_LOGIC;
				wr_en   : IN  STD_LOGIC;
				rst     : IN  STD_LOGIC;
				jmp_v   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	
				cnt_v   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		
		);
	END COMPONENT;

	COMPONENT REGISTER32 IS 
		PORT( en    : IN  STD_LOGIC;
				rst   : IN  STD_LOGIC;
				wr_en : IN  STD_LOGIC;
				d_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
				d_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;
	
  COMPONENT RAM IS 
		PORT( ram_clk  : IN  STD_LOGIC;								--SE UTILIZZIAMO LA SRAM FISICA CHE AVETE NELLA EXPANSION BOARD QUESTA NECESSITA DI UN CLK MOLTO PIU' BASSO DEL SYSTICK
		      en       : IN  STD_LOGIC;								--ABILITA IL CHIP DALLA CONTROL UNIT AL BUS ALLE ALTRE PERIFIERICHE 
				wr       : IN  STD_LOGIC;								--QUESTO SEGNALE GUIDA SE LEGGIAMO O SCRIVIAMO (STIAMO USANDO 1 SCRITTURA 0 LETTURA)
				addr     : IN  STD_LOGIC_VECTOR(29 DOWNTO 0);	--PRESENTA (IL PRIMO !!!) INDIRIZZO DA/IN CUI SI DESIDERA LEGGERE O SCRIVERE
				data_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	--SE E' UNA SCRITTURA PRESENTA IL DATO DA SCRIVERE 
				out_en   : OUT STD_LOGIC;								--E' UN SEGNALE RICHIESTO DAL CHIP FISICO CHE UTILIZZATE VOI NELLA CYCLONE
				mem_busy : OUT STD_LOGIC;								--ALLA FINE DEL CICLO LETTURA/SCRITTURA (4 LETTURE O SCRITTURE AL CASO PEGGIORE) SEGNALA ALLA CPU CHE PUO' CAMPIONARE IL DATO
				rm       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		--SE E' UNA LETTURA CONTIENE IL DATO A 32 BIT LETTO 
	    );
  END COMPONENT;

	BEGIN --INIZIA IL COMPORTAMENTO 
		PC    : PROGRAM_COUNTER_32_BIT PORT MAP( en => pc_en, clk => clk, wr_en => wr_en_pc, rst => rst, jmp_v => jmp_addr, cnt_v => mid_cnt_v);
		MAR   : REGISTER32 PORT MAP(en => mar_en, rst => rst, wr_en => wr_en_mar, d_in => mid_cnt_v, d_out => ram_addr_internal_mar);
		RAM_M : RAM PORT MAP(ram_clk => clk, en => ram_en, wr => ram_wr, addr => ram_addr_internal(31 DOWNTO 2), data_in => ram_din, mem_busy => busy_mem, rm => ir_temp);
		IR    : REGISTER32 PORT MAP(en => ir_en, rst => rst, wr_en => wr_en_ir, d_in => ir_temp, d_out => ir_out);

		
		proc : PROCESS(mar_en,ram_en, ram_wr)
		BEGIN
			IF(mar_en = '0' AND ram_en = '1') THEN 
				ram_addr_internal <= ram_addr; 
			ELSE
				ram_addr_internal <= ram_addr_internal_mar; 
			END IF;
		END PROCESS;
		
END BHV;