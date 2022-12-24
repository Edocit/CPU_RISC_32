

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY VGA_CONTROLLER IS 
	PORT(	en       : IN  STD_LOGIC;
			px_clk   : IN  STD_LOGIC;
			H_SYNCH  : OUT STD_LOGIC;
			V_SYNCH  : OUT STD_LOGIC;
			data_off : OUT STD_LOGIC;
			fb_addr  : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END VGA_CONTROLLER;


ARCHITECTURE BHV OF VGA_CONTROLLER IS 
	SIGNAL h_cnt       : INTEGER := 0;
	SIGNAL v_cnt       : INTEGER := 0;
	SIGNAL fb_addr_cnt : INTEGER := 0;
	
	--||____________________________________|h_synch_pulse|_____________||
	--													 |             | 
	--||       display_time     |front_porch|_____________|back_porch|__||

   --------------------------SETUP ORIZZONTALE PER 640X480 60Hz--------------------------	
	--------------------------------ESPRESSO IN PIXEL CLOCK-------------------------------
	CONSTANT h_front_porch       : INTEGER :=  16;
	CONSTANT h_back_porch        : INTEGER :=  48;
	CONSTANT display_time        : INTEGER := 640;
	CONSTANT h_synch_pulse_width : INTEGER :=  96;
	CONSTANT h_synch_pulse_start : INTEGER :=  display_time + h_front_porch;
	CONSTANT h_synch_pulse_end   : INTEGER :=  h_synch_pulse_start + h_synch_pulse_width;
	CONSTANT h_cnt_max           : INTEGER :=  h_synch_pulse_end + h_back_porch;
	--------------------------------------------------------------------------------------
	
	--------------------------SETUP VERTICALE PER 640X480 60Hz----------------------------
	----------------------------------ESPRESSO IN LINEE-----------------------------------
	CONSTANT v_front_porch       : INTEGER :=  10;	
	CONSTANT v_back_porch        : INTEGER :=  33;
	CONSTANT line_cnt            : INTEGER := 480;
	CONSTANT v_synch_pulse_width : INTEGER :=   2;
	CONSTANT v_synch_pulse_start : INTEGER :=  line_cnt + v_front_porch;
	CONSTANT v_synch_pulse_end   : INTEGER :=  v_synch_pulse_start + v_synch_pulse_width;
	CONSTANT v_cnt_max           : INTEGER :=  v_synch_pulse_end + v_back_porch;
	--------------------------------------------------------------------------------------
	
BEGIN
	
	vga_proc : PROCESS(px_clk)
	BEGIN
		IF(en = '1') THEN 
			IF(rising_edge(px_clk)) THEN 
				IF(h_cnt < (display_time + h_front_porch)) THEN 
					H_SYNCH <= '1';
					IF(h_cnt < display_time AND v_cnt < line_cnt) THEN 
						fb_addr     <= STD_LOGIC_VECTOR(TO_UNSIGNED(fb_addr_cnt, fb_addr'length));
						fb_addr_cnt <= fb_addr_cnt + 1;
					END IF;
				END IF;
				
				IF(h_cnt >= display_time OR v_cnt >= line_cnt) THEN 
					data_off <= '1';
				ELSE 
					data_off <= '0';
				END IF;
				
				IF(h_cnt >= h_synch_pulse_start AND h_cnt < h_synch_pulse_end) THEN H_SYNCH <= '0'; END IF;
				IF(h_cnt >= h_synch_pulse_end AND h_cnt < h_cnt_max)           THEN H_SYNCH <= '1'; END IF;
				
				IF(h_cnt = h_cnt_max) THEN 	
					h_cnt <= 0;
					v_cnt <= v_cnt + 1; --SE HO FINITO UNA LINEA VADO A CAPO E INCREMENTO IL CONTATORE DELLE LINEE 
				ELSE		
				   h_cnt <= h_cnt + 1;  --FONDAMENTALE IL POST INCREMENTO PER EVITARE DI PERDERE DATI SUI PRIMI PIXEL DI OGNI RIGA
				END IF;
				
				IF(v_cnt < v_synch_pulse_start) THEN V_SYNCH <= '1'; END IF;
				IF(v_cnt >= v_synch_pulse_start AND v_cnt < v_synch_pulse_end) THEN V_SYNCH <= '0'; END IF;
				IF(v_cnt >= v_synch_pulse_end AND v_cnt < v_cnt_max) THEN V_SYNCH <= '1'; END IF;
				IF(v_cnt = line_cnt) THEN fb_addr_cnt <= 0; END IF;
				IF(v_cnt = v_cnt_max) THEN v_cnt <= 0; END IF;
				
				
			END IF;
		END IF;
	
	END PROCESS;
	
	
	
END BHV;
