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

-- DATE "08/01/2021 17:45:09"

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

ENTITY 	SDRAM_CONTROLLER IS
    PORT (
	rst : IN std_logic;
	rw : IN std_logic;
	refresh : IN std_logic;
	ram_clk_in_100 : IN std_logic;
	addr_in : IN std_logic_vector(24 DOWNTO 0);
	n_dqml_in : IN std_logic;
	n_dqmh_in : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	up_to_use : BUFFER std_logic;
	mem_op_complete : BUFFER std_logic;
	n_dqmh_to_sdram : BUFFER std_logic;
	n_dqml_to_sdram : BUFFER std_logic;
	bank_to_sdram : BUFFER std_logic_vector(1 DOWNTO 0);
	addr_to_sdram : BUFFER std_logic_vector(12 DOWNTO 0);
	clk_en_to_sdram : BUFFER std_logic;
	n_cs_to_sdram : BUFFER std_logic;
	n_ras : BUFFER std_logic;
	n_cas : BUFFER std_logic;
	n_we : BUFFER std_logic;
	data_io : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END SDRAM_CONTROLLER;

-- Design Ports Information
-- up_to_use	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_op_complete	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_dqmh_to_sdram	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_dqml_to_sdram	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bank_to_sdram[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bank_to_sdram[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[9]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[10]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[11]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_to_sdram[12]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_en_to_sdram	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_cs_to_sdram	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_ras	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_cas	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_we	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[6]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[11]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_io[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- refresh	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_clk_in_100	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_dqmh_in	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_dqml_in	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[23]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[24]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[10]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[13]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[15]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[6]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[16]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[17]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[8]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[18]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[9]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[19]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[20]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[21]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[22]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SDRAM_CONTROLLER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_refresh : std_logic;
SIGNAL ww_ram_clk_in_100 : std_logic;
SIGNAL ww_addr_in : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_n_dqml_in : std_logic;
SIGNAL ww_n_dqmh_in : std_logic;
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_up_to_use : std_logic;
SIGNAL ww_mem_op_complete : std_logic;
SIGNAL ww_n_dqmh_to_sdram : std_logic;
SIGNAL ww_n_dqml_to_sdram : std_logic;
SIGNAL ww_bank_to_sdram : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_addr_to_sdram : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_clk_en_to_sdram : std_logic;
SIGNAL ww_n_cs_to_sdram : std_logic;
SIGNAL ww_n_ras : std_logic;
SIGNAL ww_n_cas : std_logic;
SIGNAL ww_n_we : std_logic;
SIGNAL ww_data_io : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_clk_in_100~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_io[0]~input_o\ : std_logic;
SIGNAL \data_io[1]~input_o\ : std_logic;
SIGNAL \data_io[2]~input_o\ : std_logic;
SIGNAL \data_io[3]~input_o\ : std_logic;
SIGNAL \data_io[4]~input_o\ : std_logic;
SIGNAL \data_io[5]~input_o\ : std_logic;
SIGNAL \data_io[6]~input_o\ : std_logic;
SIGNAL \data_io[7]~input_o\ : std_logic;
SIGNAL \data_io[8]~input_o\ : std_logic;
SIGNAL \data_io[9]~input_o\ : std_logic;
SIGNAL \data_io[10]~input_o\ : std_logic;
SIGNAL \data_io[11]~input_o\ : std_logic;
SIGNAL \data_io[12]~input_o\ : std_logic;
SIGNAL \data_io[13]~input_o\ : std_logic;
SIGNAL \data_io[14]~input_o\ : std_logic;
SIGNAL \data_io[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \data_io[0]~output_o\ : std_logic;
SIGNAL \data_io[1]~output_o\ : std_logic;
SIGNAL \data_io[2]~output_o\ : std_logic;
SIGNAL \data_io[3]~output_o\ : std_logic;
SIGNAL \data_io[4]~output_o\ : std_logic;
SIGNAL \data_io[5]~output_o\ : std_logic;
SIGNAL \data_io[6]~output_o\ : std_logic;
SIGNAL \data_io[7]~output_o\ : std_logic;
SIGNAL \data_io[8]~output_o\ : std_logic;
SIGNAL \data_io[9]~output_o\ : std_logic;
SIGNAL \data_io[10]~output_o\ : std_logic;
SIGNAL \data_io[11]~output_o\ : std_logic;
SIGNAL \data_io[12]~output_o\ : std_logic;
SIGNAL \data_io[13]~output_o\ : std_logic;
SIGNAL \data_io[14]~output_o\ : std_logic;
SIGNAL \data_io[15]~output_o\ : std_logic;
SIGNAL \up_to_use~output_o\ : std_logic;
SIGNAL \mem_op_complete~output_o\ : std_logic;
SIGNAL \n_dqmh_to_sdram~output_o\ : std_logic;
SIGNAL \n_dqml_to_sdram~output_o\ : std_logic;
SIGNAL \bank_to_sdram[0]~output_o\ : std_logic;
SIGNAL \bank_to_sdram[1]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[0]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[1]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[2]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[3]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[4]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[5]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[6]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[7]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[8]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[9]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[10]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[11]~output_o\ : std_logic;
SIGNAL \addr_to_sdram[12]~output_o\ : std_logic;
SIGNAL \clk_en_to_sdram~output_o\ : std_logic;
SIGNAL \n_cs_to_sdram~output_o\ : std_logic;
SIGNAL \n_ras~output_o\ : std_logic;
SIGNAL \n_cas~output_o\ : std_logic;
SIGNAL \n_we~output_o\ : std_logic;
SIGNAL \ram_clk_in_100~input_o\ : std_logic;
SIGNAL \ram_clk_in_100~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \refresh~input_o\ : std_logic;
SIGNAL \state_to_pr~30_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_PRECHARGE~q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \refresh_cnt_int[11]~133_combout\ : std_logic;
SIGNAL \state_to_pr~31_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_MODE_REG~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \refresh_cnt_int[0]~131_combout\ : std_logic;
SIGNAL \refresh_cnt_int[17]~65_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[5]~4_combout\ : std_logic;
SIGNAL \refresh_cnt_int[17]~68_combout\ : std_logic;
SIGNAL \refresh_cnt_int[0]~132_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \refresh_cnt_int[1]~108_combout\ : std_logic;
SIGNAL \refresh_cnt_int[1]~109_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \refresh_cnt_int[2]~110_combout\ : std_logic;
SIGNAL \refresh_cnt_int[2]~111_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \refresh_cnt_int[3]~134_combout\ : std_logic;
SIGNAL \refresh_cnt_int[3]~126_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \refresh_cnt_int[3]~127_combout\ : std_logic;
SIGNAL \refresh_cnt_int[3]~128_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \refresh_cnt_int[4]~112_combout\ : std_logic;
SIGNAL \refresh_cnt_int[4]~113_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \refresh_cnt_int[5]~114_combout\ : std_logic;
SIGNAL \refresh_cnt_int[5]~115_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \refresh_cnt_int[6]~116_combout\ : std_logic;
SIGNAL \refresh_cnt_int[6]~117_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \refresh_cnt_int[7]~118_combout\ : std_logic;
SIGNAL \refresh_cnt_int[7]~119_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \refresh_cnt_int[8]~120_combout\ : std_logic;
SIGNAL \refresh_cnt_int[8]~121_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \refresh_cnt_int[9]~122_combout\ : std_logic;
SIGNAL \refresh_cnt_int[9]~123_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \refresh_cnt_int[10]~124_combout\ : std_logic;
SIGNAL \refresh_cnt_int[10]~125_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \refresh_cnt_int[11]~67_combout\ : std_logic;
SIGNAL \refresh_cnt_int[11]~69_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \refresh_cnt_int[12]~70_combout\ : std_logic;
SIGNAL \refresh_cnt_int[12]~71_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \refresh_cnt_int[13]~72_combout\ : std_logic;
SIGNAL \refresh_cnt_int[13]~73_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \refresh_cnt_int[14]~74_combout\ : std_logic;
SIGNAL \refresh_cnt_int[14]~75_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \refresh_cnt_int[15]~76_combout\ : std_logic;
SIGNAL \refresh_cnt_int[15]~77_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \refresh_cnt_int[16]~78_combout\ : std_logic;
SIGNAL \refresh_cnt_int[16]~79_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \refresh_cnt_int[17]~80_combout\ : std_logic;
SIGNAL \refresh_cnt_int[17]~81_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \refresh_cnt_int[18]~82_combout\ : std_logic;
SIGNAL \refresh_cnt_int[18]~83_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \refresh_cnt_int[19]~84_combout\ : std_logic;
SIGNAL \refresh_cnt_int[19]~85_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \refresh_cnt_int[20]~86_combout\ : std_logic;
SIGNAL \refresh_cnt_int[20]~87_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \refresh_cnt_int[21]~88_combout\ : std_logic;
SIGNAL \refresh_cnt_int[21]~89_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \refresh_cnt_int[22]~90_combout\ : std_logic;
SIGNAL \refresh_cnt_int[22]~91_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \refresh_cnt_int[23]~92_combout\ : std_logic;
SIGNAL \refresh_cnt_int[23]~93_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \refresh_cnt_int[24]~94_combout\ : std_logic;
SIGNAL \refresh_cnt_int[24]~95_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \refresh_cnt_int[25]~96_combout\ : std_logic;
SIGNAL \refresh_cnt_int[25]~97_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \refresh_cnt_int[26]~98_combout\ : std_logic;
SIGNAL \refresh_cnt_int[26]~99_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \refresh_cnt_int[28]~102_combout\ : std_logic;
SIGNAL \refresh_cnt_int[28]~103_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \refresh_cnt_int[29]~104_combout\ : std_logic;
SIGNAL \refresh_cnt_int[29]~105_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \refresh_cnt_int[30]~106_combout\ : std_logic;
SIGNAL \refresh_cnt_int[30]~107_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \refresh_cnt_int[31]~129_combout\ : std_logic;
SIGNAL \refresh_cnt_int[31]~130_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \state_to_pr~25_combout\ : std_logic;
SIGNAL \state_to_pr~26_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_FIRST_REFRESH~q\ : std_logic;
SIGNAL \refresh_cnt_int[11]~66_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \refresh_cnt_int[27]~100_combout\ : std_logic;
SIGNAL \refresh_cnt_int[27]~101_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \state_to_pr~27_combout\ : std_logic;
SIGNAL \state_to_pr~28_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_SECOND_REFRESH~q\ : std_logic;
SIGNAL \state_to_pr~17_combout\ : std_logic;
SIGNAL \state_to_pr~18_combout\ : std_logic;
SIGNAL \state_to_pr~16_combout\ : std_logic;
SIGNAL \state_to_pr~19_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_STALL~0_combout\ : std_logic;
SIGNAL \state_to_pr.INIT_STALL~q\ : std_logic;
SIGNAL \init_cnt_to_pr[26]~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \state_to_pr~33_combout\ : std_logic;
SIGNAL \state_to_pr.RCD~q\ : std_logic;
SIGNAL \state_to_pr~34_combout\ : std_logic;
SIGNAL \state_to_pr.RW_STATE~q\ : std_logic;
SIGNAL \state_to_pr~35_combout\ : std_logic;
SIGNAL \state_to_pr.FIRST_RAS~q\ : std_logic;
SIGNAL \state_to_pr~29_combout\ : std_logic;
SIGNAL \state_to_pr.SECOND_RAS~q\ : std_logic;
SIGNAL \state_to_pr~21_combout\ : std_logic;
SIGNAL \state_to_pr.PRECHARGE~q\ : std_logic;
SIGNAL \state_to_pr~15_combout\ : std_logic;
SIGNAL \init_cnt_int[0]~0_combout\ : std_logic;
SIGNAL \init_cnt_int[0]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \init_cnt_int[1]~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~5_combout\ : std_logic;
SIGNAL \cmd_int[1]~0_combout\ : std_logic;
SIGNAL \state_to_pr~20_combout\ : std_logic;
SIGNAL \state_to_pr.REFRESH_STATE~q\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~8_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~9_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[26]~6_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~7_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~10_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[2]~12_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[3]~13_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[4]~14_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[5]~15_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[6]~16_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[7]~17_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[8]~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[9]~19_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[10]~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[11]~21_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[12]~22_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[13]~23_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[14]~24_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[15]~25_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[15]~feeder_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[16]~26_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[16]~feeder_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[17]~27_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[17]~feeder_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[18]~28_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[19]~29_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[20]~30_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[21]~31_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[22]~32_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[23]~33_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[24]~34_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[25]~35_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[26]~36_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[27]~37_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[28]~38_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[29]~39_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[30]~40_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \init_cnt_to_pr[31]~41_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \state_to_pr~23_combout\ : std_logic;
SIGNAL \state_to_pr~22_combout\ : std_logic;
SIGNAL \state_to_pr~24_combout\ : std_logic;
SIGNAL \state_to_pr.IDLE~q\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \state_to_pr~32_combout\ : std_logic;
SIGNAL \state_to_pr.ACTIVATE~q\ : std_logic;
SIGNAL \data_out_to_pr[0]~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \buffer_to_pr~q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[1]~feeder_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[3]~feeder_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[6]~feeder_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[8]~feeder_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[9]~feeder_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[10]~feeder_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[11]~feeder_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[12]~feeder_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \data_out_to_pr[15]~feeder_combout\ : std_logic;
SIGNAL \mem_op_complete~0_combout\ : std_logic;
SIGNAL \n_dqmh_in~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \n_dqmh_to_pr~q\ : std_logic;
SIGNAL \n_dqml_in~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \n_dqml_to_pr~q\ : std_logic;
SIGNAL \addr_in[23]~input_o\ : std_logic;
SIGNAL \bank_int~0_combout\ : std_logic;
SIGNAL \addr_in[24]~input_o\ : std_logic;
SIGNAL \bank_int~1_combout\ : std_logic;
SIGNAL \addr_in[10]~input_o\ : std_logic;
SIGNAL \addr_in[0]~input_o\ : std_logic;
SIGNAL \addr_to_pr[0]~0_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \addr_in[11]~input_o\ : std_logic;
SIGNAL \addr_in[1]~input_o\ : std_logic;
SIGNAL \addr_to_pr[1]~1_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \addr_in[12]~input_o\ : std_logic;
SIGNAL \addr_in[2]~input_o\ : std_logic;
SIGNAL \addr_to_pr[2]~2_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \addr_in[3]~input_o\ : std_logic;
SIGNAL \addr_in[13]~input_o\ : std_logic;
SIGNAL \addr_to_pr[3]~3_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \addr_in[14]~input_o\ : std_logic;
SIGNAL \addr_in[4]~input_o\ : std_logic;
SIGNAL \addr_to_pr[4]~4_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \addr_in[15]~input_o\ : std_logic;
SIGNAL \addr_in[5]~input_o\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \addr_in[16]~input_o\ : std_logic;
SIGNAL \addr_in[6]~input_o\ : std_logic;
SIGNAL \addr_to_pr[6]~5_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \addr_in[7]~input_o\ : std_logic;
SIGNAL \addr_in[17]~input_o\ : std_logic;
SIGNAL \addr_to_pr[7]~6_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \addr_in[8]~input_o\ : std_logic;
SIGNAL \addr_in[18]~input_o\ : std_logic;
SIGNAL \addr_to_pr[8]~7_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \addr_in[9]~input_o\ : std_logic;
SIGNAL \addr_in[19]~input_o\ : std_logic;
SIGNAL \addr_to_pr[9]~8_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \addr_in[20]~input_o\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \addr_in[21]~input_o\ : std_logic;
SIGNAL \addr_int~0_combout\ : std_logic;
SIGNAL \addr_in[22]~input_o\ : std_logic;
SIGNAL \addr_int~1_combout\ : std_logic;
SIGNAL \clk_en_int~0_combout\ : std_logic;
SIGNAL \clk_en_to_pr~q\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr16~1_combout\ : std_logic;
SIGNAL \cmd_int[2]~1_combout\ : std_logic;
SIGNAL \cmd_to_pr[2]~feeder_combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \cmd_int[1]~2_combout\ : std_logic;
SIGNAL \cmd_to_pr[1]~feeder_combout\ : std_logic;
SIGNAL \cmd_int[0]~3_combout\ : std_logic;
SIGNAL \cmd_to_pr[0]~feeder_combout\ : std_logic;
SIGNAL data_out_to_pr : std_logic_vector(15 DOWNTO 0);
SIGNAL refresh_cnt_to_pr : std_logic_vector(31 DOWNTO 0);
SIGNAL init_cnt_to_pr : std_logic_vector(31 DOWNTO 0);
SIGNAL bank_to_pr : std_logic_vector(1 DOWNTO 0);
SIGNAL addr_to_pr : std_logic_vector(12 DOWNTO 0);
SIGNAL cmd_to_pr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_state_to_pr.IDLE~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_rw <= rw;
ww_refresh <= refresh;
ww_ram_clk_in_100 <= ram_clk_in_100;
ww_addr_in <= addr_in;
ww_n_dqml_in <= n_dqml_in;
ww_n_dqmh_in <= n_dqmh_in;
ww_data_in <= data_in;
up_to_use <= ww_up_to_use;
mem_op_complete <= ww_mem_op_complete;
n_dqmh_to_sdram <= ww_n_dqmh_to_sdram;
n_dqml_to_sdram <= ww_n_dqml_to_sdram;
bank_to_sdram <= ww_bank_to_sdram;
addr_to_sdram <= ww_addr_to_sdram;
clk_en_to_sdram <= ww_clk_en_to_sdram;
n_cs_to_sdram <= ww_n_cs_to_sdram;
n_ras <= ww_n_ras;
n_cas <= ww_n_cas;
n_we <= ww_n_we;
data_io <= ww_data_io;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ram_clk_in_100~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ram_clk_in_100~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_state_to_pr.IDLE~q\ <= NOT \state_to_pr.IDLE~q\;
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

-- Location: IOOBUF_X78_Y41_N2
\data_io[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(0),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\data_io[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(1),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\data_io[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(2),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\data_io[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(3),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\data_io[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(4),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\data_io[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(5),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\data_io[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(6),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\data_io[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(7),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[7]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\data_io[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(8),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[8]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\data_io[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(9),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[9]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\data_io[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(10),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[10]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\data_io[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(11),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[11]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\data_io[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(12),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[12]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\data_io[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(13),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[13]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\data_io[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(14),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[14]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\data_io[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out_to_pr(15),
	oe => \buffer_to_pr~q\,
	devoe => ww_devoe,
	o => \data_io[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\up_to_use~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \up_to_use~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\mem_op_complete~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_op_complete~0_combout\,
	devoe => ww_devoe,
	o => \mem_op_complete~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\n_dqmh_to_sdram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_dqmh_to_pr~q\,
	devoe => ww_devoe,
	o => \n_dqmh_to_sdram~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\n_dqml_to_sdram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_dqml_to_pr~q\,
	devoe => ww_devoe,
	o => \n_dqml_to_sdram~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\bank_to_sdram[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bank_to_pr(0),
	devoe => ww_devoe,
	o => \bank_to_sdram[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\bank_to_sdram[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bank_to_pr(1),
	devoe => ww_devoe,
	o => \bank_to_sdram[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\addr_to_sdram[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(0),
	devoe => ww_devoe,
	o => \addr_to_sdram[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\addr_to_sdram[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(1),
	devoe => ww_devoe,
	o => \addr_to_sdram[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\addr_to_sdram[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(2),
	devoe => ww_devoe,
	o => \addr_to_sdram[2]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\addr_to_sdram[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(3),
	devoe => ww_devoe,
	o => \addr_to_sdram[3]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\addr_to_sdram[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(4),
	devoe => ww_devoe,
	o => \addr_to_sdram[4]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\addr_to_sdram[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(5),
	devoe => ww_devoe,
	o => \addr_to_sdram[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\addr_to_sdram[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(6),
	devoe => ww_devoe,
	o => \addr_to_sdram[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\addr_to_sdram[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(7),
	devoe => ww_devoe,
	o => \addr_to_sdram[7]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\addr_to_sdram[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(8),
	devoe => ww_devoe,
	o => \addr_to_sdram[8]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\addr_to_sdram[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(9),
	devoe => ww_devoe,
	o => \addr_to_sdram[9]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\addr_to_sdram[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(10),
	devoe => ww_devoe,
	o => \addr_to_sdram[10]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\addr_to_sdram[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(11),
	devoe => ww_devoe,
	o => \addr_to_sdram[11]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\addr_to_sdram[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_to_pr(12),
	devoe => ww_devoe,
	o => \addr_to_sdram[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\clk_en_to_sdram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_en_to_pr~q\,
	devoe => ww_devoe,
	o => \clk_en_to_sdram~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\n_cs_to_sdram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \n_cs_to_sdram~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\n_ras~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cmd_to_pr(2),
	devoe => ww_devoe,
	o => \n_ras~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\n_cas~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cmd_to_pr(1),
	devoe => ww_devoe,
	o => \n_cas~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\n_we~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cmd_to_pr(0),
	devoe => ww_devoe,
	o => \n_we~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\ram_clk_in_100~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_clk_in_100,
	o => \ram_clk_in_100~input_o\);

-- Location: CLKCTRL_G3
\ram_clk_in_100~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ram_clk_in_100~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ram_clk_in_100~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y45_N1
\data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X77_Y45_N8
\data_out_to_pr[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \data_out_to_pr[0]~feeder_combout\);

-- Location: IOIBUF_X78_Y24_N1
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

-- Location: IOIBUF_X78_Y34_N15
\rw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: IOIBUF_X78_Y24_N8
\refresh~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_refresh,
	o => \refresh~input_o\);

-- Location: LCCOMB_X76_Y26_N6
\state_to_pr~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~30_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & ((\state_to_pr.INIT_PRECHARGE~q\))) # (!\Equal0~10_combout\ & (!\state_to_pr.INIT_STALL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr.INIT_STALL~q\,
	datac => \state_to_pr.INIT_PRECHARGE~q\,
	datad => \Equal0~10_combout\,
	combout => \state_to_pr~30_combout\);

-- Location: FF_X76_Y26_N7
\state_to_pr.INIT_PRECHARGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.INIT_PRECHARGE~q\);

-- Location: LCCOMB_X76_Y26_N8
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\state_to_pr.INIT_FIRST_REFRESH~q\ & \Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X75_Y26_N24
\refresh_cnt_int[11]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[11]~133_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (!\Equal2~10_combout\ & (!\Selector79~0_combout\ & !\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \Equal2~10_combout\,
	datac => \Selector79~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \refresh_cnt_int[11]~133_combout\);

-- Location: FF_X74_Y28_N27
\refresh_cnt_to_pr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[15]~77_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(15));

-- Location: FF_X76_Y28_N7
\refresh_cnt_to_pr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[13]~73_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(13));

-- Location: FF_X74_Y28_N15
\refresh_cnt_to_pr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[10]~125_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(10));

-- Location: LCCOMB_X76_Y26_N12
\state_to_pr~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~31_combout\ = (!\rst~input_o\ & ((\state_to_pr~19_combout\ & (\state_to_pr.INIT_FIRST_REFRESH~q\)) # (!\state_to_pr~19_combout\ & ((\state_to_pr.INIT_MODE_REG~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \rst~input_o\,
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \state_to_pr~19_combout\,
	combout => \state_to_pr~31_combout\);

-- Location: FF_X76_Y26_N13
\state_to_pr.INIT_MODE_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.INIT_MODE_REG~q\);

-- Location: FF_X75_Y26_N15
\refresh_cnt_to_pr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[3]~128_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(3));

-- Location: FF_X75_Y28_N29
\refresh_cnt_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \refresh_cnt_int[1]~109_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(1));

-- Location: LCCOMB_X75_Y28_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = refresh_cnt_to_pr(0) $ (VCC)
-- \Add2~1\ = CARRY(refresh_cnt_to_pr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X77_Y28_N0
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = \refresh_cnt_int[0]~132_combout\ $ (VCC)
-- \Add1~3\ = CARRY(\refresh_cnt_int[0]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[0]~132_combout\,
	datad => VCC,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X74_Y28_N10
\refresh_cnt_int[0]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[0]~131_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~0_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \Add2~0_combout\,
	datac => \Add1~2_combout\,
	datad => \state_to_pr.INIT_SECOND_REFRESH~q\,
	combout => \refresh_cnt_int[0]~131_combout\);

-- Location: LCCOMB_X75_Y26_N28
\refresh_cnt_int[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[17]~65_combout\ = (!\Selector79~0_combout\ & (!\Equal0~10_combout\ & ((!\Equal2~10_combout\) # (!\state_to_pr.INIT_SECOND_REFRESH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \Equal2~10_combout\,
	datac => \Selector79~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \refresh_cnt_int[17]~65_combout\);

-- Location: LCCOMB_X75_Y29_N4
\init_cnt_to_pr[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[5]~4_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & !\state_to_pr.INIT_PRECHARGE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \state_to_pr.INIT_PRECHARGE~q\,
	combout => \init_cnt_to_pr[5]~4_combout\);

-- Location: LCCOMB_X75_Y29_N0
\refresh_cnt_int[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[17]~68_combout\ = ((!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\init_cnt_to_pr[5]~4_combout\ & !\state_to_pr.INIT_FIRST_REFRESH~q\))) # (!\refresh_cnt_int[17]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~65_combout\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \init_cnt_to_pr[5]~4_combout\,
	datad => \state_to_pr.INIT_FIRST_REFRESH~q\,
	combout => \refresh_cnt_int[17]~68_combout\);

-- Location: LCCOMB_X75_Y29_N30
\refresh_cnt_int[0]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[0]~132_combout\ = (\refresh_cnt_int[17]~68_combout\ & (refresh_cnt_to_pr(0))) # (!\refresh_cnt_int[17]~68_combout\ & ((\refresh_cnt_int[0]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(0),
	datac => \refresh_cnt_int[0]~131_combout\,
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[0]~132_combout\);

-- Location: FF_X75_Y28_N27
\refresh_cnt_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \refresh_cnt_int[0]~132_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(0));

-- Location: LCCOMB_X75_Y28_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (refresh_cnt_to_pr(1) & (\Add2~1\ & VCC)) # (!refresh_cnt_to_pr(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!refresh_cnt_to_pr(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X77_Y28_N2
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\refresh_cnt_int[1]~109_combout\ & (\Add1~3\ & VCC)) # (!\refresh_cnt_int[1]~109_combout\ & (!\Add1~3\))
-- \Add1~5\ = CARRY((!\refresh_cnt_int[1]~109_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[1]~109_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X76_Y28_N8
\refresh_cnt_int[1]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[1]~108_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (\Add2~2_combout\)) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\state_to_pr.INIT_FIRST_REFRESH~q\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datad => \Add1~4_combout\,
	combout => \refresh_cnt_int[1]~108_combout\);

-- Location: LCCOMB_X76_Y28_N10
\refresh_cnt_int[1]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[1]~109_combout\ = (\refresh_cnt_int[17]~68_combout\ & (refresh_cnt_to_pr(1))) # (!\refresh_cnt_int[17]~68_combout\ & ((\refresh_cnt_int[1]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(1),
	datac => \refresh_cnt_int[1]~108_combout\,
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[1]~109_combout\);

-- Location: LCCOMB_X77_Y28_N4
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\refresh_cnt_int[2]~111_combout\ & ((GND) # (!\Add1~5\))) # (!\refresh_cnt_int[2]~111_combout\ & (\Add1~5\ $ (GND)))
-- \Add1~7\ = CARRY((\refresh_cnt_int[2]~111_combout\) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[2]~111_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X75_Y28_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (refresh_cnt_to_pr(2) & ((GND) # (!\Add2~3\))) # (!refresh_cnt_to_pr(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((refresh_cnt_to_pr(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X74_Y28_N22
\refresh_cnt_int[2]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[2]~110_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~4_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \Add1~6_combout\,
	datad => \Add2~4_combout\,
	combout => \refresh_cnt_int[2]~110_combout\);

-- Location: LCCOMB_X74_Y28_N4
\refresh_cnt_int[2]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[2]~111_combout\ = (\refresh_cnt_int[17]~68_combout\ & (refresh_cnt_to_pr(2))) # (!\refresh_cnt_int[17]~68_combout\ & ((\refresh_cnt_int[2]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(2),
	datac => \refresh_cnt_int[2]~110_combout\,
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[2]~111_combout\);

-- Location: FF_X75_Y28_N25
\refresh_cnt_to_pr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \refresh_cnt_int[2]~111_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(2));

-- Location: LCCOMB_X75_Y28_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (refresh_cnt_to_pr(3) & (\Add2~5\ & VCC)) # (!refresh_cnt_to_pr(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!refresh_cnt_to_pr(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X75_Y26_N26
\refresh_cnt_int[3]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[3]~134_combout\ = (\state_to_pr.INIT_MODE_REG~q\) # ((\state_to_pr.INIT_SECOND_REFRESH~q\ & (\Add2~6_combout\ & !\Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_MODE_REG~q\,
	datac => \Add2~6_combout\,
	datad => \Equal2~10_combout\,
	combout => \refresh_cnt_int[3]~134_combout\);

-- Location: LCCOMB_X76_Y26_N4
\refresh_cnt_int[3]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[3]~126_combout\ = (\state_to_pr.INIT_FIRST_REFRESH~q\ & (((\Equal1~10_combout\)))) # (!\state_to_pr.INIT_FIRST_REFRESH~q\ & ((\state_to_pr.INIT_PRECHARGE~q\) # ((\state_to_pr.INIT_SECOND_REFRESH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_PRECHARGE~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \Equal1~10_combout\,
	combout => \refresh_cnt_int[3]~126_combout\);

-- Location: LCCOMB_X77_Y28_N6
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\refresh_cnt_int[3]~128_combout\ & (\Add1~7\ & VCC)) # (!\refresh_cnt_int[3]~128_combout\ & (!\Add1~7\))
-- \Add1~9\ = CARRY((!\refresh_cnt_int[3]~128_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[3]~128_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X76_Y26_N14
\refresh_cnt_int[3]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[3]~127_combout\ = (\refresh_cnt_int[3]~126_combout\ & (refresh_cnt_to_pr(3) & (!\state_to_pr.INIT_FIRST_REFRESH~q\))) # (!\refresh_cnt_int[3]~126_combout\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (refresh_cnt_to_pr(3) $ 
-- (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(3),
	datab => \refresh_cnt_int[3]~126_combout\,
	datac => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \Add1~8_combout\,
	combout => \refresh_cnt_int[3]~127_combout\);

-- Location: LCCOMB_X75_Y26_N14
\refresh_cnt_int[3]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[3]~128_combout\ = (\Equal0~10_combout\ & (((refresh_cnt_to_pr(3))))) # (!\Equal0~10_combout\ & ((\refresh_cnt_int[3]~134_combout\) # (\refresh_cnt_int[3]~127_combout\ $ (refresh_cnt_to_pr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[3]~134_combout\,
	datab => \refresh_cnt_int[3]~127_combout\,
	datac => refresh_cnt_to_pr(3),
	datad => \Equal0~10_combout\,
	combout => \refresh_cnt_int[3]~128_combout\);

-- Location: LCCOMB_X77_Y28_N8
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\refresh_cnt_int[4]~113_combout\ & ((GND) # (!\Add1~9\))) # (!\refresh_cnt_int[4]~113_combout\ & (\Add1~9\ $ (GND)))
-- \Add1~11\ = CARRY((\refresh_cnt_int[4]~113_combout\) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[4]~113_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X76_Y28_N21
\refresh_cnt_to_pr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[4]~113_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(4));

-- Location: LCCOMB_X75_Y28_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (refresh_cnt_to_pr(4) & ((GND) # (!\Add2~7\))) # (!refresh_cnt_to_pr(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((refresh_cnt_to_pr(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X76_Y28_N28
\refresh_cnt_int[4]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[4]~112_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~8_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \Add1~10_combout\,
	datad => \Add2~8_combout\,
	combout => \refresh_cnt_int[4]~112_combout\);

-- Location: LCCOMB_X76_Y28_N20
\refresh_cnt_int[4]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[4]~113_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(4)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[4]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[4]~112_combout\,
	datac => refresh_cnt_to_pr(4),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[4]~113_combout\);

-- Location: LCCOMB_X77_Y28_N10
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\refresh_cnt_int[5]~115_combout\ & (\Add1~11\ & VCC)) # (!\refresh_cnt_int[5]~115_combout\ & (!\Add1~11\))
-- \Add1~13\ = CARRY((!\refresh_cnt_int[5]~115_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[5]~115_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X76_Y28_N23
\refresh_cnt_to_pr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[5]~115_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(5));

-- Location: LCCOMB_X75_Y28_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (refresh_cnt_to_pr(5) & (\Add2~9\ & VCC)) # (!refresh_cnt_to_pr(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!refresh_cnt_to_pr(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X76_Y28_N14
\refresh_cnt_int[5]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[5]~114_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~10_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \Add1~12_combout\,
	datad => \Add2~10_combout\,
	combout => \refresh_cnt_int[5]~114_combout\);

-- Location: LCCOMB_X76_Y28_N22
\refresh_cnt_int[5]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[5]~115_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(5)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[5]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[5]~114_combout\,
	datac => refresh_cnt_to_pr(5),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[5]~115_combout\);

-- Location: LCCOMB_X77_Y28_N12
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\refresh_cnt_int[6]~117_combout\ & ((GND) # (!\Add1~13\))) # (!\refresh_cnt_int[6]~117_combout\ & (\Add1~13\ $ (GND)))
-- \Add1~15\ = CARRY((\refresh_cnt_int[6]~117_combout\) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[6]~117_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X76_Y28_N5
\refresh_cnt_to_pr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[6]~117_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(6));

-- Location: LCCOMB_X75_Y28_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (refresh_cnt_to_pr(6) & ((GND) # (!\Add2~11\))) # (!refresh_cnt_to_pr(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((refresh_cnt_to_pr(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X76_Y28_N18
\refresh_cnt_int[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[6]~116_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~12_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \Add1~14_combout\,
	datad => \Add2~12_combout\,
	combout => \refresh_cnt_int[6]~116_combout\);

-- Location: LCCOMB_X76_Y28_N4
\refresh_cnt_int[6]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[6]~117_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(6)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[6]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[6]~116_combout\,
	datac => refresh_cnt_to_pr(6),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[6]~117_combout\);

-- Location: LCCOMB_X77_Y28_N14
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\refresh_cnt_int[7]~119_combout\ & (\Add1~15\ & VCC)) # (!\refresh_cnt_int[7]~119_combout\ & (!\Add1~15\))
-- \Add1~17\ = CARRY((!\refresh_cnt_int[7]~119_combout\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[7]~119_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X76_Y28_N3
\refresh_cnt_to_pr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[7]~119_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(7));

-- Location: LCCOMB_X75_Y28_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (refresh_cnt_to_pr(7) & (\Add2~13\ & VCC)) # (!refresh_cnt_to_pr(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!refresh_cnt_to_pr(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X76_Y28_N24
\refresh_cnt_int[7]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[7]~118_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~14_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \Add1~16_combout\,
	datad => \Add2~14_combout\,
	combout => \refresh_cnt_int[7]~118_combout\);

-- Location: LCCOMB_X76_Y28_N2
\refresh_cnt_int[7]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[7]~119_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(7)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[7]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[7]~118_combout\,
	datac => refresh_cnt_to_pr(7),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[7]~119_combout\);

-- Location: LCCOMB_X77_Y28_N16
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\refresh_cnt_int[8]~121_combout\ & ((GND) # (!\Add1~17\))) # (!\refresh_cnt_int[8]~121_combout\ & (\Add1~17\ $ (GND)))
-- \Add1~19\ = CARRY((\refresh_cnt_int[8]~121_combout\) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[8]~121_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X74_Y28_N7
\refresh_cnt_to_pr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[8]~121_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(8));

-- Location: LCCOMB_X75_Y28_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (refresh_cnt_to_pr(8) & ((GND) # (!\Add2~15\))) # (!refresh_cnt_to_pr(8) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((refresh_cnt_to_pr(8)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X74_Y28_N30
\refresh_cnt_int[8]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[8]~120_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~16_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \Add1~18_combout\,
	datad => \Add2~16_combout\,
	combout => \refresh_cnt_int[8]~120_combout\);

-- Location: LCCOMB_X74_Y28_N6
\refresh_cnt_int[8]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[8]~121_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(8)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[8]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[8]~120_combout\,
	datac => refresh_cnt_to_pr(8),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[8]~121_combout\);

-- Location: LCCOMB_X77_Y28_N18
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\refresh_cnt_int[9]~123_combout\ & (\Add1~19\ & VCC)) # (!\refresh_cnt_int[9]~123_combout\ & (!\Add1~19\))
-- \Add1~21\ = CARRY((!\refresh_cnt_int[9]~123_combout\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[9]~123_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X75_Y28_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (refresh_cnt_to_pr(9) & (\Add2~17\ & VCC)) # (!refresh_cnt_to_pr(9) & (!\Add2~17\))
-- \Add2~19\ = CARRY((!refresh_cnt_to_pr(9) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X74_Y28_N16
\refresh_cnt_int[9]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[9]~122_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~18_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & (\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \Add1~20_combout\,
	datad => \Add2~18_combout\,
	combout => \refresh_cnt_int[9]~122_combout\);

-- Location: LCCOMB_X74_Y28_N12
\refresh_cnt_int[9]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[9]~123_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(9)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[9]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[9]~122_combout\,
	datac => refresh_cnt_to_pr(9),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[9]~123_combout\);

-- Location: FF_X74_Y28_N13
\refresh_cnt_to_pr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[9]~123_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(9));

-- Location: LCCOMB_X75_Y28_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (refresh_cnt_to_pr(10) & ((GND) # (!\Add2~19\))) # (!refresh_cnt_to_pr(10) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((refresh_cnt_to_pr(10)) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X77_Y28_N20
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\refresh_cnt_int[10]~125_combout\ & ((GND) # (!\Add1~21\))) # (!\refresh_cnt_int[10]~125_combout\ & (\Add1~21\ $ (GND)))
-- \Add1~23\ = CARRY((\refresh_cnt_int[10]~125_combout\) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[10]~125_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X74_Y28_N2
\refresh_cnt_int[10]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[10]~124_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((\Add2~20_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & ((\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \Add2~20_combout\,
	datad => \Add1~22_combout\,
	combout => \refresh_cnt_int[10]~124_combout\);

-- Location: LCCOMB_X74_Y28_N14
\refresh_cnt_int[10]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[10]~125_combout\ = (\refresh_cnt_int[17]~68_combout\ & ((refresh_cnt_to_pr(10)))) # (!\refresh_cnt_int[17]~68_combout\ & (\refresh_cnt_int[10]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[10]~124_combout\,
	datac => refresh_cnt_to_pr(10),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[10]~125_combout\);

-- Location: LCCOMB_X77_Y28_N22
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\refresh_cnt_int[11]~69_combout\ & (\Add1~23\ & VCC)) # (!\refresh_cnt_int[11]~69_combout\ & (!\Add1~23\))
-- \Add1~25\ = CARRY((!\refresh_cnt_int[11]~69_combout\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~69_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X75_Y26_N7
\refresh_cnt_to_pr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[11]~69_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(11));

-- Location: LCCOMB_X75_Y28_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (refresh_cnt_to_pr(11) & (\Add2~21\ & VCC)) # (!refresh_cnt_to_pr(11) & (!\Add2~21\))
-- \Add2~23\ = CARRY((!refresh_cnt_to_pr(11) & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X74_Y28_N20
\refresh_cnt_int[11]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[11]~67_combout\ = (\Add1~24_combout\ & ((\refresh_cnt_int[11]~66_combout\) # ((\Add2~22_combout\ & \refresh_cnt_int[11]~133_combout\)))) # (!\Add1~24_combout\ & (\Add2~22_combout\ & ((\refresh_cnt_int[11]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add2~22_combout\,
	datac => \refresh_cnt_int[11]~66_combout\,
	datad => \refresh_cnt_int[11]~133_combout\,
	combout => \refresh_cnt_int[11]~67_combout\);

-- Location: LCCOMB_X75_Y26_N6
\refresh_cnt_int[11]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[11]~69_combout\ = (\refresh_cnt_int[11]~67_combout\) # ((refresh_cnt_to_pr(11) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~67_combout\,
	datac => refresh_cnt_to_pr(11),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[11]~69_combout\);

-- Location: LCCOMB_X77_Y28_N24
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\refresh_cnt_int[12]~71_combout\ & ((GND) # (!\Add1~25\))) # (!\refresh_cnt_int[12]~71_combout\ & (\Add1~25\ $ (GND)))
-- \Add1~27\ = CARRY((\refresh_cnt_int[12]~71_combout\) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[12]~71_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X75_Y28_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (refresh_cnt_to_pr(12) & ((GND) # (!\Add2~23\))) # (!refresh_cnt_to_pr(12) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((refresh_cnt_to_pr(12)) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X74_Y28_N18
\refresh_cnt_int[12]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[12]~70_combout\ = (\refresh_cnt_int[11]~133_combout\ & ((\Add2~24_combout\) # ((\Add1~26_combout\ & \refresh_cnt_int[11]~66_combout\)))) # (!\refresh_cnt_int[11]~133_combout\ & (\Add1~26_combout\ & (\refresh_cnt_int[11]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~133_combout\,
	datab => \Add1~26_combout\,
	datac => \refresh_cnt_int[11]~66_combout\,
	datad => \Add2~24_combout\,
	combout => \refresh_cnt_int[12]~70_combout\);

-- Location: LCCOMB_X74_Y28_N24
\refresh_cnt_int[12]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[12]~71_combout\ = (\refresh_cnt_int[12]~70_combout\) # ((refresh_cnt_to_pr(12) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[12]~70_combout\,
	datac => refresh_cnt_to_pr(12),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[12]~71_combout\);

-- Location: FF_X74_Y28_N25
\refresh_cnt_to_pr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[12]~71_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(12));

-- Location: LCCOMB_X75_Y28_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (refresh_cnt_to_pr(13) & (\Add2~25\ & VCC)) # (!refresh_cnt_to_pr(13) & (!\Add2~25\))
-- \Add2~27\ = CARRY((!refresh_cnt_to_pr(13) & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X77_Y28_N26
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\refresh_cnt_int[13]~73_combout\ & (\Add1~27\ & VCC)) # (!\refresh_cnt_int[13]~73_combout\ & (!\Add1~27\))
-- \Add1~29\ = CARRY((!\refresh_cnt_int[13]~73_combout\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[13]~73_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X76_Y28_N16
\refresh_cnt_int[13]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[13]~72_combout\ = (\refresh_cnt_int[11]~133_combout\ & ((\Add2~26_combout\) # ((\refresh_cnt_int[11]~66_combout\ & \Add1~28_combout\)))) # (!\refresh_cnt_int[11]~133_combout\ & (\refresh_cnt_int[11]~66_combout\ & ((\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~133_combout\,
	datab => \refresh_cnt_int[11]~66_combout\,
	datac => \Add2~26_combout\,
	datad => \Add1~28_combout\,
	combout => \refresh_cnt_int[13]~72_combout\);

-- Location: LCCOMB_X76_Y28_N6
\refresh_cnt_int[13]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[13]~73_combout\ = (\refresh_cnt_int[13]~72_combout\) # ((refresh_cnt_to_pr(13) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[13]~72_combout\,
	datac => refresh_cnt_to_pr(13),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[13]~73_combout\);

-- Location: LCCOMB_X77_Y28_N28
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\refresh_cnt_int[14]~75_combout\ & ((GND) # (!\Add1~29\))) # (!\refresh_cnt_int[14]~75_combout\ & (\Add1~29\ $ (GND)))
-- \Add1~31\ = CARRY((\refresh_cnt_int[14]~75_combout\) # (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[14]~75_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X75_Y28_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (refresh_cnt_to_pr(14) & ((GND) # (!\Add2~27\))) # (!refresh_cnt_to_pr(14) & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((refresh_cnt_to_pr(14)) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X76_Y28_N30
\refresh_cnt_int[14]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[14]~74_combout\ = (\refresh_cnt_int[11]~133_combout\ & ((\Add2~28_combout\) # ((\refresh_cnt_int[11]~66_combout\ & \Add1~30_combout\)))) # (!\refresh_cnt_int[11]~133_combout\ & (\refresh_cnt_int[11]~66_combout\ & (\Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~133_combout\,
	datab => \refresh_cnt_int[11]~66_combout\,
	datac => \Add1~30_combout\,
	datad => \Add2~28_combout\,
	combout => \refresh_cnt_int[14]~74_combout\);

-- Location: LCCOMB_X75_Y26_N22
\refresh_cnt_int[14]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[14]~75_combout\ = (\refresh_cnt_int[14]~74_combout\) # ((refresh_cnt_to_pr(14) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[14]~74_combout\,
	datac => refresh_cnt_to_pr(14),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[14]~75_combout\);

-- Location: FF_X75_Y26_N23
\refresh_cnt_to_pr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[14]~75_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(14));

-- Location: LCCOMB_X75_Y28_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (refresh_cnt_to_pr(15) & (\Add2~29\ & VCC)) # (!refresh_cnt_to_pr(15) & (!\Add2~29\))
-- \Add2~31\ = CARRY((!refresh_cnt_to_pr(15) & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X77_Y28_N30
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\refresh_cnt_int[15]~77_combout\ & (\Add1~31\ & VCC)) # (!\refresh_cnt_int[15]~77_combout\ & (!\Add1~31\))
-- \Add1~33\ = CARRY((!\refresh_cnt_int[15]~77_combout\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[15]~77_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X74_Y28_N0
\refresh_cnt_int[15]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[15]~76_combout\ = (\refresh_cnt_int[11]~133_combout\ & ((\Add2~30_combout\) # ((\refresh_cnt_int[11]~66_combout\ & \Add1~32_combout\)))) # (!\refresh_cnt_int[11]~133_combout\ & (\refresh_cnt_int[11]~66_combout\ & ((\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~133_combout\,
	datab => \refresh_cnt_int[11]~66_combout\,
	datac => \Add2~30_combout\,
	datad => \Add1~32_combout\,
	combout => \refresh_cnt_int[15]~76_combout\);

-- Location: LCCOMB_X74_Y28_N26
\refresh_cnt_int[15]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[15]~77_combout\ = (\refresh_cnt_int[15]~76_combout\) # ((refresh_cnt_to_pr(15) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[15]~76_combout\,
	datac => refresh_cnt_to_pr(15),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[15]~77_combout\);

-- Location: FF_X76_Y29_N21
\refresh_cnt_to_pr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[18]~83_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(18));

-- Location: FF_X76_Y29_N15
\refresh_cnt_to_pr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[17]~81_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(17));

-- Location: FF_X76_Y29_N25
\refresh_cnt_to_pr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[16]~79_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(16));

-- Location: LCCOMB_X75_Y27_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (refresh_cnt_to_pr(16) & ((GND) # (!\Add2~31\))) # (!refresh_cnt_to_pr(16) & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((refresh_cnt_to_pr(16)) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X77_Y27_N0
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\refresh_cnt_int[16]~79_combout\ & ((GND) # (!\Add1~33\))) # (!\refresh_cnt_int[16]~79_combout\ & (\Add1~33\ $ (GND)))
-- \Add1~35\ = CARRY((\refresh_cnt_int[16]~79_combout\) # (!\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[16]~79_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X76_Y27_N0
\refresh_cnt_int[16]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[16]~78_combout\ = (\Add2~32_combout\ & ((\refresh_cnt_int[11]~133_combout\) # ((\Add1~34_combout\ & \refresh_cnt_int[11]~66_combout\)))) # (!\Add2~32_combout\ & (\Add1~34_combout\ & ((\refresh_cnt_int[11]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add1~34_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \refresh_cnt_int[11]~66_combout\,
	combout => \refresh_cnt_int[16]~78_combout\);

-- Location: LCCOMB_X76_Y29_N24
\refresh_cnt_int[16]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[16]~79_combout\ = (\refresh_cnt_int[16]~78_combout\) # ((\refresh_cnt_int[17]~68_combout\ & refresh_cnt_to_pr(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~68_combout\,
	datac => refresh_cnt_to_pr(16),
	datad => \refresh_cnt_int[16]~78_combout\,
	combout => \refresh_cnt_int[16]~79_combout\);

-- Location: LCCOMB_X77_Y27_N2
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\refresh_cnt_int[17]~81_combout\ & (\Add1~35\ & VCC)) # (!\refresh_cnt_int[17]~81_combout\ & (!\Add1~35\))
-- \Add1~37\ = CARRY((!\refresh_cnt_int[17]~81_combout\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~81_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X75_Y27_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (refresh_cnt_to_pr(17) & (\Add2~33\ & VCC)) # (!refresh_cnt_to_pr(17) & (!\Add2~33\))
-- \Add2~35\ = CARRY((!refresh_cnt_to_pr(17) & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X76_Y27_N18
\refresh_cnt_int[17]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[17]~80_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~36_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~34_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & ((\Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add1~36_combout\,
	datad => \Add2~34_combout\,
	combout => \refresh_cnt_int[17]~80_combout\);

-- Location: LCCOMB_X76_Y29_N14
\refresh_cnt_int[17]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[17]~81_combout\ = (\refresh_cnt_int[17]~80_combout\) # ((\refresh_cnt_int[17]~68_combout\ & refresh_cnt_to_pr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~68_combout\,
	datac => refresh_cnt_to_pr(17),
	datad => \refresh_cnt_int[17]~80_combout\,
	combout => \refresh_cnt_int[17]~81_combout\);

-- Location: LCCOMB_X77_Y27_N4
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\refresh_cnt_int[18]~83_combout\ & ((GND) # (!\Add1~37\))) # (!\refresh_cnt_int[18]~83_combout\ & (\Add1~37\ $ (GND)))
-- \Add1~39\ = CARRY((\refresh_cnt_int[18]~83_combout\) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[18]~83_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X75_Y27_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (refresh_cnt_to_pr(18) & ((GND) # (!\Add2~35\))) # (!refresh_cnt_to_pr(18) & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((refresh_cnt_to_pr(18)) # (!\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X76_Y27_N16
\refresh_cnt_int[18]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[18]~82_combout\ = (\Add1~38_combout\ & ((\refresh_cnt_int[11]~66_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~36_combout\)))) # (!\Add1~38_combout\ & (\refresh_cnt_int[11]~133_combout\ & (\Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add2~36_combout\,
	datad => \refresh_cnt_int[11]~66_combout\,
	combout => \refresh_cnt_int[18]~82_combout\);

-- Location: LCCOMB_X76_Y29_N20
\refresh_cnt_int[18]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[18]~83_combout\ = (\refresh_cnt_int[18]~82_combout\) # ((\refresh_cnt_int[17]~68_combout\ & refresh_cnt_to_pr(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~68_combout\,
	datac => refresh_cnt_to_pr(18),
	datad => \refresh_cnt_int[18]~82_combout\,
	combout => \refresh_cnt_int[18]~83_combout\);

-- Location: LCCOMB_X76_Y29_N10
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\refresh_cnt_int[15]~77_combout\ & (!\refresh_cnt_int[18]~83_combout\ & (!\refresh_cnt_int[17]~81_combout\ & !\refresh_cnt_int[16]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[15]~77_combout\,
	datab => \refresh_cnt_int[18]~83_combout\,
	datac => \refresh_cnt_int[17]~81_combout\,
	datad => \refresh_cnt_int[16]~79_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X76_Y29_N0
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\refresh_cnt_int[12]~71_combout\ & (!\refresh_cnt_int[13]~73_combout\ & (!\refresh_cnt_int[11]~69_combout\ & !\refresh_cnt_int[14]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[12]~71_combout\,
	datab => \refresh_cnt_int[13]~73_combout\,
	datac => \refresh_cnt_int[11]~69_combout\,
	datad => \refresh_cnt_int[14]~75_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X76_Y29_N12
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X74_Y27_N25
\refresh_cnt_to_pr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[24]~95_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(24));

-- Location: FF_X76_Y29_N7
\refresh_cnt_to_pr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[19]~85_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(19));

-- Location: LCCOMB_X77_Y27_N6
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\refresh_cnt_int[19]~85_combout\ & (\Add1~39\ & VCC)) # (!\refresh_cnt_int[19]~85_combout\ & (!\Add1~39\))
-- \Add1~41\ = CARRY((!\refresh_cnt_int[19]~85_combout\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[19]~85_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X75_Y27_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (refresh_cnt_to_pr(19) & (\Add2~37\ & VCC)) # (!refresh_cnt_to_pr(19) & (!\Add2~37\))
-- \Add2~39\ = CARRY((!refresh_cnt_to_pr(19) & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X76_Y27_N14
\refresh_cnt_int[19]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[19]~84_combout\ = (\Add1~40_combout\ & ((\refresh_cnt_int[11]~66_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~38_combout\)))) # (!\Add1~40_combout\ & (\refresh_cnt_int[11]~133_combout\ & (\Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add2~38_combout\,
	datad => \refresh_cnt_int[11]~66_combout\,
	combout => \refresh_cnt_int[19]~84_combout\);

-- Location: LCCOMB_X76_Y29_N6
\refresh_cnt_int[19]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[19]~85_combout\ = (\refresh_cnt_int[19]~84_combout\) # ((\refresh_cnt_int[17]~68_combout\ & refresh_cnt_to_pr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~68_combout\,
	datac => refresh_cnt_to_pr(19),
	datad => \refresh_cnt_int[19]~84_combout\,
	combout => \refresh_cnt_int[19]~85_combout\);

-- Location: LCCOMB_X77_Y27_N8
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\refresh_cnt_int[20]~87_combout\ & ((GND) # (!\Add1~41\))) # (!\refresh_cnt_int[20]~87_combout\ & (\Add1~41\ $ (GND)))
-- \Add1~43\ = CARRY((\refresh_cnt_int[20]~87_combout\) # (!\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[20]~87_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X76_Y27_N29
\refresh_cnt_to_pr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[20]~87_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(20));

-- Location: LCCOMB_X75_Y27_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (refresh_cnt_to_pr(20) & ((GND) # (!\Add2~39\))) # (!refresh_cnt_to_pr(20) & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((refresh_cnt_to_pr(20)) # (!\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X76_Y27_N24
\refresh_cnt_int[20]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[20]~86_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~42_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~40_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (((\refresh_cnt_int[11]~133_combout\ & \Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \Add1~42_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \Add2~40_combout\,
	combout => \refresh_cnt_int[20]~86_combout\);

-- Location: LCCOMB_X76_Y27_N28
\refresh_cnt_int[20]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[20]~87_combout\ = (\refresh_cnt_int[20]~86_combout\) # ((refresh_cnt_to_pr(20) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[20]~86_combout\,
	datac => refresh_cnt_to_pr(20),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[20]~87_combout\);

-- Location: LCCOMB_X77_Y27_N10
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\refresh_cnt_int[21]~89_combout\ & (\Add1~43\ & VCC)) # (!\refresh_cnt_int[21]~89_combout\ & (!\Add1~43\))
-- \Add1~45\ = CARRY((!\refresh_cnt_int[21]~89_combout\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[21]~89_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X76_Y27_N31
\refresh_cnt_to_pr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[21]~89_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(21));

-- Location: LCCOMB_X75_Y27_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (refresh_cnt_to_pr(21) & (\Add2~41\ & VCC)) # (!refresh_cnt_to_pr(21) & (!\Add2~41\))
-- \Add2~43\ = CARRY((!refresh_cnt_to_pr(21) & !\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X76_Y27_N10
\refresh_cnt_int[21]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[21]~88_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~44_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~42_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (((\refresh_cnt_int[11]~133_combout\ & \Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \Add1~44_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \Add2~42_combout\,
	combout => \refresh_cnt_int[21]~88_combout\);

-- Location: LCCOMB_X76_Y27_N30
\refresh_cnt_int[21]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[21]~89_combout\ = (\refresh_cnt_int[21]~88_combout\) # ((refresh_cnt_to_pr(21) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[21]~88_combout\,
	datac => refresh_cnt_to_pr(21),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[21]~89_combout\);

-- Location: LCCOMB_X77_Y27_N12
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\refresh_cnt_int[22]~91_combout\ & ((GND) # (!\Add1~45\))) # (!\refresh_cnt_int[22]~91_combout\ & (\Add1~45\ $ (GND)))
-- \Add1~47\ = CARRY((\refresh_cnt_int[22]~91_combout\) # (!\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[22]~91_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X76_Y27_N13
\refresh_cnt_to_pr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[22]~91_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(22));

-- Location: LCCOMB_X75_Y27_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (refresh_cnt_to_pr(22) & ((GND) # (!\Add2~43\))) # (!refresh_cnt_to_pr(22) & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((refresh_cnt_to_pr(22)) # (!\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X76_Y27_N20
\refresh_cnt_int[22]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[22]~90_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~46_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~44_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & ((\Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add1~46_combout\,
	datad => \Add2~44_combout\,
	combout => \refresh_cnt_int[22]~90_combout\);

-- Location: LCCOMB_X76_Y27_N12
\refresh_cnt_int[22]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[22]~91_combout\ = (\refresh_cnt_int[22]~90_combout\) # ((refresh_cnt_to_pr(22) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[22]~90_combout\,
	datac => refresh_cnt_to_pr(22),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[22]~91_combout\);

-- Location: LCCOMB_X77_Y27_N14
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\refresh_cnt_int[23]~93_combout\ & (\Add1~47\ & VCC)) # (!\refresh_cnt_int[23]~93_combout\ & (!\Add1~47\))
-- \Add1~49\ = CARRY((!\refresh_cnt_int[23]~93_combout\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[23]~93_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X75_Y27_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (refresh_cnt_to_pr(23) & (\Add2~45\ & VCC)) # (!refresh_cnt_to_pr(23) & (!\Add2~45\))
-- \Add2~47\ = CARRY((!refresh_cnt_to_pr(23) & !\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X76_Y27_N22
\refresh_cnt_int[23]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[23]~92_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~48_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~46_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (((\refresh_cnt_int[11]~133_combout\ & \Add2~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \Add1~48_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \Add2~46_combout\,
	combout => \refresh_cnt_int[23]~92_combout\);

-- Location: LCCOMB_X76_Y27_N26
\refresh_cnt_int[23]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[23]~93_combout\ = (\refresh_cnt_int[23]~92_combout\) # ((refresh_cnt_to_pr(23) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[23]~92_combout\,
	datac => refresh_cnt_to_pr(23),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[23]~93_combout\);

-- Location: FF_X76_Y27_N27
\refresh_cnt_to_pr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[23]~93_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(23));

-- Location: LCCOMB_X75_Y27_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (refresh_cnt_to_pr(24) & ((GND) # (!\Add2~47\))) # (!refresh_cnt_to_pr(24) & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((refresh_cnt_to_pr(24)) # (!\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X77_Y27_N16
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\refresh_cnt_int[24]~95_combout\ & ((GND) # (!\Add1~49\))) # (!\refresh_cnt_int[24]~95_combout\ & (\Add1~49\ $ (GND)))
-- \Add1~51\ = CARRY((\refresh_cnt_int[24]~95_combout\) # (!\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[24]~95_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X76_Y27_N8
\refresh_cnt_int[24]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[24]~94_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~50_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~48_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & (\Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add2~48_combout\,
	datad => \Add1~50_combout\,
	combout => \refresh_cnt_int[24]~94_combout\);

-- Location: LCCOMB_X74_Y27_N24
\refresh_cnt_int[24]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[24]~95_combout\ = (\refresh_cnt_int[24]~94_combout\) # ((refresh_cnt_to_pr(24) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[24]~94_combout\,
	datac => refresh_cnt_to_pr(24),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[24]~95_combout\);

-- Location: LCCOMB_X77_Y27_N18
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\refresh_cnt_int[25]~97_combout\ & (\Add1~51\ & VCC)) # (!\refresh_cnt_int[25]~97_combout\ & (!\Add1~51\))
-- \Add1~53\ = CARRY((!\refresh_cnt_int[25]~97_combout\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[25]~97_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X74_Y27_N15
\refresh_cnt_to_pr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[25]~97_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(25));

-- Location: LCCOMB_X75_Y27_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (refresh_cnt_to_pr(25) & (\Add2~49\ & VCC)) # (!refresh_cnt_to_pr(25) & (!\Add2~49\))
-- \Add2~51\ = CARRY((!refresh_cnt_to_pr(25) & !\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X76_Y27_N6
\refresh_cnt_int[25]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[25]~96_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~52_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~50_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & ((\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add1~52_combout\,
	datad => \Add2~50_combout\,
	combout => \refresh_cnt_int[25]~96_combout\);

-- Location: LCCOMB_X74_Y27_N14
\refresh_cnt_int[25]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[25]~97_combout\ = (\refresh_cnt_int[25]~96_combout\) # ((refresh_cnt_to_pr(25) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[25]~96_combout\,
	datac => refresh_cnt_to_pr(25),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[25]~97_combout\);

-- Location: LCCOMB_X77_Y27_N20
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\refresh_cnt_int[26]~99_combout\ & ((GND) # (!\Add1~53\))) # (!\refresh_cnt_int[26]~99_combout\ & (\Add1~53\ $ (GND)))
-- \Add1~55\ = CARRY((\refresh_cnt_int[26]~99_combout\) # (!\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[26]~99_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X74_Y27_N1
\refresh_cnt_to_pr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[26]~99_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(26));

-- Location: LCCOMB_X75_Y27_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (refresh_cnt_to_pr(26) & ((GND) # (!\Add2~51\))) # (!refresh_cnt_to_pr(26) & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((refresh_cnt_to_pr(26)) # (!\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X74_Y27_N28
\refresh_cnt_int[26]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[26]~98_combout\ = (\Add1~54_combout\ & ((\refresh_cnt_int[11]~66_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~52_combout\)))) # (!\Add1~54_combout\ & (\refresh_cnt_int[11]~133_combout\ & (\Add2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add2~52_combout\,
	datad => \refresh_cnt_int[11]~66_combout\,
	combout => \refresh_cnt_int[26]~98_combout\);

-- Location: LCCOMB_X74_Y27_N0
\refresh_cnt_int[26]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[26]~99_combout\ = (\refresh_cnt_int[26]~98_combout\) # ((refresh_cnt_to_pr(26) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[26]~98_combout\,
	datac => refresh_cnt_to_pr(26),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[26]~99_combout\);

-- Location: LCCOMB_X76_Y27_N4
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\refresh_cnt_int[26]~99_combout\ & (!\refresh_cnt_int[24]~95_combout\ & (!\refresh_cnt_int[23]~93_combout\ & !\refresh_cnt_int[25]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[26]~99_combout\,
	datab => \refresh_cnt_int[24]~95_combout\,
	datac => \refresh_cnt_int[23]~93_combout\,
	datad => \refresh_cnt_int[25]~97_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X76_Y28_N26
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\refresh_cnt_int[8]~121_combout\ & (!\refresh_cnt_int[9]~123_combout\ & (!\refresh_cnt_int[6]~117_combout\ & !\refresh_cnt_int[7]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[8]~121_combout\,
	datab => \refresh_cnt_int[9]~123_combout\,
	datac => \refresh_cnt_int[6]~117_combout\,
	datad => \refresh_cnt_int[7]~119_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X76_Y28_N0
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\refresh_cnt_int[2]~111_combout\ & (!\refresh_cnt_int[4]~113_combout\ & (!\refresh_cnt_int[5]~115_combout\ & !\refresh_cnt_int[1]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[2]~111_combout\,
	datab => \refresh_cnt_int[4]~113_combout\,
	datac => \refresh_cnt_int[5]~115_combout\,
	datad => \refresh_cnt_int[1]~109_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X77_Y27_N22
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\refresh_cnt_int[27]~101_combout\ & (\Add1~55\ & VCC)) # (!\refresh_cnt_int[27]~101_combout\ & (!\Add1~55\))
-- \Add1~57\ = CARRY((!\refresh_cnt_int[27]~101_combout\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[27]~101_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X77_Y27_N24
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\refresh_cnt_int[28]~103_combout\ & ((GND) # (!\Add1~57\))) # (!\refresh_cnt_int[28]~103_combout\ & (\Add1~57\ $ (GND)))
-- \Add1~59\ = CARRY((\refresh_cnt_int[28]~103_combout\) # (!\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[28]~103_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X74_Y27_N3
\refresh_cnt_to_pr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[28]~103_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(28));

-- Location: LCCOMB_X75_Y27_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (refresh_cnt_to_pr(27) & (\Add2~53\ & VCC)) # (!refresh_cnt_to_pr(27) & (!\Add2~53\))
-- \Add2~55\ = CARRY((!refresh_cnt_to_pr(27) & !\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X75_Y27_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (refresh_cnt_to_pr(28) & ((GND) # (!\Add2~55\))) # (!refresh_cnt_to_pr(28) & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((refresh_cnt_to_pr(28)) # (!\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X74_Y27_N20
\refresh_cnt_int[28]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[28]~102_combout\ = (\Add1~58_combout\ & ((\refresh_cnt_int[11]~66_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~56_combout\)))) # (!\Add1~58_combout\ & (\refresh_cnt_int[11]~133_combout\ & ((\Add2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \refresh_cnt_int[11]~66_combout\,
	datad => \Add2~56_combout\,
	combout => \refresh_cnt_int[28]~102_combout\);

-- Location: LCCOMB_X74_Y27_N2
\refresh_cnt_int[28]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[28]~103_combout\ = (\refresh_cnt_int[28]~102_combout\) # ((refresh_cnt_to_pr(28) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[28]~102_combout\,
	datac => refresh_cnt_to_pr(28),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[28]~103_combout\);

-- Location: LCCOMB_X77_Y27_N26
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\refresh_cnt_int[29]~105_combout\ & (\Add1~59\ & VCC)) # (!\refresh_cnt_int[29]~105_combout\ & (!\Add1~59\))
-- \Add1~61\ = CARRY((!\refresh_cnt_int[29]~105_combout\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \refresh_cnt_int[29]~105_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X74_Y27_N17
\refresh_cnt_to_pr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[29]~105_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(29));

-- Location: LCCOMB_X75_Y27_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (refresh_cnt_to_pr(29) & (\Add2~57\ & VCC)) # (!refresh_cnt_to_pr(29) & (!\Add2~57\))
-- \Add2~59\ = CARRY((!refresh_cnt_to_pr(29) & !\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X74_Y27_N10
\refresh_cnt_int[29]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[29]~104_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~60_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~58_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & ((\Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add1~60_combout\,
	datad => \Add2~58_combout\,
	combout => \refresh_cnt_int[29]~104_combout\);

-- Location: LCCOMB_X74_Y27_N16
\refresh_cnt_int[29]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[29]~105_combout\ = (\refresh_cnt_int[29]~104_combout\) # ((refresh_cnt_to_pr(29) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[29]~104_combout\,
	datac => refresh_cnt_to_pr(29),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[29]~105_combout\);

-- Location: FF_X74_Y27_N7
\refresh_cnt_to_pr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \refresh_cnt_int[30]~107_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(30));

-- Location: LCCOMB_X77_Y27_N28
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\refresh_cnt_int[30]~107_combout\ & ((GND) # (!\Add1~61\))) # (!\refresh_cnt_int[30]~107_combout\ & (\Add1~61\ $ (GND)))
-- \Add1~63\ = CARRY((\refresh_cnt_int[30]~107_combout\) # (!\Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[30]~107_combout\,
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~62_combout\,
	cout => \Add1~63\);

-- Location: LCCOMB_X75_Y27_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (refresh_cnt_to_pr(30) & ((GND) # (!\Add2~59\))) # (!refresh_cnt_to_pr(30) & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((refresh_cnt_to_pr(30)) # (!\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X76_Y27_N2
\refresh_cnt_int[30]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[30]~106_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~62_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~60_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (((\refresh_cnt_int[11]~133_combout\ & \Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \Add1~62_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \Add2~60_combout\,
	combout => \refresh_cnt_int[30]~106_combout\);

-- Location: LCCOMB_X74_Y27_N4
\refresh_cnt_int[30]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[30]~107_combout\ = (\refresh_cnt_int[30]~106_combout\) # ((refresh_cnt_to_pr(30) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(30),
	datab => \refresh_cnt_int[30]~106_combout\,
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[30]~107_combout\);

-- Location: LCCOMB_X74_Y27_N6
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\refresh_cnt_int[29]~105_combout\ & (!\refresh_cnt_int[27]~101_combout\ & (!\refresh_cnt_int[30]~107_combout\ & !\refresh_cnt_int[28]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[29]~105_combout\,
	datab => \refresh_cnt_int[27]~101_combout\,
	datac => \refresh_cnt_int[30]~107_combout\,
	datad => \refresh_cnt_int[28]~103_combout\,
	combout => \Equal1~5_combout\);

-- Location: FF_X74_Y27_N5
\refresh_cnt_to_pr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \refresh_cnt_int[31]~130_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(31));

-- Location: LCCOMB_X75_Y27_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = refresh_cnt_to_pr(31) $ (!\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X77_Y27_N30
\Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = \Add1~63\ $ (!\refresh_cnt_int[31]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \refresh_cnt_int[31]~130_combout\,
	cin => \Add1~63\,
	combout => \Add1~64_combout\);

-- Location: LCCOMB_X74_Y27_N8
\refresh_cnt_int[31]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[31]~129_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~64_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~62_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (\refresh_cnt_int[11]~133_combout\ & (\Add2~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \refresh_cnt_int[11]~133_combout\,
	datac => \Add2~62_combout\,
	datad => \Add1~64_combout\,
	combout => \refresh_cnt_int[31]~129_combout\);

-- Location: LCCOMB_X74_Y27_N30
\refresh_cnt_int[31]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[31]~130_combout\ = (\refresh_cnt_int[31]~129_combout\) # ((refresh_cnt_to_pr(31) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => refresh_cnt_to_pr(31),
	datac => \refresh_cnt_int[31]~129_combout\,
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[31]~130_combout\);

-- Location: LCCOMB_X76_Y29_N2
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\refresh_cnt_int[3]~128_combout\ & (!\refresh_cnt_int[31]~130_combout\ & (!\refresh_cnt_int[10]~125_combout\ & !\refresh_cnt_int[0]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[3]~128_combout\,
	datab => \refresh_cnt_int[31]~130_combout\,
	datac => \refresh_cnt_int[10]~125_combout\,
	datad => \refresh_cnt_int[0]~132_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X76_Y29_N8
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (\Equal1~6_combout\ & (\Equal1~5_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X77_Y26_N4
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\refresh_cnt_int[21]~89_combout\ & (!\refresh_cnt_int[20]~87_combout\ & (!\refresh_cnt_int[19]~85_combout\ & !\refresh_cnt_int[22]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[21]~89_combout\,
	datab => \refresh_cnt_int[20]~87_combout\,
	datac => \refresh_cnt_int[19]~85_combout\,
	datad => \refresh_cnt_int[22]~91_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X76_Y29_N22
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~2_combout\ & (\Equal1~4_combout\ & (\Equal1~9_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X76_Y26_N2
\state_to_pr~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~25_combout\ = (\Equal0~10_combout\ & (((\state_to_pr.INIT_FIRST_REFRESH~q\)))) # (!\Equal0~10_combout\ & ((\state_to_pr.INIT_PRECHARGE~q\) # ((\state_to_pr.INIT_FIRST_REFRESH~q\ & !\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_PRECHARGE~q\,
	datab => \Equal0~10_combout\,
	datac => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \Equal1~10_combout\,
	combout => \state_to_pr~25_combout\);

-- Location: LCCOMB_X76_Y26_N30
\state_to_pr~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~26_combout\ = (!\rst~input_o\ & \state_to_pr~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \state_to_pr~25_combout\,
	combout => \state_to_pr~26_combout\);

-- Location: FF_X76_Y26_N31
\state_to_pr.INIT_FIRST_REFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.INIT_FIRST_REFRESH~q\);

-- Location: LCCOMB_X75_Y26_N10
\refresh_cnt_int[11]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[11]~66_combout\ = (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (\state_to_pr.INIT_FIRST_REFRESH~q\ & \refresh_cnt_int[17]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \refresh_cnt_int[17]~65_combout\,
	combout => \refresh_cnt_int[11]~66_combout\);

-- Location: LCCOMB_X74_Y27_N26
\refresh_cnt_int[27]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[27]~100_combout\ = (\refresh_cnt_int[11]~66_combout\ & ((\Add1~56_combout\) # ((\refresh_cnt_int[11]~133_combout\ & \Add2~54_combout\)))) # (!\refresh_cnt_int[11]~66_combout\ & (((\refresh_cnt_int[11]~133_combout\ & \Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[11]~66_combout\,
	datab => \Add1~56_combout\,
	datac => \refresh_cnt_int[11]~133_combout\,
	datad => \Add2~54_combout\,
	combout => \refresh_cnt_int[27]~100_combout\);

-- Location: LCCOMB_X74_Y27_N18
\refresh_cnt_int[27]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \refresh_cnt_int[27]~101_combout\ = (\refresh_cnt_int[27]~100_combout\) # ((refresh_cnt_to_pr(27) & \refresh_cnt_int[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[27]~100_combout\,
	datac => refresh_cnt_to_pr(27),
	datad => \refresh_cnt_int[17]~68_combout\,
	combout => \refresh_cnt_int[27]~101_combout\);

-- Location: FF_X74_Y27_N19
\refresh_cnt_to_pr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \refresh_cnt_int[27]~101_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => refresh_cnt_to_pr(27));

-- Location: LCCOMB_X74_Y27_N12
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!refresh_cnt_to_pr(27) & (!refresh_cnt_to_pr(26) & (!refresh_cnt_to_pr(25) & !refresh_cnt_to_pr(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(27),
	datab => refresh_cnt_to_pr(26),
	datac => refresh_cnt_to_pr(25),
	datad => refresh_cnt_to_pr(24),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X74_Y27_N22
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!refresh_cnt_to_pr(28) & (!refresh_cnt_to_pr(29) & (!refresh_cnt_to_pr(31) & !refresh_cnt_to_pr(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(28),
	datab => refresh_cnt_to_pr(29),
	datac => refresh_cnt_to_pr(31),
	datad => refresh_cnt_to_pr(30),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X75_Y26_N12
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!refresh_cnt_to_pr(14) & (!refresh_cnt_to_pr(13) & (!refresh_cnt_to_pr(12) & !refresh_cnt_to_pr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(14),
	datab => refresh_cnt_to_pr(13),
	datac => refresh_cnt_to_pr(12),
	datad => refresh_cnt_to_pr(15),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X75_Y26_N20
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!refresh_cnt_to_pr(11) & (!refresh_cnt_to_pr(10) & (!refresh_cnt_to_pr(9) & !refresh_cnt_to_pr(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(11),
	datab => refresh_cnt_to_pr(10),
	datac => refresh_cnt_to_pr(9),
	datad => refresh_cnt_to_pr(8),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X75_Y26_N4
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!refresh_cnt_to_pr(0) & (!refresh_cnt_to_pr(3) & (!refresh_cnt_to_pr(1) & !refresh_cnt_to_pr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(0),
	datab => refresh_cnt_to_pr(3),
	datac => refresh_cnt_to_pr(1),
	datad => refresh_cnt_to_pr(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X76_Y28_N12
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!refresh_cnt_to_pr(4) & (!refresh_cnt_to_pr(6) & (!refresh_cnt_to_pr(7) & !refresh_cnt_to_pr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(4),
	datab => refresh_cnt_to_pr(6),
	datac => refresh_cnt_to_pr(7),
	datad => refresh_cnt_to_pr(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X75_Y26_N30
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~2_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X75_Y26_N8
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!refresh_cnt_to_pr(21) & !refresh_cnt_to_pr(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => refresh_cnt_to_pr(21),
	datad => refresh_cnt_to_pr(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X76_Y29_N4
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!refresh_cnt_to_pr(19) & (!refresh_cnt_to_pr(16) & (!refresh_cnt_to_pr(18) & !refresh_cnt_to_pr(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(19),
	datab => refresh_cnt_to_pr(16),
	datac => refresh_cnt_to_pr(18),
	datad => refresh_cnt_to_pr(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X75_Y26_N18
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!refresh_cnt_to_pr(22) & (!refresh_cnt_to_pr(23) & (\Equal2~6_combout\ & \Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => refresh_cnt_to_pr(22),
	datab => refresh_cnt_to_pr(23),
	datac => \Equal2~6_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X75_Y26_N16
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~8_combout\ & (\Equal2~9_combout\ & (\Equal2~4_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~9_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X74_Y28_N8
\state_to_pr~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~27_combout\ = (\Equal0~10_combout\ & (((\state_to_pr.INIT_SECOND_REFRESH~q\)))) # (!\Equal0~10_combout\ & ((\state_to_pr.INIT_MODE_REG~q\) # ((!\Equal2~10_combout\ & \state_to_pr.INIT_SECOND_REFRESH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \Equal0~10_combout\,
	datad => \state_to_pr.INIT_MODE_REG~q\,
	combout => \state_to_pr~27_combout\);

-- Location: LCCOMB_X74_Y28_N28
\state_to_pr~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~28_combout\ = (\state_to_pr~27_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr~27_combout\,
	datad => \rst~input_o\,
	combout => \state_to_pr~28_combout\);

-- Location: FF_X74_Y28_N29
\state_to_pr.INIT_SECOND_REFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.INIT_SECOND_REFRESH~q\);

-- Location: LCCOMB_X75_Y26_N2
\state_to_pr~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~17_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datad => \Equal2~10_combout\,
	combout => \state_to_pr~17_combout\);

-- Location: LCCOMB_X75_Y29_N26
\state_to_pr~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~18_combout\ = (!\refresh~input_o\ & (\state_to_pr.IDLE~q\ & !\rw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh~input_o\,
	datac => \state_to_pr.IDLE~q\,
	datad => \rw~input_o\,
	combout => \state_to_pr~18_combout\);

-- Location: LCCOMB_X76_Y26_N28
\state_to_pr~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~16_combout\ = (\state_to_pr.INIT_FIRST_REFRESH~q\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datad => \Equal1~10_combout\,
	combout => \state_to_pr~16_combout\);

-- Location: LCCOMB_X76_Y26_N22
\state_to_pr~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~19_combout\ = (!\Equal0~10_combout\ & (!\state_to_pr~17_combout\ & (!\state_to_pr~18_combout\ & !\state_to_pr~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \state_to_pr~17_combout\,
	datac => \state_to_pr~18_combout\,
	datad => \state_to_pr~16_combout\,
	combout => \state_to_pr~19_combout\);

-- Location: LCCOMB_X76_Y26_N0
\state_to_pr.INIT_STALL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr.INIT_STALL~0_combout\ = (!\rst~input_o\ & ((\state_to_pr.INIT_STALL~q\) # (\state_to_pr~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \state_to_pr.INIT_STALL~q\,
	datad => \state_to_pr~19_combout\,
	combout => \state_to_pr.INIT_STALL~0_combout\);

-- Location: FF_X76_Y26_N1
\state_to_pr.INIT_STALL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr.INIT_STALL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.INIT_STALL~q\);

-- Location: LCCOMB_X76_Y29_N30
\init_cnt_to_pr[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[26]~11_combout\ = (!\rst~input_o\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Equal0~10_combout\,
	combout => \init_cnt_to_pr[26]~11_combout\);

-- Location: LCCOMB_X75_Y25_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = init_cnt_to_pr(0) $ (VCC)
-- \Add0~1\ = CARRY(init_cnt_to_pr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X75_Y30_N6
\state_to_pr~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~33_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & ((\state_to_pr.RCD~q\))) # (!\Equal0~10_combout\ & (\state_to_pr.ACTIVATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr.ACTIVATE~q\,
	datac => \state_to_pr.RCD~q\,
	datad => \Equal0~10_combout\,
	combout => \state_to_pr~33_combout\);

-- Location: FF_X75_Y30_N7
\state_to_pr.RCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.RCD~q\);

-- Location: LCCOMB_X75_Y30_N8
\state_to_pr~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~34_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & ((\state_to_pr.RW_STATE~q\))) # (!\Equal0~10_combout\ & (\state_to_pr.RCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.RCD~q\,
	datab => \Equal0~10_combout\,
	datac => \state_to_pr.RW_STATE~q\,
	datad => \rst~input_o\,
	combout => \state_to_pr~34_combout\);

-- Location: FF_X75_Y30_N9
\state_to_pr.RW_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.RW_STATE~q\);

-- Location: LCCOMB_X75_Y30_N30
\state_to_pr~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~35_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & ((\state_to_pr.FIRST_RAS~q\))) # (!\Equal0~10_combout\ & (\state_to_pr.RW_STATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr.RW_STATE~q\,
	datac => \state_to_pr.FIRST_RAS~q\,
	datad => \Equal0~10_combout\,
	combout => \state_to_pr~35_combout\);

-- Location: FF_X75_Y30_N31
\state_to_pr.FIRST_RAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.FIRST_RAS~q\);

-- Location: LCCOMB_X75_Y30_N4
\state_to_pr~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~29_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & ((\state_to_pr.SECOND_RAS~q\))) # (!\Equal0~10_combout\ & (\state_to_pr.FIRST_RAS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr.FIRST_RAS~q\,
	datac => \state_to_pr.SECOND_RAS~q\,
	datad => \Equal0~10_combout\,
	combout => \state_to_pr~29_combout\);

-- Location: FF_X75_Y30_N5
\state_to_pr.SECOND_RAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.SECOND_RAS~q\);

-- Location: LCCOMB_X74_Y26_N26
\state_to_pr~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~21_combout\ = (!\rst~input_o\ & ((\Equal0~10_combout\ & (\state_to_pr.PRECHARGE~q\)) # (!\Equal0~10_combout\ & ((\state_to_pr.SECOND_RAS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \rst~input_o\,
	datac => \state_to_pr.PRECHARGE~q\,
	datad => \state_to_pr.SECOND_RAS~q\,
	combout => \state_to_pr~21_combout\);

-- Location: FF_X74_Y26_N27
\state_to_pr.PRECHARGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.PRECHARGE~q\);

-- Location: LCCOMB_X75_Y30_N22
\state_to_pr~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~15_combout\ = (!\rw~input_o\ & \state_to_pr.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~input_o\,
	datad => \state_to_pr.IDLE~q\,
	combout => \state_to_pr~15_combout\);

-- Location: LCCOMB_X76_Y26_N10
\init_cnt_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_int[0]~0_combout\ = (!\state_to_pr~17_combout\ & (!\state_to_pr~16_combout\ & ((!\refresh~input_o\) # (!\state_to_pr~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr~15_combout\,
	datab => \state_to_pr~17_combout\,
	datac => \refresh~input_o\,
	datad => \state_to_pr~16_combout\,
	combout => \init_cnt_int[0]~0_combout\);

-- Location: LCCOMB_X76_Y26_N24
\init_cnt_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_int[0]~1_combout\ = (\Equal0~10_combout\ & (\Add0~0_combout\)) # (!\Equal0~10_combout\ & (((\state_to_pr.PRECHARGE~q\) # (!\init_cnt_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~0_combout\,
	datac => \state_to_pr.PRECHARGE~q\,
	datad => \init_cnt_int[0]~0_combout\,
	combout => \init_cnt_int[0]~1_combout\);

-- Location: FF_X76_Y26_N25
\init_cnt_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_int[0]~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(0));

-- Location: LCCOMB_X75_Y25_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (init_cnt_to_pr(1) & (\Add0~1\ & VCC)) # (!init_cnt_to_pr(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!init_cnt_to_pr(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X76_Y26_N18
\init_cnt_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_int[1]~2_combout\ = (\Equal0~10_combout\ & (((\Add0~2_combout\)))) # (!\Equal0~10_combout\ & (((!\init_cnt_int[0]~0_combout\)) # (!\init_cnt_to_pr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \init_cnt_to_pr[5]~4_combout\,
	datac => \Add0~2_combout\,
	datad => \init_cnt_int[0]~0_combout\,
	combout => \init_cnt_int[1]~2_combout\);

-- Location: FF_X76_Y26_N19
\init_cnt_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_int[1]~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(1));

-- Location: LCCOMB_X75_Y25_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (init_cnt_to_pr(2) & ((GND) # (!\Add0~3\))) # (!init_cnt_to_pr(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((init_cnt_to_pr(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X75_Y29_N14
\init_cnt_to_pr[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~5_combout\ = (!\rst~input_o\ & (\init_cnt_to_pr[5]~4_combout\ & (!\Equal0~10_combout\ & !\state_to_pr.PRECHARGE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \init_cnt_to_pr[5]~4_combout\,
	datac => \Equal0~10_combout\,
	datad => \state_to_pr.PRECHARGE~q\,
	combout => \init_cnt_to_pr[2]~5_combout\);

-- Location: LCCOMB_X75_Y29_N12
\cmd_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_int[1]~0_combout\ = (\state_to_pr.IDLE~q\ & ((\rw~input_o\) # (!\refresh~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \refresh~input_o\,
	datac => \state_to_pr.IDLE~q\,
	datad => \rw~input_o\,
	combout => \cmd_int[1]~0_combout\);

-- Location: LCCOMB_X75_Y30_N12
\state_to_pr~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~20_combout\ = (!\rst~input_o\ & ((\state_to_pr~19_combout\ & (\state_to_pr~15_combout\)) # (!\state_to_pr~19_combout\ & ((\state_to_pr.REFRESH_STATE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr~15_combout\,
	datac => \state_to_pr.REFRESH_STATE~q\,
	datad => \state_to_pr~19_combout\,
	combout => \state_to_pr~20_combout\);

-- Location: FF_X75_Y30_N13
\state_to_pr.REFRESH_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.REFRESH_STATE~q\);

-- Location: LCCOMB_X75_Y30_N24
\init_cnt_to_pr[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~8_combout\ = (!\state_to_pr.FIRST_RAS~q\ & (!\state_to_pr.ACTIVATE~q\ & (!\state_to_pr.RW_STATE~q\ & !\state_to_pr.RCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.FIRST_RAS~q\,
	datab => \state_to_pr.ACTIVATE~q\,
	datac => \state_to_pr.RW_STATE~q\,
	datad => \state_to_pr.RCD~q\,
	combout => \init_cnt_to_pr[2]~8_combout\);

-- Location: LCCOMB_X75_Y29_N18
\init_cnt_to_pr[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~9_combout\ = (!\cmd_int[1]~0_combout\ & (!\state_to_pr.REFRESH_STATE~q\ & (\init_cnt_to_pr[2]~8_combout\ & !\state_to_pr.SECOND_RAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_int[1]~0_combout\,
	datab => \state_to_pr.REFRESH_STATE~q\,
	datac => \init_cnt_to_pr[2]~8_combout\,
	datad => \state_to_pr.SECOND_RAS~q\,
	combout => \init_cnt_to_pr[2]~9_combout\);

-- Location: LCCOMB_X75_Y30_N26
\init_cnt_to_pr[26]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[26]~6_combout\ = (!\Equal0~10_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[26]~6_combout\);

-- Location: LCCOMB_X76_Y29_N18
\init_cnt_to_pr[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~7_combout\ = (\state_to_pr.INIT_SECOND_REFRESH~q\ & (((!\Equal2~10_combout\)))) # (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (((!\Equal1~10_combout\)) # (!\state_to_pr.INIT_FIRST_REFRESH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datab => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datac => \Equal1~10_combout\,
	datad => \Equal2~10_combout\,
	combout => \init_cnt_to_pr[2]~7_combout\);

-- Location: LCCOMB_X76_Y29_N28
\init_cnt_to_pr[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~10_combout\ = (\init_cnt_to_pr[2]~5_combout\ & (((\init_cnt_to_pr[2]~9_combout\ & \init_cnt_to_pr[2]~7_combout\)) # (!\init_cnt_to_pr[26]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_cnt_to_pr[2]~5_combout\,
	datab => \init_cnt_to_pr[2]~9_combout\,
	datac => \init_cnt_to_pr[26]~6_combout\,
	datad => \init_cnt_to_pr[2]~7_combout\,
	combout => \init_cnt_to_pr[2]~10_combout\);

-- Location: LCCOMB_X76_Y25_N8
\init_cnt_to_pr[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[2]~12_combout\ = (\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\init_cnt_to_pr[26]~11_combout\ & \Add0~4_combout\)))) # (!\state_to_pr.INIT_STALL~q\ & (\init_cnt_to_pr[26]~11_combout\ & (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \init_cnt_to_pr[26]~11_combout\,
	datac => \Add0~4_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[2]~12_combout\);

-- Location: FF_X76_Y25_N9
\init_cnt_to_pr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(2));

-- Location: LCCOMB_X75_Y25_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (init_cnt_to_pr(3) & (\Add0~5\ & VCC)) # (!init_cnt_to_pr(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!init_cnt_to_pr(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X76_Y25_N2
\init_cnt_to_pr[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[3]~13_combout\ = (\Equal0~10_combout\ & (\Add0~6_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~6_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[3]~13_combout\);

-- Location: FF_X76_Y25_N3
\init_cnt_to_pr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(3));

-- Location: LCCOMB_X75_Y25_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (init_cnt_to_pr(4) & ((GND) # (!\Add0~7\))) # (!init_cnt_to_pr(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((init_cnt_to_pr(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X76_Y25_N16
\init_cnt_to_pr[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[4]~14_combout\ = (\Add0~8_combout\ & (\Equal0~10_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Equal0~10_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[4]~14_combout\);

-- Location: FF_X76_Y25_N17
\init_cnt_to_pr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(4));

-- Location: LCCOMB_X75_Y25_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (init_cnt_to_pr(5) & (\Add0~9\ & VCC)) # (!init_cnt_to_pr(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!init_cnt_to_pr(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X76_Y25_N14
\init_cnt_to_pr[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[5]~15_combout\ = (\state_to_pr.INIT_STALL~q\ & (\Add0~10_combout\ & (\init_cnt_to_pr[26]~11_combout\))) # (!\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\Add0~10_combout\ & \init_cnt_to_pr[26]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \Add0~10_combout\,
	datac => \init_cnt_to_pr[26]~11_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[5]~15_combout\);

-- Location: FF_X76_Y25_N15
\init_cnt_to_pr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(5));

-- Location: LCCOMB_X75_Y25_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (init_cnt_to_pr(6) & ((GND) # (!\Add0~11\))) # (!init_cnt_to_pr(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((init_cnt_to_pr(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X76_Y25_N30
\init_cnt_to_pr[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[6]~16_combout\ = (\Add0~12_combout\ & (\Equal0~10_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Equal0~10_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[6]~16_combout\);

-- Location: FF_X76_Y25_N31
\init_cnt_to_pr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(6));

-- Location: LCCOMB_X75_Y25_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (init_cnt_to_pr(7) & (\Add0~13\ & VCC)) # (!init_cnt_to_pr(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!init_cnt_to_pr(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X76_Y25_N0
\init_cnt_to_pr[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[7]~17_combout\ = (\Add0~14_combout\ & (\Equal0~10_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Equal0~10_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[7]~17_combout\);

-- Location: FF_X76_Y25_N1
\init_cnt_to_pr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(7));

-- Location: LCCOMB_X75_Y25_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (init_cnt_to_pr(8) & ((GND) # (!\Add0~15\))) # (!init_cnt_to_pr(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((init_cnt_to_pr(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X76_Y25_N6
\init_cnt_to_pr[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[8]~18_combout\ = (\Equal0~10_combout\ & (\Add0~16_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~16_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[8]~18_combout\);

-- Location: FF_X76_Y25_N7
\init_cnt_to_pr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(8));

-- Location: LCCOMB_X75_Y25_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (init_cnt_to_pr(9) & (\Add0~17\ & VCC)) # (!init_cnt_to_pr(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!init_cnt_to_pr(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X76_Y25_N28
\init_cnt_to_pr[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[9]~19_combout\ = (\state_to_pr.INIT_STALL~q\ & (\Add0~18_combout\ & (\init_cnt_to_pr[26]~11_combout\))) # (!\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\Add0~18_combout\ & \init_cnt_to_pr[26]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \Add0~18_combout\,
	datac => \init_cnt_to_pr[26]~11_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[9]~19_combout\);

-- Location: FF_X76_Y25_N29
\init_cnt_to_pr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(9));

-- Location: LCCOMB_X75_Y25_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (init_cnt_to_pr(10) & ((GND) # (!\Add0~19\))) # (!init_cnt_to_pr(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((init_cnt_to_pr(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X76_Y25_N24
\init_cnt_to_pr[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[10]~20_combout\ = (\state_to_pr.INIT_STALL~q\ & (\init_cnt_to_pr[26]~11_combout\ & (\Add0~20_combout\))) # (!\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\init_cnt_to_pr[26]~11_combout\ & \Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \init_cnt_to_pr[26]~11_combout\,
	datac => \Add0~20_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[10]~20_combout\);

-- Location: FF_X76_Y25_N25
\init_cnt_to_pr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(10));

-- Location: LCCOMB_X75_Y25_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (init_cnt_to_pr(11) & (\Add0~21\ & VCC)) # (!init_cnt_to_pr(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!init_cnt_to_pr(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X76_Y25_N22
\init_cnt_to_pr[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[11]~21_combout\ = (\state_to_pr.INIT_STALL~q\ & (\init_cnt_to_pr[26]~11_combout\ & (\Add0~22_combout\))) # (!\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\init_cnt_to_pr[26]~11_combout\ & \Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \init_cnt_to_pr[26]~11_combout\,
	datac => \Add0~22_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[11]~21_combout\);

-- Location: FF_X76_Y25_N23
\init_cnt_to_pr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(11));

-- Location: LCCOMB_X75_Y25_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (init_cnt_to_pr(12) & ((GND) # (!\Add0~23\))) # (!init_cnt_to_pr(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((init_cnt_to_pr(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X76_Y25_N4
\init_cnt_to_pr[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[12]~22_combout\ = (!\rst~input_o\ & (\Equal0~10_combout\ & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \init_cnt_to_pr[12]~22_combout\);

-- Location: FF_X76_Y25_N5
\init_cnt_to_pr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[12]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(12));

-- Location: LCCOMB_X75_Y25_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (init_cnt_to_pr(13) & (\Add0~25\ & VCC)) # (!init_cnt_to_pr(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!init_cnt_to_pr(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X76_Y25_N10
\init_cnt_to_pr[13]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[13]~23_combout\ = (\Equal0~10_combout\ & (\Add0~26_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~26_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[13]~23_combout\);

-- Location: FF_X76_Y25_N11
\init_cnt_to_pr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[13]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(13));

-- Location: LCCOMB_X75_Y25_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (init_cnt_to_pr(14) & ((GND) # (!\Add0~27\))) # (!init_cnt_to_pr(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((init_cnt_to_pr(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X77_Y25_N24
\init_cnt_to_pr[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[14]~24_combout\ = (\state_to_pr.INIT_STALL~q\ & (\init_cnt_to_pr[26]~11_combout\ & (\Add0~28_combout\))) # (!\state_to_pr.INIT_STALL~q\ & ((\init_cnt_to_pr[2]~10_combout\) # ((\init_cnt_to_pr[26]~11_combout\ & \Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \init_cnt_to_pr[26]~11_combout\,
	datac => \Add0~28_combout\,
	datad => \init_cnt_to_pr[2]~10_combout\,
	combout => \init_cnt_to_pr[14]~24_combout\);

-- Location: FF_X77_Y25_N25
\init_cnt_to_pr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(14));

-- Location: LCCOMB_X75_Y25_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (init_cnt_to_pr(15) & (\Add0~29\ & VCC)) # (!init_cnt_to_pr(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!init_cnt_to_pr(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X74_Y25_N6
\init_cnt_to_pr[15]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[15]~25_combout\ = (\Equal0~10_combout\ & (\Add0~30_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~30_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[15]~25_combout\);

-- Location: LCCOMB_X77_Y25_N6
\init_cnt_to_pr[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[15]~feeder_combout\ = \init_cnt_to_pr[15]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init_cnt_to_pr[15]~25_combout\,
	combout => \init_cnt_to_pr[15]~feeder_combout\);

-- Location: FF_X77_Y25_N7
\init_cnt_to_pr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(15));

-- Location: LCCOMB_X75_Y24_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (init_cnt_to_pr(16) & ((GND) # (!\Add0~31\))) # (!init_cnt_to_pr(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((init_cnt_to_pr(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X74_Y25_N20
\init_cnt_to_pr[16]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[16]~26_combout\ = (\Add0~32_combout\ & (\Equal0~10_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \Equal0~10_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[16]~26_combout\);

-- Location: LCCOMB_X77_Y25_N8
\init_cnt_to_pr[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[16]~feeder_combout\ = \init_cnt_to_pr[16]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init_cnt_to_pr[16]~26_combout\,
	combout => \init_cnt_to_pr[16]~feeder_combout\);

-- Location: FF_X77_Y25_N9
\init_cnt_to_pr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(16));

-- Location: LCCOMB_X75_Y24_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (init_cnt_to_pr(17) & (\Add0~33\ & VCC)) # (!init_cnt_to_pr(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!init_cnt_to_pr(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X74_Y25_N10
\init_cnt_to_pr[17]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[17]~27_combout\ = (!\rst~input_o\ & (\Equal0~10_combout\ & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Equal0~10_combout\,
	datad => \Add0~34_combout\,
	combout => \init_cnt_to_pr[17]~27_combout\);

-- Location: LCCOMB_X77_Y25_N30
\init_cnt_to_pr[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[17]~feeder_combout\ = \init_cnt_to_pr[17]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init_cnt_to_pr[17]~27_combout\,
	combout => \init_cnt_to_pr[17]~feeder_combout\);

-- Location: FF_X77_Y25_N31
\init_cnt_to_pr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(17));

-- Location: LCCOMB_X75_Y24_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (init_cnt_to_pr(18) & ((GND) # (!\Add0~35\))) # (!init_cnt_to_pr(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((init_cnt_to_pr(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X74_Y26_N8
\init_cnt_to_pr[18]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[18]~28_combout\ = (\Equal0~10_combout\ & (!\rst~input_o\ & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \rst~input_o\,
	datad => \Add0~36_combout\,
	combout => \init_cnt_to_pr[18]~28_combout\);

-- Location: FF_X74_Y26_N9
\init_cnt_to_pr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[18]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(18));

-- Location: LCCOMB_X75_Y24_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (init_cnt_to_pr(19) & (\Add0~37\ & VCC)) # (!init_cnt_to_pr(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!init_cnt_to_pr(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X74_Y26_N18
\init_cnt_to_pr[19]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[19]~29_combout\ = (\Add0~38_combout\ & (!\rst~input_o\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => \rst~input_o\,
	datad => \Equal0~10_combout\,
	combout => \init_cnt_to_pr[19]~29_combout\);

-- Location: FF_X74_Y26_N19
\init_cnt_to_pr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(19));

-- Location: LCCOMB_X75_Y24_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (init_cnt_to_pr(20) & ((GND) # (!\Add0~39\))) # (!init_cnt_to_pr(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((init_cnt_to_pr(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X74_Y26_N30
\init_cnt_to_pr[20]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[20]~30_combout\ = (\Equal0~10_combout\ & (!\rst~input_o\ & \Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \rst~input_o\,
	datad => \Add0~40_combout\,
	combout => \init_cnt_to_pr[20]~30_combout\);

-- Location: FF_X74_Y26_N31
\init_cnt_to_pr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[20]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(20));

-- Location: LCCOMB_X75_Y24_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (init_cnt_to_pr(21) & (\Add0~41\ & VCC)) # (!init_cnt_to_pr(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!init_cnt_to_pr(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X74_Y26_N16
\init_cnt_to_pr[21]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[21]~31_combout\ = (!\rst~input_o\ & (\Add0~42_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add0~42_combout\,
	datad => \Equal0~10_combout\,
	combout => \init_cnt_to_pr[21]~31_combout\);

-- Location: FF_X74_Y26_N17
\init_cnt_to_pr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[21]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(21));

-- Location: LCCOMB_X75_Y24_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (init_cnt_to_pr(22) & ((GND) # (!\Add0~43\))) # (!init_cnt_to_pr(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((init_cnt_to_pr(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X74_Y26_N2
\init_cnt_to_pr[22]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[22]~32_combout\ = (\Equal0~10_combout\ & (!\rst~input_o\ & \Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \rst~input_o\,
	datad => \Add0~44_combout\,
	combout => \init_cnt_to_pr[22]~32_combout\);

-- Location: FF_X74_Y26_N3
\init_cnt_to_pr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[22]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(22));

-- Location: LCCOMB_X75_Y24_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (init_cnt_to_pr(23) & (\Add0~45\ & VCC)) # (!init_cnt_to_pr(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!init_cnt_to_pr(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X74_Y26_N20
\init_cnt_to_pr[23]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[23]~33_combout\ = (!\rst~input_o\ & (\Add0~46_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add0~46_combout\,
	datad => \Equal0~10_combout\,
	combout => \init_cnt_to_pr[23]~33_combout\);

-- Location: FF_X74_Y26_N21
\init_cnt_to_pr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[23]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(23));

-- Location: LCCOMB_X75_Y24_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (init_cnt_to_pr(24) & ((GND) # (!\Add0~47\))) # (!init_cnt_to_pr(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((init_cnt_to_pr(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X74_Y26_N6
\init_cnt_to_pr[24]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[24]~34_combout\ = (!\rst~input_o\ & (\Add0~48_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add0~48_combout\,
	datad => \Equal0~10_combout\,
	combout => \init_cnt_to_pr[24]~34_combout\);

-- Location: FF_X74_Y26_N7
\init_cnt_to_pr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[24]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(24));

-- Location: LCCOMB_X75_Y24_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (init_cnt_to_pr(25) & (\Add0~49\ & VCC)) # (!init_cnt_to_pr(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((!init_cnt_to_pr(25) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X74_Y26_N4
\init_cnt_to_pr[25]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[25]~35_combout\ = (\Equal0~10_combout\ & (!\rst~input_o\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \rst~input_o\,
	datad => \Add0~50_combout\,
	combout => \init_cnt_to_pr[25]~35_combout\);

-- Location: FF_X74_Y26_N5
\init_cnt_to_pr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[25]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(25));

-- Location: LCCOMB_X75_Y24_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (init_cnt_to_pr(26) & ((GND) # (!\Add0~51\))) # (!init_cnt_to_pr(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((init_cnt_to_pr(26)) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X74_Y25_N16
\init_cnt_to_pr[26]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[26]~36_combout\ = (!\rst~input_o\ & (\Equal0~10_combout\ & \Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Equal0~10_combout\,
	datad => \Add0~52_combout\,
	combout => \init_cnt_to_pr[26]~36_combout\);

-- Location: FF_X74_Y25_N17
\init_cnt_to_pr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[26]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(26));

-- Location: LCCOMB_X75_Y24_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (init_cnt_to_pr(27) & (\Add0~53\ & VCC)) # (!init_cnt_to_pr(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((!init_cnt_to_pr(27) & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X74_Y25_N18
\init_cnt_to_pr[27]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[27]~37_combout\ = (\Equal0~10_combout\ & (\Add0~54_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~54_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[27]~37_combout\);

-- Location: FF_X74_Y25_N19
\init_cnt_to_pr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[27]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(27));

-- Location: LCCOMB_X75_Y24_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (init_cnt_to_pr(28) & ((GND) # (!\Add0~55\))) # (!init_cnt_to_pr(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((init_cnt_to_pr(28)) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X74_Y25_N12
\init_cnt_to_pr[28]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[28]~38_combout\ = (\Equal0~10_combout\ & (\Add0~56_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~56_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[28]~38_combout\);

-- Location: FF_X74_Y25_N13
\init_cnt_to_pr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[28]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(28));

-- Location: LCCOMB_X75_Y24_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (init_cnt_to_pr(29) & (\Add0~57\ & VCC)) # (!init_cnt_to_pr(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((!init_cnt_to_pr(29) & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X74_Y25_N22
\init_cnt_to_pr[29]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[29]~39_combout\ = (!\rst~input_o\ & (\Equal0~10_combout\ & \Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Equal0~10_combout\,
	datad => \Add0~58_combout\,
	combout => \init_cnt_to_pr[29]~39_combout\);

-- Location: FF_X74_Y25_N23
\init_cnt_to_pr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[29]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(29));

-- Location: LCCOMB_X74_Y25_N24
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (init_cnt_to_pr(28)) # ((init_cnt_to_pr(27)) # ((init_cnt_to_pr(29)) # (init_cnt_to_pr(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(28),
	datab => init_cnt_to_pr(27),
	datac => init_cnt_to_pr(29),
	datad => init_cnt_to_pr(26),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X74_Y26_N22
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (init_cnt_to_pr(24)) # ((init_cnt_to_pr(23)) # ((init_cnt_to_pr(25)) # (init_cnt_to_pr(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(24),
	datab => init_cnt_to_pr(23),
	datac => init_cnt_to_pr(25),
	datad => init_cnt_to_pr(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X74_Y26_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (init_cnt_to_pr(18)) # (init_cnt_to_pr(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => init_cnt_to_pr(18),
	datad => init_cnt_to_pr(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X74_Y26_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\) # ((\Equal0~5_combout\) # ((init_cnt_to_pr(20)) # (init_cnt_to_pr(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => init_cnt_to_pr(20),
	datad => init_cnt_to_pr(21),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X76_Y25_N12
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (init_cnt_to_pr(13)) # ((init_cnt_to_pr(12)) # ((init_cnt_to_pr(11)) # (init_cnt_to_pr(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(13),
	datab => init_cnt_to_pr(12),
	datac => init_cnt_to_pr(11),
	datad => init_cnt_to_pr(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X76_Y25_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (init_cnt_to_pr(3)) # ((init_cnt_to_pr(5)) # ((init_cnt_to_pr(2)) # (init_cnt_to_pr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(3),
	datab => init_cnt_to_pr(5),
	datac => init_cnt_to_pr(2),
	datad => init_cnt_to_pr(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X77_Y25_N12
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (init_cnt_to_pr(15)) # ((init_cnt_to_pr(16)) # ((init_cnt_to_pr(17)) # (init_cnt_to_pr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(15),
	datab => init_cnt_to_pr(16),
	datac => init_cnt_to_pr(17),
	datad => init_cnt_to_pr(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X76_Y25_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (init_cnt_to_pr(8)) # ((init_cnt_to_pr(9)) # ((init_cnt_to_pr(6)) # (init_cnt_to_pr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(8),
	datab => init_cnt_to_pr(9),
	datac => init_cnt_to_pr(6),
	datad => init_cnt_to_pr(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X76_Y25_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\) # ((\Equal0~0_combout\) # ((\Equal0~3_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X75_Y24_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (init_cnt_to_pr(30) & ((GND) # (!\Add0~59\))) # (!init_cnt_to_pr(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((init_cnt_to_pr(30)) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_cnt_to_pr(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X76_Y26_N20
\init_cnt_to_pr[30]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[30]~40_combout\ = (\Equal0~10_combout\ & (\Add0~60_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~60_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[30]~40_combout\);

-- Location: FF_X76_Y26_N21
\init_cnt_to_pr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[30]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(30));

-- Location: LCCOMB_X75_Y24_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (!init_cnt_to_pr(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => init_cnt_to_pr(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X76_Y26_N26
\init_cnt_to_pr[31]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init_cnt_to_pr[31]~41_combout\ = (\Equal0~10_combout\ & (\Add0~62_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~62_combout\,
	datad => \rst~input_o\,
	combout => \init_cnt_to_pr[31]~41_combout\);

-- Location: FF_X76_Y26_N27
\init_cnt_to_pr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \init_cnt_to_pr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_cnt_to_pr(31));

-- Location: LCCOMB_X76_Y26_N16
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (init_cnt_to_pr(31)) # ((init_cnt_to_pr(0)) # ((init_cnt_to_pr(1)) # (init_cnt_to_pr(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_cnt_to_pr(31),
	datab => init_cnt_to_pr(0),
	datac => init_cnt_to_pr(1),
	datad => init_cnt_to_pr(30),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X75_Y26_N0
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\) # ((\Equal0~7_combout\) # ((\Equal0~4_combout\) # (\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X75_Y30_N20
\state_to_pr~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~23_combout\ = (\state_to_pr.IDLE~q\ & ((\Equal0~10_combout\) # ((!\refresh~input_o\ & !\rw~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh~input_o\,
	datab => \state_to_pr.IDLE~q\,
	datac => \rw~input_o\,
	datad => \Equal0~10_combout\,
	combout => \state_to_pr~23_combout\);

-- Location: LCCOMB_X74_Y26_N12
\state_to_pr~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~22_combout\ = (\state_to_pr.PRECHARGE~q\) # ((\state_to_pr.REFRESH_STATE~q\) # ((\state_to_pr.INIT_SECOND_REFRESH~q\ & \Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.PRECHARGE~q\,
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \state_to_pr.REFRESH_STATE~q\,
	datad => \Equal2~10_combout\,
	combout => \state_to_pr~22_combout\);

-- Location: LCCOMB_X75_Y30_N16
\state_to_pr~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~24_combout\ = (!\rst~input_o\ & ((\state_to_pr~23_combout\) # ((!\Equal0~10_combout\ & \state_to_pr~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr~23_combout\,
	datab => \Equal0~10_combout\,
	datac => \state_to_pr~22_combout\,
	datad => \rst~input_o\,
	combout => \state_to_pr~24_combout\);

-- Location: FF_X75_Y30_N17
\state_to_pr.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.IDLE~q\);

-- Location: LCCOMB_X75_Y30_N14
\Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\rw~input_o\ & \state_to_pr.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~input_o\,
	datad => \state_to_pr.IDLE~q\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X75_Y30_N0
\state_to_pr~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_to_pr~32_combout\ = (!\rst~input_o\ & ((\state_to_pr~19_combout\ & (\Selector82~0_combout\)) # (!\state_to_pr~19_combout\ & ((\state_to_pr.ACTIVATE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector82~0_combout\,
	datab => \rst~input_o\,
	datac => \state_to_pr.ACTIVATE~q\,
	datad => \state_to_pr~19_combout\,
	combout => \state_to_pr~32_combout\);

-- Location: FF_X75_Y30_N1
\state_to_pr.ACTIVATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \state_to_pr~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_to_pr.ACTIVATE~q\);

-- Location: LCCOMB_X75_Y30_N28
\data_out_to_pr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[0]~0_combout\ = (!\rst~input_o\ & (\state_to_pr.ACTIVATE~q\ & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state_to_pr.ACTIVATE~q\,
	datad => \Equal0~10_combout\,
	combout => \data_out_to_pr[0]~0_combout\);

-- Location: FF_X77_Y45_N9
\data_out_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[0]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(0));

-- Location: LCCOMB_X75_Y30_N18
\Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\buffer_to_pr~q\ & (((\state_to_pr.RCD~q\) # (!\state_to_pr.RW_STATE~q\)))) # (!\buffer_to_pr~q\ & (!\rw~input_o\ & ((\state_to_pr.RCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \state_to_pr.RW_STATE~q\,
	datac => \buffer_to_pr~q\,
	datad => \state_to_pr.RCD~q\,
	combout => \Selector93~0_combout\);

-- Location: FF_X75_Y30_N19
buffer_to_pr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_to_pr~q\);

-- Location: IOIBUF_X78_Y45_N8
\data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X77_Y45_N30
\data_out_to_pr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \data_out_to_pr[1]~feeder_combout\);

-- Location: FF_X77_Y45_N31
\data_out_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[1]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(1));

-- Location: IOIBUF_X78_Y43_N22
\data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X77_Y45_N5
\data_out_to_pr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(2));

-- Location: IOIBUF_X74_Y54_N22
\data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X77_Y45_N18
\data_out_to_pr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \data_out_to_pr[3]~feeder_combout\);

-- Location: FF_X77_Y45_N19
\data_out_to_pr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[3]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(3));

-- Location: IOIBUF_X78_Y42_N15
\data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X77_Y45_N17
\data_out_to_pr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(4));

-- Location: IOIBUF_X69_Y54_N29
\data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X77_Y45_N3
\data_out_to_pr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(5));

-- Location: IOIBUF_X78_Y44_N23
\data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X77_Y45_N24
\data_out_to_pr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[6]~feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \data_out_to_pr[6]~feeder_combout\);

-- Location: FF_X77_Y45_N25
\data_out_to_pr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[6]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(6));

-- Location: IOIBUF_X74_Y54_N15
\data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X77_Y45_N15
\data_out_to_pr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(7));

-- Location: IOIBUF_X78_Y44_N15
\data_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X77_Y45_N12
\data_out_to_pr[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[8]~feeder_combout\ = \data_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[8]~input_o\,
	combout => \data_out_to_pr[8]~feeder_combout\);

-- Location: FF_X77_Y45_N13
\data_out_to_pr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[8]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(8));

-- Location: IOIBUF_X69_Y54_N22
\data_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: LCCOMB_X70_Y50_N4
\data_out_to_pr[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[9]~feeder_combout\ = \data_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[9]~input_o\,
	combout => \data_out_to_pr[9]~feeder_combout\);

-- Location: FF_X70_Y50_N5
\data_out_to_pr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[9]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(9));

-- Location: IOIBUF_X78_Y45_N22
\data_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: LCCOMB_X77_Y45_N26
\data_out_to_pr[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[10]~feeder_combout\ = \data_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[10]~input_o\,
	combout => \data_out_to_pr[10]~feeder_combout\);

-- Location: FF_X77_Y45_N27
\data_out_to_pr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[10]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(10));

-- Location: IOIBUF_X78_Y45_N15
\data_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X77_Y45_N28
\data_out_to_pr[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[11]~feeder_combout\ = \data_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[11]~input_o\,
	combout => \data_out_to_pr[11]~feeder_combout\);

-- Location: FF_X77_Y45_N29
\data_out_to_pr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[11]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(11));

-- Location: IOIBUF_X71_Y54_N29
\data_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LCCOMB_X77_Y45_N6
\data_out_to_pr[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[12]~feeder_combout\ = \data_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[12]~input_o\,
	combout => \data_out_to_pr[12]~feeder_combout\);

-- Location: FF_X77_Y45_N7
\data_out_to_pr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[12]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(12));

-- Location: IOIBUF_X78_Y44_N1
\data_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: FF_X77_Y45_N1
\data_out_to_pr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[13]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(13));

-- Location: IOIBUF_X78_Y44_N8
\data_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: FF_X77_Y45_N23
\data_out_to_pr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	asdata => \data_in[14]~input_o\,
	sload => VCC,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(14));

-- Location: IOIBUF_X74_Y54_N8
\data_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LCCOMB_X77_Y45_N20
\data_out_to_pr[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out_to_pr[15]~feeder_combout\ = \data_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[15]~input_o\,
	combout => \data_out_to_pr[15]~feeder_combout\);

-- Location: FF_X77_Y45_N21
\data_out_to_pr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \data_out_to_pr[15]~feeder_combout\,
	ena => \data_out_to_pr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out_to_pr(15));

-- Location: LCCOMB_X74_Y26_N14
\mem_op_complete~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_op_complete~0_combout\ = (!\Equal0~10_combout\ & ((\state_to_pr.REFRESH_STATE~q\) # (\state_to_pr.PRECHARGE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \state_to_pr.REFRESH_STATE~q\,
	datad => \state_to_pr.PRECHARGE~q\,
	combout => \mem_op_complete~0_combout\);

-- Location: IOIBUF_X78_Y36_N8
\n_dqmh_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_dqmh_in,
	o => \n_dqmh_in~input_o\);

-- Location: LCCOMB_X77_Y36_N10
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ((!\rw~input_o\ & (\state_to_pr.RCD~q\ & \n_dqmh_in~input_o\))) # (!\state_to_pr.INIT_STALL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \rw~input_o\,
	datac => \state_to_pr.RCD~q\,
	datad => \n_dqmh_in~input_o\,
	combout => \Selector45~0_combout\);

-- Location: FF_X77_Y36_N11
n_dqmh_to_pr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_dqmh_to_pr~q\);

-- Location: IOIBUF_X78_Y40_N15
\n_dqml_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_dqml_in,
	o => \n_dqml_in~input_o\);

-- Location: LCCOMB_X77_Y36_N28
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ((!\rw~input_o\ & (\state_to_pr.RCD~q\ & \n_dqml_in~input_o\))) # (!\state_to_pr.INIT_STALL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_STALL~q\,
	datab => \rw~input_o\,
	datac => \state_to_pr.RCD~q\,
	datad => \n_dqml_in~input_o\,
	combout => \Selector46~0_combout\);

-- Location: FF_X77_Y36_N29
n_dqml_to_pr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_dqml_to_pr~q\);

-- Location: IOIBUF_X78_Y33_N1
\addr_in[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(23),
	o => \addr_in[23]~input_o\);

-- Location: LCCOMB_X77_Y30_N16
\bank_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bank_int~0_combout\ = (!\state_to_pr.INIT_PRECHARGE~q\ & (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_PRECHARGE~q\,
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[23]~input_o\,
	combout => \bank_int~0_combout\);

-- Location: FF_X77_Y30_N17
\bank_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \bank_int~0_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bank_to_pr(0));

-- Location: IOIBUF_X78_Y24_N23
\addr_in[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(24),
	o => \addr_in[24]~input_o\);

-- Location: LCCOMB_X77_Y29_N12
\bank_int~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bank_int~1_combout\ = (!\state_to_pr.INIT_PRECHARGE~q\ & (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_PRECHARGE~q\,
	datab => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[24]~input_o\,
	combout => \bank_int~1_combout\);

-- Location: FF_X77_Y29_N13
\bank_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \bank_int~1_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bank_to_pr(1));

-- Location: IOIBUF_X78_Y36_N1
\addr_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(10),
	o => \addr_in[10]~input_o\);

-- Location: IOIBUF_X78_Y40_N22
\addr_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(0),
	o => \addr_in[0]~input_o\);

-- Location: LCCOMB_X77_Y36_N0
\addr_to_pr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[0]~0_combout\ = (\rw~input_o\ & (\addr_in[10]~input_o\)) # (!\rw~input_o\ & ((\addr_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[10]~input_o\,
	datab => \rw~input_o\,
	datad => \addr_in[0]~input_o\,
	combout => \addr_to_pr[0]~0_combout\);

-- Location: LCCOMB_X77_Y36_N22
\Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[0]~input_o\,
	combout => \Selector92~0_combout\);

-- Location: FF_X77_Y36_N1
\addr_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[0]~0_combout\,
	asdata => \Selector92~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(0));

-- Location: IOIBUF_X78_Y24_N15
\addr_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(11),
	o => \addr_in[11]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\addr_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(1),
	o => \addr_in[1]~input_o\);

-- Location: LCCOMB_X77_Y29_N24
\addr_to_pr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[1]~1_combout\ = (\rw~input_o\ & (\addr_in[11]~input_o\)) # (!\rw~input_o\ & ((\addr_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[11]~input_o\,
	datab => \addr_in[1]~input_o\,
	datad => \rw~input_o\,
	combout => \addr_to_pr[1]~1_combout\);

-- Location: LCCOMB_X77_Y29_N22
\Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[1]~input_o\,
	combout => \Selector91~0_combout\);

-- Location: FF_X77_Y29_N25
\addr_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[1]~1_combout\,
	asdata => \Selector91~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(1));

-- Location: IOIBUF_X78_Y25_N8
\addr_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(12),
	o => \addr_in[12]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\addr_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(2),
	o => \addr_in[2]~input_o\);

-- Location: LCCOMB_X77_Y29_N2
\addr_to_pr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[2]~2_combout\ = (\rw~input_o\ & (\addr_in[12]~input_o\)) # (!\rw~input_o\ & ((\addr_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[12]~input_o\,
	datab => \addr_in[2]~input_o\,
	datad => \rw~input_o\,
	combout => \addr_to_pr[2]~2_combout\);

-- Location: LCCOMB_X77_Y29_N8
\Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[2]~input_o\,
	combout => \Selector90~0_combout\);

-- Location: FF_X77_Y29_N3
\addr_to_pr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[2]~2_combout\,
	asdata => \Selector90~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(2));

-- Location: IOIBUF_X78_Y31_N1
\addr_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(3),
	o => \addr_in[3]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\addr_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(13),
	o => \addr_in[13]~input_o\);

-- Location: LCCOMB_X77_Y29_N28
\addr_to_pr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[3]~3_combout\ = (\rw~input_o\ & ((\addr_in[13]~input_o\))) # (!\rw~input_o\ & (\addr_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[3]~input_o\,
	datab => \addr_in[13]~input_o\,
	datad => \rw~input_o\,
	combout => \addr_to_pr[3]~3_combout\);

-- Location: LCCOMB_X77_Y29_N26
\Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[3]~input_o\,
	combout => \Selector89~0_combout\);

-- Location: FF_X77_Y29_N29
\addr_to_pr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[3]~3_combout\,
	asdata => \Selector89~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(3));

-- Location: IOIBUF_X78_Y31_N22
\addr_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(14),
	o => \addr_in[14]~input_o\);

-- Location: IOIBUF_X78_Y29_N8
\addr_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(4),
	o => \addr_in[4]~input_o\);

-- Location: LCCOMB_X77_Y29_N14
\addr_to_pr[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[4]~4_combout\ = (\rw~input_o\ & (\addr_in[14]~input_o\)) # (!\rw~input_o\ & ((\addr_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[14]~input_o\,
	datab => \addr_in[4]~input_o\,
	datad => \rw~input_o\,
	combout => \addr_to_pr[4]~4_combout\);

-- Location: LCCOMB_X77_Y29_N4
\Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\addr_in[4]~input_o\ & !\state_to_pr.INIT_MODE_REG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr_in[4]~input_o\,
	datac => \state_to_pr.INIT_MODE_REG~q\,
	combout => \Selector88~0_combout\);

-- Location: FF_X77_Y29_N15
\addr_to_pr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[4]~4_combout\,
	asdata => \Selector88~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(4));

-- Location: IOIBUF_X78_Y23_N1
\addr_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(15),
	o => \addr_in[15]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\addr_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(5),
	o => \addr_in[5]~input_o\);

-- Location: LCCOMB_X77_Y29_N6
\Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = ((\rw~input_o\ & (\addr_in[15]~input_o\)) # (!\rw~input_o\ & ((\addr_in[5]~input_o\)))) # (!\state_to_pr.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[15]~input_o\,
	datab => \addr_in[5]~input_o\,
	datac => \state_to_pr.IDLE~q\,
	datad => \rw~input_o\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X77_Y29_N10
\Selector87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\ & ((\state_to_pr.INIT_MODE_REG~q\) # ((\state_to_pr.IDLE~q\) # (\addr_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector87~0_combout\,
	datab => \state_to_pr.INIT_MODE_REG~q\,
	datac => \state_to_pr.IDLE~q\,
	datad => \addr_in[5]~input_o\,
	combout => \Selector87~1_combout\);

-- Location: FF_X77_Y29_N11
\addr_to_pr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \Selector87~1_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(5));

-- Location: IOIBUF_X78_Y37_N15
\addr_in[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(16),
	o => \addr_in[16]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\addr_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(6),
	o => \addr_in[6]~input_o\);

-- Location: LCCOMB_X77_Y36_N18
\addr_to_pr[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[6]~5_combout\ = (\rw~input_o\ & (\addr_in[16]~input_o\)) # (!\rw~input_o\ & ((\addr_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[16]~input_o\,
	datab => \rw~input_o\,
	datad => \addr_in[6]~input_o\,
	combout => \addr_to_pr[6]~5_combout\);

-- Location: LCCOMB_X77_Y36_N8
\Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\addr_in[6]~input_o\ & !\state_to_pr.INIT_MODE_REG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr_in[6]~input_o\,
	datad => \state_to_pr.INIT_MODE_REG~q\,
	combout => \Selector86~0_combout\);

-- Location: FF_X77_Y36_N19
\addr_to_pr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[6]~5_combout\,
	asdata => \Selector86~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(6));

-- Location: IOIBUF_X78_Y35_N1
\addr_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(7),
	o => \addr_in[7]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\addr_in[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(17),
	o => \addr_in[17]~input_o\);

-- Location: LCCOMB_X77_Y36_N24
\addr_to_pr[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[7]~6_combout\ = (\rw~input_o\ & ((\addr_in[17]~input_o\))) # (!\rw~input_o\ & (\addr_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \addr_in[7]~input_o\,
	datad => \addr_in[17]~input_o\,
	combout => \addr_to_pr[7]~6_combout\);

-- Location: LCCOMB_X77_Y36_N14
\Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (!\state_to_pr.INIT_MODE_REG~q\ & \addr_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_MODE_REG~q\,
	datad => \addr_in[7]~input_o\,
	combout => \Selector85~0_combout\);

-- Location: FF_X77_Y36_N25
\addr_to_pr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[7]~6_combout\,
	asdata => \Selector85~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(7));

-- Location: IOIBUF_X78_Y35_N22
\addr_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(8),
	o => \addr_in[8]~input_o\);

-- Location: IOIBUF_X78_Y40_N8
\addr_in[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(18),
	o => \addr_in[18]~input_o\);

-- Location: LCCOMB_X77_Y36_N2
\addr_to_pr[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[8]~7_combout\ = (\rw~input_o\ & ((\addr_in[18]~input_o\))) # (!\rw~input_o\ & (\addr_in[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \addr_in[8]~input_o\,
	datad => \addr_in[18]~input_o\,
	combout => \addr_to_pr[8]~7_combout\);

-- Location: LCCOMB_X77_Y36_N4
\Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\addr_in[8]~input_o\ & !\state_to_pr.INIT_MODE_REG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr_in[8]~input_o\,
	datad => \state_to_pr.INIT_MODE_REG~q\,
	combout => \Selector84~0_combout\);

-- Location: FF_X77_Y36_N3
\addr_to_pr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[8]~7_combout\,
	asdata => \Selector84~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(8));

-- Location: IOIBUF_X78_Y35_N15
\addr_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(9),
	o => \addr_in[9]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\addr_in[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(19),
	o => \addr_in[19]~input_o\);

-- Location: LCCOMB_X77_Y36_N12
\addr_to_pr[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_to_pr[9]~8_combout\ = (\rw~input_o\ & ((\addr_in[19]~input_o\))) # (!\rw~input_o\ & (\addr_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \addr_in[9]~input_o\,
	datad => \addr_in[19]~input_o\,
	combout => \addr_to_pr[9]~8_combout\);

-- Location: LCCOMB_X77_Y36_N26
\Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\addr_in[9]~input_o\ & !\state_to_pr.INIT_MODE_REG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr_in[9]~input_o\,
	datad => \state_to_pr.INIT_MODE_REG~q\,
	combout => \Selector83~0_combout\);

-- Location: FF_X77_Y36_N13
\addr_to_pr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_to_pr[9]~8_combout\,
	asdata => \Selector83~0_combout\,
	sload => \ALT_INV_state_to_pr.IDLE~q\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(9));

-- Location: IOIBUF_X78_Y34_N23
\addr_in[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(20),
	o => \addr_in[20]~input_o\);

-- Location: LCCOMB_X75_Y30_N10
\Selector82~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\state_to_pr.SECOND_RAS~q\) # ((\state_to_pr.INIT_PRECHARGE~q\) # ((\addr_in[20]~input_o\ & \Selector82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[20]~input_o\,
	datab => \state_to_pr.SECOND_RAS~q\,
	datac => \state_to_pr.INIT_PRECHARGE~q\,
	datad => \Selector82~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: FF_X75_Y30_N11
\addr_to_pr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \Selector82~1_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(10));

-- Location: IOIBUF_X78_Y30_N22
\addr_in[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(21),
	o => \addr_in[21]~input_o\);

-- Location: LCCOMB_X77_Y30_N14
\addr_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_int~0_combout\ = (\addr_in[21]~input_o\ & (\state_to_pr.IDLE~q\ & \rw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_in[21]~input_o\,
	datac => \state_to_pr.IDLE~q\,
	datad => \rw~input_o\,
	combout => \addr_int~0_combout\);

-- Location: FF_X77_Y30_N15
\addr_to_pr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_int~0_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(11));

-- Location: IOIBUF_X78_Y25_N15
\addr_in[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(22),
	o => \addr_in[22]~input_o\);

-- Location: LCCOMB_X77_Y29_N20
\addr_int~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_int~1_combout\ = (\addr_in[22]~input_o\ & (\state_to_pr.IDLE~q\ & \rw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr_in[22]~input_o\,
	datac => \state_to_pr.IDLE~q\,
	datad => \rw~input_o\,
	combout => \addr_int~1_combout\);

-- Location: FF_X77_Y29_N21
\addr_to_pr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \addr_int~1_combout\,
	ena => \init_cnt_to_pr[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_to_pr(12));

-- Location: LCCOMB_X74_Y26_N28
\clk_en_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_en_int~0_combout\ = (\clk_en_to_pr~q\) # (!\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_en_to_pr~q\,
	datad => \Equal0~10_combout\,
	combout => \clk_en_int~0_combout\);

-- Location: FF_X74_Y26_N29
clk_en_to_pr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \clk_en_int~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_en_to_pr~q\);

-- Location: LCCOMB_X75_Y29_N16
\WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (!\state_to_pr.INIT_SECOND_REFRESH~q\ & (!\state_to_pr.IDLE~q\ & !\state_to_pr.INIT_FIRST_REFRESH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_to_pr.INIT_SECOND_REFRESH~q\,
	datac => \state_to_pr.IDLE~q\,
	datad => \state_to_pr.INIT_FIRST_REFRESH~q\,
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X75_Y29_N2
\WideOr16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr16~1_combout\ = (!\state_to_pr.INIT_PRECHARGE~q\ & (!\state_to_pr.INIT_MODE_REG~q\ & !\state_to_pr.SECOND_RAS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_PRECHARGE~q\,
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \state_to_pr.SECOND_RAS~q\,
	combout => \WideOr16~1_combout\);

-- Location: LCCOMB_X75_Y29_N20
\cmd_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_int[2]~1_combout\ = ((\state_to_pr~18_combout\) # ((\WideOr16~0_combout\ & \WideOr16~1_combout\))) # (!\refresh_cnt_int[17]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~65_combout\,
	datab => \WideOr16~0_combout\,
	datac => \state_to_pr~18_combout\,
	datad => \WideOr16~1_combout\,
	combout => \cmd_int[2]~1_combout\);

-- Location: LCCOMB_X75_Y29_N24
\cmd_to_pr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_to_pr[2]~feeder_combout\ = \cmd_int[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmd_int[2]~1_combout\,
	combout => \cmd_to_pr[2]~feeder_combout\);

-- Location: FF_X75_Y29_N25
\cmd_to_pr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \cmd_to_pr[2]~feeder_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_to_pr(2));

-- Location: LCCOMB_X75_Y29_N22
\WideOr18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\state_to_pr.INIT_FIRST_REFRESH~q\ & (!\state_to_pr.IDLE~q\ & (!\state_to_pr.INIT_MODE_REG~q\ & !\state_to_pr.INIT_SECOND_REFRESH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_to_pr.INIT_FIRST_REFRESH~q\,
	datab => \state_to_pr.IDLE~q\,
	datac => \state_to_pr.INIT_MODE_REG~q\,
	datad => \state_to_pr.INIT_SECOND_REFRESH~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X75_Y29_N28
\cmd_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_int[1]~2_combout\ = ((\cmd_int[1]~0_combout\) # ((\WideOr18~0_combout\ & !\state_to_pr.RCD~q\))) # (!\refresh_cnt_int[17]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \refresh_cnt_int[17]~65_combout\,
	datab => \WideOr18~0_combout\,
	datac => \state_to_pr.RCD~q\,
	datad => \cmd_int[1]~0_combout\,
	combout => \cmd_int[1]~2_combout\);

-- Location: LCCOMB_X75_Y29_N6
\cmd_to_pr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_to_pr[1]~feeder_combout\ = \cmd_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmd_int[1]~2_combout\,
	combout => \cmd_to_pr[1]~feeder_combout\);

-- Location: FF_X75_Y29_N7
\cmd_to_pr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \cmd_to_pr[1]~feeder_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_to_pr(1));

-- Location: LCCOMB_X75_Y29_N10
\cmd_int[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_int[0]~3_combout\ = (\Equal0~10_combout\) # ((\state_to_pr.RCD~q\ & ((\rw~input_o\))) # (!\state_to_pr.RCD~q\ & (\WideOr16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \WideOr16~1_combout\,
	datac => \state_to_pr.RCD~q\,
	datad => \rw~input_o\,
	combout => \cmd_int[0]~3_combout\);

-- Location: LCCOMB_X75_Y29_N8
\cmd_to_pr[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmd_to_pr[0]~feeder_combout\ = \cmd_int[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmd_int[0]~3_combout\,
	combout => \cmd_to_pr[0]~feeder_combout\);

-- Location: FF_X75_Y29_N9
\cmd_to_pr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ram_clk_in_100~inputclkctrl_outclk\,
	d => \cmd_to_pr[0]~feeder_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_to_pr(0));

-- Location: IOIBUF_X78_Y41_N1
\data_io[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(0),
	o => \data_io[0]~input_o\);

-- Location: IOIBUF_X78_Y42_N1
\data_io[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(1),
	o => \data_io[1]~input_o\);

-- Location: IOIBUF_X78_Y49_N22
\data_io[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(2),
	o => \data_io[2]~input_o\);

-- Location: IOIBUF_X69_Y54_N8
\data_io[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(3),
	o => \data_io[3]~input_o\);

-- Location: IOIBUF_X78_Y43_N8
\data_io[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(4),
	o => \data_io[4]~input_o\);

-- Location: IOIBUF_X78_Y49_N1
\data_io[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(5),
	o => \data_io[5]~input_o\);

-- Location: IOIBUF_X78_Y41_N23
\data_io[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(6),
	o => \data_io[6]~input_o\);

-- Location: IOIBUF_X78_Y42_N8
\data_io[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(7),
	o => \data_io[7]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\data_io[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(8),
	o => \data_io[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\data_io[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(9),
	o => \data_io[9]~input_o\);

-- Location: IOIBUF_X78_Y49_N15
\data_io[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(10),
	o => \data_io[10]~input_o\);

-- Location: IOIBUF_X78_Y42_N22
\data_io[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(11),
	o => \data_io[11]~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\data_io[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(12),
	o => \data_io[12]~input_o\);

-- Location: IOIBUF_X74_Y54_N1
\data_io[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(13),
	o => \data_io[13]~input_o\);

-- Location: IOIBUF_X78_Y49_N8
\data_io[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(14),
	o => \data_io[14]~input_o\);

-- Location: IOIBUF_X78_Y43_N1
\data_io[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_io(15),
	o => \data_io[15]~input_o\);

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

ww_up_to_use <= \up_to_use~output_o\;

ww_mem_op_complete <= \mem_op_complete~output_o\;

ww_n_dqmh_to_sdram <= \n_dqmh_to_sdram~output_o\;

ww_n_dqml_to_sdram <= \n_dqml_to_sdram~output_o\;

ww_bank_to_sdram(0) <= \bank_to_sdram[0]~output_o\;

ww_bank_to_sdram(1) <= \bank_to_sdram[1]~output_o\;

ww_addr_to_sdram(0) <= \addr_to_sdram[0]~output_o\;

ww_addr_to_sdram(1) <= \addr_to_sdram[1]~output_o\;

ww_addr_to_sdram(2) <= \addr_to_sdram[2]~output_o\;

ww_addr_to_sdram(3) <= \addr_to_sdram[3]~output_o\;

ww_addr_to_sdram(4) <= \addr_to_sdram[4]~output_o\;

ww_addr_to_sdram(5) <= \addr_to_sdram[5]~output_o\;

ww_addr_to_sdram(6) <= \addr_to_sdram[6]~output_o\;

ww_addr_to_sdram(7) <= \addr_to_sdram[7]~output_o\;

ww_addr_to_sdram(8) <= \addr_to_sdram[8]~output_o\;

ww_addr_to_sdram(9) <= \addr_to_sdram[9]~output_o\;

ww_addr_to_sdram(10) <= \addr_to_sdram[10]~output_o\;

ww_addr_to_sdram(11) <= \addr_to_sdram[11]~output_o\;

ww_addr_to_sdram(12) <= \addr_to_sdram[12]~output_o\;

ww_clk_en_to_sdram <= \clk_en_to_sdram~output_o\;

ww_n_cs_to_sdram <= \n_cs_to_sdram~output_o\;

ww_n_ras <= \n_ras~output_o\;

ww_n_cas <= \n_cas~output_o\;

ww_n_we <= \n_we~output_o\;

data_io(0) <= \data_io[0]~output_o\;

data_io(1) <= \data_io[1]~output_o\;

data_io(2) <= \data_io[2]~output_o\;

data_io(3) <= \data_io[3]~output_o\;

data_io(4) <= \data_io[4]~output_o\;

data_io(5) <= \data_io[5]~output_o\;

data_io(6) <= \data_io[6]~output_o\;

data_io(7) <= \data_io[7]~output_o\;

data_io(8) <= \data_io[8]~output_o\;

data_io(9) <= \data_io[9]~output_o\;

data_io(10) <= \data_io[10]~output_o\;

data_io(11) <= \data_io[11]~output_o\;

data_io(12) <= \data_io[12]~output_o\;

data_io(13) <= \data_io[13]~output_o\;

data_io(14) <= \data_io[14]~output_o\;

data_io(15) <= \data_io[15]~output_o\;
END structure;


