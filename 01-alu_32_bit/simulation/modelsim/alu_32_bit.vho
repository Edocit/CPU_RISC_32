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

-- DATE "07/05/2021 20:35:38"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_32_BIT IS
    PORT (
	en : IN std_logic;
	op_sel : IN std_logic_vector(4 DOWNTO 0);
	RA : IN std_logic_vector(31 DOWNTO 0);
	RB : IN std_logic_vector(31 DOWNTO 0);
	RZ : BUFFER std_logic_vector(31 DOWNTO 0);
	FLAG_B : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU_32_BIT;

-- Design Ports Information
-- RZ[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[8]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[13]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[14]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[16]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[18]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[19]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[20]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[21]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[23]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[24]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[25]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[26]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[27]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[28]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[29]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RZ[31]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_B[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[30]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[30]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[29]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[29]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[28]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[27]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[27]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[26]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[25]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[25]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[24]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[23]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[23]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[22]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[22]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[21]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[21]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[20]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[20]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[19]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[18]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[18]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[17]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[17]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[16]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[15]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[14]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[13]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[8]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[31]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[31]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_op_sel : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RZ : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FLAG_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RZ[31]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FLAG_B[1]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \op_sel[3]~input_o\ : std_logic;
SIGNAL \op_sel[2]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \op_sel[4]~input_o\ : std_logic;
SIGNAL \RZ[31]~0_combout\ : std_logic;
SIGNAL \RZ[31]~0clkctrl_outclk\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \RB[30]~input_o\ : std_logic;
SIGNAL \RA[30]~input_o\ : std_logic;
SIGNAL \RA[29]~input_o\ : std_logic;
SIGNAL \RB[29]~input_o\ : std_logic;
SIGNAL \RA[28]~input_o\ : std_logic;
SIGNAL \RB[28]~input_o\ : std_logic;
SIGNAL \RB[27]~input_o\ : std_logic;
SIGNAL \RA[27]~input_o\ : std_logic;
SIGNAL \RB[26]~input_o\ : std_logic;
SIGNAL \RA[26]~input_o\ : std_logic;
SIGNAL \RA[25]~input_o\ : std_logic;
SIGNAL \RB[25]~input_o\ : std_logic;
SIGNAL \RA[24]~input_o\ : std_logic;
SIGNAL \RB[24]~input_o\ : std_logic;
SIGNAL \RB[23]~input_o\ : std_logic;
SIGNAL \RA[23]~input_o\ : std_logic;
SIGNAL \RA[22]~input_o\ : std_logic;
SIGNAL \RB[22]~input_o\ : std_logic;
SIGNAL \RA[21]~input_o\ : std_logic;
SIGNAL \RB[21]~input_o\ : std_logic;
SIGNAL \RB[20]~input_o\ : std_logic;
SIGNAL \RA[20]~input_o\ : std_logic;
SIGNAL \RB[19]~input_o\ : std_logic;
SIGNAL \RA[19]~input_o\ : std_logic;
SIGNAL \RB[18]~input_o\ : std_logic;
SIGNAL \RA[18]~input_o\ : std_logic;
SIGNAL \RB[17]~input_o\ : std_logic;
SIGNAL \RA[17]~input_o\ : std_logic;
SIGNAL \RA[16]~input_o\ : std_logic;
SIGNAL \RB[16]~input_o\ : std_logic;
SIGNAL \RB[15]~input_o\ : std_logic;
SIGNAL \RA[15]~input_o\ : std_logic;
SIGNAL \RA[14]~input_o\ : std_logic;
SIGNAL \RB[14]~input_o\ : std_logic;
SIGNAL \RA[13]~input_o\ : std_logic;
SIGNAL \RB[13]~input_o\ : std_logic;
SIGNAL \RB[12]~input_o\ : std_logic;
SIGNAL \RA[12]~input_o\ : std_logic;
SIGNAL \RA[11]~input_o\ : std_logic;
SIGNAL \RB[11]~input_o\ : std_logic;
SIGNAL \RA[10]~input_o\ : std_logic;
SIGNAL \RB[10]~input_o\ : std_logic;
SIGNAL \RA[9]~input_o\ : std_logic;
SIGNAL \RB[9]~input_o\ : std_logic;
SIGNAL \RA[8]~input_o\ : std_logic;
SIGNAL \RB[8]~input_o\ : std_logic;
SIGNAL \RB[7]~input_o\ : std_logic;
SIGNAL \RA[7]~input_o\ : std_logic;
SIGNAL \RB[6]~input_o\ : std_logic;
SIGNAL \RA[6]~input_o\ : std_logic;
SIGNAL \RA[5]~input_o\ : std_logic;
SIGNAL \RB[5]~input_o\ : std_logic;
SIGNAL \RB[4]~input_o\ : std_logic;
SIGNAL \RA[4]~input_o\ : std_logic;
SIGNAL \RB[3]~input_o\ : std_logic;
SIGNAL \RA[3]~input_o\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~60_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~60_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \FLAG_B[1]~0_combout\ : std_logic;
SIGNAL \FLAG_B[1]~3_combout\ : std_logic;
SIGNAL \FLAG_B[1]~3clkctrl_outclk\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \RZ[0]$latch~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \RZ[1]$latch~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \RZ[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \RZ[3]$latch~combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \RZ[4]$latch~combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \RZ[5]$latch~combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \RZ[6]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \RZ[7]$latch~combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \RZ[8]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \RZ[9]$latch~combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \RZ[10]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \RZ[11]$latch~combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \RZ[12]$latch~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \RZ[13]$latch~combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \RZ[14]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \RZ[15]$latch~combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \RZ[16]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \RZ[17]$latch~combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \RZ[18]$latch~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \RZ[19]$latch~combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \RZ[20]$latch~combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \RZ[21]$latch~combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \RZ[22]$latch~combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \RZ[23]$latch~combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \RZ[24]$latch~combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \RZ[25]$latch~combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \RZ[26]$latch~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add0~109_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \RZ[27]$latch~combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~113_combout\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \RZ[28]$latch~combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \RZ~1_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~117_combout\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \RZ[29]$latch~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \RA[31]~input_o\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add0~121_combout\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \RZ[30]$latch~combout\ : std_logic;
SIGNAL \RB[31]~input_o\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \RZ[31]$latch~combout\ : std_logic;
SIGNAL \FLAG_B[0]~1_combout\ : std_logic;
SIGNAL \Add0~129_combout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add0~128_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \FLAG_B[0]$latch~combout\ : std_logic;
SIGNAL \FLAG_B[1]~2_combout\ : std_logic;
SIGNAL \FLAG_B[1]$latch~combout\ : std_logic;
SIGNAL sumsub_out : std_logic_vector(32 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_op_sel <= op_sel;
ww_RA <= RA;
ww_RB <= RB;
RZ <= ww_RZ;
FLAG_B <= ww_FLAG_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RZ[31]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RZ[31]~0_combout\);

\FLAG_B[1]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FLAG_B[1]~3_combout\);
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

-- Location: IOOBUF_X25_Y22_N16
\RZ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[0]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[0]~output_o\);

-- Location: IOOBUF_X30_Y30_N2
\RZ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[1]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[1]~output_o\);

-- Location: IOOBUF_X28_Y30_N2
\RZ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[2]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[2]~output_o\);

-- Location: IOOBUF_X48_Y30_N16
\RZ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[3]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[3]~output_o\);

-- Location: IOOBUF_X50_Y25_N9
\RZ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[4]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[4]~output_o\);

-- Location: IOOBUF_X46_Y30_N30
\RZ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[5]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[5]~output_o\);

-- Location: IOOBUF_X30_Y30_N23
\RZ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[6]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[6]~output_o\);

-- Location: IOOBUF_X50_Y21_N2
\RZ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[7]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[7]~output_o\);

-- Location: IOOBUF_X50_Y25_N23
\RZ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[8]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[8]~output_o\);

-- Location: IOOBUF_X46_Y30_N2
\RZ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[9]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[9]~output_o\);

-- Location: IOOBUF_X30_Y30_N16
\RZ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[10]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[10]~output_o\);

-- Location: IOOBUF_X28_Y30_N9
\RZ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[11]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[11]~output_o\);

-- Location: IOOBUF_X34_Y30_N16
\RZ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[12]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[12]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\RZ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[13]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[13]~output_o\);

-- Location: IOOBUF_X25_Y25_N16
\RZ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[14]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[14]~output_o\);

-- Location: IOOBUF_X50_Y20_N23
\RZ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[15]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[15]~output_o\);

-- Location: IOOBUF_X50_Y20_N9
\RZ[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[16]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[16]~output_o\);

-- Location: IOOBUF_X43_Y30_N23
\RZ[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[17]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[17]~output_o\);

-- Location: IOOBUF_X48_Y30_N30
\RZ[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[18]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[18]~output_o\);

-- Location: IOOBUF_X50_Y20_N2
\RZ[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[19]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[19]~output_o\);

-- Location: IOOBUF_X50_Y16_N9
\RZ[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[20]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[20]~output_o\);

-- Location: IOOBUF_X50_Y26_N9
\RZ[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[21]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[21]~output_o\);

