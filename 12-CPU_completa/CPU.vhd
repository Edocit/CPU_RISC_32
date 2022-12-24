


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY CPU IS
	PORT(
			clk         : IN STD_LOGIC;
			ram_clk	    : IN STD_LOGIC;
			global_rst  : IN STD_LOGIC
	);
END CPU;




ARCHITECTURE BHV OF CPU IS 
---------------------------I SEGNALI INTERNI QUI------------------------

--------------------SEGNALI DELLA CONTROL UNIT-------------------------
SIGNAL			pc_en	      : STD_LOGIC := '0';
SIGNAL			pc_wr_en    : STD_LOGIC := '0';
SIGNAL			mar_en	   : STD_LOGIC := '0';
SIGNAL			mar_wr_en   : STD_LOGIC := '0';
SIGNAL			ir_en	      : STD_LOGIC := '0';
SIGNAL			ir_wr_en    : STD_LOGIC := '0';
SIGNAL			ram_en      : STD_LOGIC := '0';
SIGNAL			ram_wr	   : STD_LOGIC := '0';	
SIGNAL			reg_file_en : STD_LOGIC := '0';
SIGNAL			reg_file_wr : STD_LOGIC := '0';
SIGNAL			alu_en      : STD_LOGIC := '0';
SIGNAL			mem_busy    : STD_LOGIC := '0';

-------------SEGNALI PER PASSARE DA UN COMPONENTE ALL'ALTRO------------
SIGNAL jump_value  : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL pc_out      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL mar_out     : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL data_in_ram : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL ram_out_rm  : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL out_en_ram  : STD_LOGIC := '1';
SIGNAL ir_out      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL ra_out      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL rb_out      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL rc_in       : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL alu_rz      : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL alu_flag    : STD_LOGIC_VECTOR(7  DOWNTO 0) := (OTHERS => '0');
------------------------------------------------------------------------

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
		PORT( ram_clk  : IN  STD_LOGIC;								
		      en       : IN  STD_LOGIC;								
				wr       : IN  STD_LOGIC;								
				addr     : IN  STD_LOGIC_VECTOR(29 DOWNTO 0);	
				data_in  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	
				out_en   : OUT STD_LOGIC;								
				mem_busy : OUT STD_LOGIC;								
				rm       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)	
	    );
  END COMPONENT;
  
  COMPONENT REGISTER_FILE IS
		PORT( en : IN  STD_LOGIC;
				rst: IN  STD_LOGIC;
				clk: IN  STD_LOGIC;
				rw : IN  STD_LOGIC; 	
				A  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);  --26 DOWNTO 22
				B  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);  --21 DOWNTO 17
				C  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);  --16 DOWNTO 12
				RA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				RB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				RC : IN  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  );			
  END COMPONENT;
  
  COMPONENT ALU_32_BIT IS
	PORT(	en     : IN  STD_LOGIC;
			op_sel : IN  STD_LOGIC_VECTOR( 4 DOWNTO 0);
			RA     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RB     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			RZ     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			FLAG_B : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)	
		);
  END COMPONENT;
  
  
  COMPONENT CONTROL_UNIT IS
	PORT(
			clk         : IN STD_LOGIC;
			global_rst  : IN STD_LOGIC;
			en          : IN STD_LOGIC;
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
	
	
	--------INIZIA LA DESCRIZIONE E L'ISTANZIAMENTO DEI COMPONENTI--------------
	BEGIN 
	
		CU    : CONTROL_UNIT	PORT MAP(	clk         =>	clk,
													global_rst  => global_rst,
													en	    => mem_busy,
													pc_en	      => pc_en, 
													pc_wr_en    => pc_wr_en,
													mar_en	   => mar_en,
													mar_wr_en   => mar_wr_en, 
													ir_en	      => ir_en,
													ir_wr_en    => ir_wr_en,
													ram_en      => ram_en,
													ram_wr	   =>	ram_wr,
													reg_file_en => reg_file_en,
													reg_file_wr	=> reg_file_wr,
													alu_en      => alu_en         );
	
	
		PC    : PROGRAM_COUNTER_32_BIT PORT MAP(	en    => pc_en, 
																clk   => clk, 
																wr_en => pc_wr_en, 
																rst   => global_rst, 
																jmp_v => jump_value, 
																cnt_v => pc_out          );
																
		MAR   : REGISTER32 PORT MAP(	en    => mar_en, 
												rst   => global_rst, 
												wr_en => mar_wr_en, 
												d_in  => pc_out, 
												d_out => mar_out                     ); 
												
												
		IR    : REGISTER32 PORT MAP(	en    => ir_en, 
												rst   => global_rst, 
												wr_en => ir_wr_en, 
												d_in  => ram_out_rm, 
												d_out => ir_out                      );
												
												
		RAM_M : RAM PORT MAP(	ram_clk 	=> ram_clk, 
										en 		=> ram_en, 
										wr 		=> ram_wr, 
										addr 		=> mar_out(31 DOWNTO 2),
										data_in 	=> alu_rz, 
										out_en 	=> out_en_ram, 
										mem_busy => mem_busy, 
										rm 		=> ram_out_rm                     );
										
										
		RF    : REGISTER_FILE PORT MAP(	en  => reg_file_en,
													rst => global_rst, 
													clk => clk, 
													rw  => reg_file_wr,
													A 	 => ir_out(26 DOWNTO 22), 
													B 	 => ir_out(21 DOWNTO 17), 
													C 	 => ir_out(16 DOWNTO 12), 
													RA  => ra_out, 
													RB  => rb_out, 
													RC  => alu_rz							 );
													
													
		ALU   : ALU_32_BIT PORT MAP(	en 	 => alu_en, 
												op_sel => ir_out(31 DOWNTO 27),
												RA 	 => ra_out, 
												RB 	 => rb_out, 
												RZ 	 => alu_rz, 
												FLAG_B => alu_flag                   );

		
END BHV;