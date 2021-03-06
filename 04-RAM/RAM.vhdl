

  LIBRARY IEEE;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  
  
  ENTITY RAM IS 
		PORT( ram_clk  : IN  STD_LOGIC;								--SE UTILIZZIAMO LA SRAM FISICA CHE AVETE NELLA EXPANSION BOARD QUESTA NECESSITA DI UN CLK MOLTO PIU' BASSO DEL SYSTICK
		      en       : IN  STD_LOGIC;								--ABILITA IL CHIP DALLA CONTROL UNIT AL BUS ALLE ALTRE PERIFIERICHE 
				wr       : IN  STD_LOGIC;								--QUESTO SEGNALE GUIDA SE LEGGIAMO O SCRIVIAMO (STIAMO USANDO 1 SCRITTURA 0 LETTURA)
				addr     : IN  STD_LOGIC_VECTOR(29 DOWNTO 0);	--PRESENTA (IL PRIMO !!!) INDIRIZZO DA/IN CUI SI DESIDERA LEGGERE O SCRIVERE
				data_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	--SE E' UNA SCRITTURA PRESENTA IL DATO DA SCRIVERE 
				out_en   : OUT STD_LOGIC;								--E' UN SEGNALE RICHIESTO DAL CHIP FISICO CHE UTILIZZATE VOI NELLA CYCLONE
				mem_busy : OUT STD_LOGIC;								--ALLA FINE DEL CICLO LETTURA/SCRITTURA (4 LETTURE O SCRITTURE AL CASO PEGGIORE) SEGNALA ALLA CPU CHE PUO' CAMPIONARE IL DATO
				rm       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		--SE E' UNA LETTURA CONTIENE IL DATO A 32 BIT LETTO 
	    );
  END RAM;
  
  
  ARCHITECTURE BHV OF RAM IS 
		TYPE mem is ARRAY(0 TO 500) of STD_LOGIC_VECTOR(7 DOWNTO 0);		--MEMORIA (GIA' SOTTRATTA DI 4 PER EVITARE OVERFLOW SU SCRITTURE SU BYTE IRRAGGIUNGIBILI/INESISTENTI)
		TYPE full32bit is ARRAY(0 TO 3) of STD_LOGIC_VECTOR(7 DOWNTO 0);  --BUFFER 4x8bit
		SIGNAL memory     : mem;													   --ISTANZIO UN OGGETTO RAM (ARRAY DI STD_LOGIC_VECTOR A 8 BIT)
		SIGNAL temp       : full32bit := (OTHERS => (OTHERS => '0'));		--BUFFER TEMPORANEO PER RICREARE IL VALORE A 32 BIT A PARTIRE DA 4 X 8 BIT
		SIGNAL cnt        : INTEGER := 0;											--SERVE PER CONTARE INTERNAMENTE I BYTE SUI 32 BIT COMPLETI
		SIGNAL full_addr  : STD_LOGIC_VECTOR(31 DOWNTO 0); 					--COMPLETA L'INDIRIZZO A 30 BIT CON "00" PER RENDERE SEMPRE L'ADDRESS A MULTIPLO DI 4
		
	
		
		BEGIN 
			full_addr <= addr & "00";
		
			proc : process(ram_clk)
			BEGIN 
				IF(rising_edge(ram_clk) AND en = '1') THEN
					mem_busy <= '1';	--SOLLEVO IL SEGNALE DI memory busy
					
					IF(wr = '1' ) THEN
						rm <= (OTHERS => 'Z');
						IF(cnt < 4) THEN 

							memory(to_integer(unsigned(full_addr)) + cnt) <= data_in((31 - (cnt*8)) DOWNTO (24 - (cnt*8))); 
							cnt <= cnt + 1; 
						END IF;
					END IF;
					
					IF(wr = '0') THEN
						IF(cnt < 4) THEN 
							temp(cnt) <= memory(to_integer(unsigned(full_addr)) + cnt);
							cnt <= cnt + 1; 					
						END IF;
					END IF;
				END IF;
				
				IF(cnt = 4) THEN rm <= temp(0) & temp(1) & temp(2) & temp(3); mem_busy <= '0'; cnt <= 0; END IF;
			END PROCESS;
		
  END BHV;