-- Location: IOOBUF_X46_Y30_N23
\RZ[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[22]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[22]~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\RZ[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[23]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[23]~output_o\);

-- Location: IOOBUF_X28_Y30_N16
\RZ[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[24]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[24]~output_o\);

-- Location: IOOBUF_X50_Y20_N16
\RZ[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[25]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[25]~output_o\);

-- Location: IOOBUF_X50_Y19_N2
\RZ[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[26]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[26]~output_o\);

-- Location: IOOBUF_X25_Y25_N2
\RZ[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[27]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[27]~output_o\);

-- Location: IOOBUF_X25_Y25_N23
\RZ[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[28]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[28]~output_o\);

-- Location: IOOBUF_X32_Y30_N16
\RZ[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[29]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[29]~output_o\);

-- Location: IOOBUF_X32_Y30_N9
\RZ[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[30]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[30]~output_o\);

-- Location: IOOBUF_X50_Y22_N2
\RZ[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RZ[31]$latch~combout\,
	devoe => ww_devoe,
	o => \RZ[31]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\FLAG_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_B[0]$latch~combout\,
	devoe => ww_devoe,
	o => \FLAG_B[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\FLAG_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_B[1]$latch~combout\,
	devoe => ww_devoe,
	o => \FLAG_B[1]~output_o\);

-- Location: IOOBUF_X16_Y17_N30
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X6_Y0_N23
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

-- Location: IOOBUF_X6_Y0_N2
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

-- Location: IOOBUF_X50_Y16_N16
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

-- Location: IOOBUF_X19_Y17_N9
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

-- Location: IOIBUF_X38_Y0_N8
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

-- Location: IOIBUF_X30_Y0_N22
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

-- Location: IOIBUF_X30_Y0_N29
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

-- Location: IOIBUF_X38_Y0_N1
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

-- Location: LCCOMB_X30_Y2_N18
\RZ[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[31]~0_combout\ = (!\op_sel[3]~input_o\ & (\en~input_o\ & ((!\op_sel[4]~input_o\) # (!\op_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[3]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \en~input_o\,
	datad => \op_sel[4]~input_o\,
	combout => \RZ[31]~0_combout\);

-- Location: CLKCTRL_G17
\RZ[31]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RZ[31]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RZ[31]~0clkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N22
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

-- Location: IOIBUF_X38_Y0_N29
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

-- Location: IOIBUF_X34_Y0_N1
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

-- Location: IOIBUF_X50_Y18_N1
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

-- Location: LCCOMB_X30_Y2_N12
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\op_sel[1]~input_o\ & ((\RB[0]~input_o\ & (!\op_sel[0]~input_o\ & !\RA[0]~input_o\)) # (!\RB[0]~input_o\ & ((!\RA[0]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X38_Y0_N15
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

-- Location: LCCOMB_X30_Y2_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op_sel[1]~input_o\ & (\RA[1]~input_o\)) # (!\op_sel[1]~input_o\ & ((\RA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X39_Y25_N16
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

-- Location: LCCOMB_X30_Y2_N24
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op_sel[0]~input_o\ & (((\Add1~0_combout\) # (\op_sel[1]~input_o\)))) # (!\op_sel[0]~input_o\ & (\Mux0~0_combout\ $ (((\op_sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \op_sel[0]~input_o\,
	datac => \Add1~0_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X30_Y2_N20
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\op_sel[3]~input_o\ & ((!\Mux0~1_combout\) # (!\op_sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[2]~input_o\,
	datac => \op_sel[3]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X30_Y2_N4
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!\op_sel[4]~input_o\ & (\Mux0~2_combout\ & ((\op_sel[2]~input_o\) # (!\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \op_sel[4]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X50_Y22_N15
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

-- Location: IOIBUF_X50_Y22_N22
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

-- Location: IOIBUF_X50_Y24_N15
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

-- Location: IOIBUF_X25_Y24_N1
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

-- Location: IOIBUF_X50_Y24_N8
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

-- Location: IOIBUF_X38_Y30_N8
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

-- Location: IOIBUF_X25_Y24_N22
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

-- Location: IOIBUF_X50_Y25_N1
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

-- Location: IOIBUF_X50_Y18_N8
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

-- Location: IOIBUF_X50_Y24_N1
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

-- Location: IOIBUF_X50_Y19_N15
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

-- Location: IOIBUF_X50_Y22_N8
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

-- Location: IOIBUF_X50_Y19_N8
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

-- Location: IOIBUF_X38_Y30_N29
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

-- Location: IOIBUF_X25_Y23_N15
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

-- Location: IOIBUF_X50_Y26_N22
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

-- Location: IOIBUF_X50_Y24_N22
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

-- Location: IOIBUF_X46_Y30_N8
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

-- Location: IOIBUF_X50_Y26_N1
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

-- Location: IOIBUF_X50_Y21_N15
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

-- Location: IOIBUF_X50_Y21_N8
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

-- Location: IOIBUF_X50_Y25_N15
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

-- Location: IOIBUF_X48_Y30_N8
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

-- Location: IOIBUF_X46_Y30_N15
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

-- Location: IOIBUF_X41_Y30_N8
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

-- Location: IOIBUF_X48_Y30_N22
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

-- Location: IOIBUF_X41_Y30_N1
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

-- Location: IOIBUF_X50_Y21_N23
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

-- Location: IOIBUF_X48_Y30_N1
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

-- Location: IOIBUF_X50_Y18_N15
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

-- Location: IOIBUF_X25_Y25_N8
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

-- Location: IOIBUF_X25_Y23_N8
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

-- Location: IOIBUF_X50_Y19_N23
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

-- Location: IOIBUF_X25_Y24_N8
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

-- Location: IOIBUF_X36_Y30_N1
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

-- Location: IOIBUF_X32_Y30_N22
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

-- Location: IOIBUF_X34_Y30_N22
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

-- Location: IOIBUF_X30_Y30_N29
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

-- Location: IOIBUF_X36_Y30_N8
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

-- Location: IOIBUF_X30_Y30_N8
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

-- Location: IOIBUF_X36_Y30_N22
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

-- Location: IOIBUF_X36_Y30_N15
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

-- Location: IOIBUF_X43_Y30_N1
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

-- Location: IOIBUF_X36_Y30_N29
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

-- Location: IOIBUF_X32_Y30_N1
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

-- Location: IOIBUF_X43_Y30_N8
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

-- Location: IOIBUF_X38_Y30_N15
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

-- Location: IOIBUF_X43_Y30_N29
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

-- Location: IOIBUF_X38_Y30_N1
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

-- Location: IOIBUF_X43_Y30_N15
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

-- Location: IOIBUF_X41_Y30_N22
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

-- Location: IOIBUF_X38_Y30_N22
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

-- Location: IOIBUF_X50_Y26_N15
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

-- Location: IOIBUF_X41_Y30_N15
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

-- Location: IOIBUF_X41_Y30_N29
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

-- Location: IOIBUF_X34_Y30_N29
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

-- Location: IOIBUF_X34_Y30_N8
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

-- Location: IOIBUF_X32_Y30_N29
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

-- Location: IOIBUF_X34_Y30_N1
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

-- Location: LCCOMB_X38_Y27_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\RA[0]~input_o\ & !\RB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RB[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X38_Y27_N4
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\RB[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\RA[1]~input_o\))) # (!\RB[1]~input_o\ & (!\RA[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RA[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X38_Y27_N6
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\RA[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\RB[2]~input_o\))) # (!\RA[2]~input_o\ & (!\RB[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \RB[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X38_Y27_N8
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\RB[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\RA[3]~input_o\))) # (!\RB[3]~input_o\ & (!\RA[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[3]~input_o\,
	datab => \RA[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X38_Y27_N10
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\RB[4]~input_o\ & (\RA[4]~input_o\ & !\LessThan0~7_cout\)) # (!\RB[4]~input_o\ & ((\RA[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[4]~input_o\,
	datab => \RA[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X38_Y27_N12
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\RA[5]~input_o\ & (\RB[5]~input_o\ & !\LessThan0~9_cout\)) # (!\RA[5]~input_o\ & ((\RB[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~input_o\,
	datab => \RB[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X38_Y27_N14
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\RB[6]~input_o\ & (\RA[6]~input_o\ & !\LessThan0~11_cout\)) # (!\RB[6]~input_o\ & ((\RA[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[6]~input_o\,
	datab => \RA[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X38_Y27_N16
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\RB[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\RA[7]~input_o\))) # (!\RB[7]~input_o\ & (!\RA[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[7]~input_o\,
	datab => \RA[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X38_Y27_N18
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\RA[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\RB[8]~input_o\))) # (!\RA[8]~input_o\ & (!\RB[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[8]~input_o\,
	datab => \RB[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X38_Y27_N20
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\RA[9]~input_o\ & (\RB[9]~input_o\ & !\LessThan0~17_cout\)) # (!\RA[9]~input_o\ & ((\RB[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[9]~input_o\,
	datab => \RB[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X38_Y27_N22
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\RA[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\RB[10]~input_o\))) # (!\RA[10]~input_o\ & (!\RB[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[10]~input_o\,
	datab => \RB[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X38_Y27_N24
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\RA[11]~input_o\ & (\RB[11]~input_o\ & !\LessThan0~21_cout\)) # (!\RA[11]~input_o\ & ((\RB[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \RB[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X38_Y27_N26
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\RB[12]~input_o\ & (\RA[12]~input_o\ & !\LessThan0~23_cout\)) # (!\RB[12]~input_o\ & ((\RA[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[12]~input_o\,
	datab => \RA[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X38_Y27_N28
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\RA[13]~input_o\ & (\RB[13]~input_o\ & !\LessThan0~25_cout\)) # (!\RA[13]~input_o\ & ((\RB[13]~input_o\) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[13]~input_o\,
	datab => \RB[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X38_Y27_N30
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\RA[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\RB[14]~input_o\))) # (!\RA[14]~input_o\ & (!\RB[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[14]~input_o\,
	datab => \RB[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X38_Y26_N0
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\RB[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\RA[15]~input_o\))) # (!\RB[15]~input_o\ & (!\RA[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[15]~input_o\,
	datab => \RA[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X38_Y26_N2
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\RA[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\RB[16]~input_o\))) # (!\RA[16]~input_o\ & (!\RB[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[16]~input_o\,
	datab => \RB[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X38_Y26_N4
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\RB[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\RA[17]~input_o\))) # (!\RB[17]~input_o\ & (!\RA[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datab => \RA[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X38_Y26_N6
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\RB[18]~input_o\ & (\RA[18]~input_o\ & !\LessThan0~35_cout\)) # (!\RB[18]~input_o\ & ((\RA[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[18]~input_o\,
	datab => \RA[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X38_Y26_N8
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\RB[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\RA[19]~input_o\))) # (!\RB[19]~input_o\ & (!\RA[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[19]~input_o\,
	datab => \RA[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X38_Y26_N10
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\RB[20]~input_o\ & (\RA[20]~input_o\ & !\LessThan0~39_cout\)) # (!\RB[20]~input_o\ & ((\RA[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[20]~input_o\,
	datab => \RA[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X38_Y26_N12
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\RA[21]~input_o\ & (\RB[21]~input_o\ & !\LessThan0~41_cout\)) # (!\RA[21]~input_o\ & ((\RB[21]~input_o\) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \RB[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X38_Y26_N14
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\RA[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\RB[22]~input_o\))) # (!\RA[22]~input_o\ & (!\RB[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[22]~input_o\,
	datab => \RB[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X38_Y26_N16
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\RB[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\RA[23]~input_o\))) # (!\RB[23]~input_o\ & (!\RA[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[23]~input_o\,
	datab => \RA[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X38_Y26_N18
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\RA[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\RB[24]~input_o\))) # (!\RA[24]~input_o\ & (!\RB[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[24]~input_o\,
	datab => \RB[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X38_Y26_N20
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\RA[25]~input_o\ & (\RB[25]~input_o\ & !\LessThan0~49_cout\)) # (!\RA[25]~input_o\ & ((\RB[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \RB[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X38_Y26_N22
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\RB[26]~input_o\ & (\RA[26]~input_o\ & !\LessThan0~51_cout\)) # (!\RB[26]~input_o\ & ((\RA[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datab => \RA[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X38_Y26_N24
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\RB[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\RA[27]~input_o\))) # (!\RB[27]~input_o\ & (!\RA[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[27]~input_o\,
	datab => \RA[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X38_Y26_N26
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\RA[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\RB[28]~input_o\))) # (!\RA[28]~input_o\ & (!\RB[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[28]~input_o\,
	datab => \RB[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X38_Y26_N28
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\RA[29]~input_o\ & (\RB[29]~input_o\ & !\LessThan0~57_cout\)) # (!\RA[29]~input_o\ & ((\RB[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[29]~input_o\,
	datab => \RB[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X38_Y26_N30
\LessThan0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~60_combout\ = (\RB[30]~input_o\ & (!\LessThan0~59_cout\ & \RA[30]~input_o\)) # (!\RB[30]~input_o\ & ((\RA[30]~input_o\) # (!\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[30]~input_o\,
	datad => \RA[30]~input_o\,
	cin => \LessThan0~59_cout\,
	combout => \LessThan0~60_combout\);

