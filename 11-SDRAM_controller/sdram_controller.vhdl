


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;



ENTITY SDRAM_CONTROLLER IS 
	--SUDDIVIDIAMO L'ENTIT`A NEI DUE BORDI, OVVERO LATO CORE E LATO SDRAM-CHIP
	PORT(	--AL SISTEMA 
	      rst             : IN  STD_LOGIC;							   --RESET ATTIVO ALTO 
			rw              : IN  STD_LOGIC;							   --READ/WRITE 0/1
			refresh         : IN  STD_LOGIC;							   --TRIGGERA UN CICLO DI REFRESH SE A '1'
			ram_clk_in_100  : IN  STD_LOGIC;							   --CLOCK CHE FA DA PASS_THROUGH OVVERO PASSA DIRETTAMENTE DA INPUT A OUTPUT
			addr_in         : IN  STD_LOGIC_VECTOR(24 DOWNTO 0);  --SONO 2 PER IL BANCO, 13 PER LA RIGA E 9 PER LE COLONNE
			n_dqml_in       : IN  STD_LOGIC;							   --SEGNALE FISICO ALLA SDRAM ATTIVO BASSO PER ATTIVARE LOWER BYTE DEI 2 (16 BIT = 8 + 8)
			n_dqmh_in       : IN  STD_LOGIC;							   --SEGNALE FISICO ALLA SDRAM ATTIVO BASSO PER ATTIVARE HIGHER BYTE DEI 2 (16 BIT = 8 + 8)
			data_in         : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);  --DATI DA SCRIVERE IN CASO DI SCRITTURA
			up_to_use       : OUT STD_LOGIC := '0';               --'1' QUANDO LA SDRAM HA COMPLETATO L'INIZIALIZZAZIONE E SEGNALA AL SISTEMA CHE E'PRONTA
         mem_op_complete : OUT STD_LOGIC := '0';               -- OPERAZIONE FATTA E MEMORIA RIENTRATA NELLO STATO IDLE
			
			
			--ALLA MEMORIA
			n_dqmh_to_sdram : OUT STD_LOGIC;							   --SEGNALE FISICO ALLA SDRAM ATTIVO BASSO PER ATTIVARE HIGHER BYTE DEI 2 (16 BIT = 8 + 8)
			n_dqml_to_sdram : OUT STD_LOGIC;  						   --SEGNALE FISICO ALLA SDRAM ATTIVO BASSO PER ATTIVARE LOWER BYTE DEI 2 (16 BIT = 8 + 8)
			bank_to_sdram   : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);   --SONO 2 PER IL BANCO
			addr_to_sdram   : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);  --SONO 2 13 PER LA RIGA E 9 PER LE COLONNE DA INTERSCAMBIARE VISTO CHE I PIEDINI SONO SOLO 13
			clk_en_to_sdram : OUT STD_LOGIC;                      --SEGNALE FISICO ALLA SDRAM... NON E´ NEGATO 
			n_cs_to_sdram   : OUT STD_LOGIC;							   --CHIP SELECT NEGATO, ATTIVA LA SDRAM QUANDO <= '0'
			n_ras           : OUT STD_LOGIC;							   --RAS = ROW ADDRESS STOBE, ATTIVA LA RIGA QUANDO <= '0'
			n_cas           : OUT STD_LOGIC;							   --CAS = COLUMN ADDRESS STOBE, ATTIVA LA COLONNA QUANDO <= '0'
			n_we            : OUT STD_LOGIC;							   --WRITE ENABLE NEGATO, ATTIVA LA SCRITTURA QUANDO <= '0'
			data_io         : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0) --DATI DA RESTITUIRE IN CASO DI LETTURA 
	);
END SDRAM_CONTROLLER;


