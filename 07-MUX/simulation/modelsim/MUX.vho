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

-- DATE "07/05/2021 11:47:44"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX IS
    PORT (
	sig_a : IN std_logic_vector(4 DOWNTO 0);
	sig_b : IN std_logic_vector(21 DOWNTO 0);
	l_sel : IN std_logic;
	sig_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END MUX;

-- Design Ports Information
-- sig_out[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[9]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[12]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[13]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[14]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[15]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[16]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[17]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[18]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[20]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[22]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[23]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[24]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[25]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[26]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[27]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[28]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[29]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[30]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_a[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_sel	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_a[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_a[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_a[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_a[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[12]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[13]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[15]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[17]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[18]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[20]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_b[21]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sig_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sig_b : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_l_sel : std_logic;
SIGNAL ww_sig_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sig_out[0]~output_o\ : std_logic;
SIGNAL \sig_out[1]~output_o\ : std_logic;
SIGNAL \sig_out[2]~output_o\ : std_logic;
SIGNAL \sig_out[3]~output_o\ : std_logic;
SIGNAL \sig_out[4]~output_o\ : std_logic;
SIGNAL \sig_out[5]~output_o\ : std_logic;
SIGNAL \sig_out[6]~output_o\ : std_logic;
SIGNAL \sig_out[7]~output_o\ : std_logic;
SIGNAL \sig_out[8]~output_o\ : std_logic;
SIGNAL \sig_out[9]~output_o\ : std_logic;
SIGNAL \sig_out[10]~output_o\ : std_logic;
SIGNAL \sig_out[11]~output_o\ : std_logic;
SIGNAL \sig_out[12]~output_o\ : std_logic;
SIGNAL \sig_out[13]~output_o\ : std_logic;
SIGNAL \sig_out[14]~output_o\ : std_logic;
SIGNAL \sig_out[15]~output_o\ : std_logic;
SIGNAL \sig_out[16]~output_o\ : std_logic;
SIGNAL \sig_out[17]~output_o\ : std_logic;
SIGNAL \sig_out[18]~output_o\ : std_logic;
SIGNAL \sig_out[19]~output_o\ : std_logic;
SIGNAL \sig_out[20]~output_o\ : std_logic;
SIGNAL \sig_out[21]~output_o\ : std_logic;
SIGNAL \sig_out[22]~output_o\ : std_logic;
SIGNAL \sig_out[23]~output_o\ : std_logic;
SIGNAL \sig_out[24]~output_o\ : std_logic;
SIGNAL \sig_out[25]~output_o\ : std_logic;
SIGNAL \sig_out[26]~output_o\ : std_logic;
SIGNAL \sig_out[27]~output_o\ : std_logic;
SIGNAL \sig_out[28]~output_o\ : std_logic;
SIGNAL \sig_out[29]~output_o\ : std_logic;
SIGNAL \sig_out[30]~output_o\ : std_logic;
SIGNAL \sig_out[31]~output_o\ : std_logic;
SIGNAL \sig_b[0]~input_o\ : std_logic;
SIGNAL \sig_a[0]~input_o\ : std_logic;
SIGNAL \l_sel~input_o\ : std_logic;
SIGNAL \sig_out~0_combout\ : std_logic;
SIGNAL \sig_b[1]~input_o\ : std_logic;
SIGNAL \sig_a[1]~input_o\ : std_logic;
SIGNAL \sig_out~1_combout\ : std_logic;
SIGNAL \sig_a[2]~input_o\ : std_logic;
SIGNAL \sig_b[2]~input_o\ : std_logic;
SIGNAL \sig_out~2_combout\ : std_logic;
SIGNAL \sig_b[3]~input_o\ : std_logic;
SIGNAL \sig_a[3]~input_o\ : std_logic;
SIGNAL \sig_out~3_combout\ : std_logic;
SIGNAL \sig_a[4]~input_o\ : std_logic;
SIGNAL \sig_b[4]~input_o\ : std_logic;
SIGNAL \sig_out~4_combout\ : std_logic;
SIGNAL \sig_b[5]~input_o\ : std_logic;
SIGNAL \sig_out~5_combout\ : std_logic;
SIGNAL \sig_b[6]~input_o\ : std_logic;
SIGNAL \sig_out~6_combout\ : std_logic;
SIGNAL \sig_b[7]~input_o\ : std_logic;
SIGNAL \sig_out~7_combout\ : std_logic;
SIGNAL \sig_b[8]~input_o\ : std_logic;
SIGNAL \sig_out~8_combout\ : std_logic;
SIGNAL \sig_b[9]~input_o\ : std_logic;
SIGNAL \sig_out~9_combout\ : std_logic;
SIGNAL \sig_b[10]~input_o\ : std_logic;
SIGNAL \sig_out~10_combout\ : std_logic;
SIGNAL \sig_b[11]~input_o\ : std_logic;
SIGNAL \sig_out~11_combout\ : std_logic;
SIGNAL \sig_b[12]~input_o\ : std_logic;
SIGNAL \sig_out~12_combout\ : std_logic;
SIGNAL \sig_b[13]~input_o\ : std_logic;
SIGNAL \sig_out~13_combout\ : std_logic;
SIGNAL \sig_b[14]~input_o\ : std_logic;
SIGNAL \sig_out~14_combout\ : std_logic;
SIGNAL \sig_b[15]~input_o\ : std_logic;
SIGNAL \sig_out~15_combout\ : std_logic;
SIGNAL \sig_b[16]~input_o\ : std_logic;
SIGNAL \sig_out~16_combout\ : std_logic;
SIGNAL \sig_b[17]~input_o\ : std_logic;
SIGNAL \sig_out~17_combout\ : std_logic;
SIGNAL \sig_b[18]~input_o\ : std_logic;
SIGNAL \sig_out~18_combout\ : std_logic;
SIGNAL \sig_b[19]~input_o\ : std_logic;
SIGNAL \sig_out~19_combout\ : std_logic;
SIGNAL \sig_b[20]~input_o\ : std_logic;
SIGNAL \sig_out~20_combout\ : std_logic;
SIGNAL \sig_b[21]~input_o\ : std_logic;
SIGNAL \sig_out~21_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sig_a <= sig_a;
ww_sig_b <= sig_b;
ww_l_sel <= l_sel;
sig_out <= ww_sig_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
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

-- Location: IOOBUF_X0_Y35_N16
\sig_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~0_combout\,
	devoe => ww_devoe,
	o => \sig_out[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\sig_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~1_combout\,
	devoe => ww_devoe,
	o => \sig_out[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\sig_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~2_combout\,
	devoe => ww_devoe,
	o => \sig_out[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\sig_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~3_combout\,
	devoe => ww_devoe,
	o => \sig_out[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\sig_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~4_combout\,
	devoe => ww_devoe,
	o => \sig_out[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\sig_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~5_combout\,
	devoe => ww_devoe,
	o => \sig_out[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\sig_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~6_combout\,
	devoe => ww_devoe,
	o => \sig_out[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\sig_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~7_combout\,
	devoe => ww_devoe,
	o => \sig_out[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\sig_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~8_combout\,
	devoe => ww_devoe,
	o => \sig_out[8]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\sig_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~9_combout\,
	devoe => ww_devoe,
	o => \sig_out[9]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\sig_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~10_combout\,
	devoe => ww_devoe,
	o => \sig_out[10]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\sig_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~11_combout\,
	devoe => ww_devoe,
	o => \sig_out[11]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\sig_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~12_combout\,
	devoe => ww_devoe,
	o => \sig_out[12]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\sig_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~13_combout\,
	devoe => ww_devoe,
	o => \sig_out[13]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\sig_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~14_combout\,
	devoe => ww_devoe,
	o => \sig_out[14]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\sig_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~15_combout\,
	devoe => ww_devoe,
	o => \sig_out[15]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\sig_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~16_combout\,
	devoe => ww_devoe,
	o => \sig_out[16]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\sig_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~17_combout\,
	devoe => ww_devoe,
	o => \sig_out[17]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\sig_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~18_combout\,
	devoe => ww_devoe,
	o => \sig_out[18]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\sig_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~19_combout\,
	devoe => ww_devoe,
	o => \sig_out[19]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\sig_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~20_combout\,
	devoe => ww_devoe,
	o => \sig_out[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\sig_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out~21_combout\,
	devoe => ww_devoe,
	o => \sig_out[21]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\sig_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[22]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\sig_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[23]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\sig_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[24]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\sig_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[25]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\sig_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[26]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\sig_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[27]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\sig_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\sig_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[29]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\sig_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[30]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\sig_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sig_out[31]~output_o\);

-- Location: IOIBUF_X24_Y39_N29
\sig_b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(0),
	o => \sig_b[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\sig_a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_a(0),
	o => \sig_a[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\l_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_sel,
	o => \l_sel~input_o\);

-- Location: LCCOMB_X24_Y36_N16
\sig_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~0_combout\ = (\l_sel~input_o\ & (\sig_b[0]~input_o\)) # (!\l_sel~input_o\ & ((\sig_a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[0]~input_o\,
	datac => \sig_a[0]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~0_combout\);

-- Location: IOIBUF_X29_Y39_N8
\sig_b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(1),
	o => \sig_b[1]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\sig_a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_a(1),
	o => \sig_a[1]~input_o\);

-- Location: LCCOMB_X24_Y36_N18
\sig_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~1_combout\ = (\l_sel~input_o\ & (\sig_b[1]~input_o\)) # (!\l_sel~input_o\ & ((\sig_a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[1]~input_o\,
	datac => \sig_a[1]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~1_combout\);

-- Location: IOIBUF_X24_Y39_N15
\sig_a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_a(2),
	o => \sig_a[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\sig_b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(2),
	o => \sig_b[2]~input_o\);

-- Location: LCCOMB_X24_Y36_N20
\sig_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~2_combout\ = (\l_sel~input_o\ & ((\sig_b[2]~input_o\))) # (!\l_sel~input_o\ & (\sig_a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_a[2]~input_o\,
	datac => \sig_b[2]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~2_combout\);

-- Location: IOIBUF_X26_Y39_N15
\sig_b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(3),
	o => \sig_b[3]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\sig_a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_a(3),
	o => \sig_a[3]~input_o\);

-- Location: LCCOMB_X24_Y36_N6
\sig_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~3_combout\ = (\l_sel~input_o\ & (\sig_b[3]~input_o\)) # (!\l_sel~input_o\ & ((\sig_a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_b[3]~input_o\,
	datac => \sig_a[3]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~3_combout\);

-- Location: IOIBUF_X20_Y39_N8
\sig_a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_a(4),
	o => \sig_a[4]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\sig_b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(4),
	o => \sig_b[4]~input_o\);

-- Location: LCCOMB_X24_Y36_N8
\sig_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~4_combout\ = (\l_sel~input_o\ & ((\sig_b[4]~input_o\))) # (!\l_sel~input_o\ & (\sig_a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_a[4]~input_o\,
	datac => \sig_b[4]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~4_combout\);

-- Location: IOIBUF_X78_Y35_N22
\sig_b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(5),
	o => \sig_b[5]~input_o\);

-- Location: LCCOMB_X36_Y35_N16
\sig_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~5_combout\ = (\l_sel~input_o\ & \sig_b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l_sel~input_o\,
	datad => \sig_b[5]~input_o\,
	combout => \sig_out~5_combout\);

-- Location: IOIBUF_X26_Y39_N29
\sig_b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(6),
	o => \sig_b[6]~input_o\);

-- Location: LCCOMB_X24_Y36_N26
\sig_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~6_combout\ = (\sig_b[6]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[6]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~6_combout\);

-- Location: IOIBUF_X31_Y39_N8
\sig_b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(7),
	o => \sig_b[7]~input_o\);

-- Location: LCCOMB_X30_Y38_N24
\sig_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~7_combout\ = (\sig_b[7]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_b[7]~input_o\,
	datac => \l_sel~input_o\,
	combout => \sig_out~7_combout\);

-- Location: IOIBUF_X36_Y39_N22
\sig_b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(8),
	o => \sig_b[8]~input_o\);

-- Location: LCCOMB_X36_Y35_N2
\sig_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~8_combout\ = (\l_sel~input_o\ & \sig_b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l_sel~input_o\,
	datad => \sig_b[8]~input_o\,
	combout => \sig_out~8_combout\);

-- Location: IOIBUF_X0_Y34_N8
\sig_b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(9),
	o => \sig_b[9]~input_o\);

-- Location: LCCOMB_X24_Y36_N28
\sig_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~9_combout\ = (\sig_b[9]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_b[9]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~9_combout\);

-- Location: IOIBUF_X24_Y39_N1
\sig_b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(10),
	o => \sig_b[10]~input_o\);

-- Location: LCCOMB_X24_Y36_N30
\sig_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~10_combout\ = (\sig_b[10]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_b[10]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~10_combout\);

-- Location: IOIBUF_X34_Y39_N29
\sig_b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(11),
	o => \sig_b[11]~input_o\);

-- Location: LCCOMB_X36_Y35_N12
\sig_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~11_combout\ = (\sig_b[11]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[11]~input_o\,
	datac => \l_sel~input_o\,
	combout => \sig_out~11_combout\);

-- Location: IOIBUF_X0_Y36_N22
\sig_b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(12),
	o => \sig_b[12]~input_o\);

