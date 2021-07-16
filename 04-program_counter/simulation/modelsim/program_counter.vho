-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/15/2021 22:14:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PROGRAM_COUNTER_32_BIT IS
    PORT (
	en : IN std_logic;
	clk : IN std_logic;
	wr_en : IN std_logic;
	rst : IN std_logic;
	jmp_v : IN std_logic_vector(31 DOWNTO 0);
	cnt_v : OUT std_logic_vector(31 DOWNTO 0)
	);
END PROGRAM_COUNTER_32_BIT;

-- Design Ports Information
-- cnt_v[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[2]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[7]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[8]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[10]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[12]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[14]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[16]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[17]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[18]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[19]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[20]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[21]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[22]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[23]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[24]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[25]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[26]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[27]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[28]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[29]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[30]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_v[31]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[12]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[15]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[16]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[17]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[18]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[19]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[20]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[21]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[22]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[23]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[24]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[25]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[26]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[27]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[28]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[29]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[30]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jmp_v[31]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PROGRAM_COUNTER_32_BIT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_jmp_v : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cnt_v : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cnt_v[0]~output_o\ : std_logic;
SIGNAL \cnt_v[1]~output_o\ : std_logic;
SIGNAL \cnt_v[2]~output_o\ : std_logic;
SIGNAL \cnt_v[3]~output_o\ : std_logic;
SIGNAL \cnt_v[4]~output_o\ : std_logic;
SIGNAL \cnt_v[5]~output_o\ : std_logic;
SIGNAL \cnt_v[6]~output_o\ : std_logic;
SIGNAL \cnt_v[7]~output_o\ : std_logic;
SIGNAL \cnt_v[8]~output_o\ : std_logic;
SIGNAL \cnt_v[9]~output_o\ : std_logic;
SIGNAL \cnt_v[10]~output_o\ : std_logic;
SIGNAL \cnt_v[11]~output_o\ : std_logic;
SIGNAL \cnt_v[12]~output_o\ : std_logic;
SIGNAL \cnt_v[13]~output_o\ : std_logic;
SIGNAL \cnt_v[14]~output_o\ : std_logic;
SIGNAL \cnt_v[15]~output_o\ : std_logic;
SIGNAL \cnt_v[16]~output_o\ : std_logic;
SIGNAL \cnt_v[17]~output_o\ : std_logic;
SIGNAL \cnt_v[18]~output_o\ : std_logic;
SIGNAL \cnt_v[19]~output_o\ : std_logic;
SIGNAL \cnt_v[20]~output_o\ : std_logic;
SIGNAL \cnt_v[21]~output_o\ : std_logic;
SIGNAL \cnt_v[22]~output_o\ : std_logic;
SIGNAL \cnt_v[23]~output_o\ : std_logic;
SIGNAL \cnt_v[24]~output_o\ : std_logic;
SIGNAL \cnt_v[25]~output_o\ : std_logic;
SIGNAL \cnt_v[26]~output_o\ : std_logic;
SIGNAL \cnt_v[27]~output_o\ : std_logic;
SIGNAL \cnt_v[28]~output_o\ : std_logic;
SIGNAL \cnt_v[29]~output_o\ : std_logic;
SIGNAL \cnt_v[30]~output_o\ : std_logic;
SIGNAL \cnt_v[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \jmp_v[0]~input_o\ : std_logic;
SIGNAL \wr_en~input_o\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cnt[0]~1_combout\ : std_logic;
SIGNAL \cnt_v~0_combout\ : std_logic;
SIGNAL \cnt_v[18]~1_combout\ : std_logic;
SIGNAL \cnt_v[0]~reg0_q\ : std_logic;
SIGNAL \jmp_v[1]~input_o\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \cnt_v~2_combout\ : std_logic;
SIGNAL \cnt_v[1]~reg0_q\ : std_logic;
SIGNAL \jmp_v[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \cnt[17]~4_combout\ : std_logic;
SIGNAL \cnt_v~3_combout\ : std_logic;
SIGNAL \cnt_v[2]~reg0_q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \jmp_v[3]~input_o\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \cnt_v~4_combout\ : std_logic;
SIGNAL \cnt_v[3]~reg0_q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \jmp_v[4]~input_o\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \cnt_v~5_combout\ : std_logic;
SIGNAL \cnt_v[4]~reg0_q\ : std_logic;
SIGNAL \jmp_v[5]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \cnt_v~6_combout\ : std_logic;
SIGNAL \cnt_v[5]~reg0_q\ : std_logic;
SIGNAL \jmp_v[6]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \cnt_v~7_combout\ : std_logic;
SIGNAL \cnt_v[6]~reg0_q\ : std_logic;
SIGNAL \jmp_v[7]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \cnt_v~8_combout\ : std_logic;
SIGNAL \cnt_v[7]~reg0_q\ : std_logic;
SIGNAL \jmp_v[8]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \cnt_v~9_combout\ : std_logic;
SIGNAL \cnt_v[8]~reg0_q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \jmp_v[9]~input_o\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \cnt_v~10_combout\ : std_logic;
SIGNAL \cnt_v[9]~reg0_q\ : std_logic;
SIGNAL \jmp_v[10]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \cnt~12_combout\ : std_logic;
SIGNAL \cnt_v~11_combout\ : std_logic;
SIGNAL \cnt_v[10]~reg0_q\ : std_logic;
SIGNAL \jmp_v[11]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \cnt~13_combout\ : std_logic;
SIGNAL \cnt_v~12_combout\ : std_logic;
SIGNAL \cnt_v[11]~reg0_q\ : std_logic;
SIGNAL \jmp_v[12]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \cnt~14_combout\ : std_logic;
SIGNAL \cnt_v~13_combout\ : std_logic;
SIGNAL \cnt_v[12]~reg0_q\ : std_logic;
SIGNAL \jmp_v[13]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \cnt~15_combout\ : std_logic;
SIGNAL \cnt_v~14_combout\ : std_logic;
SIGNAL \cnt_v[13]~reg0_q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \jmp_v[14]~input_o\ : std_logic;
SIGNAL \cnt~16_combout\ : std_logic;
SIGNAL \cnt_v~15_combout\ : std_logic;
SIGNAL \cnt_v[14]~reg0_q\ : std_logic;
SIGNAL \jmp_v[15]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cnt~17_combout\ : std_logic;
SIGNAL \cnt_v~16_combout\ : std_logic;
SIGNAL \cnt_v[15]~reg0_q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \jmp_v[16]~input_o\ : std_logic;
SIGNAL \cnt~18_combout\ : std_logic;
SIGNAL \cnt_v~17_combout\ : std_logic;
SIGNAL \cnt_v[16]~reg0_q\ : std_logic;
SIGNAL \jmp_v[17]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cnt~19_combout\ : std_logic;
SIGNAL \cnt_v~18_combout\ : std_logic;
SIGNAL \cnt_v[17]~reg0_q\ : std_logic;
SIGNAL \jmp_v[18]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cnt~20_combout\ : std_logic;
SIGNAL \cnt_v~19_combout\ : std_logic;
SIGNAL \cnt_v[18]~reg0_q\ : std_logic;
SIGNAL \jmp_v[19]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \cnt~21_combout\ : std_logic;
SIGNAL \cnt_v~20_combout\ : std_logic;
SIGNAL \cnt_v[19]~reg0_q\ : std_logic;
SIGNAL \jmp_v[20]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cnt~22_combout\ : std_logic;
SIGNAL \cnt_v~21_combout\ : std_logic;
SIGNAL \cnt_v[20]~reg0_q\ : std_logic;
SIGNAL \jmp_v[21]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cnt~23_combout\ : std_logic;
SIGNAL \cnt_v~22_combout\ : std_logic;
SIGNAL \cnt_v[21]~reg0_q\ : std_logic;
SIGNAL \jmp_v[22]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt~24_combout\ : std_logic;
SIGNAL \cnt_v~23_combout\ : std_logic;
SIGNAL \cnt_v[22]~reg0_q\ : std_logic;
SIGNAL \jmp_v[23]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cnt~25_combout\ : std_logic;
SIGNAL \cnt_v~24_combout\ : std_logic;
SIGNAL \cnt_v[23]~reg0_q\ : std_logic;
SIGNAL \jmp_v[24]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cnt~26_combout\ : std_logic;
SIGNAL \cnt_v~25_combout\ : std_logic;
SIGNAL \cnt_v[24]~reg0_q\ : std_logic;
SIGNAL \jmp_v[25]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \cnt~27_combout\ : std_logic;
SIGNAL \cnt_v~26_combout\ : std_logic;
SIGNAL \cnt_v[25]~reg0_q\ : std_logic;
SIGNAL \jmp_v[26]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cnt~28_combout\ : std_logic;
SIGNAL \cnt_v~27_combout\ : std_logic;
SIGNAL \cnt_v[26]~reg0_q\ : std_logic;
SIGNAL \jmp_v[27]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \cnt~29_combout\ : std_logic;
SIGNAL \cnt_v~28_combout\ : std_logic;
SIGNAL \cnt_v[27]~reg0_q\ : std_logic;
SIGNAL \jmp_v[28]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \cnt~30_combout\ : std_logic;
SIGNAL \cnt_v~29_combout\ : std_logic;
SIGNAL \cnt_v[28]~reg0_q\ : std_logic;
SIGNAL \jmp_v[29]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \cnt~31_combout\ : std_logic;
SIGNAL \cnt_v~30_combout\ : std_logic;
SIGNAL \cnt_v[29]~reg0_q\ : std_logic;
SIGNAL \jmp_v[30]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \cnt~32_combout\ : std_logic;
SIGNAL \cnt_v~31_combout\ : std_logic;
SIGNAL \cnt_v[30]~reg0_q\ : std_logic;
SIGNAL \jmp_v[31]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \cnt~33_combout\ : std_logic;
SIGNAL \cnt_v~32_combout\ : std_logic;
SIGNAL \cnt_v[31]~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_clk <= clk;
ww_wr_en <= wr_en;
ww_rst <= rst;
ww_jmp_v <= jmp_v;
cnt_v <= ww_cnt_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y49_N2
\cnt_v[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\cnt_v[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\cnt_v[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\cnt_v[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\cnt_v[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\cnt_v[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\cnt_v[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\cnt_v[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\cnt_v[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[8]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\cnt_v[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[9]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[9]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\cnt_v[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[10]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[10]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\cnt_v[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[11]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[11]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\cnt_v[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[12]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[12]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\cnt_v[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[13]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[13]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\cnt_v[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[14]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[14]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\cnt_v[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[15]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[15]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\cnt_v[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[16]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[16]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\cnt_v[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[17]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[17]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\cnt_v[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[18]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[18]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\cnt_v[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[19]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[19]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\cnt_v[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[20]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[20]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\cnt_v[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[21]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[21]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\cnt_v[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[22]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[22]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\cnt_v[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[23]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[23]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\cnt_v[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[24]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[24]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\cnt_v[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[25]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[25]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\cnt_v[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[26]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[26]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\cnt_v[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[27]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[27]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\cnt_v[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[28]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[28]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\cnt_v[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[29]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[29]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\cnt_v[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[30]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[30]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\cnt_v[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_v[31]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_v[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y41_N8
\en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\jmp_v[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(0),
	o => \jmp_v[0]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\wr_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en,
	o => \wr_en~input_o\);

-- Location: LCCOMB_X77_Y40_N22
\cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\jmp_v[0]~input_o\ & \wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jmp_v[0]~input_o\,
	datad => \wr_en~input_o\,
	combout => \cnt~0_combout\);

-- Location: IOIBUF_X78_Y40_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X77_Y40_N20
\cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[0]~1_combout\ = (!\en~input_o\ & ((\rst~input_o\) # (\wr_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \rst~input_o\,
	datad => \wr_en~input_o\,
	combout => \cnt[0]~1_combout\);

-- Location: FF_X77_Y40_N23
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X77_Y40_N4
\cnt_v~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~0_combout\ = (\en~input_o\ & cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(0),
	combout => \cnt_v~0_combout\);

-- Location: LCCOMB_X77_Y40_N0
\cnt_v[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v[18]~1_combout\ = (\en~input_o\) # ((\rst~input_o\ & !\wr_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \rst~input_o\,
	datad => \wr_en~input_o\,
	combout => \cnt_v[18]~1_combout\);

-- Location: FF_X77_Y40_N5
\cnt_v[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~0_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[0]~reg0_q\);

-- Location: IOIBUF_X78_Y45_N15
\jmp_v[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(1),
	o => \jmp_v[1]~input_o\);

-- Location: LCCOMB_X77_Y40_N30
\cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\wr_en~input_o\ & \jmp_v[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_en~input_o\,
	datad => \jmp_v[1]~input_o\,
	combout => \cnt~2_combout\);

-- Location: FF_X77_Y40_N31
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~2_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X77_Y40_N2
\cnt_v~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~2_combout\ = (\en~input_o\ & cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(1),
	combout => \cnt_v~2_combout\);

-- Location: FF_X77_Y40_N3
\cnt_v[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~2_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[1]~reg0_q\);

-- Location: IOIBUF_X74_Y54_N8
\jmp_v[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(2),
	o => \jmp_v[2]~input_o\);

-- Location: LCCOMB_X70_Y40_N2
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(2) $ (VCC)
-- \Add0~1\ = CARRY(cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X71_Y40_N30
\cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\en~input_o\ & (((\Add0~0_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[2]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~0_combout\,
	combout => \cnt~3_combout\);

-- Location: LCCOMB_X71_Y40_N20
\cnt[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[17]~4_combout\ = (\wr_en~input_o\) # ((\en~input_o\) # (\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \rst~input_o\,
	combout => \cnt[17]~4_combout\);

-- Location: FF_X70_Y40_N17
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt~3_combout\,
	sload => VCC,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X77_Y40_N12
\cnt_v~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~3_combout\ = (\en~input_o\ & cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(2),
	combout => \cnt_v~3_combout\);

-- Location: FF_X77_Y40_N13
\cnt_v[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~3_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[2]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(3) & (!\Add0~1\)) # (!cnt(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X74_Y54_N22
\jmp_v[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(3),
	o => \jmp_v[3]~input_o\);

-- Location: LCCOMB_X71_Y40_N14
\cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (\en~input_o\ & (((\Add0~2_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & ((\jmp_v[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \Add0~2_combout\,
	datad => \jmp_v[3]~input_o\,
	combout => \cnt~5_combout\);

-- Location: FF_X70_Y40_N27
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt~5_combout\,
	sload => VCC,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X77_Y40_N26
\cnt_v~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~4_combout\ = (\en~input_o\ & cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(3),
	combout => \cnt_v~4_combout\);

-- Location: FF_X77_Y40_N27
\cnt_v[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~4_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[3]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(4) & (\Add0~3\ $ (GND))) # (!cnt(4) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(4) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X78_Y43_N15
\jmp_v[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(4),
	o => \jmp_v[4]~input_o\);

-- Location: LCCOMB_X71_Y40_N0
\cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\en~input_o\ & (((\Add0~4_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & ((\jmp_v[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \Add0~4_combout\,
	datad => \jmp_v[4]~input_o\,
	combout => \cnt~6_combout\);

-- Location: FF_X70_Y40_N31
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt~6_combout\,
	sload => VCC,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X77_Y40_N24
\cnt_v~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~5_combout\ = (\en~input_o\ & cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(4),
	combout => \cnt_v~5_combout\);

-- Location: FF_X77_Y40_N25
\cnt_v[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~5_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[4]~reg0_q\);

-- Location: IOIBUF_X69_Y54_N1
\jmp_v[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(5),
	o => \jmp_v[5]~input_o\);

-- Location: LCCOMB_X70_Y40_N8
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(5) & (!\Add0~5\)) # (!cnt(5) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X70_Y40_N0
\cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (\en~input_o\ & (((\Add0~6_combout\)))) # (!\en~input_o\ & (\jmp_v[5]~input_o\ & ((\wr_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_v[5]~input_o\,
	datab => \Add0~6_combout\,
	datac => \wr_en~input_o\,
	datad => \en~input_o\,
	combout => \cnt~7_combout\);

-- Location: FF_X70_Y40_N1
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~7_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X77_Y40_N14
\cnt_v~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~6_combout\ = (\en~input_o\ & cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(5),
	combout => \cnt_v~6_combout\);

-- Location: FF_X77_Y40_N15
\cnt_v[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~6_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[5]~reg0_q\);

-- Location: IOIBUF_X71_Y54_N29
\jmp_v[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(6),
	o => \jmp_v[6]~input_o\);

-- Location: LCCOMB_X70_Y40_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(6) & (\Add0~7\ $ (GND))) # (!cnt(6) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(6) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X71_Y40_N10
\cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (\en~input_o\ & (((\Add0~8_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[6]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~8_combout\,
	combout => \cnt~8_combout\);

-- Location: FF_X70_Y40_N13
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt~8_combout\,
	sload => VCC,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X69_Y40_N8
\cnt_v~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~7_combout\ = (cnt(6) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datac => \en~input_o\,
	combout => \cnt_v~7_combout\);

-- Location: FF_X69_Y40_N9
\cnt_v[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~7_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[6]~reg0_q\);

-- Location: IOIBUF_X78_Y44_N23
\jmp_v[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(7),
	o => \jmp_v[7]~input_o\);

-- Location: LCCOMB_X70_Y40_N12
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(7) & (!\Add0~9\)) # (!cnt(7) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X71_Y40_N26
\cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (\en~input_o\ & (((\Add0~10_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[7]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~10_combout\,
	combout => \cnt~9_combout\);

-- Location: FF_X71_Y40_N27
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~9_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X77_Y40_N28
\cnt_v~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~8_combout\ = (\en~input_o\ & cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => cnt(7),
	combout => \cnt_v~8_combout\);

-- Location: FF_X77_Y40_N29
\cnt_v[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~8_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[7]~reg0_q\);

-- Location: IOIBUF_X78_Y42_N15
\jmp_v[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(8),
	o => \jmp_v[8]~input_o\);

-- Location: LCCOMB_X70_Y40_N14
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(8) & (\Add0~11\ $ (GND))) # (!cnt(8) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(8) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X71_Y40_N12
\cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (\en~input_o\ & (((\Add0~12_combout\)))) # (!\en~input_o\ & (\jmp_v[8]~input_o\ & (\wr_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_v[8]~input_o\,
	datab => \en~input_o\,
	datac => \wr_en~input_o\,
	datad => \Add0~12_combout\,
	combout => \cnt~10_combout\);

-- Location: FF_X71_Y40_N13
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~10_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X77_Y40_N18
\cnt_v~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~9_combout\ = (\en~input_o\ & cnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(8),
	combout => \cnt_v~9_combout\);

-- Location: FF_X77_Y40_N19
\cnt_v[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~9_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[8]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N16
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(9) & (!\Add0~13\)) # (!cnt(9) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X78_Y41_N1
\jmp_v[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(9),
	o => \jmp_v[9]~input_o\);

-- Location: LCCOMB_X71_Y40_N18
\cnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (\en~input_o\ & (((\Add0~14_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & ((\jmp_v[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \Add0~14_combout\,
	datad => \jmp_v[9]~input_o\,
	combout => \cnt~11_combout\);

-- Location: FF_X71_Y40_N19
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~11_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X71_Y40_N24
\cnt_v~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~10_combout\ = (cnt(9) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datac => \en~input_o\,
	combout => \cnt_v~10_combout\);

-- Location: FF_X71_Y40_N25
\cnt_v[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~10_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[9]~reg0_q\);

-- Location: IOIBUF_X78_Y44_N1
\jmp_v[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(10),
	o => \jmp_v[10]~input_o\);

-- Location: LCCOMB_X70_Y40_N18
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(10) & (\Add0~15\ $ (GND))) # (!cnt(10) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(10) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X71_Y40_N8
\cnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~12_combout\ = (\en~input_o\ & (((\Add0~16_combout\)))) # (!\en~input_o\ & (\jmp_v[10]~input_o\ & (\wr_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_v[10]~input_o\,
	datab => \en~input_o\,
	datac => \wr_en~input_o\,
	datad => \Add0~16_combout\,
	combout => \cnt~12_combout\);

-- Location: FF_X71_Y40_N9
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~12_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X77_Y40_N8
\cnt_v~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~11_combout\ = (\en~input_o\ & cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(10),
	combout => \cnt_v~11_combout\);

-- Location: FF_X77_Y40_N9
\cnt_v[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~11_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[10]~reg0_q\);

-- Location: IOIBUF_X78_Y43_N8
\jmp_v[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(11),
	o => \jmp_v[11]~input_o\);

-- Location: LCCOMB_X70_Y40_N20
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(11) & (!\Add0~17\)) # (!cnt(11) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X71_Y40_N22
\cnt~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~13_combout\ = (\en~input_o\ & (((\Add0~18_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[11]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~18_combout\,
	combout => \cnt~13_combout\);

-- Location: FF_X71_Y40_N23
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~13_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X71_Y40_N6
\cnt_v~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~12_combout\ = (\en~input_o\ & cnt(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => cnt(11),
	combout => \cnt_v~12_combout\);

-- Location: FF_X71_Y40_N7
\cnt_v[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~12_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[11]~reg0_q\);

-- Location: IOIBUF_X78_Y40_N1
\jmp_v[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(12),
	o => \jmp_v[12]~input_o\);

-- Location: LCCOMB_X70_Y40_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(12) & (\Add0~19\ $ (GND))) # (!cnt(12) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(12) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X71_Y40_N28
\cnt~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~14_combout\ = (\en~input_o\ & (((\Add0~20_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[12]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~20_combout\,
	combout => \cnt~14_combout\);

-- Location: FF_X71_Y40_N29
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~14_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X77_Y40_N10
\cnt_v~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~13_combout\ = (\en~input_o\ & cnt(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(12),
	combout => \cnt_v~13_combout\);

-- Location: FF_X77_Y40_N11
\cnt_v[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~13_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[12]~reg0_q\);

-- Location: IOIBUF_X78_Y49_N22
\jmp_v[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(13),
	o => \jmp_v[13]~input_o\);

-- Location: LCCOMB_X70_Y40_N24
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(13) & (!\Add0~21\)) # (!cnt(13) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X71_Y40_N2
\cnt~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~15_combout\ = (\en~input_o\ & (((\Add0~22_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[13]~input_o\,
	datac => \en~input_o\,
	datad => \Add0~22_combout\,
	combout => \cnt~15_combout\);

-- Location: FF_X71_Y40_N3
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~15_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X71_Y40_N4
\cnt_v~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~14_combout\ = (cnt(13) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datac => \en~input_o\,
	combout => \cnt_v~14_combout\);

-- Location: FF_X71_Y40_N5
\cnt_v[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~14_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[13]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N26
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(14) & (\Add0~23\ $ (GND))) # (!cnt(14) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(14) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: IOIBUF_X78_Y44_N8
\jmp_v[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(14),
	o => \jmp_v[14]~input_o\);

-- Location: LCCOMB_X71_Y40_N16
\cnt~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~16_combout\ = (\en~input_o\ & (((\Add0~24_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & ((\jmp_v[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \Add0~24_combout\,
	datad => \jmp_v[14]~input_o\,
	combout => \cnt~16_combout\);

-- Location: FF_X71_Y40_N17
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~16_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X77_Y40_N16
\cnt_v~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~15_combout\ = (\en~input_o\ & cnt(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => cnt(14),
	combout => \cnt_v~15_combout\);

-- Location: FF_X77_Y40_N17
\cnt_v[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~15_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[14]~reg0_q\);

-- Location: IOIBUF_X78_Y40_N8
\jmp_v[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(15),
	o => \jmp_v[15]~input_o\);

-- Location: LCCOMB_X70_Y40_N28
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(15) & (!\Add0~25\)) # (!cnt(15) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X69_Y40_N6
\cnt~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~17_combout\ = (\en~input_o\ & (((\Add0~26_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[15]~input_o\,
	datad => \Add0~26_combout\,
	combout => \cnt~17_combout\);

-- Location: FF_X69_Y40_N7
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~17_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X69_Y40_N10
\cnt_v~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~16_combout\ = (cnt(15) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datac => \en~input_o\,
	combout => \cnt_v~16_combout\);

-- Location: FF_X69_Y40_N11
\cnt_v[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~16_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[15]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N30
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(16) & (\Add0~27\ $ (GND))) # (!cnt(16) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(16) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: IOIBUF_X78_Y40_N15
\jmp_v[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(16),
	o => \jmp_v[16]~input_o\);

-- Location: LCCOMB_X69_Y40_N12
\cnt~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~18_combout\ = (\en~input_o\ & (((\Add0~28_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & ((\jmp_v[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \Add0~28_combout\,
	datad => \jmp_v[16]~input_o\,
	combout => \cnt~18_combout\);

-- Location: FF_X69_Y40_N13
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~18_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X69_Y40_N4
\cnt_v~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~17_combout\ = (cnt(16) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datac => \en~input_o\,
	combout => \cnt_v~17_combout\);

-- Location: FF_X69_Y40_N5
\cnt_v[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~17_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[16]~reg0_q\);

-- Location: IOIBUF_X78_Y30_N1
\jmp_v[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(17),
	o => \jmp_v[17]~input_o\);

-- Location: LCCOMB_X70_Y39_N0
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(17) & (!\Add0~29\)) # (!cnt(17) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X69_Y39_N6
\cnt~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~19_combout\ = (\en~input_o\ & (((\Add0~30_combout\)))) # (!\en~input_o\ & (\jmp_v[17]~input_o\ & ((\wr_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \jmp_v[17]~input_o\,
	datac => \Add0~30_combout\,
	datad => \wr_en~input_o\,
	combout => \cnt~19_combout\);

-- Location: FF_X69_Y39_N7
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~19_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X77_Y39_N4
\cnt_v~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~18_combout\ = (\en~input_o\ & cnt(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(17),
	combout => \cnt_v~18_combout\);

-- Location: FF_X77_Y39_N5
\cnt_v[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~18_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[17]~reg0_q\);

-- Location: IOIBUF_X78_Y31_N1
\jmp_v[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(18),
	o => \jmp_v[18]~input_o\);

-- Location: LCCOMB_X70_Y39_N2
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(18) & (\Add0~31\ $ (GND))) # (!cnt(18) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(18) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X69_Y39_N16
\cnt~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~20_combout\ = (\en~input_o\ & (((\Add0~32_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[18]~input_o\,
	datad => \Add0~32_combout\,
	combout => \cnt~20_combout\);

-- Location: FF_X69_Y39_N17
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~20_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X77_Y39_N10
\cnt_v~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~19_combout\ = (\en~input_o\ & cnt(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(18),
	combout => \cnt_v~19_combout\);

-- Location: FF_X77_Y39_N11
\cnt_v[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~19_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[18]~reg0_q\);

-- Location: IOIBUF_X78_Y30_N22
\jmp_v[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(19),
	o => \jmp_v[19]~input_o\);

-- Location: LCCOMB_X70_Y39_N4
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(19) & (!\Add0~33\)) # (!cnt(19) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X69_Y39_N10
\cnt~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~21_combout\ = (\en~input_o\ & (((\Add0~34_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[19]~input_o\,
	datad => \Add0~34_combout\,
	combout => \cnt~21_combout\);

-- Location: FF_X69_Y39_N11
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~21_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X69_Y39_N28
\cnt_v~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~20_combout\ = (cnt(19) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datac => \en~input_o\,
	combout => \cnt_v~20_combout\);

-- Location: FF_X69_Y39_N29
\cnt_v[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~20_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[19]~reg0_q\);

-- Location: IOIBUF_X69_Y54_N8
\jmp_v[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(20),
	o => \jmp_v[20]~input_o\);

-- Location: LCCOMB_X70_Y39_N6
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(20) & (\Add0~35\ $ (GND))) # (!cnt(20) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(20) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X69_Y39_N4
\cnt~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~22_combout\ = (\en~input_o\ & (((\Add0~36_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[20]~input_o\,
	datad => \Add0~36_combout\,
	combout => \cnt~22_combout\);

-- Location: FF_X69_Y39_N5
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~22_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X77_Y39_N12
\cnt_v~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~21_combout\ = (cnt(20) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(20),
	datac => \en~input_o\,
	combout => \cnt_v~21_combout\);

-- Location: FF_X77_Y39_N13
\cnt_v[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~21_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[20]~reg0_q\);

-- Location: IOIBUF_X78_Y34_N1
\jmp_v[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(21),
	o => \jmp_v[21]~input_o\);

-- Location: LCCOMB_X70_Y39_N8
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(21) & (!\Add0~37\)) # (!cnt(21) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X71_Y39_N4
\cnt~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~23_combout\ = (\en~input_o\ & (((\Add0~38_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[21]~input_o\,
	datad => \Add0~38_combout\,
	combout => \cnt~23_combout\);

-- Location: FF_X71_Y39_N5
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~23_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X71_Y39_N16
\cnt_v~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~22_combout\ = (cnt(21) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(21),
	datad => \en~input_o\,
	combout => \cnt_v~22_combout\);

-- Location: FF_X71_Y39_N17
\cnt_v[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~22_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[21]~reg0_q\);

-- Location: IOIBUF_X78_Y35_N8
\jmp_v[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(22),
	o => \jmp_v[22]~input_o\);

-- Location: LCCOMB_X70_Y39_N10
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(22) & (\Add0~39\ $ (GND))) # (!cnt(22) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(22) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X71_Y39_N14
\cnt~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~24_combout\ = (\en~input_o\ & (((\Add0~40_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[22]~input_o\,
	datad => \Add0~40_combout\,
	combout => \cnt~24_combout\);

-- Location: FF_X71_Y39_N15
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~24_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X71_Y39_N30
\cnt_v~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~23_combout\ = (cnt(22) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(22),
	datad => \en~input_o\,
	combout => \cnt_v~23_combout\);

-- Location: FF_X71_Y39_N31
\cnt_v[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~23_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[22]~reg0_q\);

-- Location: IOIBUF_X78_Y34_N8
\jmp_v[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(23),
	o => \jmp_v[23]~input_o\);

-- Location: LCCOMB_X70_Y39_N12
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(23) & (!\Add0~41\)) # (!cnt(23) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X71_Y39_N8
\cnt~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~25_combout\ = (\en~input_o\ & (((\Add0~42_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[23]~input_o\,
	datad => \Add0~42_combout\,
	combout => \cnt~25_combout\);

-- Location: FF_X71_Y39_N9
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~25_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X71_Y39_N24
\cnt_v~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~24_combout\ = (cnt(23) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(23),
	datad => \en~input_o\,
	combout => \cnt_v~24_combout\);

-- Location: FF_X71_Y39_N25
\cnt_v[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~24_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[23]~reg0_q\);

-- Location: IOIBUF_X78_Y36_N23
\jmp_v[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(24),
	o => \jmp_v[24]~input_o\);

-- Location: LCCOMB_X70_Y39_N14
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(24) & (\Add0~43\ $ (GND))) # (!cnt(24) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(24) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(24),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X71_Y39_N10
\cnt~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~26_combout\ = (\en~input_o\ & (((\Add0~44_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[24]~input_o\,
	datad => \Add0~44_combout\,
	combout => \cnt~26_combout\);

-- Location: FF_X71_Y39_N11
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~26_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LCCOMB_X71_Y39_N18
\cnt_v~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~25_combout\ = (cnt(24) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datad => \en~input_o\,
	combout => \cnt_v~25_combout\);

-- Location: FF_X71_Y39_N19
\cnt_v[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~25_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[24]~reg0_q\);

-- Location: IOIBUF_X78_Y35_N15
\jmp_v[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(25),
	o => \jmp_v[25]~input_o\);

-- Location: LCCOMB_X70_Y39_N16
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(25) & (!\Add0~45\)) # (!cnt(25) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X71_Y39_N12
\cnt~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~27_combout\ = (\en~input_o\ & (((\Add0~46_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \jmp_v[25]~input_o\,
	datac => \Add0~46_combout\,
	datad => \en~input_o\,
	combout => \cnt~27_combout\);

-- Location: FF_X71_Y39_N13
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~27_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: LCCOMB_X71_Y39_N0
\cnt_v~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~26_combout\ = (cnt(25) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datad => \en~input_o\,
	combout => \cnt_v~26_combout\);

-- Location: FF_X71_Y39_N1
\cnt_v[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~26_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[25]~reg0_q\);

-- Location: IOIBUF_X78_Y35_N22
\jmp_v[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(26),
	o => \jmp_v[26]~input_o\);

-- Location: LCCOMB_X70_Y39_N18
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cnt(26) & (\Add0~47\ $ (GND))) # (!cnt(26) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cnt(26) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(26),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X71_Y39_N26
\cnt~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~28_combout\ = (\en~input_o\ & (((\Add0~48_combout\)))) # (!\en~input_o\ & (\jmp_v[26]~input_o\ & (\wr_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_v[26]~input_o\,
	datab => \en~input_o\,
	datac => \wr_en~input_o\,
	datad => \Add0~48_combout\,
	combout => \cnt~28_combout\);

-- Location: FF_X71_Y39_N27
\cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~28_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(26));

-- Location: LCCOMB_X71_Y39_N22
\cnt_v~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~27_combout\ = (cnt(26) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(26),
	datad => \en~input_o\,
	combout => \cnt_v~27_combout\);

-- Location: FF_X71_Y39_N23
\cnt_v[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~27_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[26]~reg0_q\);

-- Location: IOIBUF_X78_Y36_N1
\jmp_v[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(27),
	o => \jmp_v[27]~input_o\);

-- Location: LCCOMB_X70_Y39_N20
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cnt(27) & (!\Add0~49\)) # (!cnt(27) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X71_Y39_N20
\cnt~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~29_combout\ = (\en~input_o\ & (((\Add0~50_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[27]~input_o\,
	datad => \Add0~50_combout\,
	combout => \cnt~29_combout\);

-- Location: FF_X71_Y39_N21
\cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~29_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(27));

-- Location: LCCOMB_X71_Y39_N28
\cnt_v~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~28_combout\ = (cnt(27) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(27),
	datad => \en~input_o\,
	combout => \cnt_v~28_combout\);

-- Location: FF_X71_Y39_N29
\cnt_v[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~28_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[27]~reg0_q\);

-- Location: IOIBUF_X78_Y35_N1
\jmp_v[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(28),
	o => \jmp_v[28]~input_o\);

-- Location: LCCOMB_X70_Y39_N22
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cnt(28) & (\Add0~51\ $ (GND))) # (!cnt(28) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cnt(28) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X71_Y39_N2
\cnt~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~30_combout\ = (\en~input_o\ & (((\Add0~52_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \en~input_o\,
	datac => \jmp_v[28]~input_o\,
	datad => \Add0~52_combout\,
	combout => \cnt~30_combout\);

-- Location: FF_X71_Y39_N3
\cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~30_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(28));

-- Location: LCCOMB_X71_Y39_N6
\cnt_v~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~29_combout\ = (cnt(28) & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(28),
	datad => \en~input_o\,
	combout => \cnt_v~29_combout\);

-- Location: FF_X71_Y39_N7
\cnt_v[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~29_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[28]~reg0_q\);

-- Location: IOIBUF_X69_Y54_N15
\jmp_v[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(29),
	o => \jmp_v[29]~input_o\);

-- Location: LCCOMB_X70_Y39_N24
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cnt(29) & (!\Add0~53\)) # (!cnt(29) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(29),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X69_Y39_N14
\cnt~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~31_combout\ = (\en~input_o\ & (((\Add0~54_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[29]~input_o\,
	datad => \Add0~54_combout\,
	combout => \cnt~31_combout\);

-- Location: FF_X69_Y39_N15
\cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~31_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(29));

-- Location: LCCOMB_X77_Y39_N6
\cnt_v~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~30_combout\ = (\en~input_o\ & cnt(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => cnt(29),
	combout => \cnt_v~30_combout\);

-- Location: FF_X77_Y39_N7
\cnt_v[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~30_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[29]~reg0_q\);

-- Location: IOIBUF_X66_Y54_N22
\jmp_v[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(30),
	o => \jmp_v[30]~input_o\);

-- Location: LCCOMB_X70_Y39_N26
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cnt(30) & (\Add0~55\ $ (GND))) # (!cnt(30) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cnt(30) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(30),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X69_Y39_N12
\cnt~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~32_combout\ = (\en~input_o\ & (((\Add0~56_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[30]~input_o\,
	datad => \Add0~56_combout\,
	combout => \cnt~32_combout\);

-- Location: FF_X69_Y39_N13
\cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~32_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(30));

-- Location: LCCOMB_X77_Y39_N8
\cnt_v~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~31_combout\ = (\en~input_o\ & cnt(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => cnt(30),
	combout => \cnt_v~31_combout\);

-- Location: FF_X77_Y39_N9
\cnt_v[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~31_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[30]~reg0_q\);

-- Location: IOIBUF_X66_Y54_N29
\jmp_v[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jmp_v(31),
	o => \jmp_v[31]~input_o\);

-- Location: LCCOMB_X70_Y39_N28
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = cnt(31) $ (\Add0~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	cin => \Add0~57\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X70_Y39_N30
\cnt~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~33_combout\ = (\en~input_o\ & (((\Add0~58_combout\)))) # (!\en~input_o\ & (\wr_en~input_o\ & (\jmp_v[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \wr_en~input_o\,
	datac => \jmp_v[31]~input_o\,
	datad => \Add0~58_combout\,
	combout => \cnt~33_combout\);

-- Location: FF_X70_Y39_N31
\cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~33_combout\,
	ena => \cnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(31));

-- Location: LCCOMB_X77_Y39_N2
\cnt_v~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_v~32_combout\ = (\en~input_o\ & cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => cnt(31),
	combout => \cnt_v~32_combout\);

-- Location: FF_X77_Y39_N3
\cnt_v[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_v~32_combout\,
	ena => \cnt_v[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_v[31]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_cnt_v(0) <= \cnt_v[0]~output_o\;

ww_cnt_v(1) <= \cnt_v[1]~output_o\;

ww_cnt_v(2) <= \cnt_v[2]~output_o\;

ww_cnt_v(3) <= \cnt_v[3]~output_o\;

ww_cnt_v(4) <= \cnt_v[4]~output_o\;

ww_cnt_v(5) <= \cnt_v[5]~output_o\;

ww_cnt_v(6) <= \cnt_v[6]~output_o\;

ww_cnt_v(7) <= \cnt_v[7]~output_o\;

ww_cnt_v(8) <= \cnt_v[8]~output_o\;

ww_cnt_v(9) <= \cnt_v[9]~output_o\;

ww_cnt_v(10) <= \cnt_v[10]~output_o\;

ww_cnt_v(11) <= \cnt_v[11]~output_o\;

ww_cnt_v(12) <= \cnt_v[12]~output_o\;

ww_cnt_v(13) <= \cnt_v[13]~output_o\;

ww_cnt_v(14) <= \cnt_v[14]~output_o\;

ww_cnt_v(15) <= \cnt_v[15]~output_o\;

ww_cnt_v(16) <= \cnt_v[16]~output_o\;

ww_cnt_v(17) <= \cnt_v[17]~output_o\;

ww_cnt_v(18) <= \cnt_v[18]~output_o\;

ww_cnt_v(19) <= \cnt_v[19]~output_o\;

ww_cnt_v(20) <= \cnt_v[20]~output_o\;

ww_cnt_v(21) <= \cnt_v[21]~output_o\;

ww_cnt_v(22) <= \cnt_v[22]~output_o\;

ww_cnt_v(23) <= \cnt_v[23]~output_o\;

ww_cnt_v(24) <= \cnt_v[24]~output_o\;

ww_cnt_v(25) <= \cnt_v[25]~output_o\;

ww_cnt_v(26) <= \cnt_v[26]~output_o\;

ww_cnt_v(27) <= \cnt_v[27]~output_o\;

ww_cnt_v(28) <= \cnt_v[28]~output_o\;

ww_cnt_v(29) <= \cnt_v[29]~output_o\;

ww_cnt_v(30) <= \cnt_v[30]~output_o\;

ww_cnt_v(31) <= \cnt_v[31]~output_o\;
END structure;