-- Location: LCCOMB_X39_Y27_N2
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\RA[0]~input_o\ & \RB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RB[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X39_Y27_N4
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\RB[1]~input_o\ & (\RA[1]~input_o\ & !\LessThan1~1_cout\)) # (!\RB[1]~input_o\ & ((\RA[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RA[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X39_Y27_N6
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\RA[2]~input_o\ & (\RB[2]~input_o\ & !\LessThan1~3_cout\)) # (!\RA[2]~input_o\ & ((\RB[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \RB[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X39_Y27_N8
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\RB[3]~input_o\ & (\RA[3]~input_o\ & !\LessThan1~5_cout\)) # (!\RB[3]~input_o\ & ((\RA[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[3]~input_o\,
	datab => \RA[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X39_Y27_N10
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\RA[4]~input_o\ & (\RB[4]~input_o\ & !\LessThan1~7_cout\)) # (!\RA[4]~input_o\ & ((\RB[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \RB[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X39_Y27_N12
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\RA[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\RB[5]~input_o\))) # (!\RA[5]~input_o\ & (!\RB[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~input_o\,
	datab => \RB[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X39_Y27_N14
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\RB[6]~input_o\ & ((!\LessThan1~11_cout\) # (!\RA[6]~input_o\))) # (!\RB[6]~input_o\ & (!\RA[6]~input_o\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[6]~input_o\,
	datab => \RA[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X39_Y27_N16
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\RA[7]~input_o\ & ((!\LessThan1~13_cout\) # (!\RB[7]~input_o\))) # (!\RA[7]~input_o\ & (!\RB[7]~input_o\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~input_o\,
	datab => \RB[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X39_Y27_N18
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\RB[8]~input_o\ & ((!\LessThan1~15_cout\) # (!\RA[8]~input_o\))) # (!\RB[8]~input_o\ & (!\RA[8]~input_o\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[8]~input_o\,
	datab => \RA[8]~input_o\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X39_Y27_N20
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\RB[9]~input_o\ & (\RA[9]~input_o\ & !\LessThan1~17_cout\)) # (!\RB[9]~input_o\ & ((\RA[9]~input_o\) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[9]~input_o\,
	datab => \RA[9]~input_o\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X39_Y27_N22
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\RB[10]~input_o\ & ((!\LessThan1~19_cout\) # (!\RA[10]~input_o\))) # (!\RB[10]~input_o\ & (!\RA[10]~input_o\ & !\LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[10]~input_o\,
	datab => \RA[10]~input_o\,
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X39_Y27_N24
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\RB[11]~input_o\ & (\RA[11]~input_o\ & !\LessThan1~21_cout\)) # (!\RB[11]~input_o\ & ((\RA[11]~input_o\) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[11]~input_o\,
	datab => \RA[11]~input_o\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X39_Y27_N26
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\RB[12]~input_o\ & ((!\LessThan1~23_cout\) # (!\RA[12]~input_o\))) # (!\RB[12]~input_o\ & (!\RA[12]~input_o\ & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[12]~input_o\,
	datab => \RA[12]~input_o\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X39_Y27_N28
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\RB[13]~input_o\ & (\RA[13]~input_o\ & !\LessThan1~25_cout\)) # (!\RB[13]~input_o\ & ((\RA[13]~input_o\) # (!\LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[13]~input_o\,
	datab => \RA[13]~input_o\,
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X39_Y27_N30
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\RB[14]~input_o\ & ((!\LessThan1~27_cout\) # (!\RA[14]~input_o\))) # (!\RB[14]~input_o\ & (!\RA[14]~input_o\ & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[14]~input_o\,
	datab => \RA[14]~input_o\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X39_Y26_N0
\LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\RB[15]~input_o\ & (\RA[15]~input_o\ & !\LessThan1~29_cout\)) # (!\RB[15]~input_o\ & ((\RA[15]~input_o\) # (!\LessThan1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[15]~input_o\,
	datab => \RA[15]~input_o\,
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X39_Y26_N2
\LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\RB[16]~input_o\ & ((!\LessThan1~31_cout\) # (!\RA[16]~input_o\))) # (!\RB[16]~input_o\ & (!\RA[16]~input_o\ & !\LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[16]~input_o\,
	datab => \RA[16]~input_o\,
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X39_Y26_N4
\LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\RB[17]~input_o\ & (\RA[17]~input_o\ & !\LessThan1~33_cout\)) # (!\RB[17]~input_o\ & ((\RA[17]~input_o\) # (!\LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datab => \RA[17]~input_o\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X39_Y26_N6
\LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\RA[18]~input_o\ & (\RB[18]~input_o\ & !\LessThan1~35_cout\)) # (!\RA[18]~input_o\ & ((\RB[18]~input_o\) # (!\LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[18]~input_o\,
	datab => \RB[18]~input_o\,
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X39_Y26_N8
\LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\RB[19]~input_o\ & (\RA[19]~input_o\ & !\LessThan1~37_cout\)) # (!\RB[19]~input_o\ & ((\RA[19]~input_o\) # (!\LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[19]~input_o\,
	datab => \RA[19]~input_o\,
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X39_Y26_N10
\LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\RB[20]~input_o\ & ((!\LessThan1~39_cout\) # (!\RA[20]~input_o\))) # (!\RB[20]~input_o\ & (!\RA[20]~input_o\ & !\LessThan1~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[20]~input_o\,
	datab => \RA[20]~input_o\,
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X39_Y26_N12
\LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\RA[21]~input_o\ & ((!\LessThan1~41_cout\) # (!\RB[21]~input_o\))) # (!\RA[21]~input_o\ & (!\RB[21]~input_o\ & !\LessThan1~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[21]~input_o\,
	datab => \RB[21]~input_o\,
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X39_Y26_N14
\LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\RB[22]~input_o\ & ((!\LessThan1~43_cout\) # (!\RA[22]~input_o\))) # (!\RB[22]~input_o\ & (!\RA[22]~input_o\ & !\LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[22]~input_o\,
	datab => \RA[22]~input_o\,
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X39_Y26_N16
\LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\RB[23]~input_o\ & (\RA[23]~input_o\ & !\LessThan1~45_cout\)) # (!\RB[23]~input_o\ & ((\RA[23]~input_o\) # (!\LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[23]~input_o\,
	datab => \RA[23]~input_o\,
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X39_Y26_N18
\LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\RB[24]~input_o\ & ((!\LessThan1~47_cout\) # (!\RA[24]~input_o\))) # (!\RB[24]~input_o\ & (!\RA[24]~input_o\ & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \RA[24]~input_o\,
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X39_Y26_N20
\LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\RA[25]~input_o\ & ((!\LessThan1~49_cout\) # (!\RB[25]~input_o\))) # (!\RA[25]~input_o\ & (!\RB[25]~input_o\ & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[25]~input_o\,
	datab => \RB[25]~input_o\,
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X39_Y26_N22
\LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\RB[26]~input_o\ & ((!\LessThan1~51_cout\) # (!\RA[26]~input_o\))) # (!\RB[26]~input_o\ & (!\RA[26]~input_o\ & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[26]~input_o\,
	datab => \RA[26]~input_o\,
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X39_Y26_N24
\LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\RA[27]~input_o\ & ((!\LessThan1~53_cout\) # (!\RB[27]~input_o\))) # (!\RA[27]~input_o\ & (!\RB[27]~input_o\ & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[27]~input_o\,
	datab => \RB[27]~input_o\,
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X39_Y26_N26
\LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\RB[28]~input_o\ & ((!\LessThan1~55_cout\) # (!\RA[28]~input_o\))) # (!\RB[28]~input_o\ & (!\RA[28]~input_o\ & !\LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[28]~input_o\,
	datab => \RA[28]~input_o\,
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X39_Y26_N28
\LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\RB[29]~input_o\ & (\RA[29]~input_o\ & !\LessThan1~57_cout\)) # (!\RB[29]~input_o\ & ((\RA[29]~input_o\) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[29]~input_o\,
	datab => \RA[29]~input_o\,
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X39_Y26_N30
\LessThan1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~60_combout\ = (\RA[30]~input_o\ & (!\LessThan1~59_cout\ & \RB[30]~input_o\)) # (!\RA[30]~input_o\ & ((\RB[30]~input_o\) # (!\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[30]~input_o\,
	datad => \RB[30]~input_o\,
	cin => \LessThan1~59_cout\,
	combout => \LessThan1~60_combout\);

-- Location: LCCOMB_X38_Y22_N14
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\LessThan0~60_combout\ & ((\LessThan1~60_combout\ & (!\op_sel[0]~input_o\)) # (!\LessThan1~60_combout\ & ((!\op_sel[1]~input_o\))))) # (!\LessThan0~60_combout\ & ((\LessThan1~60_combout\ & ((\op_sel[1]~input_o\))) # 
-- (!\LessThan1~60_combout\ & (\op_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~60_combout\,
	datab => \LessThan1~60_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X38_Y22_N20
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!\op_sel[3]~input_o\ & \op_sel[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[3]~input_o\,
	datac => \op_sel[4]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X38_Y19_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\RA[0]~input_o\) # (\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X37_Y29_N16
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\op_sel[0]~input_o\ & (\Add1~0_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \Add1~0_combout\,
	datac => \RB[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X38_Y25_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & (\Add0~1_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add0~1_combout\ & VCC))
-- \Add0~3\ = CARRY((\Add0~0_combout\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y2_N8
\FLAG_B[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[1]~0_combout\ = (!\op_sel[3]~input_o\ & (!\op_sel[4]~input_o\ & (!\op_sel[2]~input_o\ & !\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[3]~input_o\,
	datab => \op_sel[4]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \FLAG_B[1]~0_combout\);

-- Location: LCCOMB_X30_Y2_N26
\FLAG_B[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[1]~3_combout\ = (\FLAG_B[1]~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FLAG_B[1]~0_combout\,
	datac => \en~input_o\,
	combout => \FLAG_B[1]~3_combout\);

-- Location: CLKCTRL_G18
\FLAG_B[1]~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FLAG_B[1]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FLAG_B[1]~3clkctrl_outclk\);

-- Location: LCCOMB_X38_Y22_N24
\sumsub_out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(0) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => sumsub_out(0),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(0));

-- Location: LCCOMB_X38_Y22_N0
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & ((\Mux0~5_combout\) # ((\Mux0~4_combout\ & sumsub_out(0))))) # (!\Mux0~6_combout\ & (((\Mux0~4_combout\ & sumsub_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux0~4_combout\,
	datad => sumsub_out(0),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X38_Y22_N6
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\op_sel[2]~input_o\ & (\Mux0~4_combout\)) # (!\op_sel[2]~input_o\ & ((\Mux0~7_combout\) # ((\Mux0~4_combout\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X38_Y22_N28
\RZ[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[0]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux0~8_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[0]$latch~combout\,
	datac => \RZ[31]~0clkctrl_outclk\,
	datad => \Mux0~8_combout\,
	combout => \RZ[0]$latch~combout\);

-- Location: LCCOMB_X38_Y22_N4
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\op_sel[2]~input_o\ & \op_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X41_Y25_N24
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\op_sel[2]~input_o\) # ((\op_sel[0]~input_o\ & \op_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y2_N28
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\RA[1]~input_o\ & (\FLAG_B[1]~0_combout\ & !\op_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datac => \FLAG_B[1]~0_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X39_Y25_N18
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\RB[1]~input_o\ & ((\RA[1]~input_o\ & (!\Add1~1\)) # (!\RA[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\RB[1]~input_o\ & ((\RA[1]~input_o\ & (\Add1~1\ & VCC)) # (!\RA[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\RB[1]~input_o\ & ((!\Add1~1\) # (!\RA[1]~input_o\))) # (!\RB[1]~input_o\ & (!\RA[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RA[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X39_Y25_N12
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\op_sel[0]~input_o\ & ((\Add1~2_combout\))) # (!\op_sel[0]~input_o\ & (\RB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[1]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X38_Y25_N18
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~4_combout\ & ((\Add0~5_combout\ & (\Add0~3\ & VCC)) # (!\Add0~5_combout\ & (!\Add0~3\)))) # (!\Add0~4_combout\ & ((\Add0~5_combout\ & (!\Add0~3\)) # (!\Add0~5_combout\ & ((\Add0~3\) # (GND)))))
-- \Add0~7\ = CARRY((\Add0~4_combout\ & (!\Add0~5_combout\ & !\Add0~3\)) # (!\Add0~4_combout\ & ((!\Add0~3\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X35_Y28_N30
\sumsub_out[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(1) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~6_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => sumsub_out(1),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(1));

-- Location: LCCOMB_X35_Y28_N24
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\RB[1]~input_o\ & \RA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[1]~input_o\,
	datac => \RA[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X35_Y28_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[1]~input_o\ $ (((\RB[1]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux1~0_combout\ & ((\RA[2]~input_o\))) # (!\Mux1~0_combout\ & (\RA[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[2]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X35_Y28_N20
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux3~1_combout\ & ((\RA[1]~input_o\) # ((\RB[1]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X35_Y28_N22
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux1~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X35_Y28_N18
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~3_combout\ & (((\Mux1~4_combout\) # (\Mux3~0_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X35_Y28_N8
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => sumsub_out(1),
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X35_Y28_N0
\RZ[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[1]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux1~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[1]$latch~combout\,
	datac => \Mux1~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[1]$latch~combout\);

-- Location: LCCOMB_X35_Y28_N14
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux3~0_combout\ & ((\RB[2]~input_o\ & ((\Mux3~1_combout\) # (!\RA[2]~input_o\))) # (!\RB[2]~input_o\ & ((\RA[2]~input_o\))))) # (!\Mux3~0_combout\ & (((\RB[2]~input_o\ & \RA[2]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[2]~input_o\,
	datac => \RA[2]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X35_Y28_N16
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & ((\Mux2~2_combout\))) # (!\op_sel[0]~input_o\ & (!\RA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X35_Y28_N26
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\ & (((\RA[3]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux2~3_combout\ & (\RA[1]~input_o\ & (\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \Mux2~3_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[3]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X35_Y28_N2
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux2~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X35_Y28_N28
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~7_combout\ & ((\Mux2~4_combout\) # ((\Mux3~1_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X39_Y25_N20
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\RA[2]~input_o\ $ (\RB[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\RA[2]~input_o\ & ((!\Add1~3\) # (!\RB[2]~input_o\))) # (!\RA[2]~input_o\ & (!\RB[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \RB[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X39_Y25_N6
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\op_sel[0]~input_o\ & ((\Add1~4_combout\))) # (!\op_sel[0]~input_o\ & (\RB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[2]~input_o\,
	datad => \Add1~4_combout\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X36_Y26_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (!\op_sel[0]~input_o\ & \RA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X38_Y25_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = ((\Add0~9_combout\ $ (\Add0~8_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~11\ = CARRY((\Add0~9_combout\ & ((\Add0~8_combout\) # (!\Add0~7\))) # (!\Add0~9_combout\ & (\Add0~8_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X34_Y28_N28
\sumsub_out[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(2) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~10_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(2),
	combout => sumsub_out(2));

-- Location: LCCOMB_X34_Y28_N4
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux2~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(2),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X34_Y28_N30
\RZ[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[2]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux2~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[2]$latch~combout\,
	datac => \Mux2~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[2]$latch~combout\);

-- Location: LCCOMB_X41_Y26_N24
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[3]~input_o\ $ (((\RB[3]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[3]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[3]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X41_Y26_N6
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\RA[4]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux3~2_combout\ & (((\RA[2]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \RA[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X41_Y26_N4
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~1_combout\ & ((\RB[3]~input_o\) # ((\RA[3]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[3]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \RA[3]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X41_Y26_N26
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!\op_sel[4]~input_o\ & ((\Mux3~4_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X41_Y26_N20
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\RA[3]~input_o\ & \RB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[3]~input_o\,
	datad => \RB[3]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X41_Y26_N30
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~5_combout\ & (((\Mux3~0_combout\) # (\Mux3~6_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X39_Y25_N22
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\RB[3]~input_o\ & ((\RA[3]~input_o\ & (!\Add1~5\)) # (!\RA[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\RB[3]~input_o\ & ((\RA[3]~input_o\ & (\Add1~5\ & VCC)) # (!\RA[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\RB[3]~input_o\ & ((!\Add1~5\) # (!\RA[3]~input_o\))) # (!\RB[3]~input_o\ & (!\RA[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[3]~input_o\,
	datab => \RA[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X39_Y25_N4
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\op_sel[0]~input_o\ & (\Add1~6_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \Add1~6_combout\,
	datad => \RB[3]~input_o\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X41_Y26_N28
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\RA[3]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[3]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X38_Y25_N22
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13_combout\ & ((\Add0~12_combout\ & (\Add0~11\ & VCC)) # (!\Add0~12_combout\ & (!\Add0~11\)))) # (!\Add0~13_combout\ & ((\Add0~12_combout\ & (!\Add0~11\)) # (!\Add0~12_combout\ & ((\Add0~11\) # (GND)))))
-- \Add0~15\ = CARRY((\Add0~13_combout\ & (!\Add0~12_combout\ & !\Add0~11\)) # (!\Add0~13_combout\ & ((!\Add0~11\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X41_Y26_N22
\sumsub_out[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(3) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~14_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => sumsub_out(3),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(3));

-- Location: LCCOMB_X41_Y26_N8
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & ((\Mux3~0_combout\) # ((sumsub_out(3)) # (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux3~0_combout\,
	datac => sumsub_out(3),
	datad => \Mux3~1_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X41_Y26_N16
\RZ[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[3]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux3~8_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[3]$latch~combout\,
	datac => \Mux3~8_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[3]$latch~combout\);

-- Location: LCCOMB_X41_Y26_N18
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux3~0_combout\ & ((\RA[4]~input_o\ & ((\Mux3~1_combout\) # (!\RB[4]~input_o\))) # (!\RA[4]~input_o\ & ((\RB[4]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[4]~input_o\ & \RB[4]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \RB[4]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X41_Y26_N14
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (!\op_sel[4]~input_o\ & ((\op_sel[2]~input_o\) # ((\Mux4~2_combout\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[2]~input_o\,
	datab => \Mux4~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X41_Y26_N12
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\op_sel[0]~input_o\ & (((\Mux4~2_combout\ & !\op_sel[1]~input_o\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\)) # (!\RA[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \Mux4~2_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X41_Y26_N10
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & (((\RA[5]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux4~3_combout\ & (\RA[3]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \RA[3]~input_o\,
	datac => \RA[5]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X38_Y25_N8
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~7_combout\ & (((\Mux3~1_combout\) # (\Mux4~4_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X39_Y25_N2
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (!\op_sel[0]~input_o\ & \RA[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datad => \RA[4]~input_o\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X39_Y25_N24
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

-- Location: LCCOMB_X39_Y25_N0
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\op_sel[0]~input_o\ & (\Add1~8_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[4]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X38_Y25_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~16_combout\ $ (\Add0~17_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~16_combout\ & ((\Add0~17_combout\) # (!\Add0~15\))) # (!\Add0~16_combout\ & (\Add0~17_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X38_Y25_N12
\sumsub_out[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(4) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~18_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => sumsub_out(4),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(4));

-- Location: LCCOMB_X38_Y25_N14
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(4),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X38_Y25_N0
\RZ[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[4]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux4~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[4]$latch~combout\,
	datac => \Mux4~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[4]$latch~combout\);

-- Location: LCCOMB_X41_Y25_N10
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\RB[5]~input_o\ & \RA[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[5]~input_o\,
	datad => \RA[5]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X41_Y25_N18
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[5]~input_o\ $ (((\RB[5]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RB[5]~input_o\,
	datac => \RA[5]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X41_Y25_N0
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\RA[6]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux5~0_combout\ & (\RA[4]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[4]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \RA[6]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X41_Y25_N6
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux3~1_combout\ & ((\RA[5]~input_o\) # ((\RB[5]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \RB[5]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X41_Y25_N28
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux5~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X41_Y25_N16
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X41_Y25_N14
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (!\op_sel[0]~input_o\ & \RA[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datad => \RA[5]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X39_Y25_N26
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\RA[5]~input_o\ & ((\RB[5]~input_o\ & (!\Add1~9\)) # (!\RB[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\RA[5]~input_o\ & ((\RB[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\RB[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\RA[5]~input_o\ & (\RB[5]~input_o\ & !\Add1~9\)) # (!\RA[5]~input_o\ & ((\RB[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~input_o\,
	datab => \RB[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X41_Y25_N12
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\op_sel[0]~input_o\ & ((\Add1~10_combout\))) # (!\op_sel[0]~input_o\ & (\RB[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[5]~input_o\,
	datac => \Add1~10_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X38_Y25_N26
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~20_combout\ & ((\Add0~21_combout\ & (\Add0~19\ & VCC)) # (!\Add0~21_combout\ & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\Add0~21_combout\ & (!\Add0~19\)) # (!\Add0~21_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~23\ = CARRY((\Add0~20_combout\ & (!\Add0~21_combout\ & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X42_Y26_N24
\sumsub_out[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(5) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~22_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(5),
	combout => sumsub_out(5));

-- Location: LCCOMB_X42_Y26_N4
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux5~5_combout\,
	datad => sumsub_out(5),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X42_Y26_N18
\RZ[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[5]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux5~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[5]$latch~combout\,
	datac => \Mux5~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[5]$latch~combout\);

-- Location: LCCOMB_X41_Y25_N2
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux3~0_combout\ & ((\RB[6]~input_o\ & ((\Mux3~1_combout\) # (!\RA[6]~input_o\))) # (!\RB[6]~input_o\ & ((\RA[6]~input_o\))))) # (!\Mux3~0_combout\ & (((\RB[6]~input_o\ & \RA[6]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[6]~input_o\,
	datac => \RA[6]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X41_Y25_N4
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & (\Mux6~2_combout\)) # (!\op_sel[0]~input_o\ & ((!\RA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \RA[6]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X41_Y25_N26
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux6~3_combout\ & ((\RA[7]~input_o\))) # (!\Mux6~3_combout\ & (\RA[5]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[5]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \RA[7]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X41_Y25_N8
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux6~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X41_Y25_N20
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~7_combout\ & ((\Mux6~4_combout\) # ((\Mux3~1_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux6~7_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X38_Y25_N10
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (!\op_sel[0]~input_o\ & \RA[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[6]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X39_Y25_N28
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

-- Location: LCCOMB_X39_Y25_N14
\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\op_sel[0]~input_o\ & ((\Add1~12_combout\))) # (!\op_sel[0]~input_o\ & (\RB[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[6]~input_o\,
	datab => \op_sel[0]~input_o\,
	datad => \Add1~12_combout\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X38_Y25_N28
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = ((\Add0~24_combout\ $ (\Add0~25_combout\ $ (!\Add0~23\)))) # (GND)
-- \Add0~27\ = CARRY((\Add0~24_combout\ & ((\Add0~25_combout\) # (!\Add0~23\))) # (!\Add0~24_combout\ & (\Add0~25_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~25_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X38_Y25_N6
\sumsub_out[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(6) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((\Add0~26_combout\))) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (sumsub_out(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumsub_out(6),
	datab => \Add0~26_combout\,
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(6));

-- Location: LCCOMB_X38_Y25_N4
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(6),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X38_Y25_N2
\RZ[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[6]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux6~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[6]$latch~combout\,
	datac => \Mux6~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[6]$latch~combout\);

-- Location: LCCOMB_X42_Y25_N12
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[7]~input_o\ $ (((\RB[7]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~input_o\,
	datab => \RB[7]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X42_Y25_N30
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\RA[8]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux7~0_combout\ & (\RA[6]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \RA[6]~input_o\,
	datac => \RA[8]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X42_Y25_N8
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux3~1_combout\ & (((\RB[7]~input_o\) # (\RA[7]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \RB[7]~input_o\,
	datac => \RA[7]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X42_Y25_N26
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux7~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X42_Y25_N16
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\RA[7]~input_o\ & \RB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~input_o\,
	datac => \RB[7]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X42_Y25_N6
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~3_combout\ & ((\Mux7~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~4_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X41_Y25_N30
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (!\op_sel[0]~input_o\ & \RA[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datad => \RA[7]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X39_Y25_N30
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

-- Location: LCCOMB_X39_Y25_N8
\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\op_sel[0]~input_o\ & (\Add1~14_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \RB[7]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X38_Y25_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~28_combout\ & ((\Add0~29_combout\ & (\Add0~27\ & VCC)) # (!\Add0~29_combout\ & (!\Add0~27\)))) # (!\Add0~28_combout\ & ((\Add0~29_combout\ & (!\Add0~27\)) # (!\Add0~29_combout\ & ((\Add0~27\) # (GND)))))
-- \Add0~31\ = CARRY((\Add0~28_combout\ & (!\Add0~29_combout\ & !\Add0~27\)) # (!\Add0~28_combout\ & ((!\Add0~27\) # (!\Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X42_Y25_N18
\sumsub_out[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(7) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~30_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => sumsub_out(7),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(7));

-- Location: LCCOMB_X42_Y25_N4
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux7~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(7),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X42_Y25_N20
\RZ[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[7]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux7~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[7]$latch~combout\,
	datac => \Mux7~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[7]$latch~combout\);

-- Location: LCCOMB_X42_Y25_N14
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux3~0_combout\ & ((\RA[8]~input_o\ & ((\Mux3~1_combout\) # (!\RB[8]~input_o\))) # (!\RA[8]~input_o\ & ((\RB[8]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[8]~input_o\ & \RB[8]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[8]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \RB[8]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X42_Y25_N24
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\op_sel[0]~input_o\ & (\Mux8~2_combout\ & ((!\op_sel[1]~input_o\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\) # (!\RA[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \Mux8~2_combout\,
	datac => \RA[8]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X42_Y25_N22
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & ((\RA[9]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux8~3_combout\ & (((\RA[7]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[9]~input_o\,
	datab => \Mux8~3_combout\,
	datac => \RA[7]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X42_Y25_N2
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux8~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux8~2_combout\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X42_Y25_N28
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~7_combout\ & (((\Mux3~1_combout\) # (\Mux8~4_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux8~4_combout\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X36_Y26_N6
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (!\op_sel[0]~input_o\ & \RA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[8]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X39_Y24_N0
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

-- Location: LCCOMB_X39_Y27_N0
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\op_sel[0]~input_o\ & (\Add1~16_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[8]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X38_Y24_N0
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = ((\Add0~32_combout\ $ (\Add0~33_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~35\ = CARRY((\Add0~32_combout\ & ((\Add0~33_combout\) # (!\Add0~31\))) # (!\Add0~32_combout\ & (\Add0~33_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X43_Y25_N28
\sumsub_out[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(8) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~34_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(8),
	combout => sumsub_out(8));

-- Location: LCCOMB_X43_Y25_N4
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(8),
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X43_Y25_N30
\RZ[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[8]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux8~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[8]$latch~combout\,
	datac => \Mux8~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[8]$latch~combout\);

-- Location: LCCOMB_X39_Y29_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[9]~input_o\ $ (((\RB[9]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[9]~input_o\,
	datab => \RB[9]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X39_Y29_N26
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\RA[10]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux9~0_combout\ & (\RA[8]~input_o\ & (\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[8]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[10]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X39_Y29_N20
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux3~1_combout\ & ((\RB[9]~input_o\) # ((\RA[9]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[9]~input_o\,
	datac => \Mux9~1_combout\,
	datad => \RA[9]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X39_Y29_N6
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux9~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X39_Y29_N16
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\RB[9]~input_o\ & \RA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RB[9]~input_o\,
	datad => \RA[9]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X39_Y29_N10
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~3_combout\ & ((\Mux9~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux9~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X39_Y24_N2
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\RA[9]~input_o\ & ((\RB[9]~input_o\ & (!\Add1~17\)) # (!\RB[9]~input_o\ & (\Add1~17\ & VCC)))) # (!\RA[9]~input_o\ & ((\RB[9]~input_o\ & ((\Add1~17\) # (GND))) # (!\RB[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\RA[9]~input_o\ & (\RB[9]~input_o\ & !\Add1~17\)) # (!\RA[9]~input_o\ & ((\RB[9]~input_o\) # (!\Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[9]~input_o\,
	datab => \RB[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X37_Y24_N4
\Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\op_sel[0]~input_o\ & (\Add1~18_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[9]~input_o\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X38_Y27_N0
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (!\op_sel[0]~input_o\ & \RA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[9]~input_o\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X38_Y24_N2
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~37_combout\ & ((\Add0~36_combout\ & (\Add0~35\ & VCC)) # (!\Add0~36_combout\ & (!\Add0~35\)))) # (!\Add0~37_combout\ & ((\Add0~36_combout\ & (!\Add0~35\)) # (!\Add0~36_combout\ & ((\Add0~35\) # (GND)))))
-- \Add0~39\ = CARRY((\Add0~37_combout\ & (!\Add0~36_combout\ & !\Add0~35\)) # (!\Add0~37_combout\ & ((!\Add0~35\) # (!\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X39_Y29_N30
\sumsub_out[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(9) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~38_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => sumsub_out(9),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(9));

-- Location: LCCOMB_X39_Y29_N4
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & ((\Mux3~0_combout\) # ((sumsub_out(9)) # (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux3~0_combout\,
	datac => sumsub_out(9),
	datad => \Mux3~1_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X39_Y29_N8
\RZ[9]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[9]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux9~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[9]$latch~combout\,
	datac => \Mux9~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[9]$latch~combout\);

-- Location: LCCOMB_X39_Y29_N18
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux3~0_combout\ & ((\RB[10]~input_o\ & ((\Mux3~1_combout\) # (!\RA[10]~input_o\))) # (!\RB[10]~input_o\ & ((\RA[10]~input_o\))))) # (!\Mux3~0_combout\ & (((\RB[10]~input_o\ & \RA[10]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[10]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \RA[10]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X39_Y29_N22
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux10~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux10~2_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X39_Y29_N12
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\op_sel[0]~input_o\ & (((!\op_sel[1]~input_o\ & \Mux10~2_combout\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\)) # (!\RA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[10]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X39_Y29_N14
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & ((\RA[11]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux10~3_combout\ & (((\op_sel[1]~input_o\ & \RA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \RA[11]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[9]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X39_Y29_N28
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~7_combout\ & ((\Mux3~1_combout\) # ((\Mux10~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X39_Y24_N4
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\RA[10]~input_o\ $ (\RB[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\RA[10]~input_o\ & ((!\Add1~19\) # (!\RB[10]~input_o\))) # (!\RA[10]~input_o\ & (!\RB[10]~input_o\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[10]~input_o\,
	datab => \RB[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X36_Y26_N20
\Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\op_sel[0]~input_o\ & ((\Add1~20_combout\))) # (!\op_sel[0]~input_o\ & (\RB[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[10]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~20_combout\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X37_Y24_N30
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (!\op_sel[0]~input_o\ & \RA[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[10]~input_o\,
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X38_Y24_N4
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Add0~41_combout\ $ (\Add0~40_combout\ $ (!\Add0~39\)))) # (GND)
-- \Add0~43\ = CARRY((\Add0~41_combout\ & ((\Add0~40_combout\) # (!\Add0~39\))) # (!\Add0~41_combout\ & (\Add0~40_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X38_Y29_N24
\sumsub_out[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(10) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~42_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(10),
	combout => sumsub_out(10));

-- Location: LCCOMB_X38_Y29_N4
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux10~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(10),
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X38_Y29_N22
\RZ[10]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[10]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux10~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[10]$latch~combout\,
	datac => \Mux10~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[10]$latch~combout\);

-- Location: LCCOMB_X36_Y29_N28
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[11]~input_o\ $ (((\RB[11]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[11]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X36_Y29_N2
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\RA[12]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux11~0_combout\ & (\RA[10]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[10]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \RA[12]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X36_Y29_N8
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux3~1_combout\ & ((\RB[11]~input_o\) # ((\RA[11]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[11]~input_o\,
	datac => \RA[11]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X35_Y29_N24
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux11~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X36_Y29_N30
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\RA[11]~input_o\ & \RB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datac => \RB[11]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X36_Y29_N12
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~3_combout\ & (((\Mux11~4_combout\) # (\Mux3~0_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux11~3_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X39_Y24_N6
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\RA[11]~input_o\ & ((\RB[11]~input_o\ & (!\Add1~21\)) # (!\RB[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\RA[11]~input_o\ & ((\RB[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\RB[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\RA[11]~input_o\ & (\RB[11]~input_o\ & !\Add1~21\)) # (!\RA[11]~input_o\ & ((\RB[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \RB[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X37_Y24_N8
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\op_sel[0]~input_o\ & (\Add1~22_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[11]~input_o\,
	combout => \Add0~45_combout\);

-- Location: LCCOMB_X39_Y25_N10
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\RA[11]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[11]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X38_Y24_N6
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~45_combout\ & ((\Add0~44_combout\ & (\Add0~43\ & VCC)) # (!\Add0~44_combout\ & (!\Add0~43\)))) # (!\Add0~45_combout\ & ((\Add0~44_combout\ & (!\Add0~43\)) # (!\Add0~44_combout\ & ((\Add0~43\) # (GND)))))
-- \Add0~47\ = CARRY((\Add0~45_combout\ & (!\Add0~44_combout\ & !\Add0~43\)) # (!\Add0~45_combout\ & ((!\Add0~43\) # (!\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X36_Y29_N20
\sumsub_out[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(11) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~46_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datac => sumsub_out(11),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(11));

-- Location: LCCOMB_X36_Y29_N22
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux11~5_combout\,
	datad => sumsub_out(11),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X36_Y29_N0
\RZ[11]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[11]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux11~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[11]$latch~combout\,
	datac => \Mux11~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[11]$latch~combout\);

-- Location: LCCOMB_X36_Y29_N16
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux3~0_combout\ & ((\RA[12]~input_o\ & ((\Mux3~1_combout\) # (!\RB[12]~input_o\))) # (!\RA[12]~input_o\ & ((\RB[12]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[12]~input_o\ & \RB[12]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RA[12]~input_o\,
	datac => \RB[12]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X36_Y29_N14
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & ((\Mux12~2_combout\))) # (!\op_sel[0]~input_o\ & (!\RA[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[12]~input_o\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X36_Y29_N24
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & (((\RA[13]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux12~3_combout\ & (\RA[11]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[11]~input_o\,
	datab => \RA[13]~input_o\,
	datac => \Mux12~3_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X36_Y29_N26
\Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux12~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux12~2_combout\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X36_Y29_N10
\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~7_combout\ & ((\Mux3~1_combout\) # ((\Mux12~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux12~4_combout\,
	datac => \Mux12~7_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X37_Y24_N2
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\RA[12]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[12]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X39_Y24_N8
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

-- Location: LCCOMB_X41_Y24_N8
\Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\op_sel[0]~input_o\ & ((\Add1~24_combout\))) # (!\op_sel[0]~input_o\ & (\RB[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[12]~input_o\,
	datad => \Add1~24_combout\,
	combout => \Add0~49_combout\);

-- Location: LCCOMB_X38_Y24_N8
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = ((\Add0~48_combout\ $ (\Add0~49_combout\ $ (!\Add0~47\)))) # (GND)
-- \Add0~51\ = CARRY((\Add0~48_combout\ & ((\Add0~49_combout\) # (!\Add0~47\))) # (!\Add0~48_combout\ & (\Add0~49_combout\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~49_combout\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X36_Y29_N6
\sumsub_out[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(12) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~50_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datac => sumsub_out(12),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(12));

-- Location: LCCOMB_X36_Y29_N4
\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux12~5_combout\,
	datad => sumsub_out(12),
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X36_Y29_N18
\RZ[12]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[12]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux12~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[12]$latch~combout\,
	datac => \Mux12~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[12]$latch~combout\);

-- Location: LCCOMB_X35_Y25_N24
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[13]~input_o\ $ (((\RB[13]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RA[13]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RB[13]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X35_Y25_N26
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux13~0_combout\ & ((\RA[14]~input_o\))) # (!\Mux13~0_combout\ & (\RA[12]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[12]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[14]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X35_Y25_N8
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux3~1_combout\ & (((\RA[13]~input_o\) # (\RB[13]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \RA[13]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \RB[13]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X35_Y25_N6
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux13~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[4]~input_o\,
	datac => \Mux13~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X35_Y25_N28
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\RA[13]~input_o\ & \RB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[13]~input_o\,
	datac => \RB[13]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X35_Y25_N14
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~3_combout\ & ((\Mux13~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux13~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X37_Y24_N12
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (!\op_sel[0]~input_o\ & \RA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[13]~input_o\,
	combout => \Add0~52_combout\);

-- Location: LCCOMB_X39_Y24_N10
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

-- Location: LCCOMB_X37_Y24_N6
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\op_sel[0]~input_o\ & ((\Add1~26_combout\))) # (!\op_sel[0]~input_o\ & (\RB[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[13]~input_o\,
	datad => \Add1~26_combout\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X38_Y24_N10
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~52_combout\ & ((\Add0~53_combout\ & (\Add0~51\ & VCC)) # (!\Add0~53_combout\ & (!\Add0~51\)))) # (!\Add0~52_combout\ & ((\Add0~53_combout\ & (!\Add0~51\)) # (!\Add0~53_combout\ & ((\Add0~51\) # (GND)))))
-- \Add0~55\ = CARRY((\Add0~52_combout\ & (!\Add0~53_combout\ & !\Add0~51\)) # (!\Add0~52_combout\ & ((!\Add0~51\) # (!\Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X35_Y25_N18
\sumsub_out[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(13) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~54_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(13),
	combout => sumsub_out(13));

-- Location: LCCOMB_X35_Y25_N4
\Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(13),
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X35_Y25_N16
\RZ[13]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[13]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux13~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[13]$latch~combout\,
	datac => \Mux13~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[13]$latch~combout\);

-- Location: LCCOMB_X35_Y25_N10
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux3~0_combout\ & ((\RA[14]~input_o\ & ((\Mux3~1_combout\) # (!\RB[14]~input_o\))) # (!\RA[14]~input_o\ & (\RB[14]~input_o\)))) # (!\Mux3~0_combout\ & (((\RA[14]~input_o\ & \RB[14]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[14]~input_o\,
	datab => \RB[14]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X35_Y25_N22
\Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux14~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \op_sel[4]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X35_Y25_N20
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\op_sel[0]~input_o\ & (!\op_sel[1]~input_o\ & ((\Mux14~2_combout\)))) # (!\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\) # ((!\RA[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[14]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X35_Y25_N30
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux14~3_combout\ & (\RA[15]~input_o\)) # (!\Mux14~3_combout\ & ((\RA[13]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[15]~input_o\,
	datab => \RA[13]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X35_Y25_N12
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~7_combout\ & ((\Mux14~4_combout\) # ((\Mux3~1_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X39_Y24_N12
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\RB[14]~input_o\ $ (\RA[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\RB[14]~input_o\ & (\RA[14]~input_o\ & !\Add1~27\)) # (!\RB[14]~input_o\ & ((\RA[14]~input_o\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[14]~input_o\,
	datab => \RA[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X37_Y24_N14
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\op_sel[0]~input_o\ & ((\Add1~28_combout\))) # (!\op_sel[0]~input_o\ & (\RB[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[14]~input_o\,
	datad => \Add1~28_combout\,
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X37_Y24_N20
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (!\op_sel[0]~input_o\ & \RA[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[14]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X38_Y24_N12
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = ((\Add0~57_combout\ $ (\Add0~56_combout\ $ (!\Add0~55\)))) # (GND)
-- \Add0~59\ = CARRY((\Add0~57_combout\ & ((\Add0~56_combout\) # (!\Add0~55\))) # (!\Add0~57_combout\ & (\Add0~56_combout\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X34_Y25_N20
\sumsub_out[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(14) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~58_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~58_combout\,
	datac => sumsub_out(14),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(14));

-- Location: LCCOMB_X34_Y25_N8
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux14~5_combout\,
	datad => sumsub_out(14),
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X34_Y25_N10
\RZ[14]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[14]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux14~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[14]$latch~combout\,
	datac => \Mux14~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[14]$latch~combout\);

-- Location: LCCOMB_X41_Y20_N20
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[15]~input_o\ $ (((\RB[15]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[15]~input_o\,
	datab => \RA[15]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X41_Y20_N18
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\RA[16]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux15~0_combout\ & (\RA[14]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[14]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \RA[16]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X41_Y20_N4
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux3~1_combout\ & (((\RA[15]~input_o\) # (\RB[15]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux15~1_combout\,
	datac => \RA[15]~input_o\,
	datad => \RB[15]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X41_Y20_N22
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux15~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datac => \Mux15~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X41_Y20_N16
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\RA[15]~input_o\ & \RB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[15]~input_o\,
	datad => \RB[15]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X41_Y20_N6
\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~3_combout\ & ((\Mux15~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X39_Y24_N14
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

-- Location: LCCOMB_X37_Y24_N26
\Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\op_sel[0]~input_o\ & (\Add1~30_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \Add1~30_combout\,
	datad => \RB[15]~input_o\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X37_Y24_N24
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (!\op_sel[0]~input_o\ & \RA[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[15]~input_o\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X38_Y24_N14
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\Add0~61_combout\ & ((\Add0~60_combout\ & (\Add0~59\ & VCC)) # (!\Add0~60_combout\ & (!\Add0~59\)))) # (!\Add0~61_combout\ & ((\Add0~60_combout\ & (!\Add0~59\)) # (!\Add0~60_combout\ & ((\Add0~59\) # (GND)))))
-- \Add0~63\ = CARRY((\Add0~61_combout\ & (!\Add0~60_combout\ & !\Add0~59\)) # (!\Add0~61_combout\ & ((!\Add0~59\) # (!\Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X41_Y20_N30
\sumsub_out[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(15) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~62_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datac => sumsub_out(15),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(15));

-- Location: LCCOMB_X41_Y20_N8
\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~5_combout\ & ((\Mux3~0_combout\) # ((sumsub_out(15)) # (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux3~0_combout\,
	datac => sumsub_out(15),
	datad => \Mux3~1_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X41_Y20_N12
\RZ[15]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[15]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux15~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[15]$latch~combout\,
	datac => \Mux15~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[15]$latch~combout\);

-- Location: LCCOMB_X41_Y20_N26
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux3~0_combout\ & ((\RB[16]~input_o\ & ((\Mux3~1_combout\) # (!\RA[16]~input_o\))) # (!\RB[16]~input_o\ & ((\RA[16]~input_o\))))) # (!\Mux3~0_combout\ & (((\RB[16]~input_o\ & \RA[16]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[16]~input_o\,
	datac => \RA[16]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X41_Y20_N14
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (!\op_sel[4]~input_o\ & ((\op_sel[2]~input_o\) # ((\Mux16~2_combout\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \Mux16~2_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X41_Y20_N24
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\op_sel[0]~input_o\ & (\Mux16~2_combout\ & ((!\op_sel[1]~input_o\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\) # (!\RA[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \RA[16]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X41_Y20_N10
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~3_combout\ & (((\RA[17]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux16~3_combout\ & (\RA[15]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \RA[15]~input_o\,
	datac => \RA[17]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X41_Y20_N28
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~7_combout\ & ((\Mux3~1_combout\) # ((\Mux16~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux16~7_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X42_Y24_N0
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (!\op_sel[0]~input_o\ & \RA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datad => \RA[16]~input_o\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X39_Y24_N16
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\RA[16]~input_o\ $ (\RB[16]~input_o\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\RA[16]~input_o\ & ((!\Add1~31\) # (!\RB[16]~input_o\))) # (!\RA[16]~input_o\ & (!\RB[16]~input_o\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[16]~input_o\,
	datab => \RB[16]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X42_Y24_N2
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\op_sel[0]~input_o\ & (\Add1~32_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \Add1~32_combout\,
	datad => \RB[16]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X38_Y24_N16
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\Add0~64_combout\ $ (\Add0~65_combout\ $ (!\Add0~63\)))) # (GND)
-- \Add0~67\ = CARRY((\Add0~64_combout\ & ((\Add0~65_combout\) # (!\Add0~63\))) # (!\Add0~64_combout\ & (\Add0~65_combout\ & !\Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datab => \Add0~65_combout\,
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X42_Y20_N28
\sumsub_out[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(16) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~66_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(16),
	combout => sumsub_out(16));

-- Location: LCCOMB_X42_Y20_N4
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux16~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(16),
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X42_Y20_N30
\RZ[16]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[16]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux16~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[16]$latch~combout\,
	datac => \Mux16~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[16]$latch~combout\);

-- Location: LCCOMB_X42_Y29_N24
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[17]~input_o\ $ (((\RB[17]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[17]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X42_Y29_N18
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\RA[18]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux17~0_combout\ & (\RA[16]~input_o\ & ((\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[16]~input_o\,
	datab => \Mux17~0_combout\,
	datac => \RA[18]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X42_Y29_N16
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux3~1_combout\ & ((\RB[17]~input_o\) # ((\RA[17]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RB[17]~input_o\,
	datac => \RA[17]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X42_Y29_N26
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux17~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X42_Y29_N28
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\RB[17]~input_o\ & \RA[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datac => \RA[17]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X42_Y29_N30
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~3_combout\ & ((\Mux3~0_combout\) # ((\Mux17~4_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X39_Y24_N18
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

-- Location: LCCOMB_X37_Y24_N10
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\op_sel[0]~input_o\ & ((\Add1~34_combout\))) # (!\op_sel[0]~input_o\ & (\RB[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[17]~input_o\,
	datab => \Add1~34_combout\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X37_Y24_N28
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\op_sel[0]~input_o\ & \RA[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[17]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X38_Y24_N18
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~69_combout\ & ((\Add0~68_combout\ & (\Add0~67\ & VCC)) # (!\Add0~68_combout\ & (!\Add0~67\)))) # (!\Add0~69_combout\ & ((\Add0~68_combout\ & (!\Add0~67\)) # (!\Add0~68_combout\ & ((\Add0~67\) # (GND)))))
-- \Add0~71\ = CARRY((\Add0~69_combout\ & (!\Add0~68_combout\ & !\Add0~67\)) # (!\Add0~69_combout\ & ((!\Add0~67\) # (!\Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X42_Y29_N10
\sumsub_out[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(17) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((\Add0~70_combout\))) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (sumsub_out(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumsub_out(17),
	datab => \Add0~70_combout\,
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(17));

-- Location: LCCOMB_X42_Y29_N8
\Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux17~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(17),
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X42_Y29_N12
\RZ[17]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[17]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux17~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[17]$latch~combout\,
	datac => \Mux17~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[17]$latch~combout\);

-- Location: LCCOMB_X42_Y29_N14
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux3~0_combout\ & ((\RA[18]~input_o\ & ((\Mux3~1_combout\) # (!\RB[18]~input_o\))) # (!\RA[18]~input_o\ & ((\RB[18]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[18]~input_o\ & \RB[18]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \RA[18]~input_o\,
	datad => \RB[18]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X42_Y29_N20
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & (\Mux18~2_combout\)) # (!\op_sel[0]~input_o\ & ((!\RA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux18~2_combout\,
	datac => \RA[18]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X42_Y29_N22
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux18~3_combout\ & ((\RA[19]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux18~3_combout\ & (((\RA[17]~input_o\ & \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \RA[19]~input_o\,
	datac => \RA[17]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X42_Y29_N6
\Mux18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (!\op_sel[4]~input_o\ & ((\op_sel[2]~input_o\) # ((\Mux18~2_combout\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \Mux18~2_combout\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X42_Y29_N4
\Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~7_combout\ & (((\Mux3~1_combout\) # (\Mux18~4_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux18~4_combout\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X37_Y24_N0
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (!\op_sel[0]~input_o\ & \RA[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RA[18]~input_o\,
	combout => \Add0~72_combout\);

-- Location: LCCOMB_X39_Y24_N20
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\RB[18]~input_o\ $ (\RA[18]~input_o\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\RB[18]~input_o\ & (\RA[18]~input_o\ & !\Add1~35\)) # (!\RB[18]~input_o\ & ((\RA[18]~input_o\) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[18]~input_o\,
	datab => \RA[18]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X37_Y24_N18
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\op_sel[0]~input_o\ & (\Add1~36_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \RB[18]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~73_combout\);

-- Location: LCCOMB_X38_Y24_N20
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = ((\Add0~72_combout\ $ (\Add0~73_combout\ $ (!\Add0~71\)))) # (GND)
-- \Add0~75\ = CARRY((\Add0~72_combout\ & ((\Add0~73_combout\) # (!\Add0~71\))) # (!\Add0~72_combout\ & (\Add0~73_combout\ & !\Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~72_combout\,
	datab => \Add0~73_combout\,
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X43_Y29_N20
\sumsub_out[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(18) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~74_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datac => sumsub_out(18),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(18));

-- Location: LCCOMB_X43_Y29_N8
\Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux18~5_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(18),
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X43_Y29_N10
\RZ[18]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[18]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux18~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[18]$latch~combout\,
	datac => \Mux18~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[18]$latch~combout\);

-- Location: LCCOMB_X46_Y23_N16
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[19]~input_o\ $ (((\RB[19]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[19]~input_o\,
	datab => \RB[19]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X46_Y23_N14
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux19~0_combout\ & ((\RA[20]~input_o\))) # (!\Mux19~0_combout\ & (\RA[18]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[18]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \RA[20]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X46_Y23_N28
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux3~1_combout\ & ((\RA[19]~input_o\) # ((\RB[19]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[19]~input_o\,
	datab => \Mux19~1_combout\,
	datac => \RB[19]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X46_Y23_N30
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux19~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X46_Y23_N8
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\RA[19]~input_o\ & \RB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[19]~input_o\,
	datad => \RB[19]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X46_Y23_N26
\Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~3_combout\ & ((\Mux3~0_combout\) # ((\Mux19~4_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux19~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X37_Y24_N16
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (!\op_sel[0]~input_o\ & \RA[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[19]~input_o\,
	combout => \Add0~76_combout\);

-- Location: LCCOMB_X39_Y24_N22
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\RB[19]~input_o\ & ((\RA[19]~input_o\ & (!\Add1~37\)) # (!\RA[19]~input_o\ & ((\Add1~37\) # (GND))))) # (!\RB[19]~input_o\ & ((\RA[19]~input_o\ & (\Add1~37\ & VCC)) # (!\RA[19]~input_o\ & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\RB[19]~input_o\ & ((!\Add1~37\) # (!\RA[19]~input_o\))) # (!\RB[19]~input_o\ & (!\RA[19]~input_o\ & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[19]~input_o\,
	datab => \RA[19]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X41_Y24_N6
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\op_sel[0]~input_o\ & (\Add1~38_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[19]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X38_Y24_N22
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~76_combout\ & ((\Add0~77_combout\ & (\Add0~75\ & VCC)) # (!\Add0~77_combout\ & (!\Add0~75\)))) # (!\Add0~76_combout\ & ((\Add0~77_combout\ & (!\Add0~75\)) # (!\Add0~77_combout\ & ((\Add0~75\) # (GND)))))
-- \Add0~79\ = CARRY((\Add0~76_combout\ & (!\Add0~77_combout\ & !\Add0~75\)) # (!\Add0~76_combout\ & ((!\Add0~75\) # (!\Add0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~76_combout\,
	datab => \Add0~77_combout\,
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X47_Y23_N20
\sumsub_out[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(19) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~78_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~78_combout\,
	datac => sumsub_out(19),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(19));

-- Location: LCCOMB_X47_Y23_N8
\Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(19),
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X47_Y23_N10
\RZ[19]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[19]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux19~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[19]$latch~combout\,
	datac => \Mux19~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[19]$latch~combout\);

-- Location: LCCOMB_X46_Y23_N20
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux3~0_combout\ & ((\RA[20]~input_o\ & ((\Mux3~1_combout\) # (!\RB[20]~input_o\))) # (!\RA[20]~input_o\ & (\RB[20]~input_o\)))) # (!\Mux3~0_combout\ & (((\RA[20]~input_o\ & \RB[20]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[20]~input_o\,
	datab => \RB[20]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X46_Y23_N6
\Mux20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux20~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux20~2_combout\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X46_Y23_N22
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\op_sel[0]~input_o\ & (((\Mux20~2_combout\ & !\op_sel[1]~input_o\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\)) # (!\RA[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[20]~input_o\,
	datab => \Mux20~2_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X46_Y23_N24
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux20~3_combout\ & ((\RA[21]~input_o\))) # (!\Mux20~3_combout\ & (\RA[19]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[19]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \Mux20~3_combout\,
	datad => \RA[21]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X46_Y23_N18
\Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~7_combout\ & (((\Mux20~4_combout\) # (\Mux3~1_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~7_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X39_Y24_N24
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

-- Location: LCCOMB_X41_Y24_N10
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\op_sel[0]~input_o\ & ((\Add1~40_combout\))) # (!\op_sel[0]~input_o\ & (\RB[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[20]~input_o\,
	datad => \Add1~40_combout\,
	combout => \Add0~81_combout\);

-- Location: LCCOMB_X41_Y24_N4
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (!\op_sel[0]~input_o\ & \RA[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datad => \RA[20]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X38_Y24_N24
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = ((\Add0~81_combout\ $ (\Add0~80_combout\ $ (!\Add0~79\)))) # (GND)
-- \Add0~83\ = CARRY((\Add0~81_combout\ & ((\Add0~80_combout\) # (!\Add0~79\))) # (!\Add0~81_combout\ & (\Add0~80_combout\ & !\Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~81_combout\,
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X46_Y23_N10
\sumsub_out[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(20) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~82_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~82_combout\,
	datac => sumsub_out(20),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(20));

-- Location: LCCOMB_X46_Y23_N4
\Mux20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux20~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux20~5_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(20),
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X46_Y23_N12
\RZ[20]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[20]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux20~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[20]$latch~combout\,
	datac => \Mux20~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[20]$latch~combout\);

-- Location: LCCOMB_X46_Y26_N16
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[21]~input_o\ $ (((\RB[21]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[21]~input_o\,
	datad => \RB[21]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X46_Y26_N26
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\RA[22]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux21~0_combout\ & (((\op_sel[1]~input_o\ & \RA[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[22]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[20]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X46_Y26_N28
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux3~1_combout\ & (((\RA[21]~input_o\) # (\RB[21]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \RA[21]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \RB[21]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X46_Y26_N22
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux21~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X46_Y26_N0
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\RB[21]~input_o\ & \RA[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[21]~input_o\,
	datac => \RA[21]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X46_Y26_N6
\Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~3_combout\ & (((\Mux3~0_combout\) # (\Mux21~4_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X41_Y24_N20
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (!\op_sel[0]~input_o\ & \RA[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[21]~input_o\,
	combout => \Add0~84_combout\);

-- Location: LCCOMB_X39_Y24_N26
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

-- Location: LCCOMB_X41_Y24_N30
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\op_sel[0]~input_o\ & ((\Add1~42_combout\))) # (!\op_sel[0]~input_o\ & (\RB[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \RB[21]~input_o\,
	datad => \Add1~42_combout\,
	combout => \Add0~85_combout\);

-- Location: LCCOMB_X38_Y24_N26
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~84_combout\ & ((\Add0~85_combout\ & (\Add0~83\ & VCC)) # (!\Add0~85_combout\ & (!\Add0~83\)))) # (!\Add0~84_combout\ & ((\Add0~85_combout\ & (!\Add0~83\)) # (!\Add0~85_combout\ & ((\Add0~83\) # (GND)))))
-- \Add0~87\ = CARRY((\Add0~84_combout\ & (!\Add0~85_combout\ & !\Add0~83\)) # (!\Add0~84_combout\ & ((!\Add0~83\) # (!\Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \Add0~85_combout\,
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X46_Y26_N12
\sumsub_out[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(21) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~86_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~86_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(21),
	combout => sumsub_out(21));

-- Location: LCCOMB_X46_Y26_N4
\Mux21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux21~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(21),
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X46_Y26_N20
\RZ[21]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[21]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux21~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[21]$latch~combout\,
	datac => \Mux21~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[21]$latch~combout\);

-- Location: LCCOMB_X46_Y26_N30
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux3~0_combout\ & ((\RB[22]~input_o\ & ((\Mux3~1_combout\) # (!\RA[22]~input_o\))) # (!\RB[22]~input_o\ & ((\RA[22]~input_o\))))) # (!\Mux3~0_combout\ & (((\RB[22]~input_o\ & \RA[22]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[22]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \RA[22]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X46_Y26_N24
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\op_sel[0]~input_o\ & (((!\op_sel[1]~input_o\ & \Mux22~2_combout\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\)) # (!\RA[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[22]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X46_Y26_N14
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & (((\RA[23]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux22~3_combout\ & (\RA[21]~input_o\ & (\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \RA[21]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[23]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X46_Y26_N10
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (!\op_sel[4]~input_o\ & (((\op_sel[2]~input_o\) # (\Mux22~2_combout\)) # (!\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[4]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X47_Y26_N24
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~7_combout\ & ((\Mux22~4_combout\) # ((\Mux3~1_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux22~7_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X39_Y24_N28
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

-- Location: LCCOMB_X41_Y24_N22
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\op_sel[0]~input_o\ & ((\Add1~44_combout\))) # (!\op_sel[0]~input_o\ & (\RB[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[22]~input_o\,
	datab => \Add1~44_combout\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X41_Y24_N12
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\RA[22]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[22]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~88_combout\);

-- Location: LCCOMB_X38_Y24_N28
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\Add0~89_combout\ $ (\Add0~88_combout\ $ (!\Add0~87\)))) # (GND)
-- \Add0~91\ = CARRY((\Add0~89_combout\ & ((\Add0~88_combout\) # (!\Add0~87\))) # (!\Add0~89_combout\ & (\Add0~88_combout\ & !\Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~89_combout\,
	datab => \Add0~88_combout\,
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X46_Y26_N18
\sumsub_out[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(22) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~90_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~90_combout\,
	datac => sumsub_out(22),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(22));

-- Location: LCCOMB_X46_Y26_N8
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux22~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(22),
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X46_Y26_N2
\RZ[22]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[22]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux22~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[22]$latch~combout\,
	datac => \Mux22~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[22]$latch~combout\);

-- Location: LCCOMB_X37_Y23_N12
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[23]~input_o\ $ (((\RB[23]~input_o\) # (!\op_sel[0]~input_o\)))))

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
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X37_Y23_N26
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & ((\RA[24]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux23~0_combout\ & (((\op_sel[1]~input_o\ & \RA[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \RA[24]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[22]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X37_Y23_N20
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux3~1_combout\ & (((\RB[23]~input_o\) # (\RA[23]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \RB[23]~input_o\,
	datac => \RA[23]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X37_Y23_N30
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux23~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux23~2_combout\,
	datac => \op_sel[4]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X37_Y23_N16
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\RB[23]~input_o\ & \RA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[23]~input_o\,
	datac => \RA[23]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X37_Y23_N22
\Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~3_combout\ & ((\Mux23~4_combout\) # ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X37_Y23_N0
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (!\op_sel[0]~input_o\ & \RA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[23]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X39_Y24_N30
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\RB[23]~input_o\ & ((\RA[23]~input_o\ & (!\Add1~45\)) # (!\RA[23]~input_o\ & ((\Add1~45\) # (GND))))) # (!\RB[23]~input_o\ & ((\RA[23]~input_o\ & (\Add1~45\ & VCC)) # (!\RA[23]~input_o\ & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\RB[23]~input_o\ & ((!\Add1~45\) # (!\RA[23]~input_o\))) # (!\RB[23]~input_o\ & (!\RA[23]~input_o\ & !\Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[23]~input_o\,
	datab => \RA[23]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X38_Y20_N16
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\op_sel[0]~input_o\ & ((\Add1~46_combout\))) # (!\op_sel[0]~input_o\ & (\RB[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[23]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \Add1~46_combout\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X38_Y24_N30
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~92_combout\ & ((\Add0~93_combout\ & (\Add0~91\ & VCC)) # (!\Add0~93_combout\ & (!\Add0~91\)))) # (!\Add0~92_combout\ & ((\Add0~93_combout\ & (!\Add0~91\)) # (!\Add0~93_combout\ & ((\Add0~91\) # (GND)))))
-- \Add0~95\ = CARRY((\Add0~92_combout\ & (!\Add0~93_combout\ & !\Add0~91\)) # (!\Add0~92_combout\ & ((!\Add0~91\) # (!\Add0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \Add0~93_combout\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X37_Y23_N18
\sumsub_out[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(23) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~94_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~94_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(23),
	combout => sumsub_out(23));

-- Location: LCCOMB_X37_Y23_N8
\Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux23~5_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(23),
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X37_Y23_N24
\RZ[23]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[23]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux23~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[23]$latch~combout\,
	datac => \Mux23~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[23]$latch~combout\);

-- Location: LCCOMB_X39_Y23_N26
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux3~0_combout\ & ((\RA[24]~input_o\ & ((\Mux3~1_combout\) # (!\RB[24]~input_o\))) # (!\RA[24]~input_o\ & ((\RB[24]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[24]~input_o\ & \RB[24]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \RA[24]~input_o\,
	datad => \RB[24]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X37_Y23_N10
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\op_sel[0]~input_o\ & (((!\op_sel[1]~input_o\ & \Mux24~2_combout\)))) # (!\op_sel[0]~input_o\ & (((\op_sel[1]~input_o\)) # (!\RA[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \RA[24]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X37_Y23_N28
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux24~3_combout\ & (\RA[25]~input_o\)) # (!\Mux24~3_combout\ & ((\RA[23]~input_o\))))) # (!\op_sel[1]~input_o\ & (((\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[25]~input_o\,
	datac => \RA[23]~input_o\,
	datad => \Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X37_Y23_N14
\Mux24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (!\op_sel[4]~input_o\ & ((\op_sel[2]~input_o\) # ((\Mux24~2_combout\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \op_sel[2]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X37_Y23_N2
\Mux24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~7_combout\ & (((\Mux24~4_combout\) # (\Mux3~1_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~7_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X38_Y23_N22
\Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\RA[24]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[24]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X39_Y23_N0
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\RB[24]~input_o\ $ (\RA[24]~input_o\ $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\RB[24]~input_o\ & (\RA[24]~input_o\ & !\Add1~47\)) # (!\RB[24]~input_o\ & ((\RA[24]~input_o\) # (!\Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \RA[24]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X39_Y23_N24
\Add0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\op_sel[0]~input_o\ & ((\Add1~48_combout\))) # (!\op_sel[0]~input_o\ & (\RB[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[24]~input_o\,
	datab => \op_sel[0]~input_o\,
	datad => \Add1~48_combout\,
	combout => \Add0~97_combout\);

-- Location: LCCOMB_X38_Y23_N0
\Add0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = ((\Add0~96_combout\ $ (\Add0~97_combout\ $ (!\Add0~95\)))) # (GND)
-- \Add0~99\ = CARRY((\Add0~96_combout\ & ((\Add0~97_combout\) # (!\Add0~95\))) # (!\Add0~96_combout\ & (\Add0~97_combout\ & !\Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~96_combout\,
	datab => \Add0~97_combout\,
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X36_Y23_N20
\sumsub_out[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(24) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~98_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~98_combout\,
	datac => sumsub_out(24),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(24));

-- Location: LCCOMB_X36_Y23_N4
\Mux24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux24~5_combout\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\) # (sumsub_out(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => sumsub_out(24),
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X36_Y23_N10
\RZ[24]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[24]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux24~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[24]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[24]$latch~combout\,
	datac => \Mux24~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[24]$latch~combout\);

-- Location: LCCOMB_X42_Y23_N8
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\RA[25]~input_o\ & \RB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[25]~input_o\,
	datad => \RB[25]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X42_Y23_N24
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[25]~input_o\ $ (((\RB[25]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[25]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[25]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X42_Y23_N30
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\RA[26]~input_o\) # (!\op_sel[1]~input_o\)))) # (!\Mux25~0_combout\ & (\RA[24]~input_o\ & (\op_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[24]~input_o\,
	datab => \Mux25~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X42_Y23_N16
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux3~1_combout\ & (((\RA[25]~input_o\) # (\RB[25]~input_o\)))) # (!\Mux3~1_combout\ & (\Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \RA[25]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \RB[25]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X42_Y23_N10
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux25~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X42_Y23_N22
\Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~3_combout\ & ((\Mux3~0_combout\) # ((\Mux25~4_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux25~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X42_Y23_N4
\Add0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (\RA[25]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[25]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \Add0~100_combout\);

-- Location: LCCOMB_X39_Y23_N2
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\RB[25]~input_o\ & ((\RA[25]~input_o\ & (!\Add1~49\)) # (!\RA[25]~input_o\ & ((\Add1~49\) # (GND))))) # (!\RB[25]~input_o\ & ((\RA[25]~input_o\ & (\Add1~49\ & VCC)) # (!\RA[25]~input_o\ & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\RB[25]~input_o\ & ((!\Add1~49\) # (!\RA[25]~input_o\))) # (!\RB[25]~input_o\ & (!\RA[25]~input_o\ & !\Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[25]~input_o\,
	datab => \RA[25]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X42_Y23_N6
\Add0~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = (\op_sel[0]~input_o\ & (\Add1~50_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[25]~input_o\,
	combout => \Add0~101_combout\);

-- Location: LCCOMB_X38_Y23_N2
\Add0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (\Add0~100_combout\ & ((\Add0~101_combout\ & (\Add0~99\ & VCC)) # (!\Add0~101_combout\ & (!\Add0~99\)))) # (!\Add0~100_combout\ & ((\Add0~101_combout\ & (!\Add0~99\)) # (!\Add0~101_combout\ & ((\Add0~99\) # (GND)))))
-- \Add0~103\ = CARRY((\Add0~100_combout\ & (!\Add0~101_combout\ & !\Add0~99\)) # (!\Add0~100_combout\ & ((!\Add0~99\) # (!\Add0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datab => \Add0~101_combout\,
	datad => VCC,
	cin => \Add0~99\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X41_Y23_N24
\sumsub_out[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(25) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~102_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~102_combout\,
	datac => \FLAG_B[1]~3clkctrl_outclk\,
	datad => sumsub_out(25),
	combout => sumsub_out(25));

-- Location: LCCOMB_X41_Y23_N4
\Mux25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux25~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(25),
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X41_Y23_N22
\RZ[25]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[25]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux25~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[25]$latch~combout\,
	datac => \Mux25~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[25]$latch~combout\);

-- Location: LCCOMB_X39_Y23_N28
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux3~0_combout\ & ((\RA[26]~input_o\ & ((\Mux3~1_combout\) # (!\RB[26]~input_o\))) # (!\RA[26]~input_o\ & ((\RB[26]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[26]~input_o\ & \RB[26]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \RA[26]~input_o\,
	datad => \RB[26]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X42_Y23_N28
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & (\Mux26~2_combout\)) # (!\op_sel[0]~input_o\ & ((!\RA[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \Mux26~2_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X42_Y23_N26
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux26~3_combout\ & ((\RA[27]~input_o\))) # (!\Mux26~3_combout\ & (\RA[25]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \RA[25]~input_o\,
	datac => \RA[27]~input_o\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X41_Y25_N22
\Mux26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux26~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \Mux26~2_combout\,
	datac => \op_sel[2]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X42_Y23_N20
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~7_combout\ & (((\Mux3~1_combout\) # (\Mux26~4_combout\)) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux26~4_combout\,
	datad => \Mux26~7_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X39_Y23_N4
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\RA[26]~input_o\ $ (\RB[26]~input_o\ $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\RA[26]~input_o\ & ((!\Add1~51\) # (!\RB[26]~input_o\))) # (!\RA[26]~input_o\ & (!\RB[26]~input_o\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[26]~input_o\,
	datab => \RB[26]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X39_Y23_N30
\Add0~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~105_combout\ = (\op_sel[0]~input_o\ & (\Add1~52_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \Add1~52_combout\,
	datad => \RB[26]~input_o\,
	combout => \Add0~105_combout\);

-- Location: LCCOMB_X38_Y23_N28
\Add0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (!\op_sel[0]~input_o\ & \RA[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datad => \RA[26]~input_o\,
	combout => \Add0~104_combout\);

-- Location: LCCOMB_X38_Y23_N4
\Add0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = ((\Add0~105_combout\ $ (\Add0~104_combout\ $ (!\Add0~103\)))) # (GND)
-- \Add0~107\ = CARRY((\Add0~105_combout\ & ((\Add0~104_combout\) # (!\Add0~103\))) # (!\Add0~105_combout\ & (\Add0~104_combout\ & !\Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~105_combout\,
	datab => \Add0~104_combout\,
	datad => VCC,
	cin => \Add0~103\,
	combout => \Add0~106_combout\,
	cout => \Add0~107\);

-- Location: LCCOMB_X42_Y23_N18
\sumsub_out[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(26) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~106_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~106_combout\,
	datac => sumsub_out(26),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(26));

-- Location: LCCOMB_X42_Y23_N14
\Mux26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux26~5_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(26),
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X42_Y23_N12
\RZ[26]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[26]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux26~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[26]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[26]$latch~combout\,
	datac => \Mux26~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[26]$latch~combout\);

-- Location: LCCOMB_X36_Y25_N24
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[27]~input_o\ $ (((\RB[27]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RB[27]~input_o\,
	datad => \RA[27]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X37_Y25_N4
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\op_sel[1]~input_o\ & ((\Mux27~0_combout\ & ((\RA[28]~input_o\))) # (!\Mux27~0_combout\ & (\RA[26]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[26]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[28]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X37_Y25_N10
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux3~1_combout\ & ((\RB[27]~input_o\) # ((\RA[27]~input_o\)))) # (!\Mux3~1_combout\ & (((\Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[27]~input_o\,
	datab => \Mux27~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \RA[27]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X37_Y25_N16
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (!\op_sel[4]~input_o\ & ((\Mux27~2_combout\) # (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X37_Y25_N26
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\RB[27]~input_o\ & \RA[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[27]~input_o\,
	datad => \RA[27]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X37_Y25_N12
\Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~3_combout\ & (((\Mux27~4_combout\) # (\Mux3~0_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux27~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X38_Y23_N30
\Add0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (!\op_sel[0]~input_o\ & \RA[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[27]~input_o\,
	combout => \Add0~108_combout\);

-- Location: LCCOMB_X39_Y23_N6
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\RB[27]~input_o\ & ((\RA[27]~input_o\ & (!\Add1~53\)) # (!\RA[27]~input_o\ & ((\Add1~53\) # (GND))))) # (!\RB[27]~input_o\ & ((\RA[27]~input_o\ & (\Add1~53\ & VCC)) # (!\RA[27]~input_o\ & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\RB[27]~input_o\ & ((!\Add1~53\) # (!\RA[27]~input_o\))) # (!\RB[27]~input_o\ & (!\RA[27]~input_o\ & !\Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RB[27]~input_o\,
	datab => \RA[27]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X37_Y25_N0
\Add0~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~109_combout\ = (\op_sel[0]~input_o\ & (\Add1~54_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \Add1~54_combout\,
	datad => \RB[27]~input_o\,
	combout => \Add0~109_combout\);

-- Location: LCCOMB_X38_Y23_N6
\Add0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (\Add0~108_combout\ & ((\Add0~109_combout\ & (\Add0~107\ & VCC)) # (!\Add0~109_combout\ & (!\Add0~107\)))) # (!\Add0~108_combout\ & ((\Add0~109_combout\ & (!\Add0~107\)) # (!\Add0~109_combout\ & ((\Add0~107\) # (GND)))))
-- \Add0~111\ = CARRY((\Add0~108_combout\ & (!\Add0~109_combout\ & !\Add0~107\)) # (!\Add0~108_combout\ & ((!\Add0~107\) # (!\Add0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~108_combout\,
	datab => \Add0~109_combout\,
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~110_combout\,
	cout => \Add0~111\);

-- Location: LCCOMB_X37_Y25_N24
\sumsub_out[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(27) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((\Add0~110_combout\))) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (sumsub_out(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sumsub_out(27),
	datac => \Add0~110_combout\,
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(27));

-- Location: LCCOMB_X37_Y25_N30
\Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux27~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(27),
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X37_Y25_N8
\RZ[27]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[27]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux27~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[27]$latch~combout\,
	datac => \Mux27~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[27]$latch~combout\);

-- Location: LCCOMB_X39_Y23_N22
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux3~0_combout\ & ((\RA[28]~input_o\ & ((\Mux3~1_combout\) # (!\RB[28]~input_o\))) # (!\RA[28]~input_o\ & ((\RB[28]~input_o\))))) # (!\Mux3~0_combout\ & (((\RA[28]~input_o\ & \RB[28]~input_o\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \RA[28]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \RB[28]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X37_Y25_N18
\Mux28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (!\op_sel[4]~input_o\ & ((\Mux28~2_combout\) # ((\op_sel[2]~input_o\) # (!\op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \op_sel[4]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[2]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X37_Y25_N20
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\op_sel[1]~input_o\ & (((!\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & ((\op_sel[0]~input_o\ & (\Mux28~2_combout\)) # (!\op_sel[0]~input_o\ & ((!\RA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[28]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X37_Y25_N22
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\op_sel[1]~input_o\ & ((\Mux28~3_combout\ & ((\RA[29]~input_o\))) # (!\Mux28~3_combout\ & (\RA[27]~input_o\)))) # (!\op_sel[1]~input_o\ & (((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[27]~input_o\,
	datab => \RA[29]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X37_Y25_N28
\Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~7_combout\ & ((\Mux3~1_combout\) # ((\Mux28~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux28~7_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X39_Y23_N8
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

-- Location: LCCOMB_X39_Y23_N20
\Add0~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~113_combout\ = (\op_sel[0]~input_o\ & (\Add1~56_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \Add1~56_combout\,
	datad => \RB[28]~input_o\,
	combout => \Add0~113_combout\);

-- Location: LCCOMB_X38_Y23_N24
\Add0~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (!\op_sel[0]~input_o\ & \RA[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datac => \RA[28]~input_o\,
	combout => \Add0~112_combout\);

-- Location: LCCOMB_X38_Y23_N8
\Add0~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = ((\Add0~113_combout\ $ (\Add0~112_combout\ $ (!\Add0~111\)))) # (GND)
-- \Add0~115\ = CARRY((\Add0~113_combout\ & ((\Add0~112_combout\) # (!\Add0~111\))) # (!\Add0~113_combout\ & (\Add0~112_combout\ & !\Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~113_combout\,
	datab => \Add0~112_combout\,
	datad => VCC,
	cin => \Add0~111\,
	combout => \Add0~114_combout\,
	cout => \Add0~115\);

-- Location: LCCOMB_X37_Y25_N6
\sumsub_out[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(28) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((\Add0~114_combout\))) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (sumsub_out(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumsub_out(28),
	datac => \Add0~114_combout\,
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(28));

-- Location: LCCOMB_X37_Y25_N14
\Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux28~5_combout\ & ((\Mux3~0_combout\) # ((\Mux3~1_combout\) # (sumsub_out(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => sumsub_out(28),
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X37_Y25_N2
\RZ[28]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[28]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux28~6_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[28]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[28]$latch~combout\,
	datac => \Mux28~6_combout\,
	datad => \RZ[31]~0clkctrl_outclk\,
	combout => \RZ[28]$latch~combout\);

-- Location: LCCOMB_X37_Y26_N24
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\op_sel[1]~input_o\ & (\op_sel[0]~input_o\)) # (!\op_sel[1]~input_o\ & (\RA[29]~input_o\ $ (((\RB[29]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[29]~input_o\,
	datad => \RB[29]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X37_Y26_N26
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\RA[28]~input_o\) # ((!\op_sel[1]~input_o\)))) # (!\Mux29~0_combout\ & (((\op_sel[1]~input_o\ & \RA[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[28]~input_o\,
	datab => \Mux29~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \RA[30]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X37_Y26_N4
\RZ~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ~1_combout\ = (\RA[29]~input_o\ & \RB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[29]~input_o\,
	datac => \RB[29]~input_o\,
	combout => \RZ~1_combout\);

-- Location: LCCOMB_X39_Y23_N10
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

-- Location: LCCOMB_X38_Y20_N2
\Add0~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~117_combout\ = (\op_sel[0]~input_o\ & ((\Add1~58_combout\))) # (!\op_sel[0]~input_o\ & (\RB[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[29]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \Add1~58_combout\,
	combout => \Add0~117_combout\);

-- Location: LCCOMB_X37_Y26_N16
\Add0~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (\RA[29]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[29]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~116_combout\);

-- Location: LCCOMB_X38_Y23_N10
\Add0~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (\Add0~117_combout\ & ((\Add0~116_combout\ & (\Add0~115\ & VCC)) # (!\Add0~116_combout\ & (!\Add0~115\)))) # (!\Add0~117_combout\ & ((\Add0~116_combout\ & (!\Add0~115\)) # (!\Add0~116_combout\ & ((\Add0~115\) # (GND)))))
-- \Add0~119\ = CARRY((\Add0~117_combout\ & (!\Add0~116_combout\ & !\Add0~115\)) # (!\Add0~117_combout\ & ((!\Add0~115\) # (!\Add0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~117_combout\,
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X37_Y26_N18
\sumsub_out[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(29) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~118_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~118_combout\,
	datac => sumsub_out(29),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(29));

-- Location: LCCOMB_X37_Y26_N6
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux3~0_combout\ & (\Mux3~1_combout\)) # (!\Mux3~0_combout\ & ((\Mux3~1_combout\ & (\RZ~1_combout\)) # (!\Mux3~1_combout\ & ((sumsub_out(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \RZ~1_combout\,
	datad => sumsub_out(29),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X37_Y26_N14
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux3~0_combout\ & ((\Mux29~2_combout\ & (\RB[29]~input_o\)) # (!\Mux29~2_combout\ & ((\Mux29~1_combout\))))) # (!\Mux3~0_combout\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \RB[29]~input_o\,
	datac => \Mux29~1_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X37_Y26_N0
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (!\op_sel[4]~input_o\ & ((\Mux29~3_combout\) # ((\RA[29]~input_o\ & \Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[4]~input_o\,
	datab => \RA[29]~input_o\,
	datac => \Mux29~3_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X37_Y26_N30
\RZ[29]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[29]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux29~4_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[29]$latch~combout\,
	datac => \RZ[31]~0clkctrl_outclk\,
	datad => \Mux29~4_combout\,
	combout => \RZ[29]$latch~combout\);

-- Location: LCCOMB_X38_Y22_N30
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\op_sel[1]~input_o\ & (((\op_sel[0]~input_o\)))) # (!\op_sel[1]~input_o\ & (\RA[30]~input_o\ $ (((\RB[30]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[30]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RA[30]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X25_Y23_N1
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

-- Location: LCCOMB_X37_Y26_N8
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\RA[29]~input_o\)) # (!\op_sel[1]~input_o\))) # (!\Mux30~0_combout\ & (\op_sel[1]~input_o\ & ((\RA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \RA[29]~input_o\,
	datad => \RA[31]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X37_Y24_N22
\Add0~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (!\op_sel[0]~input_o\ & \RA[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[0]~input_o\,
	datad => \RA[30]~input_o\,
	combout => \Add0~120_combout\);

-- Location: LCCOMB_X39_Y23_N12
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

-- Location: LCCOMB_X38_Y22_N22
\Add0~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~121_combout\ = (\op_sel[0]~input_o\ & (\Add1~60_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~60_combout\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[30]~input_o\,
	combout => \Add0~121_combout\);

-- Location: LCCOMB_X38_Y23_N12
\Add0~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = ((\Add0~120_combout\ $ (\Add0~121_combout\ $ (!\Add0~119\)))) # (GND)
-- \Add0~123\ = CARRY((\Add0~120_combout\ & ((\Add0~121_combout\) # (!\Add0~119\))) # (!\Add0~120_combout\ & (\Add0~121_combout\ & !\Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~121_combout\,
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X37_Y26_N28
\sumsub_out[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(30) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~122_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~122_combout\,
	datab => sumsub_out(30),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(30));

-- Location: LCCOMB_X37_Y26_N2
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux3~0_combout\ & ((\Mux3~1_combout\) # ((\Mux30~1_combout\)))) # (!\Mux3~0_combout\ & (!\Mux3~1_combout\ & ((sumsub_out(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux30~1_combout\,
	datad => sumsub_out(30),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X37_Y26_N12
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\RB[30]~input_o\ & ((\Mux30~2_combout\) # ((\RA[30]~input_o\ & \Mux3~1_combout\)))) # (!\RB[30]~input_o\ & (\Mux30~2_combout\ & ((\RA[30]~input_o\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[30]~input_o\,
	datab => \RA[30]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X37_Y26_N10
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\op_sel[4]~input_o\ & \Mux30~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[4]~input_o\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X37_Y26_N20
\RZ[30]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[30]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux30~4_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[30]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RZ[30]$latch~combout\,
	datac => \RZ[31]~0clkctrl_outclk\,
	datad => \Mux30~4_combout\,
	combout => \RZ[30]$latch~combout\);

-- Location: IOIBUF_X50_Y18_N22
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

-- Location: LCCOMB_X38_Y22_N8
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\RA[31]~input_o\ & ((\op_sel[0]~input_o\) # (\RB[31]~input_o\))) # (!\RA[31]~input_o\ & (\op_sel[0]~input_o\ & \RB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[31]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \RB[31]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X38_Y23_N26
\Add0~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (\RA[31]~input_o\ & !\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[31]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~124_combout\);

-- Location: LCCOMB_X39_Y23_N14
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

-- Location: LCCOMB_X39_Y23_N18
\Add0~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~125_combout\ = (\op_sel[0]~input_o\ & (\Add1~62_combout\)) # (!\op_sel[0]~input_o\ & ((\RB[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datac => \Add1~62_combout\,
	datad => \RB[31]~input_o\,
	combout => \Add0~125_combout\);

-- Location: LCCOMB_X38_Y23_N14
\Add0~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = (\Add0~124_combout\ & ((\Add0~125_combout\ & (\Add0~123\ & VCC)) # (!\Add0~125_combout\ & (!\Add0~123\)))) # (!\Add0~124_combout\ & ((\Add0~125_combout\ & (!\Add0~123\)) # (!\Add0~125_combout\ & ((\Add0~123\) # (GND)))))
-- \Add0~127\ = CARRY((\Add0~124_combout\ & (!\Add0~125_combout\ & !\Add0~123\)) # (!\Add0~124_combout\ & ((!\Add0~123\) # (!\Add0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~124_combout\,
	datab => \Add0~125_combout\,
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~126_combout\,
	cout => \Add0~127\);

-- Location: LCCOMB_X38_Y22_N18
\sumsub_out[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(31) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~126_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~126_combout\,
	datac => sumsub_out(31),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(31));

-- Location: LCCOMB_X38_Y22_N2
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\op_sel[1]~input_o\ & ((\Mux1~7_combout\) # ((\op_sel[2]~input_o\)))) # (!\op_sel[1]~input_o\ & (((!\op_sel[2]~input_o\ & sumsub_out(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => sumsub_out(31),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X38_Y22_N16
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux31~0_combout\ & (((\op_sel[0]~input_o\)))) # (!\Mux31~0_combout\ & (\RA[31]~input_o\ $ (((\RB[31]~input_o\) # (!\op_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[31]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \RA[31]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X38_Y22_N10
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\op_sel[2]~input_o\ & (\Mux31~2_combout\ & ((\RA[30]~input_o\) # (!\Mux31~0_combout\)))) # (!\op_sel[2]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[2]~input_o\,
	datab => \RA[30]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X38_Y22_N12
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\op_sel[3]~input_o\ & (!\op_sel[4]~input_o\ & \Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[3]~input_o\,
	datac => \op_sel[4]~input_o\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X38_Y22_N26
\RZ[31]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RZ[31]$latch~combout\ = (GLOBAL(\RZ[31]~0clkctrl_outclk\) & ((\Mux31~1_combout\))) # (!GLOBAL(\RZ[31]~0clkctrl_outclk\) & (\RZ[31]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RZ[31]$latch~combout\,
	datac => \RZ[31]~0clkctrl_outclk\,
	datad => \Mux31~1_combout\,
	combout => \RZ[31]$latch~combout\);

-- Location: LCCOMB_X30_Y2_N22
\FLAG_B[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[0]~1_combout\ = (\en~input_o\ & (\FLAG_B[1]~0_combout\ & !\op_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \FLAG_B[1]~0_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \FLAG_B[0]~1_combout\);

-- Location: LCCOMB_X38_Y23_N18
\Add0~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~129_combout\ = (!\op_sel[1]~input_o\ & \op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \Add0~129_combout\);

-- Location: LCCOMB_X39_Y23_N16
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

-- Location: LCCOMB_X38_Y23_N20
\Add0~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~128_combout\ = (\op_sel[0]~input_o\ & (!\op_sel[1]~input_o\ & \Add1~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datad => \Add1~64_combout\,
	combout => \Add0~128_combout\);

-- Location: LCCOMB_X38_Y23_N16
\Add0~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~130_combout\ = \Add0~129_combout\ $ (\Add0~127\ $ (!\Add0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~129_combout\,
	datad => \Add0~128_combout\,
	cin => \Add0~127\,
	combout => \Add0~130_combout\);

-- Location: LCCOMB_X30_Y2_N6
\sumsub_out[32]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sumsub_out(32) = (GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & (\Add0~130_combout\)) # (!GLOBAL(\FLAG_B[1]~3clkctrl_outclk\) & ((sumsub_out(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~130_combout\,
	datac => sumsub_out(32),
	datad => \FLAG_B[1]~3clkctrl_outclk\,
	combout => sumsub_out(32));

-- Location: LCCOMB_X30_Y2_N30
\FLAG_B[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[0]$latch~combout\ = (\FLAG_B[0]~1_combout\ & ((sumsub_out(32)))) # (!\FLAG_B[0]~1_combout\ & (\FLAG_B[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FLAG_B[0]~1_combout\,
	datac => \FLAG_B[0]$latch~combout\,
	datad => sumsub_out(32),
	combout => \FLAG_B[0]$latch~combout\);

-- Location: LCCOMB_X30_Y2_N16
\FLAG_B[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[1]~2_combout\ = (\en~input_o\ & (\FLAG_B[1]~0_combout\ & \op_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \FLAG_B[1]~0_combout\,
	datad => \op_sel[0]~input_o\,
	combout => \FLAG_B[1]~2_combout\);

-- Location: LCCOMB_X30_Y2_N14
\FLAG_B[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FLAG_B[1]$latch~combout\ = (\FLAG_B[1]~2_combout\ & ((sumsub_out(32)))) # (!\FLAG_B[1]~2_combout\ & (\FLAG_B[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FLAG_B[1]~2_combout\,
	datac => \FLAG_B[1]$latch~combout\,
	datad => sumsub_out(32),
	combout => \FLAG_B[1]$latch~combout\);

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