-- Location: LCCOMB_X24_Y36_N24
\sig_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~12_combout\ = (\sig_b[12]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_b[12]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~12_combout\);

-- Location: IOIBUF_X24_Y39_N22
\sig_b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(13),
	o => \sig_b[13]~input_o\);

-- Location: LCCOMB_X24_Y36_N10
\sig_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~13_combout\ = (\sig_b[13]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_b[13]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~13_combout\);

-- Location: IOIBUF_X29_Y39_N1
\sig_b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(14),
	o => \sig_b[14]~input_o\);

-- Location: LCCOMB_X24_Y36_N4
\sig_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~14_combout\ = (\sig_b[14]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_b[14]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~14_combout\);

-- Location: IOIBUF_X0_Y35_N22
\sig_b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(15),
	o => \sig_b[15]~input_o\);

-- Location: LCCOMB_X24_Y36_N14
\sig_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~15_combout\ = (\sig_b[15]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[15]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~15_combout\);

-- Location: IOIBUF_X36_Y39_N29
\sig_b[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(16),
	o => \sig_b[16]~input_o\);

-- Location: LCCOMB_X36_Y35_N6
\sig_out~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~16_combout\ = (\l_sel~input_o\ & \sig_b[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l_sel~input_o\,
	datad => \sig_b[16]~input_o\,
	combout => \sig_out~16_combout\);

-- Location: IOIBUF_X24_Y0_N8
\sig_b[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(17),
	o => \sig_b[17]~input_o\);

-- Location: LCCOMB_X24_Y36_N0
\sig_out~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~17_combout\ = (\sig_b[17]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_b[17]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~17_combout\);

-- Location: IOIBUF_X0_Y34_N1
\sig_b[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(18),
	o => \sig_b[18]~input_o\);

-- Location: LCCOMB_X24_Y36_N2
\sig_out~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~18_combout\ = (\sig_b[18]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_b[18]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~18_combout\);

-- Location: IOIBUF_X36_Y39_N15
\sig_b[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(19),
	o => \sig_b[19]~input_o\);

-- Location: LCCOMB_X36_Y35_N0
\sig_out~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~19_combout\ = (\sig_b[19]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_b[19]~input_o\,
	datac => \l_sel~input_o\,
	combout => \sig_out~19_combout\);

-- Location: IOIBUF_X22_Y39_N22
\sig_b[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(20),
	o => \sig_b[20]~input_o\);

-- Location: LCCOMB_X24_Y36_N12
\sig_out~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~20_combout\ = (\sig_b[20]~input_o\ & \l_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_b[20]~input_o\,
	datad => \l_sel~input_o\,
	combout => \sig_out~20_combout\);

-- Location: IOIBUF_X34_Y39_N22
\sig_b[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_b(21),
	o => \sig_b[21]~input_o\);

-- Location: LCCOMB_X36_Y35_N10
\sig_out~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_out~21_combout\ = (\l_sel~input_o\ & \sig_b[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_sel~input_o\,
	datac => \sig_b[21]~input_o\,
	combout => \sig_out~21_combout\);

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

ww_sig_out(0) <= \sig_out[0]~output_o\;

ww_sig_out(1) <= \sig_out[1]~output_o\;

ww_sig_out(2) <= \sig_out[2]~output_o\;

ww_sig_out(3) <= \sig_out[3]~output_o\;

ww_sig_out(4) <= \sig_out[4]~output_o\;

ww_sig_out(5) <= \sig_out[5]~output_o\;

ww_sig_out(6) <= \sig_out[6]~output_o\;

ww_sig_out(7) <= \sig_out[7]~output_o\;

ww_sig_out(8) <= \sig_out[8]~output_o\;

ww_sig_out(9) <= \sig_out[9]~output_o\;

ww_sig_out(10) <= \sig_out[10]~output_o\;

ww_sig_out(11) <= \sig_out[11]~output_o\;

ww_sig_out(12) <= \sig_out[12]~output_o\;

ww_sig_out(13) <= \sig_out[13]~output_o\;

ww_sig_out(14) <= \sig_out[14]~output_o\;

ww_sig_out(15) <= \sig_out[15]~output_o\;

ww_sig_out(16) <= \sig_out[16]~output_o\;

ww_sig_out(17) <= \sig_out[17]~output_o\;

ww_sig_out(18) <= \sig_out[18]~output_o\;

ww_sig_out(19) <= \sig_out[19]~output_o\;

ww_sig_out(20) <= \sig_out[20]~output_o\;

ww_sig_out(21) <= \sig_out[21]~output_o\;

ww_sig_out(22) <= \sig_out[22]~output_o\;

ww_sig_out(23) <= \sig_out[23]~output_o\;

ww_sig_out(24) <= \sig_out[24]~output_o\;

ww_sig_out(25) <= \sig_out[25]~output_o\;

ww_sig_out(26) <= \sig_out[26]~output_o\;

ww_sig_out(27) <= \sig_out[27]~output_o\;

ww_sig_out(28) <= \sig_out[28]~output_o\;

ww_sig_out(29) <= \sig_out[29]~output_o\;

ww_sig_out(30) <= \sig_out[30]~output_o\;

ww_sig_out(31) <= \sig_out[31]~output_o\;
END structure;