ARCHITECTURE BHV OF SDRAM_CONTROLLER IS 
	-----------------------------------------------------------------------------------------------------------
	-- DEFINISCO GLI STATI PER LA FSM (FINITE STATE MACHINE) SEMPLIFICATA DEDOTTA DAL DATASHEET DELLA SCHEDA --
	TYPE state_t IS (INIT_STALL, INIT_PRECHARGE, INIT_FIRST_REFRESH, INIT_MODE_REG, INIT_SECOND_REFRESH,     --	
	                    IDLE, REFRESH_STATE, ACTIVATE, RCD, RW_STATE, FIRST_RAS, SECOND_RAS, PRECHARGE);                 --
																																				--
	SIGNAL state_to_pr : state_t := INIT_STALL;                                                              --
	SIGNAL state_int   : state_t := INIT_STALL;                                                              --
   -----------------------------------------------------------------------------------------------------------	
	
	-----------------------------------------------------------------------------------------------------
	-- IL MODE REGISTER E' DIRETTAMENTE PILOTATO DAL DATASHEET E STARA' FISSO IN QUESTA CONFIGURAZIONE --
   -- UNA LETTURA/SCRITTURA ALLA VOLTA CON AUTO-PRECHARGE (PIN A10) DISABILITATO                      --
	--                                                                                                 --
   -- | A12-A10 |    A9    | A8  A7 | A6 A5 A4 |    A3   | A2 A1 A0 |                                 --
   -- | --------| wr burst |--------| CAS Ltncy|addr mode| burst len|                                 --
   --   0  0  0      0       0   0    0  1  0       0      0  0  0           2-clk                    --
   CONSTANT MODE_REG : STD_LOGIC_VECTOR(12 DOWNTO 0) := "000" & "0" & "00" & "010" & "0" & "000";     --
	-----------------------------------------------------------------------------------------------------
	
	-----------------------------------------------------------------------------------
	----SEMPRE DAL DATASHEET I SEGNALI CHE VENGONO USATI SONO  CS | RAS | CAS | WE ----
   CONSTANT ACTIVATE_CMD  : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "0" & "1" & "1"; --             
   CONSTANT PRECHARGE_CMD : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "0" & "1" & "0"; --
   CONSTANT WRITE_CMD     : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "1" & "0" & "0"; --
   CONSTANT READ_CMD      : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "1" & "0" & "1"; --
   CONSTANT MODE_CMD      : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "0" & "0" & "0"; --
   CONSTANT NOP_CMD       : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "1" & "1" & "1"; --
   CONSTANT REFRESH_CMD   : STD_LOGIC_VECTOR(3 DOWNTO 0) :=  "0" & "0" & "0" & "1"; --
																										      --
	SIGNAL   cmd_to_pr     : STD_LOGIC_VECTOR(3 DOWNTO 0);                           --  
	SIGNAL   cmd_int       : STD_LOGIC_VECTOR(3 DOWNTO 0);                           --  
	-----------------------------------------------------------------------------------
	
	-----------------------------------------------------------------------------------------
	---------------------------------INTERNAL SIGNALS----------------------------------------
 	SIGNAL buffer_to_pr          : STD_LOGIC;	--GESTISCE 3-STATE DELL'USCITA               -- 		
   SIGNAL addr_to_pr            : STD_LOGIC_VECTOR(12 DOWNTO 0);                       	--
	SIGNAL n_dqmh_to_pr          : STD_LOGIC;																--
	SIGNAL n_dqml_to_pr          : STD_LOGIC;  															--					 
	SIGNAL bank_to_pr            : STD_LOGIC_VECTOR(1 DOWNTO 0);  									--					  
	SIGNAL clk_en_to_pr          : STD_LOGIC;																--                     
	SIGNAL n_cs_to_pr            : STD_LOGIC;																--							  
	SIGNAL n_ras_to_pr           : STD_LOGIC;																--							  
	SIGNAL n_cas_to_pr           : STD_LOGIC;																--							  
	SIGNAL n_we_to_pr            : STD_LOGIC;																--		
	SIGNAL data_out_to_pr        : STD_LOGIC_VECTOR(15 DOWNTO 0); --DATI IN CASO DI WRITE  -- 	
	SIGNAL data_io_to_pr         : STD_LOGIC_VECTOR(15 DOWNTO 0); --BUFFERIZZATO (3-STATE) -- 									
	SIGNAL up_to_use_to_pr       : STD_LOGIC;																--
   SIGNAL mem_op_complete_to_pr : STD_LOGIC;		 												      --	
																												      --
   SIGNAL buffer_int            : STD_LOGIC;	--GESTISCE 3-STATE DELL'USCITA               --
   SIGNAL bank_int              : STD_LOGIC_VECTOR( 1 DOWNTO 0);						         --
	SIGNAL clk_en_int            : STD_LOGIC;															   --  
   SIGNAL row_int               : STD_LOGIC_VECTOR(12 DOWNTO 0); --DA A12 A A0            --
   SIGNAL col_int               : STD_LOGIC_VECTOR( 9 DOWNTO 0); --DA A9  A A0            --
   SIGNAL addr_int              : STD_LOGIC_VECTOR(12 DOWNTO 0); --SEMPRE 13 PIN FISICI   --
	SIGNAL n_dqmh_int            : STD_LOGIC;													         --
	SIGNAL n_dqml_int            : STD_LOGIC;  	                                          --
	SIGNAL data_out_int          : STD_LOGIC_VECTOR(15 DOWNTO 0); --DATI IN CASO DI WRITE  -- 	                     		
	SIGNAL data_io_int           : STD_LOGIC_VECTOR(15 DOWNTO 0);  --BUFFERIZZATO (3-STATE)--
	SIGNAL up_to_use_int         : STD_LOGIC;															   --	
	SIGNAL mem_op_complete_int   : STD_LOGIC;		 														--	
																												      --
   SIGNAL bank_s          : STD_LOGIC_VECTOR( 1 DOWNTO 0);						               --	
	SIGNAL row_s           : STD_LOGIC_VECTOR(12 DOWNTO 0);                                --
   SIGNAL col_s           : STD_LOGIC_VECTOR( 9 DOWNTO 0);                                --
	-----------------------------------------------------------------------------------------

	---------------------------------------------------------------------------------------------
	-------------------------------------------TIMERS--------------------------------------------
	--SE CLK E' 100MHz ALLORA OGNI TICK DEL TIMER E' 10ns                                      --
	SIGNAL   refresh_cnt_to_pr : INTEGER := 0;     --CONTA A 8 SERVE SOLO IN INIZIALIZZAZIONE  --
	SIGNAL   refresh_cnt_int   : INTEGER := 0;     --CONTA A 8 SERVE SOLO IN INIZIALIZZAZIONE  --
	CONSTANT refresh_cnt_max   : INTEGER := 8;     --MAX PER IL CONTATORE PRECEDENTE           --
	SIGNAL   init_cnt_to_pr    : INTEGER := 0;     --CONTA A 20.000                            --
	SIGNAL   init_cnt_int      : INTEGER := 0;     --CONTA A 20.000                            --
	CONSTANT init_cnt_max      : INTEGER := 20000; --MAX PER IL CONTATORE PRECEDENTE           --
	---------------------------------------------------------------------------------------------
	
	---------------------------------------------------------------------------------------------
	-------------------DOPO I SEGNALI INIZIA QUI L'ARCHITETTURA DEL COMPONENTE------------------- 
	BEGIN
	
		------PRIMA DI TUTTO ASSEGNO IN MANIERA CONCORRENTE I SEGNALI DI USCITA DELL'ENTITA'------
		------------------------------------------------------------------------------------------
		-- IL PROCESSO TRIGGERATO DAL CLK FA DA CONTROL UNIT PER LA MACCHINA A STATI DEL MEMORY --
		-- CONTROLLER, N.B. I SEGNALI xxxxxxx_to_pr PROVENIENTI DAL PROCESSO DEL CLK GUIDANO LE --
		-- VARIAZIONI DI TUTTI GLI ALTRI NELLA FSM E NELL'ENTITA' PRINCIPALE                    -- 
		------------------------------------------------------------------------------------------
		n_dqmh_to_sdram <= n_dqmh_to_pr;
		n_dqml_to_sdram <= n_dqml_to_pr;
		bank_to_sdram   <= bank_to_pr;
		addr_to_sdram   <= addr_to_pr;
		clk_en_to_sdram <= clk_en_to_pr;
		up_to_use       <= up_to_use_to_pr;
		
		data_io         <= data_out_to_pr WHEN buffer_to_pr = '1' ELSE (OTHERS => 'Z');
		
		n_cs_to_sdram   <= cmd_to_pr(3);	--FARE RIFERIMENTO A RIGA 60
		n_ras           <= cmd_to_pr(2);	--FARE RIFERIMENTO A RIGA 60
		n_cas           <= cmd_to_pr(1);	--FARE RIFERIMENTO A RIGA 60
		n_we            <= cmd_to_pr(0);	--FARE RIFERIMENTO A RIGA 60	 
		------------------------------------------------------------------------------------------
		---- 24  23  | 22 21 20 19 18 17 16 15 14 13 12 11 10 | 09 08 07 06 05 04 03 02 01 00 | --
      ---- B0  B1  |           ROW (A12-A0)  8192 rows      |     COL (A9-A0)  1024 cols    | --
		------------------------------------------------------------------------------------------
		-- INFATTI 8192 X 1024 = 8.388.608 --> 8.388.608 / 1024 = 8.192K --> 8.192k / 1024 = 8M --
		--    CONSIDERANDO OGNI CELLA 16-BITS ABBIAMO 4 BANCHI QUINDI 8M x 4 = 32Mb DI SDRAM    --     
		------------------------------------------------------------------------------------------
		bank_s <= addr_in(24 DOWNTO 23);																			 --
		row_s  <= addr_in(22 DOWNTO 10);																			 --
		col_s  <= addr_in( 9 DOWNTO  0);																			 --
		------------------------------------------------------------------------------------------
		
		-----------------------------------------------------------------------------------------------------------------------
		---------------------------------------------FSM - MACCHINA A STATI FINITI---------------------------------------------
		fsm_proc : PROCESS(state_to_pr, init_cnt_to_pr, refresh_cnt_to_pr, clk_en_to_pr, addr_to_pr, data_out_to_pr,         --
	                  	  buffer_to_pr, n_dqmh_to_pr, n_dqml_to_pr, up_to_use_to_pr, bank_int, row_int, col_int, addr_in,  --
								   n_dqml_in, n_dqmh_in, data_in, buffer_to_pr, data_io)	                                          -- 
		BEGIN  																																				   --
			state_int       <= state_to_pr;       -- LO STATO INTERNO RIMANE TALE SE NON VIENE CAMBIATO DAL PROCESSO DEL CLK  --
			init_cnt_int    <= init_cnt_to_pr;    -- DI DAFAULT MANIENTE LO STATO DEL CONTATORE                               --
			refresh_cnt_int <= refresh_cnt_to_pr; -- DI DAFAULT MANIENTE LO STATO DEL CONTATORE                               --
			clk_en_int      <= clk_en_to_pr;      -- LATCHA I SEGNALI TRA I DUE PROCESSI                                      --
			cmd_int         <= NOP_CMD;           -- I COMANDI SI PRESENTANO COL NOP DI DEFAULT (IN ATTESA DI COMANDI)        --
			bank_int        <= bank_to_pr;        -- PRESENTA IL BANCO SELEZIONATO NEL PROCESSO DI CLK                        --
			addr_int        <= addr_to_pr;        -- PRESENTA L'INIDIRIZZO SETTATO NEL PROCESSO DI CLK                        --
			data_out_int    <= data_out_to_pr;    -- PRESENTA I DATI DA SCRIVERE SULLA SDRAM SETTATI NEL PROCESSO DI CLK      --
			buffer_int      <= buffer_to_pr;      -- CONTROLLA IL SEGNALE 3-STATE SETTATO NEL PROCESSO DI CLK                 --
			n_dqmh_int      <= n_dqmh_to_pr;		  -- ATTIVA GLI 8-BIT ALTI  DEI 16 SE MESSO A 0 NEL PROCESSO DI CLK           --
			n_dqml_int      <= n_dqml_to_pr;		  -- ATTIVA GLI 8-BIT BASSI DEI 16 SE MESSO A 0 NEL PROCESSO DI CLK           --
			data_io_int     <= data_io_to_pr;     -- DATI DELLA SDRAM VERSO IL SISTEMA IN CASO DI LETTURA                     --
																																									--
			up_to_use_int   <= up_to_use_to_pr;   -- SEGNALA QUANDO LA SDRAM E' PRONTA DOPO L'INIZIALIZZAZIONE                --
			mem_op_complete <= '0';					  -- SEGNA SE LA MEMORIA E' OCCUPATA PER UN'OPERAZIONE O LIBERA (IDLE)        --
																																									--
																																									--
			IF(init_cnt_to_pr /= 0) THEN 																									            --
				init_cnt_int <= init_cnt_to_pr - 1;	--INIZIALIZZAZIONE 20.000 TICK A 100MHz = 10ns x 20.000 = 200us COME DA DS --
			ELSE 
				clk_en_int <= '1'; 
				bank_int   <= bank_s;
				addr_int   <= "000" & col_s;
            n_dqmh_int <= '0';
            n_dqml_int <= '0';
				
				------------------------------------------------------------------------------------------------------
				--INIZIA LO SWITCH, IL CUORE DELLA MACCHINA A STATI E SI FA SUL SEGNALE GUIDATO DAL PROCESSO DI CLK 
				------------------------------------------------------------------------------------------------------
				------------------------------------------------------------------------------------------------------
				--LA SEQUENZA INIZIALE E':
				-- 1. ASPETTARE 200us CON NOP E DQMx ALTI
				-- 2. PRECHARGE DI TUTTI I BANCHI 
				-- 3. 8 CICLI DI REFRESH 
				-- 4. SETTARE IL MODE REGISTER 
				-- 5. 8 CICLI DI REFRESH 
				------------------------------------------------------------------------------------------------------
				CASE state_to_pr IS
					WHEN INIT_STALL => 
											state_int <= INIT_PRECHARGE;
											init_cnt_int <= init_cnt_max;          -- Wait 200us (20,000 cycles).
											--          timer_x <= 2;              -- for simulation
											n_dqmh_int <= '1';
											n_dqml_int <= '1';

					WHEN INIT_PRECHARGE =>
											state_int       <= INIT_FIRST_REFRESH;
											refresh_cnt_int <= 0;             -- Do 8 refresh cycles in the next state.
											--          refcnt_x <= 2;             -- for simulation
											cmd_int         <= PRECHARGE_CMD;
											init_cnt_int    <= 2;                -- Wait 2 cycles plus state overhead for 20ns Trp.
											bank_int        <= "00";
											addr_int(10)    <= '1';              -- Precharge all banks.
											
					WHEN INIT_FIRST_REFRESH => 
											if refresh_cnt_int = 0 then
												state_int <= INIT_MODE_REG;
											else
												refresh_cnt_int <= refresh_cnt_int - 1;
												cmd_int         <= REFRESH_CMD;
												init_cnt_int    <= 7;           -- Wait 7 cycles plus state overhead for 70ns refresh.
											end if;
			
					WHEN INIT_MODE_REG =>
											state_int       <= INIT_SECOND_REFRESH;
											refresh_cnt_int <= 8;             -- Do 8 refresh cycles in the next state.
											--          refcnt_x <= 2;             -- for simulation
											bank_int        <= "00";
											addr_int        <= MODE_REG;
											cmd_int         <= MODE_CMD;
											init_cnt_int    <= 2;              -- Trsc == 2 cycles after issuing MODE command.
	
				   WHEN INIT_SECOND_REFRESH =>	
											if refresh_cnt_to_pr = 0 then
												state_int <= IDLE;
												up_to_use_int <= '1';
											else
												refresh_cnt_int <= refresh_cnt_to_pr - 1;
												cmd_int <= REFRESH_CMD;
												init_cnt_int <= 7;           -- Wait 7 cycles plus state overhead for 70ns refresh.
											end if;
	
					--FINITA LA SEQUENZA DI AVVIO PASSIAMO ALLA MODALITA' OPERAZIONALE NORMALE 
					--         |<-----------       Trc      ------------>|
					--         |<----------- Tras ---------->|
					--         |<- Trcd  ->|<- TCas  ->|     |<-  Trp  ->|
					--  T0__  T1__  T2__  T3__  T4__  T5__  T6__  T0__  T1__
					-- __|  |__|  |__|  |__|  |__|  |__|  |__|  |__|  |__|  |__
					-- IDLE  ACTVT  NOP  RD/WR  NOP   NOP  PRECG IDLE  ACTVT
					--     --<Row>-------------------------------------<Row>--
					--                ---<Col>---
					--                ---<A10>-------------<A10>---
					--                                  ---<Bank>---
					--                ---<DQM>---
					--                ---<Din>---
					--                                  ---<Dout>---
					--   ---<Refsh>-----------------------------------<Refsh>---
					---------------------------------------------------------------------------------------
		         -- Trc  - 70ns - Activate to activate command     SAREBBE 60ns
					-- Trcd - 20ns - ACTIVATE PER LETTURA/SCRITTURA IL MIN E' 18ns QUINDI 15ns/10ns = 1.5 --> 2 clks
					-- Tras - 50ns - Activate to precharge command.
					-- Trp  - 20ns - Precharge to activate command.
					-- TCas - 2clk - Read/write to data out.
					---------------------------------------------------------------------------------------

					WHEN IDLE => 
											-- 60ns since activate when coming from PRECHARGE state.
											-- 10ns since PRECHARGE.  Trp == 20ns min.
											if rw = '1' then
												state_int <= ACTIVATE;
												cmd_int <= ACTIVATE_CMD;
												addr_int <= row_s;        -- Set bank select and row on activate command.
											elsif refresh = '1' then
												state_int <= REFRESH_STATE;
												cmd_int <= REFRESH_CMD;
												init_cnt_int <= 7;           -- Wait 7 cycles plus state overhead for 70ns refresh.
											end if;
			
				   WHEN REFRESH_STATE =>             
											state_int <= IDLE;
											mem_op_complete <= '1';
											
				   WHEN ACTIVATE =>
											-- Trc (Active to Active Command Period) is 60ns min.
											-- 70ns since activate when coming from PRECHARGE -> IDLE states.
											-- 20ns since PRECHARGE.
											-- ACTIVATE command is presented to the SDRAM.  The command out of this
											-- state will be NOP for one cycle.
											state_int    <= RCD;
											data_out_int <= data_in;       -- Register any write data, even if not used.
					WHEN RCD =>
											-- 10ns since activate.
											-- Trcd == 20ns min.  The clock is 10ns, so the requirement is satisfied by this state.
											-- READ or WRITE command will be active in the next cycle.
											state_int <= RW_STATE;
											
											if(rw = '0') then
												cmd_int <= WRITE_CMD;
												buffer_int <= '1';     -- The SDRAM latches the input data with the command.
												n_dqmh_int <= n_dqmh_in;
												n_dqmL_int <= n_dqml_in;
											else
												cmd_int <= READ_CMD;
											end if;
				
					WHEN RW_STATE =>
											-- 20ns since activate.
											-- READ or WRITE command presented to SDRAM.
											state_int  <= FIRST_RAS;
											buffer_int <= '0';
			
				
				   WHEN FIRST_RAS =>
											-- 30ns since activate.
											-- Data from the SDRAM will be registered on the next clock.
											state_int   <= SECOND_RAS;
											data_io_int <= data_io;
			
				   WHEN SECOND_RAS =>
											-- 40ns since activate.
											-- Tras (Active to precharge Command Period) 45ns min.
											-- PRECHARGE command will be active in the next cycle.
											state_int    <= PRECHARGE;
											cmd_int      <= PRECHARGE_CMD;
											addr_int(10) <= '1';         -- Precharge all banks.

				   WHEN PRECHARGE =>
											-- 50ns since activate.
											-- PRECHARGE presented to SDRAM.
											state_int       <= IDLE;
											mem_op_complete <= '1';             -- Read data is ready and should be latched by the host.
											init_cnt_int    <= 1;              -- Buffer to make sure host takes down memory request before going IDLE.

				END CASE;
			END IF;
		END PROCESS;
		
		
		clk_pr : PROCESS(ram_clk_in_100)
		BEGIN
			if rising_edge(ram_clk_in_100) then
				if rst = '1' then
					state_to_pr  <= INIT_STALL;
					init_cnt_to_pr  <= 0;
					cmd_to_pr       <= NOP_CMD;
					clk_en_to_pr    <= '0';
					up_to_use_to_pr <= '0';
				else
					state_to_pr       <= state_int;
					init_cnt_to_pr    <= init_cnt_int;
					refresh_cnt_to_pr <= refresh_cnt_int;
					clk_en_to_pr      <= clk_en_int;         -- CKE to SDRAM.
					cmd_to_pr         <= cmd_int;         -- Command to SDRAM.
					bank_to_pr        <= bank_int;        -- Bank to SDRAM.
					addr_to_pr        <= addr_int;        -- Address to SDRAM.
					
					data_out_to_pr        <= data_out_int;     -- Data to SDRAM.
					buffer_to_pr          <= buffer_int;   -- SDRAM bus direction.
					n_dqmh_to_pr          <= n_dqmh_int;     -- Upper byte enable to SDRAM.
					n_dqml_to_pr          <= n_dqml_int;     -- Lower byte enable to SDRAM.
					mem_op_complete_to_pr <= mem_op_complete_int;
					data_io_to_pr         <= data_io_int;
				end if;
			end if;
			END PROCESS;
		
END BHV;