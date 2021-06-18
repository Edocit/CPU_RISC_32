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

-- DATE "06/18/2021 17:34:07"

-- 
-- Device: Altera 10M16DCF484C7G Package FBGA484
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

ENTITY 	ALU_32_BIT IS
    PORT (
	en : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	op_sel : IN std_logic_vector(4 DOWNTO 0);
	RA : IN std_logic_vector(31 DOWNTO 0);
	RB : IN std_logic_vector(31 DOWNTO 0);
	RZ : OUT std_logic_vector(31 DOWNTO 0);
	FLAG_B : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU_32_BIT;

-- Design Ports Information
-- RZ[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[4]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[10]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[11]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[12]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[16]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[17]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[18]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[19]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[20]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[21]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[22]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[23]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[24]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[25]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[26]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[27]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[28]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[30]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[0]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[6]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[7]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[10]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[10]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[12]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[14]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[16]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[16]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[17]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[17]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[19]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[20]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[20]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[21]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[21]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[22]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[22]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[23]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[23]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[24]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[25]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[25]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[26]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[26]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[27]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[28]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[28]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[29]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[30]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[31]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[31]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_32_BIT IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_op_sel : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RZ : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FLAG_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \RZ[0]~output_o\ : std_logic;
SIGNAL \RZ[1]~output_o\ : std_logic;
SIGNAL \RZ[2]~output_o\ : std_logic;
SIGNAL \RZ[3]~output_o\ : std_logic;
SIGNAL \RZ[4]~output_o\ : std_logic;
SIGNAL \RZ[5]~output_o\ : std_logic;
SIGNAL \RZ[6]~output_o\ : std_logic;
SIGNAL \RZ[7]~output_o\ : std_logic;
SIGNAL \RZ[8]~output_o\ : std_logic;
SIGNAL \RZ[9]~output_o\ : std_logic;
SIGNAL \RZ[10]~output_o\ : std_logic;
SIGNAL \RZ[11]~output_o\ : std_logic;
SIGNAL \RZ[12]~output_o\ : std_logic;
SIGNAL \RZ[13]~output_o\ : std_logic;
SIGNAL \RZ[14]~output_o\ : std_logic;
SIGNAL \RZ[15]~output_o\ : std_logic;
SIGNAL \RZ[16]~output_o\ : std_logic;
SIGNAL \RZ[17]~output_o\ : std_logic;
SIGNAL \RZ[18]~output_o\ : std_logic;
SIGNAL \RZ[19]~output_o\ : std_logic;
SIGNAL \RZ[20]~output_o\ : std_logic;
SIGNAL \RZ[21]~output_o\ : std_logic;
SIGNAL \RZ[22]~output_o\ : std_logic;
SIGNAL \RZ[23]~output_o\ : std_logic;
SIGNAL \RZ[24]~output_o\ : std_logic;
SIGNAL \RZ[25]~output_o\ : std_logic;
SIGNAL \RZ[26]~output_o\ : std_logic;
SIGNAL \RZ[27]~output_o\ : std_logic;
SIGNAL \RZ[28]~output_o\ : std_logic;
SIGNAL \RZ[29]~output_o\ : std_logic;
SIGNAL \RZ[30]~output_o\ : std_logic;
SIGNAL \RZ[31]~output_o\ : std_logic;
SIGNAL \FLAG_B[0]~output_o\ : std_logic;
SIGNAL \FLAG_B[1]~output_o\ : std_logic;
SIGNAL \FLAG_B[2]~output_o\ : std_logic;
SIGNAL \FLAG_B[3]~output_o\ : std_logic;
SIGNAL \FLAG_B[4]~output_o\ : std_logic;
SIGNAL \FLAG_B[5]~output_o\ : std_logic;
SIGNAL \FLAG_B[6]~output_o\ : std_logic;
SIGNAL \FLAG_B[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \op_sel[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \op_sel[4]~input_o\ : std_logic;
SIGNAL \op_sel[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~0clkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \RZ[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \RZ[1]~reg0_q\ : std_logic;
SIGNAL \RA[3]~input_o\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \RZ[2]~reg0_q\ : std_logic;
SIGNAL \RB[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \RA[4]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \RZ[3]~reg0_q\ : std_logic;
SIGNAL \RB[4]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \RA[5]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \RZ[4]~reg0_q\ : std_logic;
SIGNAL \RB[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \RA[6]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \RZ[5]~reg0_q\ : std_logic;
SIGNAL \RB[6]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \RA[7]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \RZ[6]~reg0_q\ : std_logic;
SIGNAL \RB[7]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \RA[8]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \RZ[7]~reg0_q\ : std_logic;
SIGNAL \RA[9]~input_o\ : std_logic;
SIGNAL \RB[8]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \RZ[8]~reg0_q\ : std_logic;
SIGNAL \RA[10]~input_o\ : std_logic;
SIGNAL \RB[9]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \RZ[9]~reg0_q\ : std_logic;
SIGNAL \RB[10]~input_o\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \RA[11]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \RZ[10]~reg0_q\ : std_logic;
SIGNAL \RB[11]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \RA[12]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \RZ[11]~reg0_q\ : std_logic;
SIGNAL \RB[12]~input_o\ : std_logic;
SIGNAL \RA[13]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \RZ[12]~reg0_q\ : std_logic;
SIGNAL \RA[14]~input_o\ : std_logic;
SIGNAL \RB[13]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \RZ[13]~reg0_q\ : std_logic;
SIGNAL \RB[14]~input_o\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \RA[15]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \RZ[14]~reg0_q\ : std_logic;
SIGNAL \RB[15]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \RA[16]~input_o\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \RZ[15]~reg0_q\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \RB[16]~input_o\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \RA[17]~input_o\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \RZ[16]~reg0_q\ : std_logic;
SIGNAL \RA[18]~input_o\ : std_logic;
SIGNAL \RB[17]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \RZ[17]~reg0_q\ : std_logic;
SIGNAL \RB[18]~input_o\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \RA[19]~input_o\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \RZ[18]~reg0_q\ : std_logic;
SIGNAL \RB[19]~input_o\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \RA[20]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \RZ[19]~reg0_q\ : std_logic;
SIGNAL \RA[21]~input_o\ : std_logic;
SIGNAL \RB[20]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \RZ[20]~reg0_q\ : std_logic;
SIGNAL \RA[22]~input_o\ : std_logic;
SIGNAL \RB[21]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \RZ[21]~reg0_q\ : std_logic;
SIGNAL \RB[22]~input_o\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \RA[23]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \RZ[22]~reg0_q\ : std_logic;
SIGNAL \RB[23]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \RA[24]~input_o\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \RZ[23]~reg0_q\ : std_logic;
SIGNAL \RB[24]~input_o\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \RA[25]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \RZ[24]~reg0_q\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \RB[25]~input_o\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~103_combout\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \RA[26]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \RZ[25]~reg0_q\ : std_logic;
SIGNAL \RB[26]~input_o\ : std_logic;
SIGNAL \RA[27]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~107_combout\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \RZ[26]~reg0_q\ : std_logic;
SIGNAL \RB[27]~input_o\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add0~111_combout\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \RA[28]~input_o\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \RZ[27]~reg0_q\ : std_logic;
SIGNAL \RB[28]~input_o\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \RA[29]~input_o\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \RZ[28]~reg0_q\ : std_logic;
SIGNAL \RB[29]~input_o\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~119_combout\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \RA[30]~input_o\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \RZ[29]~reg0_q\ : std_logic;
SIGNAL \RB[30]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \RA[31]~input_o\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add0~123_combout\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \RZ[30]~reg0_q\ : std_logic;
SIGNAL \RB[31]~input_o\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add0~127_combout\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~128_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \RZ[31]~reg0_q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~131_combout\ : std_logic;
SIGNAL \Add0~129\ : std_logic;
SIGNAL \Add0~132_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \FLAG_B[0]~reg0_q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \FLAG_B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \FLAG_B[1]~reg0_q\ : std_logic;
SIGNAL FLAG_S : std_logic_vector(7 DOWNTO 0);
SIGNAL out_s : std_logic_vector(32 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_rst <= rst;
ww_clk <= clk;
ww_op_sel <= op_sel;
ww_RA <= RA;
ww_RB <= RB;
RZ <= ww_RZ;
FLAG_B <= ww_FLAG_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux5~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N20
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

-- Location: IOOBUF_X36_Y0_N23
\RZ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N30
\RZ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\RZ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\RZ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\RZ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\RZ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\RZ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[6]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\RZ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\RZ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[8]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[8]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\RZ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[9]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[9]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\RZ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[10]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[10]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\RZ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[11]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[11]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\RZ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[12]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\RZ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[13]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[13]~output_o\);

-- Location: IOOBUF_X21_Y17_N9
\RZ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[14]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\RZ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[15]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\RZ[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[16]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[16]~output_o\);

-- Location: IOOBUF_X21_Y17_N16
\RZ[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[17]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[17]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\RZ[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[18]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[18]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\RZ[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[19]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[19]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\RZ[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[20]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[20]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\RZ[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[21]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\RZ[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[22]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[22]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\RZ[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[23]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\RZ[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[24]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[24]~output_o\);

-- Location: IOOBUF_X10_Y0_N16
\RZ[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[25]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[25]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\RZ[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[26]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[26]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\RZ[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[27]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[27]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\RZ[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[28]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[28]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\RZ[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[29]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[29]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\RZ[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[30]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[30]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\RZ[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[31]~reg0_q\,
	devoe => ww_devoe,
	o => \RZ[31]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\FLAG_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \FLAG_B[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\FLAG_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \FLAG_B[1]~output_o\);

-- Location: IOOBUF_X12_Y17_N23
\FLAG_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[2]~output_o\);

-- Location: IOOBUF_X32_Y30_N16
\FLAG_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\FLAG_B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[4]~output_o\);

-- Location: IOOBUF_X38_Y30_N16
\FLAG_B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\FLAG_B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[6]~output_o\);

-- Location: IOOBUF_X48_Y30_N30
\FLAG_B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FLAG_B[7]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
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

-- Location: IOIBUF_X19_Y17_N29
\RA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\RB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(0),
	o => \RB[0]~input_o\);

-- Location: LCCOMB_X19_Y5_N16
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\RA[0]~input_o\ & (\RB[0]~input_o\ $ (GND))) # (!\RA[0]~input_o\ & (!\RB[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\RA[0]~input_o\ & !\RB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RB[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X24_Y0_N8
\op_sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: LCCOMB_X19_Y5_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\op_sel[0]~input_o\ & (\Add1~0_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[0]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X19_Y5_N12
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\op_sel[0]~input_o\) # (\RA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X20_Y3_N16
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2_combout\ & (\Add0~1_combout\ $ (VCC))) # (!\Add0~2_combout\ & (\Add0~1_combout\ & VCC))
-- \Add0~4\ = CARRY((\Add0~2_combout\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: IOIBUF_X32_Y0_N15
\op_sel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(2),
	o => \op_sel[2]~input_o\);

-- Location: LCCOMB_X21_Y3_N14
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\RB[0]~input_o\ & ((\RA[0]~input_o\) # (\op_sel[0]~input_o\))) # (!\RB[0]~input_o\ & (\RA[0]~input_o\ & \op_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\op_sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: LCCOMB_X21_Y3_N0
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\op_sel[2]~input_o\ & (((\op_sel[1]~input_o\)))) # (!\op_sel[2]~input_o\ & ((\op_sel[1]~input_o\ & ((\Add0~0_combout\))) # (!\op_sel[1]~input_o\ & (\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \op_sel[2]~input_o\,
	datac => \Add0~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y3_N6
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((!\op_sel[0]~input_o\)))) # (!\Mux4~0_combout\ & ((\op_sel[0]~input_o\ & (!\Add1~0_combout\)) # (!\op_sel[0]~input_o\ & ((!\RA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \RA[0]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X19_Y17_N8
\RA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: LCCOMB_X21_Y3_N12
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\op_sel[2]~input_o\ & (\Mux4~1_combout\ & ((\RA[1]~input_o\) # (!\Mux4~0_combout\)))) # (!\op_sel[2]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \RA[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X30_Y0_N1
\op_sel[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(4),
	o => \op_sel[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\op_sel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(3),
	o => \op_sel[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N4
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\op_sel[4]~input_o\ & !\op_sel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datad => \op_sel[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: CLKCTRL_G18
\Mux5~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux5~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y3_N8
\out_s[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(0) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux4~2_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datac => out_s(0),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(0));

-- Location: IOIBUF_X0_Y8_N22
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

-- Location: CLKCTRL_G1
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N15
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

-- Location: FF_X21_Y3_N9
\RZ[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[0]~reg0_q\);

-- Location: LCCOMB_X21_Y3_N24
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\op_sel[1]~input_o\ & !\op_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X22_Y1_N10
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (!\op_sel[0]~input_o\ & !\op_sel[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datad => \op_sel[4]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X22_Y1_N24
\Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (!\op_sel[1]~input_o\ & !\op_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datac => \op_sel[2]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X20_Y3_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\RA[1]~input_o\ & (!\op_sel[3]~input_o\ & (\Add0~5_combout\ & \Mux37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \op_sel[3]~input_o\,
	datac => \Add0~5_combout\,
	datad => \Mux37~2_combout\,
	combout => \Add0~6_combout\);

-- Location: IOIBUF_X16_Y17_N29
\RB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LCCOMB_X19_Y5_N18
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\RA[1]~input_o\ & ((\RB[1]~input_o\ & (!\Add1~1\)) # (!\RB[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\RA[1]~input_o\ & ((\RB[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\RB[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\RA[1]~input_o\ & (\RB[1]~input_o\ & !\Add1~1\)) # (!\RA[1]~input_o\ & ((\RB[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RB[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y5_N8
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\op_sel[0]~input_o\ & ((\Add1~2_combout\))) # (!\op_sel[0]~input_o\ & (\RB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X20_Y3_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~6_combout\ & ((\Add0~7_combout\ & (\Add0~4\ & VCC)) # (!\Add0~7_combout\ & (!\Add0~4\)))) # (!\Add0~6_combout\ & ((\Add0~7_combout\ & (!\Add0~4\)) # (!\Add0~7_combout\ & ((\Add0~4\) # (GND)))))
-- \Add0~9\ = CARRY((\Add0~6_combout\ & (!\Add0~7_combout\ & !\Add0~4\)) # (!\Add0~6_combout\ & ((!\Add0~4\) # (!\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X16_Y17_N8
\RA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

-- Location: LCCOMB_X16_Y3_N18
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[1]~input_o\ $ (((\RB[1]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RB[1]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X16_Y3_N8
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\RA[0]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux6~0_combout\ & (\RA[2]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \RA[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X21_Y3_N30
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\op_sel[2]~input_o\) # ((\op_sel[1]~input_o\ & \op_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X16_Y3_N4
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\Mux6~1_combout\))) # (!\Mux6~2_combout\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Add0~8_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X16_Y3_N30
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((\RA[1]~input_o\) # ((\RB[1]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux6~4_combout\ & (\RA[1]~input_o\ & (\RB[1]~input_o\ & \Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \RA[1]~input_o\,
	datac => \RB[1]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X16_Y3_N16
\out_s[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(1) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux6~5_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => out_s(1),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(1));

-- Location: FF_X16_Y3_N17
\RZ[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[1]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N8
\RA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(3),
	o => \RA[3]~input_o\);

-- Location: IOIBUF_X16_Y17_N22
\RB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(2),
	o => \RB[2]~input_o\);

-- Location: LCCOMB_X16_Y3_N10
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[2]~input_o\ $ (((\RB[2]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RA[2]~input_o\,
	datac => \RB[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X16_Y3_N24
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\RA[1]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux7~0_combout\ & (\RA[3]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[3]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \RA[1]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X16_Y3_N14
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (!\op_sel[0]~input_o\ & \RA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[2]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X19_Y5_N20
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\RB[2]~input_o\ $ (\RA[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\RB[2]~input_o\ & (\RA[2]~input_o\ & !\Add1~3\)) # (!\RB[2]~input_o\ & ((\RA[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \RA[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y5_N14
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\op_sel[0]~input_o\ & ((\Add1~4_combout\))) # (!\op_sel[0]~input_o\ & (\RB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~4_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X20_Y3_N20
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~10_combout\ $ (\Add0~11_combout\ $ (!\Add0~9\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~10_combout\ & ((\Add0~11_combout\) # (!\Add0~9\))) # (!\Add0~10_combout\ & (\Add0~11_combout\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X16_Y3_N28
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux6~3_combout\ & (\Mux6~2_combout\)) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux7~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux7~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X16_Y3_N2
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\RA[2]~input_o\ & ((\Mux7~2_combout\) # ((\RB[2]~input_o\ & \Mux6~3_combout\)))) # (!\RA[2]~input_o\ & (\Mux7~2_combout\ & ((\RB[2]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \RB[2]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X16_Y3_N26
\out_s[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(2) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux7~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datac => out_s(2),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(2));

-- Location: FF_X16_Y3_N27
\RZ[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[2]~reg0_q\);

-- Location: IOIBUF_X16_Y17_N1
\RB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(3),
	o => \RB[3]~input_o\);

-- Location: LCCOMB_X19_Y5_N22
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\RA[3]~input_o\ & ((\RB[3]~input_o\ & (!\Add1~5\)) # (!\RB[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\RA[3]~input_o\ & ((\RB[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\RB[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\RA[3]~input_o\ & (\RB[3]~input_o\ & !\Add1~5\)) # (!\RA[3]~input_o\ & ((\RB[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[3]~input_o\,
	datab => \RB[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y5_N6
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\op_sel[0]~input_o\ & ((\Add1~6_combout\))) # (!\op_sel[0]~input_o\ & (\RB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RB[3]~input_o\,
	datac => \Add1~6_combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X19_Y5_N4
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (!\op_sel[0]~input_o\ & \RA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[3]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X20_Y3_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15_combout\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\Add0~15_combout\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~17\ = CARRY((\Add0~15_combout\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\Add0~15_combout\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: IOIBUF_X16_Y0_N29
\RA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(4),
	o => \RA[4]~input_o\);

-- Location: LCCOMB_X17_Y3_N12
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[3]~input_o\ $ (((\RB[3]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[3]~input_o\,
	datad => \RA[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X16_Y3_N0
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\RA[2]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux8~0_combout\ & (((\RA[4]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \RA[4]~input_o\,
	datac => \Mux8~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X16_Y3_N12
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux6~3_combout\ & (\Mux6~2_combout\)) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\Mux8~1_combout\))) # (!\Mux6~2_combout\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~2_combout\,
	datac => \Add0~16_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X16_Y3_N6
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\RA[3]~input_o\ & ((\Mux8~2_combout\) # ((\RB[3]~input_o\ & \Mux6~3_combout\)))) # (!\RA[3]~input_o\ & (\Mux8~2_combout\ & ((\RB[3]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[3]~input_o\,
	datab => \RB[3]~input_o\,
	datac => \Mux8~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X16_Y3_N20
\out_s[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(3) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux8~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(3),
	datac => \Mux8~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(3));

-- Location: FF_X16_Y3_N21
\RZ[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[3]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N15
\RB[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(4),
	o => \RB[4]~input_o\);

-- Location: LCCOMB_X17_Y3_N14
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[4]~input_o\ $ (((\RB[4]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[4]~input_o\,
	datad => \RA[4]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X19_Y17_N15
\RA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(5),
	o => \RA[5]~input_o\);

-- Location: LCCOMB_X17_Y3_N16
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux9~0_combout\ & ((\RA[3]~input_o\))) # (!\Mux9~0_combout\ & (\RA[5]~input_o\)))) # (!\op_sel[1]~input_o\ & (\Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \RA[5]~input_o\,
	datad => \RA[3]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X20_Y3_N10
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\RA[4]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[4]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X19_Y5_N24
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\RA[4]~input_o\ $ (\RB[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\RA[4]~input_o\ & ((!\Add1~7\) # (!\RB[4]~input_o\))) # (!\RA[4]~input_o\ & (!\RB[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \RB[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y5_N0
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\op_sel[0]~input_o\ & ((\Add1~8_combout\))) # (!\op_sel[0]~input_o\ & (\RB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[4]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~8_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X20_Y3_N24
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~18_combout\ $ (\Add0~19_combout\ $ (!\Add0~17\)))) # (GND)
-- \Add0~21\ = CARRY((\Add0~18_combout\ & ((\Add0~19_combout\) # (!\Add0~17\))) # (!\Add0~18_combout\ & (\Add0~19_combout\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X17_Y3_N6
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux6~2_combout\ & ((\Mux9~1_combout\) # ((\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (((!\Mux6~3_combout\ & \Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \Add0~20_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X17_Y3_N28
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\RB[4]~input_o\) # (\RA[4]~input_o\)) # (!\Mux6~3_combout\))) # (!\Mux9~2_combout\ & (\Mux6~3_combout\ & (\RB[4]~input_o\ & \RA[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux6~3_combout\,
	datac => \RB[4]~input_o\,
	datad => \RA[4]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X17_Y3_N24
\out_s[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(4) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux9~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => out_s(4),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(4));

-- Location: FF_X17_Y3_N25
\RZ[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(4),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[4]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N1
\RB[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(5),
	o => \RB[5]~input_o\);

-- Location: LCCOMB_X19_Y5_N26
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\RB[5]~input_o\ & ((\RA[5]~input_o\ & (!\Add1~9\)) # (!\RA[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\RB[5]~input_o\ & ((\RA[5]~input_o\ & (\Add1~9\ & VCC)) # (!\RA[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\RB[5]~input_o\ & ((!\Add1~9\) # (!\RA[5]~input_o\))) # (!\RB[5]~input_o\ & (!\RA[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[5]~input_o\,
	datab => \RA[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X20_Y3_N6
\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\op_sel[0]~input_o\ & ((\Add1~10_combout\))) # (!\op_sel[0]~input_o\ & (\RB[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[5]~input_o\,
	datac => \Add1~10_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X20_Y3_N4
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\RA[5]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[5]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X20_Y3_N26
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23_combout\ & ((\Add0~22_combout\ & (\Add0~21\ & VCC)) # (!\Add0~22_combout\ & (!\Add0~21\)))) # (!\Add0~23_combout\ & ((\Add0~22_combout\ & (!\Add0~21\)) # (!\Add0~22_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~25\ = CARRY((\Add0~23_combout\ & (!\Add0~22_combout\ & !\Add0~21\)) # (!\Add0~23_combout\ & ((!\Add0~21\) # (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: IOIBUF_X0_Y5_N15
\RA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(6),
	o => \RA[6]~input_o\);

-- Location: LCCOMB_X20_Y3_N8
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[5]~input_o\ $ (((\RB[5]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[5]~input_o\,
	datac => \RB[5]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X20_Y3_N14
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\RA[4]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux10~0_combout\ & (((\RA[6]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \RA[6]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X20_Y3_N0
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux6~2_combout\ & (((\Mux10~1_combout\) # (\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (\Add0~24_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Add0~24_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X20_Y3_N2
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\RB[5]~input_o\ & ((\Mux10~2_combout\) # ((\Mux6~3_combout\ & \RA[5]~input_o\)))) # (!\RB[5]~input_o\ & (\Mux10~2_combout\ & ((\RA[5]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[5]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux10~2_combout\,
	datad => \RA[5]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X21_Y3_N22
\out_s[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(5) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux10~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datac => out_s(5),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(5));

-- Location: FF_X21_Y3_N23
\RZ[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[5]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N15
\RB[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(6),
	o => \RB[6]~input_o\);

-- Location: LCCOMB_X17_Y3_N26
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[6]~input_o\ $ (((\RB[6]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[6]~input_o\,
	datab => \RB[6]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X14_Y0_N29
\RA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(7),
	o => \RA[7]~input_o\);

-- Location: LCCOMB_X17_Y3_N8
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\RA[5]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux11~0_combout\ & (((\op_sel[1]~input_o\ & \RA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \RA[5]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[7]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X17_Y3_N18
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\RA[6]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[6]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X19_Y5_N28
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\RB[6]~input_o\ $ (\RA[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\RB[6]~input_o\ & (\RA[6]~input_o\ & !\Add1~11\)) # (!\RB[6]~input_o\ & ((\RA[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[6]~input_o\,
	datab => \RA[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y5_N10
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\op_sel[0]~input_o\ & ((\Add1~12_combout\))) # (!\op_sel[0]~input_o\ & (\RB[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[6]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~12_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X20_Y3_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\Add0~26_combout\ $ (\Add0~27_combout\ $ (!\Add0~25\)))) # (GND)
-- \Add0~29\ = CARRY((\Add0~26_combout\ & ((\Add0~27_combout\) # (!\Add0~25\))) # (!\Add0~26_combout\ & (\Add0~27_combout\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X17_Y3_N0
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux11~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux6~3_combout\,
	datac => \Add0~28_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X17_Y3_N22
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\RA[6]~input_o\ & ((\Mux11~2_combout\) # ((\Mux6~3_combout\ & \RB[6]~input_o\)))) # (!\RA[6]~input_o\ & (\Mux11~2_combout\ & ((\RB[6]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[6]~input_o\,
	datab => \Mux11~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \RB[6]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X17_Y3_N10
\out_s[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(6) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux11~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => out_s(6),
	combout => out_s(6));

-- Location: FF_X17_Y3_N11
\RZ[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(6),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[6]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N8
\RB[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(7),
	o => \RB[7]~input_o\);

-- Location: LCCOMB_X19_Y5_N30
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\RA[7]~input_o\ & ((\RB[7]~input_o\ & (!\Add1~13\)) # (!\RB[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\RA[7]~input_o\ & ((\RB[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\RB[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\RA[7]~input_o\ & (\RB[7]~input_o\ & !\Add1~13\)) # (!\RA[7]~input_o\ & ((\RB[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~input_o\,
	datab => \RB[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X21_Y3_N2
\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\op_sel[0]~input_o\ & ((\Add1~14_combout\))) # (!\op_sel[0]~input_o\ & (\RB[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[7]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \Add1~14_combout\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X21_Y3_N20
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\RA[7]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[7]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X20_Y3_N30
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~31_combout\ & ((\Add0~30_combout\ & (\Add0~29\ & VCC)) # (!\Add0~30_combout\ & (!\Add0~29\)))) # (!\Add0~31_combout\ & ((\Add0~30_combout\ & (!\Add0~29\)) # (!\Add0~30_combout\ & ((\Add0~29\) # (GND)))))
-- \Add0~33\ = CARRY((\Add0~31_combout\ & (!\Add0~30_combout\ & !\Add0~29\)) # (!\Add0~31_combout\ & ((!\Add0~29\) # (!\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: IOIBUF_X8_Y0_N22
\RA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(8),
	o => \RA[8]~input_o\);

-- Location: LCCOMB_X21_Y3_N26
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[7]~input_o\ $ (((\RB[7]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[7]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[7]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X17_Y3_N4
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux12~0_combout\ & (\RA[6]~input_o\)) # (!\Mux12~0_combout\ & ((\RA[8]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[6]~input_o\,
	datab => \RA[8]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X21_Y3_N10
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux6~2_combout\ & (((\Mux12~1_combout\) # (\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (\Add0~32_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Add0~32_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X21_Y3_N16
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\RB[7]~input_o\ & ((\Mux12~2_combout\) # ((\RA[7]~input_o\ & \Mux6~3_combout\)))) # (!\RB[7]~input_o\ & (\Mux12~2_combout\ & ((\RA[7]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[7]~input_o\,
	datab => \RA[7]~input_o\,
	datac => \Mux12~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X21_Y3_N4
\out_s[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(7) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux12~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~3_combout\,
	datac => out_s(7),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(7));

-- Location: FF_X21_Y3_N5
\RZ[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[7]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N22
\RA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(9),
	o => \RA[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\RB[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(8),
	o => \RB[8]~input_o\);

-- Location: LCCOMB_X16_Y2_N4
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[8]~input_o\ $ (((\RB[8]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[8]~input_o\,
	datad => \RB[8]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X16_Y2_N6
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\RA[7]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux13~0_combout\ & (((\RA[9]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~input_o\,
	datab => \RA[9]~input_o\,
	datac => \Mux13~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X16_Y2_N24
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (!\op_sel[0]~input_o\ & \RA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[8]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\RA[8]~input_o\ $ (\RB[8]~input_o\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\RA[8]~input_o\ & ((!\Add1~15\) # (!\RB[8]~input_o\))) # (!\RA[8]~input_o\ & (!\RB[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[8]~input_o\,
	datab => \RB[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y2_N10
\Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\op_sel[0]~input_o\ & ((\Add1~16_combout\))) # (!\op_sel[0]~input_o\ & (\RB[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RB[8]~input_o\,
	datad => \Add1~16_combout\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X20_Y2_N0
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~34_combout\ $ (\Add0~35_combout\ $ (!\Add0~33\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~34_combout\ & ((\Add0~35_combout\) # (!\Add0~33\))) # (!\Add0~34_combout\ & (\Add0~35_combout\ & !\Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X16_Y2_N16
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux13~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux6~2_combout\,
	datad => \Add0~36_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X16_Y2_N26
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\RA[8]~input_o\ & ((\Mux13~2_combout\) # ((\Mux6~3_combout\ & \RB[8]~input_o\)))) # (!\RA[8]~input_o\ & (\Mux13~2_combout\ & ((\RB[8]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[8]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux13~2_combout\,
	datad => \RB[8]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X16_Y2_N20
\out_s[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(8) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux13~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(8),
	datac => \Mux13~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(8));

-- Location: FF_X16_Y2_N21
\RZ[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(8),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[8]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N1
\RA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(10),
	o => \RA[10]~input_o\);

-- Location: IOIBUF_X16_Y17_N15
\RB[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(9),
	o => \RB[9]~input_o\);

-- Location: LCCOMB_X16_Y2_N28
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[9]~input_o\ $ (((\RB[9]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RB[9]~input_o\,
	datad => \RA[9]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X16_Y2_N22
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux14~0_combout\ & ((\RA[8]~input_o\))) # (!\Mux14~0_combout\ & (\RA[10]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[10]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[8]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X15_Y3_N20
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\RA[9]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[9]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\RB[9]~input_o\ & ((\RA[9]~input_o\ & (!\Add1~17\)) # (!\RA[9]~input_o\ & ((\Add1~17\) # (GND))))) # (!\RB[9]~input_o\ & ((\RA[9]~input_o\ & (\Add1~17\ & VCC)) # (!\RA[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\RB[9]~input_o\ & ((!\Add1~17\) # (!\RA[9]~input_o\))) # (!\RB[9]~input_o\ & (!\RA[9]~input_o\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[9]~input_o\,
	datab => \RA[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X20_Y4_N8
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\op_sel[0]~input_o\ & (\Add1~18_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[9]~input_o\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X20_Y2_N2
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Add0~38_combout\ & ((\Add0~39_combout\ & (\Add0~37\ & VCC)) # (!\Add0~39_combout\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\Add0~39_combout\ & (!\Add0~37\)) # (!\Add0~39_combout\ & ((\Add0~37\) # (GND)))))
-- \Add0~41\ = CARRY((\Add0~38_combout\ & (!\Add0~39_combout\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~39_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X16_Y2_N14
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux14~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux6~2_combout\,
	datad => \Add0~40_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X16_Y2_N12
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & ((\RB[9]~input_o\) # ((\RA[9]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux14~2_combout\ & (\RB[9]~input_o\ & (\Mux6~3_combout\ & \RA[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \RB[9]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \RA[9]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X16_Y2_N30
\out_s[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(9) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux14~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datac => out_s(9),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(9));

-- Location: FF_X16_Y2_N31
\RZ[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[9]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N29
\RB[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(10),
	o => \RB[10]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\RB[10]~input_o\ $ (\RA[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\RB[10]~input_o\ & (\RA[10]~input_o\ & !\Add1~19\)) # (!\RB[10]~input_o\ & ((\RA[10]~input_o\) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[10]~input_o\,
	datab => \RA[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X17_Y2_N24
\Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\op_sel[0]~input_o\ & (\Add1~20_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => \RB[10]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X17_Y2_N2
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\RA[10]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[10]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X20_Y2_N4
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\Add0~43_combout\ $ (\Add0~42_combout\ $ (!\Add0~41\)))) # (GND)
-- \Add0~45\ = CARRY((\Add0~43_combout\ & ((\Add0~42_combout\) # (!\Add0~41\))) # (!\Add0~43_combout\ & (\Add0~42_combout\ & !\Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: IOIBUF_X12_Y0_N29
\RA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(11),
	o => \RA[11]~input_o\);

-- Location: LCCOMB_X16_Y2_N8
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[10]~input_o\ $ (((\RB[10]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[10]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[10]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X16_Y2_N2
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux15~0_combout\ & ((\RA[9]~input_o\))) # (!\Mux15~0_combout\ & (\RA[11]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \Mux15~0_combout\,
	datad => \RA[9]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X17_Y2_N22
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux6~2_combout\ & (((\Mux15~1_combout\) # (\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (\Add0~44_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Add0~44_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X17_Y2_N20
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux6~3_combout\ & ((\Mux15~2_combout\ & ((\RB[10]~input_o\) # (\RA[10]~input_o\))) # (!\Mux15~2_combout\ & (\RB[10]~input_o\ & \RA[10]~input_o\)))) # (!\Mux6~3_combout\ & (\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux15~2_combout\,
	datac => \RB[10]~input_o\,
	datad => \RA[10]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X17_Y2_N0
\out_s[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(10) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux15~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(10),
	datac => \Mux15~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(10));

-- Location: FF_X17_Y2_N1
\RZ[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[10]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N1
\RB[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(11),
	o => \RB[11]~input_o\);

-- Location: LCCOMB_X17_Y2_N10
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[11]~input_o\ $ (((\RB[11]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RB[11]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\RA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(12),
	o => \RA[12]~input_o\);

-- Location: LCCOMB_X17_Y2_N28
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\RA[10]~input_o\)) # (!\op_sel[1]~input_o\))) # (!\Mux16~0_combout\ & (\op_sel[1]~input_o\ & (\RA[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[12]~input_o\,
	datad => \RA[10]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\RB[11]~input_o\ & ((\RA[11]~input_o\ & (!\Add1~21\)) # (!\RA[11]~input_o\ & ((\Add1~21\) # (GND))))) # (!\RB[11]~input_o\ & ((\RA[11]~input_o\ & (\Add1~21\ & VCC)) # (!\RA[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\RB[11]~input_o\ & ((!\Add1~21\) # (!\RA[11]~input_o\))) # (!\RB[11]~input_o\ & (!\RA[11]~input_o\ & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[11]~input_o\,
	datab => \RA[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X16_Y2_N0
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\op_sel[0]~input_o\ & (\Add1~22_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \Add1~22_combout\,
	datac => \RB[11]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X17_Y2_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\RA[11]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[11]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X20_Y2_N6
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\Add0~47_combout\ & ((\Add0~46_combout\ & (\Add0~45\ & VCC)) # (!\Add0~46_combout\ & (!\Add0~45\)))) # (!\Add0~47_combout\ & ((\Add0~46_combout\ & (!\Add0~45\)) # (!\Add0~46_combout\ & ((\Add0~45\) # (GND)))))
-- \Add0~49\ = CARRY((\Add0~47_combout\ & (!\Add0~46_combout\ & !\Add0~45\)) # (!\Add0~47_combout\ & ((!\Add0~45\) # (!\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X17_Y2_N12
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux16~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux16~1_combout\,
	datac => \Add0~48_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X17_Y2_N18
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & ((\RB[11]~input_o\) # ((\RA[11]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux16~2_combout\ & (\RB[11]~input_o\ & (\RA[11]~input_o\ & \Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \RB[11]~input_o\,
	datac => \RA[11]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X17_Y2_N26
\out_s[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(11) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux16~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datac => out_s(11),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(11));

-- Location: FF_X17_Y2_N27
\RZ[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(11),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[11]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\RB[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(12),
	o => \RB[12]~input_o\);

-- Location: IOIBUF_X10_Y0_N29
\RA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(13),
	o => \RA[13]~input_o\);

-- Location: LCCOMB_X17_Y2_N16
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[12]~input_o\ $ (((\RB[12]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[12]~input_o\,
	datab => \RB[12]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X17_Y2_N6
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux17~0_combout\ & ((\RA[11]~input_o\))) # (!\Mux17~0_combout\ & (\RA[13]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[13]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[11]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X17_Y3_N30
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\RA[12]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[12]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\RA[12]~input_o\ $ (\RB[12]~input_o\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\RA[12]~input_o\ & ((!\Add1~23\) # (!\RB[12]~input_o\))) # (!\RA[12]~input_o\ & (!\RB[12]~input_o\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[12]~input_o\,
	datab => \RB[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X20_Y4_N14
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\op_sel[0]~input_o\ & (\Add1~24_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[12]~input_o\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X20_Y2_N8
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\Add0~50_combout\ $ (\Add0~51_combout\ $ (!\Add0~49\)))) # (GND)
-- \Add0~53\ = CARRY((\Add0~50_combout\ & ((\Add0~51_combout\) # (!\Add0~49\))) # (!\Add0~50_combout\ & (\Add0~51_combout\ & !\Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X17_Y2_N4
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux6~3_combout\ & (\Mux6~2_combout\)) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux17~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux17~1_combout\,
	datad => \Add0~52_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X17_Y2_N30
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\RA[12]~input_o\ & ((\Mux17~2_combout\) # ((\RB[12]~input_o\ & \Mux6~3_combout\)))) # (!\RA[12]~input_o\ & (\Mux17~2_combout\ & ((\RB[12]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[12]~input_o\,
	datab => \RB[12]~input_o\,
	datac => \Mux17~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X17_Y2_N8
\out_s[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(12) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux17~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(12),
	datac => \Mux17~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(12));

-- Location: FF_X17_Y2_N9
\RZ[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[12]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N29
\RA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(14),
	o => \RA[14]~input_o\);

-- Location: IOIBUF_X21_Y17_N22
\RB[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(13),
	o => \RB[13]~input_o\);

-- Location: LCCOMB_X21_Y2_N2
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[13]~input_o\ $ (((\RB[13]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[13]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[13]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X22_Y2_N28
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux18~0_combout\ & (\RA[12]~input_o\)) # (!\Mux18~0_combout\ & ((\RA[14]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[12]~input_o\,
	datac => \RA[14]~input_o\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\RB[13]~input_o\ & ((\RA[13]~input_o\ & (!\Add1~25\)) # (!\RA[13]~input_o\ & ((\Add1~25\) # (GND))))) # (!\RB[13]~input_o\ & ((\RA[13]~input_o\ & (\Add1~25\ & VCC)) # (!\RA[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\RB[13]~input_o\ & ((!\Add1~25\) # (!\RA[13]~input_o\))) # (!\RB[13]~input_o\ & (!\RA[13]~input_o\ & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[13]~input_o\,
	datab => \RA[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X21_Y2_N14
\Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\op_sel[0]~input_o\ & (\Add1~26_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \Add1~26_combout\,
	datad => \RB[13]~input_o\,
	combout => \Add0~55_combout\);

-- Location: LCCOMB_X21_Y2_N12
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (!\op_sel[0]~input_o\ & \RA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[13]~input_o\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X20_Y2_N10
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~55_combout\ & ((\Add0~54_combout\ & (\Add0~53\ & VCC)) # (!\Add0~54_combout\ & (!\Add0~53\)))) # (!\Add0~55_combout\ & ((\Add0~54_combout\ & (!\Add0~53\)) # (!\Add0~54_combout\ & ((\Add0~53\) # (GND)))))
-- \Add0~57\ = CARRY((\Add0~55_combout\ & (!\Add0~54_combout\ & !\Add0~53\)) # (!\Add0~55_combout\ & ((!\Add0~53\) # (!\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X21_Y2_N0
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux6~2_combout\ & ((\Mux18~1_combout\) # ((\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (((\Add0~56_combout\ & !\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux18~1_combout\,
	datac => \Add0~56_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X21_Y2_N26
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & ((\RB[13]~input_o\) # ((\RA[13]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux18~2_combout\ & (\RB[13]~input_o\ & (\Mux6~3_combout\ & \RA[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datab => \RB[13]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \RA[13]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X21_Y2_N24
\out_s[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(13) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux18~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => out_s(13),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(13));

-- Location: FF_X21_Y2_N25
\RZ[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(13),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[13]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N22
\RB[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(14),
	o => \RB[14]~input_o\);

-- Location: LCCOMB_X20_Y4_N16
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (!\op_sel[0]~input_o\ & \RA[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[14]~input_o\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\RA[14]~input_o\ $ (\RB[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\RA[14]~input_o\ & ((!\Add1~27\) # (!\RB[14]~input_o\))) # (!\RA[14]~input_o\ & (!\RB[14]~input_o\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[14]~input_o\,
	datab => \RB[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X20_Y4_N6
\Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\op_sel[0]~input_o\ & (\Add1~28_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[14]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X20_Y2_N12
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~58_combout\ $ (\Add0~59_combout\ $ (!\Add0~57\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~58_combout\ & ((\Add0~59_combout\) # (!\Add0~57\))) # (!\Add0~58_combout\ & (\Add0~59_combout\ & !\Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: IOIBUF_X38_Y0_N1
\RA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(15),
	o => \RA[15]~input_o\);

-- Location: LCCOMB_X22_Y2_N30
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[14]~input_o\ $ (((\RB[14]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RB[14]~input_o\,
	datac => \RA[14]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X21_Y2_N20
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux19~0_combout\ & ((\RA[13]~input_o\))) # (!\Mux19~0_combout\ & (\RA[15]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[15]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \RA[13]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X21_Y2_N18
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux6~2_combout\ & (((\Mux19~1_combout\) # (\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (\Add0~60_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X21_Y2_N8
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\RA[14]~input_o\ & ((\Mux19~2_combout\) # ((\RB[14]~input_o\ & \Mux6~3_combout\)))) # (!\RA[14]~input_o\ & (\Mux19~2_combout\ & ((\RB[14]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[14]~input_o\,
	datab => \RB[14]~input_o\,
	datac => \Mux19~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X21_Y2_N10
\out_s[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(14) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux19~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_s(14),
	datac => \Mux19~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(14));

-- Location: FF_X21_Y2_N11
\RZ[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[14]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N29
\RB[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(15),
	o => \RB[15]~input_o\);

-- Location: LCCOMB_X21_Y2_N30
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[15]~input_o\ $ (((\RB[15]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[15]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[15]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X21_Y17_N29
\RA[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(16),
	o => \RA[16]~input_o\);

-- Location: LCCOMB_X22_Y2_N0
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux20~0_combout\ & (\RA[14]~input_o\)) # (!\Mux20~0_combout\ & ((\RA[16]~input_o\))))) # (!\op_sel[1]~input_o\ & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \RA[14]~input_o\,
	datad => \RA[16]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X20_Y4_N0
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (!\op_sel[0]~input_o\ & \RA[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[15]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\RB[15]~input_o\ & ((\RA[15]~input_o\ & (!\Add1~29\)) # (!\RA[15]~input_o\ & ((\Add1~29\) # (GND))))) # (!\RB[15]~input_o\ & ((\RA[15]~input_o\ & (\Add1~29\ & VCC)) # (!\RA[15]~input_o\ & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\RB[15]~input_o\ & ((!\Add1~29\) # (!\RA[15]~input_o\))) # (!\RB[15]~input_o\ & (!\RA[15]~input_o\ & !\Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[15]~input_o\,
	datab => \RA[15]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X20_Y4_N2
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\op_sel[0]~input_o\ & ((\Add1~30_combout\))) # (!\op_sel[0]~input_o\ & (\RB[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[15]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~30_combout\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X20_Y2_N14
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~62_combout\ & ((\Add0~63_combout\ & (\Add0~61\ & VCC)) # (!\Add0~63_combout\ & (!\Add0~61\)))) # (!\Add0~62_combout\ & ((\Add0~63_combout\ & (!\Add0~61\)) # (!\Add0~63_combout\ & ((\Add0~61\) # (GND)))))
-- \Add0~65\ = CARRY((\Add0~62_combout\ & (!\Add0~63_combout\ & !\Add0~61\)) # (!\Add0~62_combout\ & ((!\Add0~61\) # (!\Add0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add0~63_combout\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X21_Y2_N16
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux6~2_combout\ & ((\Mux20~1_combout\) # ((\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (((\Add0~64_combout\ & !\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux20~1_combout\,
	datac => \Add0~64_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X21_Y2_N22
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~2_combout\ & (((\RB[15]~input_o\) # (\RA[15]~input_o\)) # (!\Mux6~3_combout\))) # (!\Mux20~2_combout\ & (\Mux6~3_combout\ & (\RB[15]~input_o\ & \RA[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \Mux6~3_combout\,
	datac => \RB[15]~input_o\,
	datad => \RA[15]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X21_Y2_N4
\out_s[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(15) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux20~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~3_combout\,
	datac => out_s(15),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(15));

-- Location: FF_X21_Y2_N5
\RZ[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(15),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[15]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N14
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\op_sel[0]~input_o\ & \RA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[16]~input_o\,
	combout => \Add0~66_combout\);

-- Location: IOIBUF_X30_Y0_N15
\RB[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(16),
	o => \RB[16]~input_o\);

-- Location: LCCOMB_X19_Y4_N16
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\RB[16]~input_o\ $ (\RA[16]~input_o\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\RB[16]~input_o\ & (\RA[16]~input_o\ & !\Add1~31\)) # (!\RB[16]~input_o\ & ((\RA[16]~input_o\) # (!\Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[16]~input_o\,
	datab => \RA[16]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X22_Y2_N12
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\op_sel[0]~input_o\ & (\Add1~32_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[16]~input_o\,
	combout => \Add0~67_combout\);

-- Location: LCCOMB_X20_Y2_N16
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = ((\Add0~66_combout\ $ (\Add0~67_combout\ $ (!\Add0~65\)))) # (GND)
-- \Add0~69\ = CARRY((\Add0~66_combout\ & ((\Add0~67_combout\) # (!\Add0~65\))) # (!\Add0~66_combout\ & (\Add0~67_combout\ & !\Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \Add0~67_combout\,
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X22_Y2_N26
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[16]~input_o\ $ (((\RB[16]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[16]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[16]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X24_Y0_N29
\RA[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(17),
	o => \RA[17]~input_o\);

-- Location: LCCOMB_X22_Y2_N20
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\RA[15]~input_o\)) # (!\op_sel[1]~input_o\))) # (!\Mux21~0_combout\ & (\op_sel[1]~input_o\ & ((\RA[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[15]~input_o\,
	datad => \RA[17]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X21_Y2_N28
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux6~2_combout\ & (((\Mux21~1_combout\) # (\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (\Add0~68_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Add0~68_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X22_Y2_N10
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\RA[16]~input_o\ & ((\Mux21~2_combout\) # ((\Mux6~3_combout\ & \RB[16]~input_o\)))) # (!\RA[16]~input_o\ & (\Mux21~2_combout\ & ((\RB[16]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[16]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux21~2_combout\,
	datad => \RB[16]~input_o\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X22_Y2_N4
\out_s[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(16) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux21~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~3_combout\,
	datac => out_s(16),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(16));

-- Location: FF_X22_Y2_N5
\RZ[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(16),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[16]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N1
\RA[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(18),
	o => \RA[18]~input_o\);

-- Location: IOIBUF_X19_Y17_N1
\RB[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(17),
	o => \RB[17]~input_o\);

-- Location: LCCOMB_X22_Y2_N8
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[17]~input_o\ $ (((\RB[17]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[17]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[17]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X22_Y2_N2
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux22~0_combout\ & ((\RA[16]~input_o\))) # (!\Mux22~0_combout\ & (\RA[18]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[18]~input_o\,
	datac => \Mux22~0_combout\,
	datad => \RA[16]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X20_Y4_N4
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\RA[17]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[17]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~70_combout\);

-- Location: LCCOMB_X19_Y4_N18
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\RA[17]~input_o\ & ((\RB[17]~input_o\ & (!\Add1~33\)) # (!\RB[17]~input_o\ & (\Add1~33\ & VCC)))) # (!\RA[17]~input_o\ & ((\RB[17]~input_o\ & ((\Add1~33\) # (GND))) # (!\RB[17]~input_o\ & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\RA[17]~input_o\ & (\RB[17]~input_o\ & !\Add1~33\)) # (!\RA[17]~input_o\ & ((\RB[17]~input_o\) # (!\Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[17]~input_o\,
	datab => \RB[17]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X21_Y3_N28
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\op_sel[0]~input_o\ & ((\Add1~34_combout\))) # (!\op_sel[0]~input_o\ & (\RB[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datac => \Add1~34_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X20_Y2_N18
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~70_combout\ & ((\Add0~71_combout\ & (\Add0~69\ & VCC)) # (!\Add0~71_combout\ & (!\Add0~69\)))) # (!\Add0~70_combout\ & ((\Add0~71_combout\ & (!\Add0~69\)) # (!\Add0~71_combout\ & ((\Add0~69\) # (GND)))))
-- \Add0~73\ = CARRY((\Add0~70_combout\ & (!\Add0~71_combout\ & !\Add0~69\)) # (!\Add0~70_combout\ & ((!\Add0~69\) # (!\Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X21_Y2_N6
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux6~2_combout\ & ((\Mux22~1_combout\) # ((\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (((\Add0~72_combout\ & !\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Add0~72_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X22_Y2_N6
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\RB[17]~input_o\) # (\RA[17]~input_o\)) # (!\Mux6~3_combout\))) # (!\Mux22~2_combout\ & (\Mux6~3_combout\ & (\RB[17]~input_o\ & \RA[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux6~3_combout\,
	datac => \RB[17]~input_o\,
	datad => \RA[17]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X22_Y2_N18
\out_s[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(17) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux22~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(17),
	datac => \Mux22~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(17));

-- Location: FF_X22_Y2_N19
\RZ[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(17),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[17]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N8
\RB[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(18),
	o => \RB[18]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\RA[18]~input_o\ $ (\RB[18]~input_o\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\RA[18]~input_o\ & ((!\Add1~35\) # (!\RB[18]~input_o\))) # (!\RA[18]~input_o\ & (!\RB[18]~input_o\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[18]~input_o\,
	datab => \RB[18]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X22_Y2_N16
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\op_sel[0]~input_o\ & (\Add1~36_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \RB[18]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X22_Y2_N22
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\op_sel[0]~input_o\ & \RA[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[18]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X20_Y2_N20
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = ((\Add0~75_combout\ $ (\Add0~74_combout\ $ (!\Add0~73\)))) # (GND)
-- \Add0~77\ = CARRY((\Add0~75_combout\ & ((\Add0~74_combout\) # (!\Add0~73\))) # (!\Add0~75_combout\ & (\Add0~74_combout\ & !\Add0~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X22_Y2_N24
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[18]~input_o\ $ (((\RB[18]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RA[18]~input_o\,
	datac => \RB[18]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X21_Y17_N1
\RA[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(19),
	o => \RA[19]~input_o\);

-- Location: LCCOMB_X24_Y2_N6
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux23~0_combout\ & ((\RA[17]~input_o\))) # (!\Mux23~0_combout\ & (\RA[19]~input_o\)))) # (!\op_sel[1]~input_o\ & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \RA[19]~input_o\,
	datad => \RA[17]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X24_Y2_N28
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux6~2_combout\ & ((\Mux6~3_combout\) # ((\Mux23~1_combout\)))) # (!\Mux6~2_combout\ & (!\Mux6~3_combout\ & (\Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~3_combout\,
	datac => \Add0~76_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X24_Y2_N10
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & ((\RA[18]~input_o\) # ((\RB[18]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux23~2_combout\ & (\RA[18]~input_o\ & (\RB[18]~input_o\ & \Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \RA[18]~input_o\,
	datac => \RB[18]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X24_Y2_N8
\out_s[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(18) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux23~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~3_combout\,
	datac => out_s(18),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(18));

-- Location: FF_X24_Y2_N9
\RZ[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(18),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[18]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N22
\RB[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(19),
	o => \RB[19]~input_o\);

-- Location: LCCOMB_X19_Y4_N22
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\RA[19]~input_o\ & ((\RB[19]~input_o\ & (!\Add1~37\)) # (!\RB[19]~input_o\ & (\Add1~37\ & VCC)))) # (!\RA[19]~input_o\ & ((\RB[19]~input_o\ & ((\Add1~37\) # (GND))) # (!\RB[19]~input_o\ & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\RA[19]~input_o\ & (\RB[19]~input_o\ & !\Add1~37\)) # (!\RA[19]~input_o\ & ((\RB[19]~input_o\) # (!\Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[19]~input_o\,
	datab => \RB[19]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X24_Y2_N18
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\op_sel[0]~input_o\ & (\Add1~38_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \Add1~38_combout\,
	datad => \RB[19]~input_o\,
	combout => \Add0~79_combout\);

-- Location: LCCOMB_X24_Y2_N24
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\RA[19]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[19]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~78_combout\);

-- Location: LCCOMB_X20_Y2_N22
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~79_combout\ & ((\Add0~78_combout\ & (\Add0~77\ & VCC)) # (!\Add0~78_combout\ & (!\Add0~77\)))) # (!\Add0~79_combout\ & ((\Add0~78_combout\ & (!\Add0~77\)) # (!\Add0~78_combout\ & ((\Add0~77\) # (GND)))))
-- \Add0~81\ = CARRY((\Add0~79_combout\ & (!\Add0~78_combout\ & !\Add0~77\)) # (!\Add0~79_combout\ & ((!\Add0~77\) # (!\Add0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~79_combout\,
	datab => \Add0~78_combout\,
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: IOIBUF_X30_Y0_N8
\RA[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(20),
	o => \RA[20]~input_o\);

-- Location: LCCOMB_X24_Y2_N12
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[19]~input_o\ $ (((\RB[19]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[19]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[19]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X24_Y2_N22
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\RA[20]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux24~0_combout\ & (((\RA[18]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[20]~input_o\,
	datab => \RA[18]~input_o\,
	datac => \Mux24~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X24_Y2_N20
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux6~3_combout\ & ((\RB[19]~input_o\ & ((\RA[19]~input_o\) # (\Mux6~2_combout\))) # (!\RB[19]~input_o\ & (\RA[19]~input_o\ & \Mux6~2_combout\)))) # (!\Mux6~3_combout\ & (((!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[19]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \RA[19]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X24_Y2_N26
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux6~3_combout\ & (((\Mux24~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux24~2_combout\ & (\Add0~80_combout\)) # (!\Mux24~2_combout\ & ((\Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X24_Y2_N14
\out_s[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(19) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux24~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datac => out_s(19),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(19));

-- Location: FF_X24_Y2_N15
\RZ[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(19),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[19]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N1
\RA[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(21),
	o => \RA[21]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\RB[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(20),
	o => \RB[20]~input_o\);

-- Location: LCCOMB_X24_Y2_N16
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[20]~input_o\ $ (((\RB[20]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[20]~input_o\,
	datab => \RB[20]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X24_Y2_N30
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\RA[19]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux25~0_combout\ & (\RA[21]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \Mux25~0_combout\,
	datac => \RA[19]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X20_Y4_N30
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (!\op_sel[0]~input_o\ & \RA[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[20]~input_o\,
	combout => \Add0~82_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\RB[20]~input_o\ $ (\RA[20]~input_o\ $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\RB[20]~input_o\ & (\RA[20]~input_o\ & !\Add1~39\)) # (!\RB[20]~input_o\ & ((\RA[20]~input_o\) # (!\Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[20]~input_o\,
	datab => \RA[20]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X20_Y4_N28
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\op_sel[0]~input_o\ & (\Add1~40_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~40_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[20]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X20_Y2_N24
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Add0~82_combout\ $ (\Add0~83_combout\ $ (!\Add0~81\)))) # (GND)
-- \Add0~85\ = CARRY((\Add0~82_combout\ & ((\Add0~83_combout\) # (!\Add0~81\))) # (!\Add0~82_combout\ & (\Add0~83_combout\ & !\Add0~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~82_combout\,
	datab => \Add0~83_combout\,
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X24_Y2_N4
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux25~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux6~3_combout\,
	datac => \Add0~84_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X24_Y2_N2
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\RA[20]~input_o\ & ((\Mux25~2_combout\) # ((\Mux6~3_combout\ & \RB[20]~input_o\)))) # (!\RA[20]~input_o\ & (\Mux25~2_combout\ & ((\RB[20]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[20]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux25~2_combout\,
	datad => \RB[20]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X24_Y2_N0
\out_s[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(20) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux25~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(20),
	datac => \Mux25~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(20));

-- Location: FF_X24_Y2_N1
\RZ[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(20),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[20]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N8
\RA[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(22),
	o => \RA[22]~input_o\);

-- Location: IOIBUF_X10_Y0_N22
\RB[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(21),
	o => \RB[21]~input_o\);

-- Location: LCCOMB_X19_Y2_N18
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[21]~input_o\ $ (((\RB[21]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[21]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X19_Y2_N12
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux26~0_combout\ & ((\RA[22]~input_o\))) # (!\Mux26~0_combout\ & (\RA[20]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[20]~input_o\,
	datac => \RA[22]~input_o\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X19_Y2_N8
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux6~3_combout\ & ((\RA[21]~input_o\ & ((\RB[21]~input_o\) # (\Mux6~2_combout\))) # (!\RA[21]~input_o\ & (\RB[21]~input_o\ & \Mux6~2_combout\)))) # (!\Mux6~3_combout\ & (((!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \RB[21]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\RA[21]~input_o\ & ((\RB[21]~input_o\ & (!\Add1~41\)) # (!\RB[21]~input_o\ & (\Add1~41\ & VCC)))) # (!\RA[21]~input_o\ & ((\RB[21]~input_o\ & ((\Add1~41\) # (GND))) # (!\RB[21]~input_o\ & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\RA[21]~input_o\ & (\RB[21]~input_o\ & !\Add1~41\)) # (!\RA[21]~input_o\ & ((\RB[21]~input_o\) # (!\Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \RB[21]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X19_Y2_N14
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\op_sel[0]~input_o\ & (\Add1~42_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~42_combout\,
	datac => \RB[21]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~87_combout\);

-- Location: LCCOMB_X19_Y1_N26
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (!\op_sel[0]~input_o\ & \RA[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[21]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X20_Y2_N26
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~87_combout\ & ((\Add0~86_combout\ & (\Add0~85\ & VCC)) # (!\Add0~86_combout\ & (!\Add0~85\)))) # (!\Add0~87_combout\ & ((\Add0~86_combout\ & (!\Add0~85\)) # (!\Add0~86_combout\ & ((\Add0~85\) # (GND)))))
-- \Add0~89\ = CARRY((\Add0~87_combout\ & (!\Add0~86_combout\ & !\Add0~85\)) # (!\Add0~87_combout\ & ((!\Add0~85\) # (!\Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X19_Y2_N10
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux6~3_combout\ & (((\Mux26~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux26~2_combout\ & ((\Add0~88_combout\))) # (!\Mux26~2_combout\ & (\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~2_combout\,
	datad => \Add0~88_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X19_Y2_N0
\out_s[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(21) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux26~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(21),
	datac => \Mux26~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(21));

-- Location: FF_X19_Y2_N1
\RZ[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(21),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[21]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N8
\RB[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(22),
	o => \RB[22]~input_o\);

-- Location: LCCOMB_X19_Y4_N28
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\RA[22]~input_o\ $ (\RB[22]~input_o\ $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\RA[22]~input_o\ & ((!\Add1~43\) # (!\RB[22]~input_o\))) # (!\RA[22]~input_o\ & (!\RB[22]~input_o\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[22]~input_o\,
	datab => \RB[22]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X20_Y4_N24
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\op_sel[0]~input_o\ & ((\Add1~44_combout\))) # (!\op_sel[0]~input_o\ & (\RB[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[22]~input_o\,
	datab => \Add1~44_combout\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~91_combout\);

-- Location: LCCOMB_X20_Y4_N22
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (!\op_sel[0]~input_o\ & \RA[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[22]~input_o\,
	combout => \Add0~90_combout\);

-- Location: LCCOMB_X20_Y2_N28
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = ((\Add0~91_combout\ $ (\Add0~90_combout\ $ (!\Add0~89\)))) # (GND)
-- \Add0~93\ = CARRY((\Add0~91_combout\ & ((\Add0~90_combout\) # (!\Add0~89\))) # (!\Add0~91_combout\ & (\Add0~90_combout\ & !\Add0~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~91_combout\,
	datab => \Add0~90_combout\,
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

-- Location: IOIBUF_X16_Y0_N22
\RA[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(23),
	o => \RA[23]~input_o\);

-- Location: LCCOMB_X19_Y2_N28
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[22]~input_o\ $ (((\RB[22]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[22]~input_o\,
	datac => \RA[22]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X19_Y2_N26
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux27~0_combout\ & ((\RA[21]~input_o\))) # (!\Mux27~0_combout\ & (\RA[23]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[23]~input_o\,
	datac => \RA[21]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X19_Y2_N24
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\Mux27~1_combout\))) # (!\Mux6~2_combout\ & (\Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux27~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X19_Y2_N2
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & ((\RB[22]~input_o\) # ((\RA[22]~input_o\) # (!\Mux6~3_combout\)))) # (!\Mux27~2_combout\ & (\RB[22]~input_o\ & (\RA[22]~input_o\ & \Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \RB[22]~input_o\,
	datac => \RA[22]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X19_Y2_N30
\out_s[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(22) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux27~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~3_combout\,
	datac => out_s(22),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(22));

-- Location: FF_X19_Y2_N31
\RZ[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(22),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[22]~reg0_q\);

-- Location: IOIBUF_X19_Y17_N22
\RB[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(23),
	o => \RB[23]~input_o\);

-- Location: LCCOMB_X19_Y2_N20
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[23]~input_o\ $ (((\RB[23]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[23]~input_o\,
	datac => \RA[23]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X6_Y0_N22
\RA[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(24),
	o => \RA[24]~input_o\);

-- Location: LCCOMB_X19_Y2_N22
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux28~0_combout\ & ((\RA[24]~input_o\))) # (!\Mux28~0_combout\ & (\RA[22]~input_o\)))) # (!\op_sel[1]~input_o\ & (\Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \RA[22]~input_o\,
	datad => \RA[24]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X19_Y2_N16
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux6~2_combout\ & (\Mux6~3_combout\ & ((\RB[23]~input_o\) # (\RA[23]~input_o\)))) # (!\Mux6~2_combout\ & (((\RB[23]~input_o\ & \RA[23]~input_o\)) # (!\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \RB[23]~input_o\,
	datac => \RA[23]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\RA[23]~input_o\ & ((\RB[23]~input_o\ & (!\Add1~45\)) # (!\RB[23]~input_o\ & (\Add1~45\ & VCC)))) # (!\RA[23]~input_o\ & ((\RB[23]~input_o\ & ((\Add1~45\) # (GND))) # (!\RB[23]~input_o\ & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\RA[23]~input_o\ & (\RB[23]~input_o\ & !\Add1~45\)) # (!\RA[23]~input_o\ & ((\RB[23]~input_o\) # (!\Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[23]~input_o\,
	datab => \RB[23]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X20_Y4_N20
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\op_sel[0]~input_o\ & ((\Add1~46_combout\))) # (!\op_sel[0]~input_o\ & (\RB[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[23]~input_o\,
	datab => \Add1~46_combout\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X20_Y4_N18
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (!\op_sel[0]~input_o\ & \RA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[23]~input_o\,
	combout => \Add0~94_combout\);

-- Location: LCCOMB_X20_Y2_N30
\Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\Add0~95_combout\ & ((\Add0~94_combout\ & (\Add0~93\ & VCC)) # (!\Add0~94_combout\ & (!\Add0~93\)))) # (!\Add0~95_combout\ & ((\Add0~94_combout\ & (!\Add0~93\)) # (!\Add0~94_combout\ & ((\Add0~93\) # (GND)))))
-- \Add0~97\ = CARRY((\Add0~95_combout\ & (!\Add0~94_combout\ & !\Add0~93\)) # (!\Add0~95_combout\ & ((!\Add0~93\) # (!\Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~95_combout\,
	datab => \Add0~94_combout\,
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X19_Y2_N6
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & (((\Add0~96_combout\) # (\Mux6~3_combout\)))) # (!\Mux28~2_combout\ & (\Mux28~1_combout\ & ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux28~2_combout\,
	datac => \Add0~96_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X19_Y2_N4
\out_s[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(23) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux28~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datac => out_s(23),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(23));

-- Location: FF_X19_Y2_N5
\RZ[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(23),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[23]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N15
\RB[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(24),
	o => \RB[24]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\Add0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (\RA[24]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[24]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~98_combout\);

-- Location: LCCOMB_X19_Y3_N0
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\RA[24]~input_o\ $ (\RB[24]~input_o\ $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\RA[24]~input_o\ & ((!\Add1~47\) # (!\RB[24]~input_o\))) # (!\RA[24]~input_o\ & (!\RB[24]~input_o\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[24]~input_o\,
	datab => \RB[24]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X17_Y3_N20
\Add0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\op_sel[0]~input_o\ & ((\Add1~48_combout\))) # (!\op_sel[0]~input_o\ & (\RB[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \Add1~48_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~99_combout\);

-- Location: LCCOMB_X20_Y1_N0
\Add0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = ((\Add0~98_combout\ $ (\Add0~99_combout\ $ (!\Add0~97\)))) # (GND)
-- \Add0~101\ = CARRY((\Add0~98_combout\ & ((\Add0~99_combout\) # (!\Add0~97\))) # (!\Add0~98_combout\ & (\Add0~99_combout\ & !\Add0~97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datab => \Add0~99_combout\,
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~100_combout\,
	cout => \Add0~101\);

-- Location: IOIBUF_X14_Y0_N22
\RA[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(25),
	o => \RA[25]~input_o\);

-- Location: LCCOMB_X19_Y1_N20
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[24]~input_o\ $ (((\RB[24]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \RA[24]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X19_Y1_N30
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux29~0_combout\ & ((\RA[23]~input_o\))) # (!\Mux29~0_combout\ & (\RA[25]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \RA[23]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X20_Y1_N26
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux6~3_combout\ & (\Mux6~2_combout\)) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\Mux29~1_combout\))) # (!\Mux6~2_combout\ & (\Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~2_combout\,
	datac => \Add0~100_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X19_Y1_N2
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\RB[24]~input_o\ & ((\Mux29~2_combout\) # ((\RA[24]~input_o\ & \Mux6~3_combout\)))) # (!\RB[24]~input_o\ & (\Mux29~2_combout\ & ((\RA[24]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \RA[24]~input_o\,
	datac => \Mux29~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X19_Y1_N0
\out_s[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(24) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux29~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(24),
	datac => \Mux29~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(24));

-- Location: FF_X19_Y1_N1
\RZ[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(24),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[24]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N4
\Add0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (!\op_sel[0]~input_o\ & \RA[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[25]~input_o\,
	combout => \Add0~102_combout\);

-- Location: IOIBUF_X12_Y0_N22
\RB[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(25),
	o => \RB[25]~input_o\);

-- Location: LCCOMB_X19_Y3_N2
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\RA[25]~input_o\ & ((\RB[25]~input_o\ & (!\Add1~49\)) # (!\RB[25]~input_o\ & (\Add1~49\ & VCC)))) # (!\RA[25]~input_o\ & ((\RB[25]~input_o\ & ((\Add1~49\) # (GND))) # (!\RB[25]~input_o\ & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\RA[25]~input_o\ & (\RB[25]~input_o\ & !\Add1~49\)) # (!\RA[25]~input_o\ & ((\RB[25]~input_o\) # (!\Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \RB[25]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X19_Y3_N30
\Add0~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~103_combout\ = (\op_sel[0]~input_o\ & (\Add1~50_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~50_combout\,
	datac => \RB[25]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~103_combout\);

-- Location: LCCOMB_X20_Y1_N2
\Add0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (\Add0~102_combout\ & ((\Add0~103_combout\ & (\Add0~101\ & VCC)) # (!\Add0~103_combout\ & (!\Add0~101\)))) # (!\Add0~102_combout\ & ((\Add0~103_combout\ & (!\Add0~101\)) # (!\Add0~103_combout\ & ((\Add0~101\) # (GND)))))
-- \Add0~105\ = CARRY((\Add0~102_combout\ & (!\Add0~103_combout\ & !\Add0~101\)) # (!\Add0~102_combout\ & ((!\Add0~101\) # (!\Add0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~102_combout\,
	datab => \Add0~103_combout\,
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~104_combout\,
	cout => \Add0~105\);

-- Location: IOIBUF_X41_Y0_N29
\RA[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(26),
	o => \RA[26]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[25]~input_o\ $ (((\RB[25]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[25]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X19_Y1_N14
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux30~0_combout\ & (\RA[26]~input_o\)) # (!\Mux30~0_combout\ & ((\RA[24]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[26]~input_o\,
	datab => \RA[24]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X19_Y1_N28
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux6~2_combout\ & (\Mux6~3_combout\ & ((\RA[25]~input_o\) # (\RB[25]~input_o\)))) # (!\Mux6~2_combout\ & (((\RA[25]~input_o\ & \RB[25]~input_o\)) # (!\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \RB[25]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X19_Y1_N10
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux6~3_combout\ & (((\Mux30~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux30~2_combout\ & (\Add0~104_combout\)) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~104_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X19_Y1_N22
\out_s[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(25) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux30~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datac => out_s(25),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(25));

-- Location: FF_X19_Y1_N23
\RZ[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(25),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[25]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N8
\RB[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(26),
	o => \RB[26]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\RA[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(27),
	o => \RA[27]~input_o\);

-- Location: LCCOMB_X19_Y3_N28
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[26]~input_o\ $ (((\RB[26]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X19_Y3_N18
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux31~0_combout\ & ((\RA[25]~input_o\))) # (!\Mux31~0_combout\ & (\RA[27]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[27]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[25]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X19_Y1_N6
\Add0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (!\op_sel[0]~input_o\ & \RA[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Add0~106_combout\);

-- Location: LCCOMB_X19_Y3_N4
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\RB[26]~input_o\ $ (\RA[26]~input_o\ $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\RB[26]~input_o\ & (\RA[26]~input_o\ & !\Add1~51\)) # (!\RB[26]~input_o\ & ((\RA[26]~input_o\) # (!\Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datab => \RA[26]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X19_Y3_N24
\Add0~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~107_combout\ = (\op_sel[0]~input_o\ & ((\Add1~52_combout\))) # (!\op_sel[0]~input_o\ & (\RB[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datac => \Add1~52_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~107_combout\);

-- Location: LCCOMB_X20_Y1_N4
\Add0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = ((\Add0~106_combout\ $ (\Add0~107_combout\ $ (!\Add0~105\)))) # (GND)
-- \Add0~109\ = CARRY((\Add0~106_combout\ & ((\Add0~107_combout\) # (!\Add0~105\))) # (!\Add0~106_combout\ & (\Add0~107_combout\ & !\Add0~105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~106_combout\,
	datab => \Add0~107_combout\,
	datad => VCC,
	cin => \Add0~105\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X19_Y1_N12
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux6~2_combout\ & ((\Mux31~1_combout\) # ((\Mux6~3_combout\)))) # (!\Mux6~2_combout\ & (((\Add0~108_combout\ & !\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \Add0~108_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X19_Y1_N18
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\RB[26]~input_o\ & ((\Mux31~2_combout\) # ((\Mux6~3_combout\ & \RA[26]~input_o\)))) # (!\RB[26]~input_o\ & (\Mux31~2_combout\ & ((\RA[26]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux31~2_combout\,
	datad => \RA[26]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X19_Y1_N8
\out_s[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(26) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux31~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(26),
	datac => \Mux31~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(26));

-- Location: FF_X19_Y1_N9
\RZ[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(26),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[26]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N8
\RB[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(27),
	o => \RB[27]~input_o\);

-- Location: LCCOMB_X19_Y3_N6
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\RA[27]~input_o\ & ((\RB[27]~input_o\ & (!\Add1~53\)) # (!\RB[27]~input_o\ & (\Add1~53\ & VCC)))) # (!\RA[27]~input_o\ & ((\RB[27]~input_o\ & ((\Add1~53\) # (GND))) # (!\RB[27]~input_o\ & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\RA[27]~input_o\ & (\RB[27]~input_o\ & !\Add1~53\)) # (!\RA[27]~input_o\ & ((\RB[27]~input_o\) # (!\Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[27]~input_o\,
	datab => \RB[27]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X19_Y3_N26
\Add0~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~111_combout\ = (\op_sel[0]~input_o\ & (\Add1~54_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \op_sel[0]~input_o\,
	datad => \RB[27]~input_o\,
	combout => \Add0~111_combout\);

-- Location: LCCOMB_X21_Y1_N2
\Add0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (!\op_sel[0]~input_o\ & \RA[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[27]~input_o\,
	combout => \Add0~110_combout\);

-- Location: LCCOMB_X20_Y1_N6
\Add0~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (\Add0~111_combout\ & ((\Add0~110_combout\ & (\Add0~109\ & VCC)) # (!\Add0~110_combout\ & (!\Add0~109\)))) # (!\Add0~111_combout\ & ((\Add0~110_combout\ & (!\Add0~109\)) # (!\Add0~110_combout\ & ((\Add0~109\) # (GND)))))
-- \Add0~113\ = CARRY((\Add0~111_combout\ & (!\Add0~110_combout\ & !\Add0~109\)) # (!\Add0~111_combout\ & ((!\Add0~109\) # (!\Add0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~111_combout\,
	datab => \Add0~110_combout\,
	datad => VCC,
	cin => \Add0~109\,
	combout => \Add0~112_combout\,
	cout => \Add0~113\);

-- Location: LCCOMB_X21_Y1_N4
\Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\RB[27]~input_o\) # (\RA[27]~input_o\))) # (!\Mux6~2_combout\ & (\RB[27]~input_o\ & \RA[27]~input_o\)))) # (!\Mux6~3_combout\ & (!\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~2_combout\,
	datac => \RB[27]~input_o\,
	datad => \RA[27]~input_o\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X21_Y1_N6
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[27]~input_o\ $ (((\RB[27]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[27]~input_o\,
	datab => \RA[27]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: IOIBUF_X24_Y0_N22
\RA[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(28),
	o => \RA[28]~input_o\);

-- Location: LCCOMB_X21_Y1_N20
\Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\ & ((\RA[28]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux32~0_combout\ & (((\op_sel[1]~input_o\ & \RA[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datab => \RA[28]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X21_Y1_N18
\Mux32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux32~2_combout\ & ((\Add0~112_combout\) # ((\Mux6~3_combout\)))) # (!\Mux32~2_combout\ & (((!\Mux6~3_combout\ & \Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~112_combout\,
	datab => \Mux32~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux32~1_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X21_Y1_N8
\out_s[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(27) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux32~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~3_combout\,
	datac => out_s(27),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(27));

-- Location: FF_X21_Y1_N9
\RZ[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(27),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[27]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N29
\RB[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(28),
	o => \RB[28]~input_o\);

-- Location: LCCOMB_X19_Y3_N8
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\RB[28]~input_o\ $ (\RA[28]~input_o\ $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\RB[28]~input_o\ & (\RA[28]~input_o\ & !\Add1~55\)) # (!\RB[28]~input_o\ & ((\RA[28]~input_o\) # (!\Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[28]~input_o\,
	datab => \RA[28]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X24_Y3_N24
\Add0~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~115_combout\ = (\op_sel[0]~input_o\ & (\Add1~56_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datac => \RB[28]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~115_combout\);

-- Location: LCCOMB_X20_Y4_N26
\Add0~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = (!\op_sel[0]~input_o\ & \RA[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[28]~input_o\,
	combout => \Add0~114_combout\);

-- Location: LCCOMB_X20_Y1_N8
\Add0~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = ((\Add0~115_combout\ $ (\Add0~114_combout\ $ (!\Add0~113\)))) # (GND)
-- \Add0~117\ = CARRY((\Add0~115_combout\ & ((\Add0~114_combout\) # (!\Add0~113\))) # (!\Add0~115_combout\ & (\Add0~114_combout\ & !\Add0~113\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~115_combout\,
	datab => \Add0~114_combout\,
	datad => VCC,
	cin => \Add0~113\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: IOIBUF_X19_Y0_N1
\RA[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(29),
	o => \RA[29]~input_o\);

-- Location: LCCOMB_X22_Y1_N16
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[28]~input_o\ $ (((\RB[28]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[28]~input_o\,
	datab => \RA[28]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X21_Y1_N12
\Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & (((\RA[27]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux33~0_combout\ & (\RA[29]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[29]~input_o\,
	datab => \RA[27]~input_o\,
	datac => \Mux33~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X20_Y1_N20
\Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & ((\Mux33~1_combout\))) # (!\Mux6~2_combout\ & (\Add0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~116_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X20_Y1_N30
\Mux33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\RA[28]~input_o\ & ((\Mux33~2_combout\) # ((\Mux6~3_combout\ & \RB[28]~input_o\)))) # (!\RA[28]~input_o\ & (\Mux33~2_combout\ & ((\RB[28]~input_o\) # (!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[28]~input_o\,
	datab => \Mux33~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \RB[28]~input_o\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X20_Y1_N22
\out_s[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(28) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux33~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datac => out_s(28),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(28));

-- Location: FF_X20_Y1_N23
\RZ[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(28),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[28]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N1
\RB[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(29),
	o => \RB[29]~input_o\);

-- Location: LCCOMB_X19_Y3_N10
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\RB[29]~input_o\ & ((\RA[29]~input_o\ & (!\Add1~57\)) # (!\RA[29]~input_o\ & ((\Add1~57\) # (GND))))) # (!\RB[29]~input_o\ & ((\RA[29]~input_o\ & (\Add1~57\ & VCC)) # (!\RA[29]~input_o\ & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\RB[29]~input_o\ & ((!\Add1~57\) # (!\RA[29]~input_o\))) # (!\RB[29]~input_o\ & (!\RA[29]~input_o\ & !\Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[29]~input_o\,
	datab => \RA[29]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X19_Y3_N20
\Add0~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~119_combout\ = (\op_sel[0]~input_o\ & (\Add1~58_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datac => \RB[29]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~119_combout\);

-- Location: LCCOMB_X22_Y1_N0
\Add0~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (\RA[29]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[29]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~118_combout\);

-- Location: LCCOMB_X20_Y1_N10
\Add0~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (\Add0~119_combout\ & ((\Add0~118_combout\ & (\Add0~117\ & VCC)) # (!\Add0~118_combout\ & (!\Add0~117\)))) # (!\Add0~119_combout\ & ((\Add0~118_combout\ & (!\Add0~117\)) # (!\Add0~118_combout\ & ((\Add0~117\) # (GND)))))
-- \Add0~121\ = CARRY((\Add0~119_combout\ & (!\Add0~118_combout\ & !\Add0~117\)) # (!\Add0~119_combout\ & ((!\Add0~117\) # (!\Add0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~119_combout\,
	datab => \Add0~118_combout\,
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X21_Y1_N28
\Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux6~2_combout\ & (\Mux6~3_combout\ & ((\RB[29]~input_o\) # (\RA[29]~input_o\)))) # (!\Mux6~2_combout\ & (((\RB[29]~input_o\ & \RA[29]~input_o\)) # (!\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \RB[29]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \RA[29]~input_o\,
	combout => \Mux34~2_combout\);

-- Location: IOIBUF_X19_Y0_N15
\RA[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(30),
	o => \RA[30]~input_o\);

-- Location: LCCOMB_X21_Y1_N30
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[29]~input_o\ $ (((\RB[29]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[29]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[29]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X21_Y1_N0
\Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux34~0_combout\ & (\RA[30]~input_o\)) # (!\Mux34~0_combout\ & ((\RA[28]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[30]~input_o\,
	datac => \Mux34~0_combout\,
	datad => \RA[28]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X21_Y1_N14
\Mux34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux34~2_combout\ & ((\Add0~120_combout\) # ((\Mux6~3_combout\)))) # (!\Mux34~2_combout\ & (((!\Mux6~3_combout\ & \Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Mux34~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux34~1_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X21_Y1_N22
\out_s[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(29) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux34~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux34~3_combout\,
	datac => out_s(29),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(29));

-- Location: FF_X21_Y1_N23
\RZ[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(29),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[29]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N15
\RB[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(30),
	o => \RB[30]~input_o\);

-- Location: LCCOMB_X21_Y1_N10
\Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[30]~input_o\ $ (((\RB[30]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[30]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[30]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: IOIBUF_X21_Y0_N15
\RA[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(31),
	o => \RA[31]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & ((\RA[29]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux35~0_combout\ & (((\op_sel[1]~input_o\ & \RA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[29]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[31]~input_o\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X24_Y1_N4
\Add0~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (\RA[30]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[30]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~122_combout\);

-- Location: LCCOMB_X19_Y3_N12
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\RB[30]~input_o\ $ (\RA[30]~input_o\ $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\RB[30]~input_o\ & (\RA[30]~input_o\ & !\Add1~59\)) # (!\RB[30]~input_o\ & ((\RA[30]~input_o\) # (!\Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[30]~input_o\,
	datab => \RA[30]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X19_Y3_N22
\Add0~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~123_combout\ = (\op_sel[0]~input_o\ & ((\Add1~60_combout\))) # (!\op_sel[0]~input_o\ & (\RB[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[30]~input_o\,
	datad => \Add1~60_combout\,
	combout => \Add0~123_combout\);

-- Location: LCCOMB_X20_Y1_N12
\Add0~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = ((\Add0~122_combout\ $ (\Add0~123_combout\ $ (!\Add0~121\)))) # (GND)
-- \Add0~125\ = CARRY((\Add0~122_combout\ & ((\Add0~123_combout\) # (!\Add0~121\))) # (!\Add0~122_combout\ & (\Add0~123_combout\ & !\Add0~121\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~122_combout\,
	datab => \Add0~123_combout\,
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X20_Y1_N24
\Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & ((\Mux6~2_combout\ & (\Mux35~1_combout\)) # (!\Mux6~2_combout\ & ((\Add0~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux35~1_combout\,
	datac => \Add0~124_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Mux35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux6~3_combout\ & ((\RB[30]~input_o\ & ((\Mux35~2_combout\) # (\RA[30]~input_o\))) # (!\RB[30]~input_o\ & (\Mux35~2_combout\ & \RA[30]~input_o\)))) # (!\Mux6~3_combout\ & (((\Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \RB[30]~input_o\,
	datac => \Mux35~2_combout\,
	datad => \RA[30]~input_o\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X20_Y1_N28
\out_s[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(30) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux35~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(30),
	datac => \Mux35~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(30));

-- Location: FF_X20_Y1_N29
\RZ[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(30),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[30]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N8
\RB[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(31),
	o => \RB[31]~input_o\);

-- Location: LCCOMB_X22_Y1_N12
\Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\) # ((\RA[31]~input_o\ & \RB[31]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[31]~input_o\ $ (((\RB[31]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[31]~input_o\,
	datab => \RB[31]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X20_Y4_N12
\Add0~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = (!\op_sel[0]~input_o\ & \RA[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[31]~input_o\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X19_Y3_N14
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\RB[31]~input_o\ & ((\RA[31]~input_o\ & (!\Add1~61\)) # (!\RA[31]~input_o\ & ((\Add1~61\) # (GND))))) # (!\RB[31]~input_o\ & ((\RA[31]~input_o\ & (\Add1~61\ & VCC)) # (!\RA[31]~input_o\ & (!\Add1~61\))))
-- \Add1~63\ = CARRY((\RB[31]~input_o\ & ((!\Add1~61\) # (!\RA[31]~input_o\))) # (!\RB[31]~input_o\ & (!\RA[31]~input_o\ & !\Add1~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[31]~input_o\,
	datab => \RA[31]~input_o\,
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~62_combout\,
	cout => \Add1~63\);

-- Location: LCCOMB_X20_Y4_N10
\Add0~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~127_combout\ = (\op_sel[0]~input_o\ & ((\Add1~62_combout\))) # (!\op_sel[0]~input_o\ & (\RB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[31]~input_o\,
	datad => \Add1~62_combout\,
	combout => \Add0~127_combout\);

-- Location: LCCOMB_X20_Y1_N14
\Add0~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~128_combout\ = (\Add0~126_combout\ & ((\Add0~127_combout\ & (\Add0~125\ & VCC)) # (!\Add0~127_combout\ & (!\Add0~125\)))) # (!\Add0~126_combout\ & ((\Add0~127_combout\ & (!\Add0~125\)) # (!\Add0~127_combout\ & ((\Add0~125\) # (GND)))))
-- \Add0~129\ = CARRY((\Add0~126_combout\ & (!\Add0~127_combout\ & !\Add0~125\)) # (!\Add0~126_combout\ & ((!\Add0~125\) # (!\Add0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~126_combout\,
	datab => \Add0~127_combout\,
	datad => VCC,
	cin => \Add0~125\,
	combout => \Add0~128_combout\,
	cout => \Add0~129\);

-- Location: LCCOMB_X22_Y1_N6
\Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\op_sel[1]~input_o\ & (((\RA[30]~input_o\ & \op_sel[0]~input_o\)) # (!\op_sel[2]~input_o\))) # (!\op_sel[1]~input_o\ & (\op_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \RA[30]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X22_Y1_N28
\Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~1_combout\ & ((\RA[31]~input_o\) # ((\RB[31]~input_o\) # (\op_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[31]~input_o\,
	datab => \RB[31]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \Mux36~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X21_Y1_N26
\Mux36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux37~2_combout\ & ((\Add0~128_combout\) # ((\Mux36~0_combout\ & \Mux36~2_combout\)))) # (!\Mux37~2_combout\ & (\Mux36~0_combout\ & ((\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux36~0_combout\,
	datac => \Add0~128_combout\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X21_Y1_N16
\out_s[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(31) = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((\Mux36~3_combout\))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (out_s(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_s(31),
	datac => \Mux36~3_combout\,
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(31));

-- Location: FF_X21_Y1_N17
\RZ[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => out_s(31),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RZ[31]~reg0_q\);

-- Location: LCCOMB_X22_Y1_N26
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\op_sel[0]~input_o\ & (\Mux37~2_combout\ & (!\op_sel[3]~input_o\ & !\op_sel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \op_sel[3]~input_o\,
	datad => \op_sel[4]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X19_Y3_N16
\Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = !\Add1~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~63\,
	combout => \Add1~64_combout\);

-- Location: LCCOMB_X16_Y3_N22
\Add0~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~130_combout\ = (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & \Add1~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~64_combout\,
	combout => \Add0~130_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Add0~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~131_combout\ = (!\op_sel[1]~input_o\ & \op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~131_combout\);

-- Location: LCCOMB_X20_Y1_N16
\Add0~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~132_combout\ = \Add0~130_combout\ $ (\Add0~129\ $ (!\Add0~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~130_combout\,
	datad => \Add0~131_combout\,
	cin => \Add0~129\,
	combout => \Add0~132_combout\);

-- Location: LCCOMB_X22_Y1_N20
\Mux37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (!\op_sel[1]~input_o\ & (!\op_sel[2]~input_o\ & \Add0~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \Add0~132_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X22_Y1_N2
\out_s[32]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- out_s(32) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Mux37~3_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((out_s(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~3_combout\,
	datac => out_s(32),
	datad => \Mux5~0clkctrl_outclk\,
	combout => out_s(32));

-- Location: LCCOMB_X22_Y1_N30
\FLAG_S[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- FLAG_S(0) = (\Mux1~4_combout\ & ((out_s(32)))) # (!\Mux1~4_combout\ & (FLAG_S(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datac => FLAG_S(0),
	datad => out_s(32),
	combout => FLAG_S(0));

-- Location: FF_X22_Y1_N19
\FLAG_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => FLAG_S(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG_B[0]~reg0_q\);

-- Location: LCCOMB_X22_Y1_N22
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\op_sel[0]~input_o\ & (\Mux37~2_combout\ & (!\op_sel[3]~input_o\ & !\op_sel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \op_sel[3]~input_o\,
	datad => \op_sel[4]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X22_Y1_N14
\FLAG_S[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- FLAG_S(1) = (\Mux3~4_combout\ & ((out_s(32)))) # (!\Mux3~4_combout\ & (FLAG_S(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datac => FLAG_S(1),
	datad => out_s(32),
	combout => FLAG_S(1));

-- Location: LCCOMB_X22_Y1_N8
\FLAG_B[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[1]~reg0feeder_combout\ = FLAG_S(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => FLAG_S(1),
	combout => \FLAG_B[1]~reg0feeder_combout\);

-- Location: FF_X22_Y1_N9
\FLAG_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FLAG_B[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG_B[1]~reg0_q\);

-- Location: UNVM_X0_Y18_N40
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

-- Location: ADCBLOCK_X25_Y28_N0
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

ww_RZ(0) <= \RZ[0]~output_o\;

ww_RZ(1) <= \RZ[1]~output_o\;

ww_RZ(2) <= \RZ[2]~output_o\;

ww_RZ(3) <= \RZ[3]~output_o\;

ww_RZ(4) <= \RZ[4]~output_o\;

ww_RZ(5) <= \RZ[5]~output_o\;

ww_RZ(6) <= \RZ[6]~output_o\;

ww_RZ(7) <= \RZ[7]~output_o\;

ww_RZ(8) <= \RZ[8]~output_o\;

ww_RZ(9) <= \RZ[9]~output_o\;

ww_RZ(10) <= \RZ[10]~output_o\;

ww_RZ(11) <= \RZ[11]~output_o\;

ww_RZ(12) <= \RZ[12]~output_o\;

ww_RZ(13) <= \RZ[13]~output_o\;

ww_RZ(14) <= \RZ[14]~output_o\;

ww_RZ(15) <= \RZ[15]~output_o\;

ww_RZ(16) <= \RZ[16]~output_o\;

ww_RZ(17) <= \RZ[17]~output_o\;

ww_RZ(18) <= \RZ[18]~output_o\;

ww_RZ(19) <= \RZ[19]~output_o\;

ww_RZ(20) <= \RZ[20]~output_o\;

ww_RZ(21) <= \RZ[21]~output_o\;

ww_RZ(22) <= \RZ[22]~output_o\;

ww_RZ(23) <= \RZ[23]~output_o\;

ww_RZ(24) <= \RZ[24]~output_o\;

ww_RZ(25) <= \RZ[25]~output_o\;

ww_RZ(26) <= \RZ[26]~output_o\;

ww_RZ(27) <= \RZ[27]~output_o\;

ww_RZ(28) <= \RZ[28]~output_o\;

ww_RZ(29) <= \RZ[29]~output_o\;

ww_RZ(30) <= \RZ[30]~output_o\;

ww_RZ(31) <= \RZ[31]~output_o\;

ww_FLAG_B(0) <= \FLAG_B[0]~output_o\;

ww_FLAG_B(1) <= \FLAG_B[1]~output_o\;

ww_FLAG_B(2) <= \FLAG_B[2]~output_o\;

ww_FLAG_B(3) <= \FLAG_B[3]~output_o\;

ww_FLAG_B(4) <= \FLAG_B[4]~output_o\;

ww_FLAG_B(5) <= \FLAG_B[5]~output_o\;

ww_FLAG_B(6) <= \FLAG_B[6]~output_o\;

ww_FLAG_B(7) <= \FLAG_B[7]~output_o\;
END structure;


