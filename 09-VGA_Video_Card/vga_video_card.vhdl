

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY VGA_VIDEO_CARD IS 
	PORT(   fb_en         : IN  STD_LOGIC;
			fb_px_clk     : IN  STD_LOGIC;
			fb_we         : IN  STD_LOGIC; 
			fb_din        : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);	
	        ctrl_en       : IN  STD_LOGIC;
			H_SYNCH       : OUT STD_LOGIC;
			V_SYNCH       : OUT STD_LOGIC;
			vga_out       : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END VGA_VIDEO_CARD;


ARCHITECTURE BHV OF VGA_VIDEO_CARD IS
	SIGNAL clk_int      : STD_LOGIC := '0';
	SIGNAL data_off_int : STD_LOGIC := '0';
    SIGNAL fb_int_addr  : STD_LOGIC_VECTOR(18 DOWNTO 0);
	SIGNAL fb_int       : STD_LOGIC_VECTOR(2  DOWNTO 0);
	SIGNAL r_out        : STD_LOGIC_VECTOR(3  DOWNTO 0);
	SIGNAL g_out        : STD_LOGIC_VECTOR(3  DOWNTO 0);
	SIGNAL b_out        : STD_LOGIC_VECTOR(3  DOWNTO 0);

	COMPONENT CLK_DIV IS 
		PORT( clk_in   : IN STD_LOGIC;
				clk_out  : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT FRAMEBUFFER IS
		PORT( en      : IN  STD_LOGIC;
				clk     : IN  STD_LOGIC;
				we      : IN  STD_LOGIC; 
				addr    : IN  STD_LOGIC_VECTOR(18 DOWNTO 0);
				din     : IN  STD_LOGIC_VECTOR(2  DOWNTO 0);	
				dout    : OUT STD_LOGIC_VECTOR(2  DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT VGA_CONTROLLER IS 
		PORT(	en       : IN  STD_LOGIC;
				px_clk   : IN  STD_LOGIC;
				H_SYNCH  : OUT STD_LOGIC;
				V_SYNCH  : OUT STD_LOGIC;
				data_off : OUT STD_LOGIC;
				fb_addr  : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
		);
	END COMPONENT;
	
	
	BEGIN
		--L' ENTITA'E'COMPOSTA DA UN CLOCK DIVIDER PER SCALARE A 25MHz IL PIXEL CLOCK COME DA PROTOCOLLO
		--UN FRAME BUFFER CHE CONTIENE IL CONTENUTO DA MOSTRARE A SCHERMO (640 X 480)
		--UN VGA CONTROLLER CHE FA DA ARBITRO E GESTISCE L'INTERFACCIA COL PROTOCOLLO SUL DISPLAY
		CD   : CLK_DIV        PORT MAP(clk_in => fb_px_clk, clk_out => clk_int);
		FB   : FRAMEBUFFER    PORT MAP(en => fb_en, clk => clk_int, we => fb_we, addr => fb_int_addr, din => fb_din, dout => fb_int);
		CTRL : VGA_CONTROLLER PORT MAP(en => ctrl_en, px_clk => clk_int, data_off => data_off_int, H_SYNCH => H_SYNCH, V_SYNCH => V_SYNCH, fb_addr => fb_int_addr);
		
		--IN QUALSIASI MOMENTO QUANDO fb_int, OVVERO FRAMEBUFFER_INTERNAL CAMBIA IL SUO VALORE IL VALORE VIENE
		--ESTESO DA 1 A 4 PIXEL E PREPARATO PER ESSERE RIPORTATO IN USCITA 
		r_out <= fb_int(2) & fb_int(2) & fb_int(2) & fb_int(2);
		g_out <= fb_int(1) & fb_int(1) & fb_int(1) & fb_int(1);
		b_out <= fb_int(0) & fb_int(0) & fb_int(0) & fb_int(0);
		
		--SE SONO NEL DISPLAY TIME ALLORA LATCHO I VALORI RGB ESTESI ALL'USCITA 
		--ALTRIMENTI SE SONO IN UNA PORZIONE DI GESTIONE DEI SEGNALI GUIDO L'USCITA
		--A 0V COME DA SPECIFICHE DEL PROTOCOLLO
		vga_pr : PROCESS(r_out, g_out, b_out, data_off_int)
		BEGIN
			IF(data_off_int = '1') THEN 
				vga_out <= "0000" & "0000" & "0000";
			ELSE
				vga_out <= r_out & g_out & b_out;
			END IF;
		END PROCESS; 

END BHV;