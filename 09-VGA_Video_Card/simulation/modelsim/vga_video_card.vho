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

-- DATE "07/26/2021 18:13:35"

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

ENTITY 	VGA_VIDEO_CARD IS
    PORT (
	fb_en : IN std_logic;
	fb_px_clk : IN std_logic;
	fb_we : IN std_logic;
	fb_din : IN std_logic_vector(2 DOWNTO 0);
	ctrl_en : IN std_logic;
	H_SYNCH : BUFFER std_logic;
	V_SYNCH : BUFFER std_logic;
	vga_out : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END VGA_VIDEO_CARD;

-- Design Ports Information
-- fb_en	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- fb_we	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- fb_din[0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- fb_din[1]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- fb_din[2]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- H_SYNCH	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- V_SYNCH	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[0]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[2]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[4]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[5]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[7]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[8]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[9]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[10]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- vga_out[11]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ctrl_en	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- fb_px_clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF VGA_VIDEO_CARD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fb_en : std_logic;
SIGNAL ww_fb_px_clk : std_logic;
SIGNAL ww_fb_we : std_logic;
SIGNAL ww_fb_din : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ctrl_en : std_logic;
SIGNAL ww_H_SYNCH : std_logic;
SIGNAL ww_V_SYNCH : std_logic;
SIGNAL ww_vga_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CD|int_o~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb_px_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb_en~input_o\ : std_logic;
SIGNAL \fb_we~input_o\ : std_logic;
SIGNAL \fb_din[0]~input_o\ : std_logic;
SIGNAL \fb_din[1]~input_o\ : std_logic;
SIGNAL \fb_din[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \H_SYNCH~output_o\ : std_logic;
SIGNAL \V_SYNCH~output_o\ : std_logic;
SIGNAL \vga_out[0]~output_o\ : std_logic;
SIGNAL \vga_out[1]~output_o\ : std_logic;
SIGNAL \vga_out[2]~output_o\ : std_logic;
SIGNAL \vga_out[3]~output_o\ : std_logic;
SIGNAL \vga_out[4]~output_o\ : std_logic;
SIGNAL \vga_out[5]~output_o\ : std_logic;
SIGNAL \vga_out[6]~output_o\ : std_logic;
SIGNAL \vga_out[7]~output_o\ : std_logic;
SIGNAL \vga_out[8]~output_o\ : std_logic;
SIGNAL \vga_out[9]~output_o\ : std_logic;
SIGNAL \vga_out[10]~output_o\ : std_logic;
SIGNAL \vga_out[11]~output_o\ : std_logic;
SIGNAL \fb_px_clk~input_o\ : std_logic;
SIGNAL \fb_px_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CD|Add0~7\ : std_logic;
SIGNAL \CD|Add0~8_combout\ : std_logic;
SIGNAL \CD|Add0~9\ : std_logic;
SIGNAL \CD|Add0~10_combout\ : std_logic;
SIGNAL \CD|Add0~11\ : std_logic;
SIGNAL \CD|Add0~12_combout\ : std_logic;
SIGNAL \CD|Add0~13\ : std_logic;
SIGNAL \CD|Add0~14_combout\ : std_logic;
SIGNAL \CD|Add0~15\ : std_logic;
SIGNAL \CD|Add0~16_combout\ : std_logic;
SIGNAL \CD|Add0~17\ : std_logic;
SIGNAL \CD|Add0~18_combout\ : std_logic;
SIGNAL \CD|Add0~19\ : std_logic;
SIGNAL \CD|Add0~20_combout\ : std_logic;
SIGNAL \CD|Add0~21\ : std_logic;
SIGNAL \CD|Add0~22_combout\ : std_logic;
SIGNAL \CD|Add0~23\ : std_logic;
SIGNAL \CD|Add0~24_combout\ : std_logic;
SIGNAL \CD|Add0~25\ : std_logic;
SIGNAL \CD|Add0~26_combout\ : std_logic;
SIGNAL \CD|Add0~27\ : std_logic;
SIGNAL \CD|Add0~28_combout\ : std_logic;
SIGNAL \CD|Add0~29\ : std_logic;
SIGNAL \CD|Add0~30_combout\ : std_logic;
SIGNAL \CD|Add0~31\ : std_logic;
SIGNAL \CD|Add0~32_combout\ : std_logic;
SIGNAL \CD|Add0~33\ : std_logic;
SIGNAL \CD|Add0~34_combout\ : std_logic;
SIGNAL \CD|Add0~35\ : std_logic;
SIGNAL \CD|Add0~36_combout\ : std_logic;
SIGNAL \CD|Add0~37\ : std_logic;
SIGNAL \CD|Add0~38_combout\ : std_logic;
SIGNAL \CD|Add0~39\ : std_logic;
SIGNAL \CD|Add0~40_combout\ : std_logic;
SIGNAL \CD|Equal0~5_combout\ : std_logic;
SIGNAL \CD|Add0~41\ : std_logic;
SIGNAL \CD|Add0~42_combout\ : std_logic;
SIGNAL \CD|Add0~43\ : std_logic;
SIGNAL \CD|Add0~44_combout\ : std_logic;
SIGNAL \CD|Add0~45\ : std_logic;
SIGNAL \CD|Add0~46_combout\ : std_logic;
SIGNAL \CD|Equal0~6_combout\ : std_logic;
SIGNAL \CD|Equal0~7_combout\ : std_logic;
SIGNAL \CD|Add0~0_combout\ : std_logic;
SIGNAL \CD|Add0~47\ : std_logic;
SIGNAL \CD|Add0~48_combout\ : std_logic;
SIGNAL \CD|Add0~49\ : std_logic;
SIGNAL \CD|Add0~50_combout\ : std_logic;
SIGNAL \CD|Add0~51\ : std_logic;
SIGNAL \CD|Add0~52_combout\ : std_logic;
SIGNAL \CD|Add0~53\ : std_logic;
SIGNAL \CD|Add0~54_combout\ : std_logic;
SIGNAL \CD|Equal0~8_combout\ : std_logic;
SIGNAL \CD|Add0~55\ : std_logic;
SIGNAL \CD|Add0~56_combout\ : std_logic;
SIGNAL \CD|Add0~57\ : std_logic;
SIGNAL \CD|Add0~58_combout\ : std_logic;
SIGNAL \CD|Add0~59\ : std_logic;
SIGNAL \CD|Add0~60_combout\ : std_logic;
SIGNAL \CD|Add0~61\ : std_logic;
SIGNAL \CD|Add0~62_combout\ : std_logic;
SIGNAL \CD|Equal0~9_combout\ : std_logic;
SIGNAL \CD|int_o~0_combout\ : std_logic;
SIGNAL \CD|cnt~0_combout\ : std_logic;
SIGNAL \CD|Add0~1\ : std_logic;
SIGNAL \CD|Add0~2_combout\ : std_logic;
SIGNAL \CD|Add0~3\ : std_logic;
SIGNAL \CD|Add0~4_combout\ : std_logic;
SIGNAL \CD|Add0~5\ : std_logic;
SIGNAL \CD|Add0~6_combout\ : std_logic;
SIGNAL \CD|Equal0~0_combout\ : std_logic;
SIGNAL \CD|Equal0~3_combout\ : std_logic;
SIGNAL \CD|Equal0~1_combout\ : std_logic;
SIGNAL \CD|Equal0~2_combout\ : std_logic;
SIGNAL \CD|Equal0~4_combout\ : std_logic;
SIGNAL \CD|int_o~1_combout\ : std_logic;
SIGNAL \CD|int_o~q\ : std_logic;
SIGNAL \CD|int_o~clkctrl_outclk\ : std_logic;
SIGNAL \CTRL|Add2~0_combout\ : std_logic;
SIGNAL \CTRL|h_cnt~3_combout\ : std_logic;
SIGNAL \ctrl_en~input_o\ : std_logic;
SIGNAL \CTRL|Add2~1\ : std_logic;
SIGNAL \CTRL|Add2~2_combout\ : std_logic;
SIGNAL \CTRL|Add2~3\ : std_logic;
SIGNAL \CTRL|Add2~4_combout\ : std_logic;
SIGNAL \CTRL|Add2~5\ : std_logic;
SIGNAL \CTRL|Add2~6_combout\ : std_logic;
SIGNAL \CTRL|Add2~7\ : std_logic;
SIGNAL \CTRL|Add2~8_combout\ : std_logic;
SIGNAL \CTRL|Add2~9\ : std_logic;
SIGNAL \CTRL|Add2~10_combout\ : std_logic;
SIGNAL \CTRL|h_cnt~0_combout\ : std_logic;
SIGNAL \CTRL|Add2~11\ : std_logic;
SIGNAL \CTRL|Add2~12_combout\ : std_logic;
SIGNAL \CTRL|Add2~13\ : std_logic;
SIGNAL \CTRL|Add2~14_combout\ : std_logic;
SIGNAL \CTRL|Add2~15\ : std_logic;
SIGNAL \CTRL|Add2~16_combout\ : std_logic;
SIGNAL \CTRL|h_cnt~1_combout\ : std_logic;
SIGNAL \CTRL|Add2~17\ : std_logic;
SIGNAL \CTRL|Add2~19\ : std_logic;
SIGNAL \CTRL|Add2~20_combout\ : std_logic;
SIGNAL \CTRL|Add2~21\ : std_logic;
SIGNAL \CTRL|Add2~22_combout\ : std_logic;
SIGNAL \CTRL|Add2~23\ : std_logic;
SIGNAL \CTRL|Add2~24_combout\ : std_logic;
SIGNAL \CTRL|Add2~25\ : std_logic;
SIGNAL \CTRL|Add2~26_combout\ : std_logic;
SIGNAL \CTRL|Add2~27\ : std_logic;
SIGNAL \CTRL|Add2~28_combout\ : std_logic;
SIGNAL \CTRL|Add2~29\ : std_logic;
SIGNAL \CTRL|Add2~30_combout\ : std_logic;
SIGNAL \CTRL|Add2~31\ : std_logic;
SIGNAL \CTRL|Add2~32_combout\ : std_logic;
SIGNAL \CTRL|Add2~33\ : std_logic;
SIGNAL \CTRL|Add2~34_combout\ : std_logic;
SIGNAL \CTRL|Add2~35\ : std_logic;
SIGNAL \CTRL|Add2~36_combout\ : std_logic;
SIGNAL \CTRL|Add2~37\ : std_logic;
SIGNAL \CTRL|Add2~38_combout\ : std_logic;
SIGNAL \CTRL|Add2~39\ : std_logic;
SIGNAL \CTRL|Add2~40_combout\ : std_logic;
SIGNAL \CTRL|Add2~41\ : std_logic;
SIGNAL \CTRL|Add2~42_combout\ : std_logic;
SIGNAL \CTRL|Add2~43\ : std_logic;
SIGNAL \CTRL|Add2~44_combout\ : std_logic;
SIGNAL \CTRL|Add2~45\ : std_logic;
SIGNAL \CTRL|Add2~46_combout\ : std_logic;
SIGNAL \CTRL|Add2~47\ : std_logic;
SIGNAL \CTRL|Add2~48_combout\ : std_logic;
SIGNAL \CTRL|Add2~49\ : std_logic;
SIGNAL \CTRL|Add2~50_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~2_combout\ : std_logic;
SIGNAL \CTRL|Add2~51\ : std_logic;
SIGNAL \CTRL|Add2~52_combout\ : std_logic;
SIGNAL \CTRL|Add2~53\ : std_logic;
SIGNAL \CTRL|Add2~54_combout\ : std_logic;
SIGNAL \CTRL|Add2~55\ : std_logic;
SIGNAL \CTRL|Add2~56_combout\ : std_logic;
SIGNAL \CTRL|Add2~57\ : std_logic;
SIGNAL \CTRL|Add2~58_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~1_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~3_combout\ : std_logic;
SIGNAL \CTRL|Add2~59\ : std_logic;
SIGNAL \CTRL|Add2~60_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~5_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~4_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~6_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~0_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~7_combout\ : std_logic;
SIGNAL \CTRL|Equal0~0_combout\ : std_logic;
SIGNAL \CTRL|Add2~61\ : std_logic;
SIGNAL \CTRL|Add2~62_combout\ : std_logic;
SIGNAL \CTRL|Equal0~1_combout\ : std_logic;
SIGNAL \CTRL|Equal0~2_combout\ : std_logic;
SIGNAL \CTRL|Equal0~3_combout\ : std_logic;
SIGNAL \CTRL|Add2~18_combout\ : std_logic;
SIGNAL \CTRL|h_cnt~2_combout\ : std_logic;
SIGNAL \CTRL|LessThan8~0_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~2_combout\ : std_logic;
SIGNAL \CTRL|LessThan6~0_combout\ : std_logic;
SIGNAL \CTRL|LessThan3~8_combout\ : std_logic;
SIGNAL \CTRL|LessThan6~1_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~0_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~1_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~3_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~4_combout\ : std_logic;
SIGNAL \CTRL|H_SYNCH~q\ : std_logic;
SIGNAL \CTRL|Add1~0_combout\ : std_logic;
SIGNAL \CTRL|Add1~9\ : std_logic;
SIGNAL \CTRL|Add1~10_combout\ : std_logic;
SIGNAL \CTRL|Add1~11\ : std_logic;
SIGNAL \CTRL|Add1~12_combout\ : std_logic;
SIGNAL \CTRL|Add1~13\ : std_logic;
SIGNAL \CTRL|Add1~14_combout\ : std_logic;
SIGNAL \CTRL|Add1~15\ : std_logic;
SIGNAL \CTRL|Add1~16_combout\ : std_logic;
SIGNAL \CTRL|Add1~17\ : std_logic;
SIGNAL \CTRL|Add1~18_combout\ : std_logic;
SIGNAL \CTRL|Add1~61\ : std_logic;
SIGNAL \CTRL|Add1~62_combout\ : std_logic;
SIGNAL \CTRL|Equal2~9_combout\ : std_logic;
SIGNAL \CTRL|Equal2~10_combout\ : std_logic;
SIGNAL \CTRL|Equal2~8_combout\ : std_logic;
SIGNAL \CTRL|Equal2~11_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[1]~1_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[9]~2_combout\ : std_logic;
SIGNAL \CTRL|Add1~19\ : std_logic;
SIGNAL \CTRL|Add1~20_combout\ : std_logic;
SIGNAL \CTRL|Add1~21\ : std_logic;
SIGNAL \CTRL|Add1~22_combout\ : std_logic;
SIGNAL \CTRL|Add1~23\ : std_logic;
SIGNAL \CTRL|Add1~24_combout\ : std_logic;
SIGNAL \CTRL|Add1~25\ : std_logic;
SIGNAL \CTRL|Add1~26_combout\ : std_logic;
SIGNAL \CTRL|Add1~27\ : std_logic;
SIGNAL \CTRL|Add1~28_combout\ : std_logic;
SIGNAL \CTRL|Add1~29\ : std_logic;
SIGNAL \CTRL|Add1~30_combout\ : std_logic;
SIGNAL \CTRL|Add1~31\ : std_logic;
SIGNAL \CTRL|Add1~32_combout\ : std_logic;
SIGNAL \CTRL|Add1~33\ : std_logic;
SIGNAL \CTRL|Add1~34_combout\ : std_logic;
SIGNAL \CTRL|Add1~35\ : std_logic;
SIGNAL \CTRL|Add1~36_combout\ : std_logic;
SIGNAL \CTRL|Add1~37\ : std_logic;
SIGNAL \CTRL|Add1~38_combout\ : std_logic;
SIGNAL \CTRL|Add1~39\ : std_logic;
SIGNAL \CTRL|Add1~40_combout\ : std_logic;
SIGNAL \CTRL|Add1~41\ : std_logic;
SIGNAL \CTRL|Add1~42_combout\ : std_logic;
SIGNAL \CTRL|Add1~43\ : std_logic;
SIGNAL \CTRL|Add1~44_combout\ : std_logic;
SIGNAL \CTRL|Add1~45\ : std_logic;
SIGNAL \CTRL|Add1~46_combout\ : std_logic;
SIGNAL \CTRL|Add1~47\ : std_logic;
SIGNAL \CTRL|Add1~48_combout\ : std_logic;
SIGNAL \CTRL|Add1~49\ : std_logic;
SIGNAL \CTRL|Add1~50_combout\ : std_logic;
SIGNAL \CTRL|Add1~51\ : std_logic;
SIGNAL \CTRL|Add1~52_combout\ : std_logic;
SIGNAL \CTRL|Add1~53\ : std_logic;
SIGNAL \CTRL|Add1~54_combout\ : std_logic;
SIGNAL \CTRL|Add1~55\ : std_logic;
SIGNAL \CTRL|Add1~56_combout\ : std_logic;
SIGNAL \CTRL|Add1~57\ : std_logic;
SIGNAL \CTRL|Add1~58_combout\ : std_logic;
SIGNAL \CTRL|Add1~59\ : std_logic;
SIGNAL \CTRL|Add1~60_combout\ : std_logic;
SIGNAL \CTRL|Equal2~4_combout\ : std_logic;
SIGNAL \CTRL|Equal2~3_combout\ : std_logic;
SIGNAL \CTRL|Equal2~5_combout\ : std_logic;
SIGNAL \CTRL|Equal2~1_combout\ : std_logic;
SIGNAL \CTRL|Equal2~2_combout\ : std_logic;
SIGNAL \CTRL|Equal2~0_combout\ : std_logic;
SIGNAL \CTRL|Equal2~6_combout\ : std_logic;
SIGNAL \CTRL|Equal2~7_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[31]~0_combout\ : std_logic;
SIGNAL \CTRL|Add1~1\ : std_logic;
SIGNAL \CTRL|Add1~2_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[1]~4_combout\ : std_logic;
SIGNAL \CTRL|Add1~3\ : std_logic;
SIGNAL \CTRL|Add1~4_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[2]~3_combout\ : std_logic;
SIGNAL \CTRL|Add1~5\ : std_logic;
SIGNAL \CTRL|Add1~6_combout\ : std_logic;
SIGNAL \CTRL|v_cnt[3]~5_combout\ : std_logic;
SIGNAL \CTRL|Add1~7\ : std_logic;
SIGNAL \CTRL|Add1~8_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~2_combout\ : std_logic;
SIGNAL \CTRL|LessThan4~0_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~3_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~4_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~8_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~5_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~6_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~7_combout\ : std_logic;
SIGNAL \CTRL|V_SYNCH~q\ : std_logic;
SIGNAL \CTRL|LessThan3~9_combout\ : std_logic;
SIGNAL \CTRL|LessThan4~1_combout\ : std_logic;
SIGNAL \CTRL|vga_proc~0_combout\ : std_logic;
SIGNAL \CTRL|data_off~q\ : std_logic;
SIGNAL \CD|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CTRL|v_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CTRL|h_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CTRL|ALT_INV_data_off~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fb_en <= fb_en;
ww_fb_px_clk <= fb_px_clk;
ww_fb_we <= fb_we;
ww_fb_din <= fb_din;
ww_ctrl_en <= ctrl_en;
H_SYNCH <= ww_H_SYNCH;
V_SYNCH <= ww_V_SYNCH;
vga_out <= ww_vga_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CD|int_o~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CD|int_o~q\);

\fb_px_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fb_px_clk~input_o\);
\CTRL|ALT_INV_data_off~q\ <= NOT \CTRL|data_off~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N16
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

-- Location: IOOBUF_X0_Y18_N2
\H_SYNCH~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|H_SYNCH~q\,
	devoe => ww_devoe,
	o => \H_SYNCH~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\V_SYNCH~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|V_SYNCH~q\,
	devoe => ww_devoe,
	o => \V_SYNCH~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\vga_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_data_off~q\,
	devoe => ww_devoe,
	o => \vga_out[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\vga_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_data_off~q\,
	devoe => ww_devoe,
	o => \vga_out[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\vga_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_data_off~q\,
	devoe => ww_devoe,
	o => \vga_out[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\vga_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_data_off~q\,
	devoe => ww_devoe,
	o => \vga_out[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\vga_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\vga_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\vga_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\vga_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\vga_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\vga_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\vga_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\vga_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_out[11]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\fb_px_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_px_clk,
	o => \fb_px_clk~input_o\);

-- Location: CLKCTRL_G19
\fb_px_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fb_px_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fb_px_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y2_N6
\CD|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~6_combout\ = (\CD|cnt\(3) & (!\CD|Add0~5\)) # (!\CD|cnt\(3) & ((\CD|Add0~5\) # (GND)))
-- \CD|Add0~7\ = CARRY((!\CD|Add0~5\) # (!\CD|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(3),
	datad => VCC,
	cin => \CD|Add0~5\,
	combout => \CD|Add0~6_combout\,
	cout => \CD|Add0~7\);

-- Location: LCCOMB_X38_Y2_N8
\CD|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~8_combout\ = (\CD|cnt\(4) & (\CD|Add0~7\ $ (GND))) # (!\CD|cnt\(4) & (!\CD|Add0~7\ & VCC))
-- \CD|Add0~9\ = CARRY((\CD|cnt\(4) & !\CD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(4),
	datad => VCC,
	cin => \CD|Add0~7\,
	combout => \CD|Add0~8_combout\,
	cout => \CD|Add0~9\);

-- Location: FF_X38_Y2_N9
\CD|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(4));

-- Location: LCCOMB_X38_Y2_N10
\CD|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~10_combout\ = (\CD|cnt\(5) & (!\CD|Add0~9\)) # (!\CD|cnt\(5) & ((\CD|Add0~9\) # (GND)))
-- \CD|Add0~11\ = CARRY((!\CD|Add0~9\) # (!\CD|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(5),
	datad => VCC,
	cin => \CD|Add0~9\,
	combout => \CD|Add0~10_combout\,
	cout => \CD|Add0~11\);

-- Location: FF_X38_Y2_N11
\CD|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(5));

-- Location: LCCOMB_X38_Y2_N12
\CD|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~12_combout\ = (\CD|cnt\(6) & (\CD|Add0~11\ $ (GND))) # (!\CD|cnt\(6) & (!\CD|Add0~11\ & VCC))
-- \CD|Add0~13\ = CARRY((\CD|cnt\(6) & !\CD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(6),
	datad => VCC,
	cin => \CD|Add0~11\,
	combout => \CD|Add0~12_combout\,
	cout => \CD|Add0~13\);

-- Location: FF_X38_Y2_N13
\CD|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(6));

-- Location: LCCOMB_X38_Y2_N14
\CD|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~14_combout\ = (\CD|cnt\(7) & (!\CD|Add0~13\)) # (!\CD|cnt\(7) & ((\CD|Add0~13\) # (GND)))
-- \CD|Add0~15\ = CARRY((!\CD|Add0~13\) # (!\CD|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(7),
	datad => VCC,
	cin => \CD|Add0~13\,
	combout => \CD|Add0~14_combout\,
	cout => \CD|Add0~15\);

-- Location: FF_X38_Y2_N15
\CD|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(7));

-- Location: LCCOMB_X38_Y2_N16
\CD|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~16_combout\ = (\CD|cnt\(8) & (\CD|Add0~15\ $ (GND))) # (!\CD|cnt\(8) & (!\CD|Add0~15\ & VCC))
-- \CD|Add0~17\ = CARRY((\CD|cnt\(8) & !\CD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(8),
	datad => VCC,
	cin => \CD|Add0~15\,
	combout => \CD|Add0~16_combout\,
	cout => \CD|Add0~17\);

-- Location: FF_X38_Y2_N17
\CD|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(8));

-- Location: LCCOMB_X38_Y2_N18
\CD|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~18_combout\ = (\CD|cnt\(9) & (!\CD|Add0~17\)) # (!\CD|cnt\(9) & ((\CD|Add0~17\) # (GND)))
-- \CD|Add0~19\ = CARRY((!\CD|Add0~17\) # (!\CD|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(9),
	datad => VCC,
	cin => \CD|Add0~17\,
	combout => \CD|Add0~18_combout\,
	cout => \CD|Add0~19\);

-- Location: FF_X38_Y2_N19
\CD|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(9));

-- Location: LCCOMB_X38_Y2_N20
\CD|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~20_combout\ = (\CD|cnt\(10) & (\CD|Add0~19\ $ (GND))) # (!\CD|cnt\(10) & (!\CD|Add0~19\ & VCC))
-- \CD|Add0~21\ = CARRY((\CD|cnt\(10) & !\CD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(10),
	datad => VCC,
	cin => \CD|Add0~19\,
	combout => \CD|Add0~20_combout\,
	cout => \CD|Add0~21\);

-- Location: FF_X38_Y2_N21
\CD|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(10));

-- Location: LCCOMB_X38_Y2_N22
\CD|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~22_combout\ = (\CD|cnt\(11) & (!\CD|Add0~21\)) # (!\CD|cnt\(11) & ((\CD|Add0~21\) # (GND)))
-- \CD|Add0~23\ = CARRY((!\CD|Add0~21\) # (!\CD|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(11),
	datad => VCC,
	cin => \CD|Add0~21\,
	combout => \CD|Add0~22_combout\,
	cout => \CD|Add0~23\);

-- Location: FF_X38_Y2_N23
\CD|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(11));

-- Location: LCCOMB_X38_Y2_N24
\CD|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~24_combout\ = (\CD|cnt\(12) & (\CD|Add0~23\ $ (GND))) # (!\CD|cnt\(12) & (!\CD|Add0~23\ & VCC))
-- \CD|Add0~25\ = CARRY((\CD|cnt\(12) & !\CD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(12),
	datad => VCC,
	cin => \CD|Add0~23\,
	combout => \CD|Add0~24_combout\,
	cout => \CD|Add0~25\);

-- Location: FF_X38_Y2_N25
\CD|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(12));

-- Location: LCCOMB_X38_Y2_N26
\CD|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~26_combout\ = (\CD|cnt\(13) & (!\CD|Add0~25\)) # (!\CD|cnt\(13) & ((\CD|Add0~25\) # (GND)))
-- \CD|Add0~27\ = CARRY((!\CD|Add0~25\) # (!\CD|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(13),
	datad => VCC,
	cin => \CD|Add0~25\,
	combout => \CD|Add0~26_combout\,
	cout => \CD|Add0~27\);

-- Location: FF_X38_Y2_N27
\CD|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(13));

-- Location: LCCOMB_X38_Y2_N28
\CD|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~28_combout\ = (\CD|cnt\(14) & (\CD|Add0~27\ $ (GND))) # (!\CD|cnt\(14) & (!\CD|Add0~27\ & VCC))
-- \CD|Add0~29\ = CARRY((\CD|cnt\(14) & !\CD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(14),
	datad => VCC,
	cin => \CD|Add0~27\,
	combout => \CD|Add0~28_combout\,
	cout => \CD|Add0~29\);

-- Location: FF_X38_Y2_N29
\CD|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(14));

-- Location: LCCOMB_X38_Y2_N30
\CD|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~30_combout\ = (\CD|cnt\(15) & (!\CD|Add0~29\)) # (!\CD|cnt\(15) & ((\CD|Add0~29\) # (GND)))
-- \CD|Add0~31\ = CARRY((!\CD|Add0~29\) # (!\CD|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(15),
	datad => VCC,
	cin => \CD|Add0~29\,
	combout => \CD|Add0~30_combout\,
	cout => \CD|Add0~31\);

-- Location: FF_X38_Y2_N31
\CD|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(15));

-- Location: LCCOMB_X38_Y1_N0
\CD|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~32_combout\ = (\CD|cnt\(16) & (\CD|Add0~31\ $ (GND))) # (!\CD|cnt\(16) & (!\CD|Add0~31\ & VCC))
-- \CD|Add0~33\ = CARRY((\CD|cnt\(16) & !\CD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(16),
	datad => VCC,
	cin => \CD|Add0~31\,
	combout => \CD|Add0~32_combout\,
	cout => \CD|Add0~33\);

-- Location: FF_X38_Y1_N1
\CD|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(16));

-- Location: LCCOMB_X38_Y1_N2
\CD|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~34_combout\ = (\CD|cnt\(17) & (!\CD|Add0~33\)) # (!\CD|cnt\(17) & ((\CD|Add0~33\) # (GND)))
-- \CD|Add0~35\ = CARRY((!\CD|Add0~33\) # (!\CD|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(17),
	datad => VCC,
	cin => \CD|Add0~33\,
	combout => \CD|Add0~34_combout\,
	cout => \CD|Add0~35\);

-- Location: FF_X38_Y1_N3
\CD|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(17));

-- Location: LCCOMB_X38_Y1_N4
\CD|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~36_combout\ = (\CD|cnt\(18) & (\CD|Add0~35\ $ (GND))) # (!\CD|cnt\(18) & (!\CD|Add0~35\ & VCC))
-- \CD|Add0~37\ = CARRY((\CD|cnt\(18) & !\CD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(18),
	datad => VCC,
	cin => \CD|Add0~35\,
	combout => \CD|Add0~36_combout\,
	cout => \CD|Add0~37\);

-- Location: FF_X38_Y1_N5
\CD|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(18));

-- Location: LCCOMB_X38_Y1_N6
\CD|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~38_combout\ = (\CD|cnt\(19) & (!\CD|Add0~37\)) # (!\CD|cnt\(19) & ((\CD|Add0~37\) # (GND)))
-- \CD|Add0~39\ = CARRY((!\CD|Add0~37\) # (!\CD|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(19),
	datad => VCC,
	cin => \CD|Add0~37\,
	combout => \CD|Add0~38_combout\,
	cout => \CD|Add0~39\);

-- Location: FF_X38_Y1_N7
\CD|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(19));

-- Location: LCCOMB_X38_Y1_N8
\CD|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~40_combout\ = (\CD|cnt\(20) & (\CD|Add0~39\ $ (GND))) # (!\CD|cnt\(20) & (!\CD|Add0~39\ & VCC))
-- \CD|Add0~41\ = CARRY((\CD|cnt\(20) & !\CD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(20),
	datad => VCC,
	cin => \CD|Add0~39\,
	combout => \CD|Add0~40_combout\,
	cout => \CD|Add0~41\);

-- Location: FF_X38_Y1_N9
\CD|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(20));

-- Location: LCCOMB_X37_Y1_N0
\CD|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~5_combout\ = (!\CD|cnt\(17) & (!\CD|cnt\(18) & (!\CD|cnt\(16) & !\CD|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(17),
	datab => \CD|cnt\(18),
	datac => \CD|cnt\(16),
	datad => \CD|cnt\(19),
	combout => \CD|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y1_N10
\CD|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~42_combout\ = (\CD|cnt\(21) & (!\CD|Add0~41\)) # (!\CD|cnt\(21) & ((\CD|Add0~41\) # (GND)))
-- \CD|Add0~43\ = CARRY((!\CD|Add0~41\) # (!\CD|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(21),
	datad => VCC,
	cin => \CD|Add0~41\,
	combout => \CD|Add0~42_combout\,
	cout => \CD|Add0~43\);

-- Location: FF_X38_Y1_N11
\CD|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(21));

-- Location: LCCOMB_X38_Y1_N12
\CD|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~44_combout\ = (\CD|cnt\(22) & (\CD|Add0~43\ $ (GND))) # (!\CD|cnt\(22) & (!\CD|Add0~43\ & VCC))
-- \CD|Add0~45\ = CARRY((\CD|cnt\(22) & !\CD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(22),
	datad => VCC,
	cin => \CD|Add0~43\,
	combout => \CD|Add0~44_combout\,
	cout => \CD|Add0~45\);

-- Location: FF_X38_Y1_N13
\CD|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(22));

-- Location: LCCOMB_X38_Y1_N14
\CD|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~46_combout\ = (\CD|cnt\(23) & (!\CD|Add0~45\)) # (!\CD|cnt\(23) & ((\CD|Add0~45\) # (GND)))
-- \CD|Add0~47\ = CARRY((!\CD|Add0~45\) # (!\CD|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(23),
	datad => VCC,
	cin => \CD|Add0~45\,
	combout => \CD|Add0~46_combout\,
	cout => \CD|Add0~47\);

-- Location: FF_X38_Y1_N15
\CD|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(23));

-- Location: LCCOMB_X39_Y1_N0
\CD|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~6_combout\ = (!\CD|cnt\(22) & !\CD|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(22),
	datad => \CD|cnt\(23),
	combout => \CD|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y2_N20
\CD|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~7_combout\ = (!\CD|cnt\(20) & (\CD|Equal0~5_combout\ & (\CD|Equal0~6_combout\ & !\CD|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(20),
	datab => \CD|Equal0~5_combout\,
	datac => \CD|Equal0~6_combout\,
	datad => \CD|cnt\(21),
	combout => \CD|Equal0~7_combout\);

-- Location: LCCOMB_X38_Y2_N0
\CD|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~0_combout\ = \CD|cnt\(0) $ (VCC)
-- \CD|Add0~1\ = CARRY(\CD|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(0),
	datad => VCC,
	combout => \CD|Add0~0_combout\,
	cout => \CD|Add0~1\);

-- Location: LCCOMB_X38_Y1_N16
\CD|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~48_combout\ = (\CD|cnt\(24) & (\CD|Add0~47\ $ (GND))) # (!\CD|cnt\(24) & (!\CD|Add0~47\ & VCC))
-- \CD|Add0~49\ = CARRY((\CD|cnt\(24) & !\CD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(24),
	datad => VCC,
	cin => \CD|Add0~47\,
	combout => \CD|Add0~48_combout\,
	cout => \CD|Add0~49\);

-- Location: FF_X38_Y1_N17
\CD|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(24));

-- Location: LCCOMB_X38_Y1_N18
\CD|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~50_combout\ = (\CD|cnt\(25) & (!\CD|Add0~49\)) # (!\CD|cnt\(25) & ((\CD|Add0~49\) # (GND)))
-- \CD|Add0~51\ = CARRY((!\CD|Add0~49\) # (!\CD|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(25),
	datad => VCC,
	cin => \CD|Add0~49\,
	combout => \CD|Add0~50_combout\,
	cout => \CD|Add0~51\);

-- Location: FF_X38_Y1_N19
\CD|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(25));

-- Location: LCCOMB_X38_Y1_N20
\CD|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~52_combout\ = (\CD|cnt\(26) & (\CD|Add0~51\ $ (GND))) # (!\CD|cnt\(26) & (!\CD|Add0~51\ & VCC))
-- \CD|Add0~53\ = CARRY((\CD|cnt\(26) & !\CD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(26),
	datad => VCC,
	cin => \CD|Add0~51\,
	combout => \CD|Add0~52_combout\,
	cout => \CD|Add0~53\);

-- Location: FF_X38_Y1_N21
\CD|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(26));

-- Location: LCCOMB_X38_Y1_N22
\CD|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~54_combout\ = (\CD|cnt\(27) & (!\CD|Add0~53\)) # (!\CD|cnt\(27) & ((\CD|Add0~53\) # (GND)))
-- \CD|Add0~55\ = CARRY((!\CD|Add0~53\) # (!\CD|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(27),
	datad => VCC,
	cin => \CD|Add0~53\,
	combout => \CD|Add0~54_combout\,
	cout => \CD|Add0~55\);

-- Location: FF_X38_Y1_N23
\CD|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(27));

-- Location: LCCOMB_X39_Y1_N10
\CD|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~8_combout\ = (!\CD|cnt\(25) & (!\CD|cnt\(26) & (!\CD|cnt\(24) & !\CD|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(25),
	datab => \CD|cnt\(26),
	datac => \CD|cnt\(24),
	datad => \CD|cnt\(27),
	combout => \CD|Equal0~8_combout\);

-- Location: LCCOMB_X38_Y1_N24
\CD|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~56_combout\ = (\CD|cnt\(28) & (\CD|Add0~55\ $ (GND))) # (!\CD|cnt\(28) & (!\CD|Add0~55\ & VCC))
-- \CD|Add0~57\ = CARRY((\CD|cnt\(28) & !\CD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(28),
	datad => VCC,
	cin => \CD|Add0~55\,
	combout => \CD|Add0~56_combout\,
	cout => \CD|Add0~57\);

-- Location: FF_X38_Y1_N25
\CD|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(28));

-- Location: LCCOMB_X38_Y1_N26
\CD|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~58_combout\ = (\CD|cnt\(29) & (!\CD|Add0~57\)) # (!\CD|cnt\(29) & ((\CD|Add0~57\) # (GND)))
-- \CD|Add0~59\ = CARRY((!\CD|Add0~57\) # (!\CD|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(29),
	datad => VCC,
	cin => \CD|Add0~57\,
	combout => \CD|Add0~58_combout\,
	cout => \CD|Add0~59\);

-- Location: FF_X38_Y1_N27
\CD|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(29));

-- Location: LCCOMB_X38_Y1_N28
\CD|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~60_combout\ = (\CD|cnt\(30) & (\CD|Add0~59\ $ (GND))) # (!\CD|cnt\(30) & (!\CD|Add0~59\ & VCC))
-- \CD|Add0~61\ = CARRY((\CD|cnt\(30) & !\CD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(30),
	datad => VCC,
	cin => \CD|Add0~59\,
	combout => \CD|Add0~60_combout\,
	cout => \CD|Add0~61\);

-- Location: FF_X38_Y1_N29
\CD|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(30));

-- Location: LCCOMB_X38_Y1_N30
\CD|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~62_combout\ = \CD|cnt\(31) $ (\CD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(31),
	cin => \CD|Add0~61\,
	combout => \CD|Add0~62_combout\);

-- Location: FF_X38_Y1_N31
\CD|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(31));

-- Location: LCCOMB_X39_Y1_N12
\CD|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~9_combout\ = (!\CD|cnt\(30) & (!\CD|cnt\(31) & (!\CD|cnt\(29) & !\CD|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(30),
	datab => \CD|cnt\(31),
	datac => \CD|cnt\(29),
	datad => \CD|cnt\(28),
	combout => \CD|Equal0~9_combout\);

-- Location: LCCOMB_X39_Y1_N14
\CD|int_o~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|int_o~0_combout\ = (!\CD|Equal0~9_combout\) # (!\CD|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|Equal0~8_combout\,
	datad => \CD|Equal0~9_combout\,
	combout => \CD|int_o~0_combout\);

-- Location: LCCOMB_X37_Y2_N6
\CD|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|cnt~0_combout\ = (\CD|Add0~0_combout\ & (((\CD|int_o~0_combout\) # (!\CD|Equal0~7_combout\)) # (!\CD|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|Equal0~4_combout\,
	datab => \CD|Equal0~7_combout\,
	datac => \CD|Add0~0_combout\,
	datad => \CD|int_o~0_combout\,
	combout => \CD|cnt~0_combout\);

-- Location: FF_X37_Y2_N7
\CD|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(0));

-- Location: LCCOMB_X38_Y2_N2
\CD|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~2_combout\ = (\CD|cnt\(1) & (!\CD|Add0~1\)) # (!\CD|cnt\(1) & ((\CD|Add0~1\) # (GND)))
-- \CD|Add0~3\ = CARRY((!\CD|Add0~1\) # (!\CD|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(1),
	datad => VCC,
	cin => \CD|Add0~1\,
	combout => \CD|Add0~2_combout\,
	cout => \CD|Add0~3\);

-- Location: FF_X38_Y2_N3
\CD|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(1));

-- Location: LCCOMB_X38_Y2_N4
\CD|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Add0~4_combout\ = (\CD|cnt\(2) & (\CD|Add0~3\ $ (GND))) # (!\CD|cnt\(2) & (!\CD|Add0~3\ & VCC))
-- \CD|Add0~5\ = CARRY((\CD|cnt\(2) & !\CD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD|cnt\(2),
	datad => VCC,
	cin => \CD|Add0~3\,
	combout => \CD|Add0~4_combout\,
	cout => \CD|Add0~5\);

-- Location: FF_X38_Y2_N5
\CD|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(2));

-- Location: FF_X38_Y2_N7
\CD|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~inputclkctrl_outclk\,
	d => \CD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|cnt\(3));

-- Location: LCCOMB_X37_Y2_N12
\CD|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~0_combout\ = (!\CD|cnt\(3) & (!\CD|cnt\(0) & (!\CD|cnt\(1) & !\CD|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(3),
	datab => \CD|cnt\(0),
	datac => \CD|cnt\(1),
	datad => \CD|cnt\(2),
	combout => \CD|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y2_N8
\CD|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~3_combout\ = (!\CD|cnt\(12) & (!\CD|cnt\(13) & (!\CD|cnt\(15) & !\CD|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(12),
	datab => \CD|cnt\(13),
	datac => \CD|cnt\(15),
	datad => \CD|cnt\(14),
	combout => \CD|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y2_N4
\CD|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~1_combout\ = (!\CD|cnt\(5) & (!\CD|cnt\(4) & (!\CD|cnt\(7) & !\CD|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(5),
	datab => \CD|cnt\(4),
	datac => \CD|cnt\(7),
	datad => \CD|cnt\(6),
	combout => \CD|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y2_N18
\CD|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~2_combout\ = (!\CD|cnt\(8) & (!\CD|cnt\(11) & (!\CD|cnt\(10) & !\CD|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|cnt\(8),
	datab => \CD|cnt\(11),
	datac => \CD|cnt\(10),
	datad => \CD|cnt\(9),
	combout => \CD|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y2_N22
\CD|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|Equal0~4_combout\ = (\CD|Equal0~0_combout\ & (\CD|Equal0~3_combout\ & (\CD|Equal0~1_combout\ & \CD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|Equal0~0_combout\,
	datab => \CD|Equal0~3_combout\,
	datac => \CD|Equal0~1_combout\,
	datad => \CD|Equal0~2_combout\,
	combout => \CD|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y2_N10
\CD|int_o~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CD|int_o~1_combout\ = \CD|int_o~q\ $ (((\CD|Equal0~4_combout\ & (\CD|Equal0~7_combout\ & !\CD|int_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|Equal0~4_combout\,
	datab => \CD|Equal0~7_combout\,
	datac => \CD|int_o~q\,
	datad => \CD|int_o~0_combout\,
	combout => \CD|int_o~1_combout\);

-- Location: FF_X37_Y2_N11
\CD|int_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fb_px_clk~input_o\,
	d => \CD|int_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|int_o~q\);

-- Location: CLKCTRL_G16
\CD|int_o~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CD|int_o~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CD|int_o~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y51_N0
\CTRL|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~0_combout\ = \CTRL|h_cnt\(0) $ (VCC)
-- \CTRL|Add2~1\ = CARRY(\CTRL|h_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(0),
	datad => VCC,
	combout => \CTRL|Add2~0_combout\,
	cout => \CTRL|Add2~1\);

-- Location: LCCOMB_X49_Y51_N6
\CTRL|h_cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|h_cnt~3_combout\ = (\CTRL|Equal0~3_combout\ & \CTRL|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal0~3_combout\,
	datac => \CTRL|Add2~0_combout\,
	combout => \CTRL|h_cnt~3_combout\);

-- Location: IOIBUF_X51_Y54_N29
\ctrl_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_en,
	o => \ctrl_en~input_o\);

-- Location: FF_X49_Y51_N7
\CTRL|h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|h_cnt~3_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(0));

-- Location: LCCOMB_X50_Y51_N2
\CTRL|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~2_combout\ = (\CTRL|h_cnt\(1) & (!\CTRL|Add2~1\)) # (!\CTRL|h_cnt\(1) & ((\CTRL|Add2~1\) # (GND)))
-- \CTRL|Add2~3\ = CARRY((!\CTRL|Add2~1\) # (!\CTRL|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(1),
	datad => VCC,
	cin => \CTRL|Add2~1\,
	combout => \CTRL|Add2~2_combout\,
	cout => \CTRL|Add2~3\);

-- Location: FF_X50_Y51_N3
\CTRL|h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~2_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(1));

-- Location: LCCOMB_X50_Y51_N4
\CTRL|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~4_combout\ = (\CTRL|h_cnt\(2) & (\CTRL|Add2~3\ $ (GND))) # (!\CTRL|h_cnt\(2) & (!\CTRL|Add2~3\ & VCC))
-- \CTRL|Add2~5\ = CARRY((\CTRL|h_cnt\(2) & !\CTRL|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(2),
	datad => VCC,
	cin => \CTRL|Add2~3\,
	combout => \CTRL|Add2~4_combout\,
	cout => \CTRL|Add2~5\);

-- Location: FF_X50_Y51_N5
\CTRL|h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~4_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(2));

-- Location: LCCOMB_X50_Y51_N6
\CTRL|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~6_combout\ = (\CTRL|h_cnt\(3) & (!\CTRL|Add2~5\)) # (!\CTRL|h_cnt\(3) & ((\CTRL|Add2~5\) # (GND)))
-- \CTRL|Add2~7\ = CARRY((!\CTRL|Add2~5\) # (!\CTRL|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(3),
	datad => VCC,
	cin => \CTRL|Add2~5\,
	combout => \CTRL|Add2~6_combout\,
	cout => \CTRL|Add2~7\);

-- Location: FF_X50_Y51_N7
\CTRL|h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~6_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(3));

-- Location: LCCOMB_X50_Y51_N8
\CTRL|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~8_combout\ = (\CTRL|h_cnt\(4) & (\CTRL|Add2~7\ $ (GND))) # (!\CTRL|h_cnt\(4) & (!\CTRL|Add2~7\ & VCC))
-- \CTRL|Add2~9\ = CARRY((\CTRL|h_cnt\(4) & !\CTRL|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(4),
	datad => VCC,
	cin => \CTRL|Add2~7\,
	combout => \CTRL|Add2~8_combout\,
	cout => \CTRL|Add2~9\);

-- Location: FF_X50_Y51_N9
\CTRL|h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~8_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(4));

-- Location: LCCOMB_X50_Y51_N10
\CTRL|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~10_combout\ = (\CTRL|h_cnt\(5) & (!\CTRL|Add2~9\)) # (!\CTRL|h_cnt\(5) & ((\CTRL|Add2~9\) # (GND)))
-- \CTRL|Add2~11\ = CARRY((!\CTRL|Add2~9\) # (!\CTRL|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(5),
	datad => VCC,
	cin => \CTRL|Add2~9\,
	combout => \CTRL|Add2~10_combout\,
	cout => \CTRL|Add2~11\);

-- Location: LCCOMB_X50_Y49_N0
\CTRL|h_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|h_cnt~0_combout\ = (\CTRL|Equal0~3_combout\ & \CTRL|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal0~3_combout\,
	datad => \CTRL|Add2~10_combout\,
	combout => \CTRL|h_cnt~0_combout\);

-- Location: FF_X50_Y49_N1
\CTRL|h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|h_cnt~0_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(5));

-- Location: LCCOMB_X50_Y51_N12
\CTRL|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~12_combout\ = (\CTRL|h_cnt\(6) & (\CTRL|Add2~11\ $ (GND))) # (!\CTRL|h_cnt\(6) & (!\CTRL|Add2~11\ & VCC))
-- \CTRL|Add2~13\ = CARRY((\CTRL|h_cnt\(6) & !\CTRL|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(6),
	datad => VCC,
	cin => \CTRL|Add2~11\,
	combout => \CTRL|Add2~12_combout\,
	cout => \CTRL|Add2~13\);

-- Location: FF_X50_Y51_N13
\CTRL|h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~12_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(6));

-- Location: LCCOMB_X50_Y51_N14
\CTRL|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~14_combout\ = (\CTRL|h_cnt\(7) & (!\CTRL|Add2~13\)) # (!\CTRL|h_cnt\(7) & ((\CTRL|Add2~13\) # (GND)))
-- \CTRL|Add2~15\ = CARRY((!\CTRL|Add2~13\) # (!\CTRL|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(7),
	datad => VCC,
	cin => \CTRL|Add2~13\,
	combout => \CTRL|Add2~14_combout\,
	cout => \CTRL|Add2~15\);

-- Location: FF_X50_Y51_N15
\CTRL|h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~14_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(7));

-- Location: LCCOMB_X50_Y51_N16
\CTRL|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~16_combout\ = (\CTRL|h_cnt\(8) & (\CTRL|Add2~15\ $ (GND))) # (!\CTRL|h_cnt\(8) & (!\CTRL|Add2~15\ & VCC))
-- \CTRL|Add2~17\ = CARRY((\CTRL|h_cnt\(8) & !\CTRL|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(8),
	datad => VCC,
	cin => \CTRL|Add2~15\,
	combout => \CTRL|Add2~16_combout\,
	cout => \CTRL|Add2~17\);

-- Location: LCCOMB_X49_Y51_N14
\CTRL|h_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|h_cnt~1_combout\ = (\CTRL|Equal0~3_combout\ & \CTRL|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CTRL|Equal0~3_combout\,
	datad => \CTRL|Add2~16_combout\,
	combout => \CTRL|h_cnt~1_combout\);

-- Location: FF_X49_Y51_N15
\CTRL|h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|h_cnt~1_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(8));

-- Location: LCCOMB_X50_Y51_N18
\CTRL|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~18_combout\ = (\CTRL|h_cnt\(9) & (!\CTRL|Add2~17\)) # (!\CTRL|h_cnt\(9) & ((\CTRL|Add2~17\) # (GND)))
-- \CTRL|Add2~19\ = CARRY((!\CTRL|Add2~17\) # (!\CTRL|h_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(9),
	datad => VCC,
	cin => \CTRL|Add2~17\,
	combout => \CTRL|Add2~18_combout\,
	cout => \CTRL|Add2~19\);

-- Location: LCCOMB_X50_Y51_N20
\CTRL|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~20_combout\ = (\CTRL|h_cnt\(10) & (\CTRL|Add2~19\ $ (GND))) # (!\CTRL|h_cnt\(10) & (!\CTRL|Add2~19\ & VCC))
-- \CTRL|Add2~21\ = CARRY((\CTRL|h_cnt\(10) & !\CTRL|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(10),
	datad => VCC,
	cin => \CTRL|Add2~19\,
	combout => \CTRL|Add2~20_combout\,
	cout => \CTRL|Add2~21\);

-- Location: FF_X50_Y51_N21
\CTRL|h_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~20_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(10));

-- Location: LCCOMB_X50_Y51_N22
\CTRL|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~22_combout\ = (\CTRL|h_cnt\(11) & (!\CTRL|Add2~21\)) # (!\CTRL|h_cnt\(11) & ((\CTRL|Add2~21\) # (GND)))
-- \CTRL|Add2~23\ = CARRY((!\CTRL|Add2~21\) # (!\CTRL|h_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(11),
	datad => VCC,
	cin => \CTRL|Add2~21\,
	combout => \CTRL|Add2~22_combout\,
	cout => \CTRL|Add2~23\);

-- Location: FF_X50_Y51_N23
\CTRL|h_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~22_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(11));

-- Location: LCCOMB_X50_Y51_N24
\CTRL|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~24_combout\ = (\CTRL|h_cnt\(12) & (\CTRL|Add2~23\ $ (GND))) # (!\CTRL|h_cnt\(12) & (!\CTRL|Add2~23\ & VCC))
-- \CTRL|Add2~25\ = CARRY((\CTRL|h_cnt\(12) & !\CTRL|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(12),
	datad => VCC,
	cin => \CTRL|Add2~23\,
	combout => \CTRL|Add2~24_combout\,
	cout => \CTRL|Add2~25\);

-- Location: FF_X50_Y51_N25
\CTRL|h_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~24_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(12));

-- Location: LCCOMB_X50_Y51_N26
\CTRL|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~26_combout\ = (\CTRL|h_cnt\(13) & (!\CTRL|Add2~25\)) # (!\CTRL|h_cnt\(13) & ((\CTRL|Add2~25\) # (GND)))
-- \CTRL|Add2~27\ = CARRY((!\CTRL|Add2~25\) # (!\CTRL|h_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(13),
	datad => VCC,
	cin => \CTRL|Add2~25\,
	combout => \CTRL|Add2~26_combout\,
	cout => \CTRL|Add2~27\);

-- Location: FF_X50_Y51_N27
\CTRL|h_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~26_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(13));

-- Location: LCCOMB_X50_Y51_N28
\CTRL|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~28_combout\ = (\CTRL|h_cnt\(14) & (\CTRL|Add2~27\ $ (GND))) # (!\CTRL|h_cnt\(14) & (!\CTRL|Add2~27\ & VCC))
-- \CTRL|Add2~29\ = CARRY((\CTRL|h_cnt\(14) & !\CTRL|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(14),
	datad => VCC,
	cin => \CTRL|Add2~27\,
	combout => \CTRL|Add2~28_combout\,
	cout => \CTRL|Add2~29\);

-- Location: FF_X50_Y51_N29
\CTRL|h_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~28_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(14));

-- Location: LCCOMB_X50_Y51_N30
\CTRL|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~30_combout\ = (\CTRL|h_cnt\(15) & (!\CTRL|Add2~29\)) # (!\CTRL|h_cnt\(15) & ((\CTRL|Add2~29\) # (GND)))
-- \CTRL|Add2~31\ = CARRY((!\CTRL|Add2~29\) # (!\CTRL|h_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(15),
	datad => VCC,
	cin => \CTRL|Add2~29\,
	combout => \CTRL|Add2~30_combout\,
	cout => \CTRL|Add2~31\);

-- Location: FF_X50_Y51_N31
\CTRL|h_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~30_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(15));

-- Location: LCCOMB_X50_Y50_N0
\CTRL|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~32_combout\ = (\CTRL|h_cnt\(16) & (\CTRL|Add2~31\ $ (GND))) # (!\CTRL|h_cnt\(16) & (!\CTRL|Add2~31\ & VCC))
-- \CTRL|Add2~33\ = CARRY((\CTRL|h_cnt\(16) & !\CTRL|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(16),
	datad => VCC,
	cin => \CTRL|Add2~31\,
	combout => \CTRL|Add2~32_combout\,
	cout => \CTRL|Add2~33\);

-- Location: FF_X50_Y50_N1
\CTRL|h_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~32_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(16));

-- Location: LCCOMB_X50_Y50_N2
\CTRL|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~34_combout\ = (\CTRL|h_cnt\(17) & (!\CTRL|Add2~33\)) # (!\CTRL|h_cnt\(17) & ((\CTRL|Add2~33\) # (GND)))
-- \CTRL|Add2~35\ = CARRY((!\CTRL|Add2~33\) # (!\CTRL|h_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(17),
	datad => VCC,
	cin => \CTRL|Add2~33\,
	combout => \CTRL|Add2~34_combout\,
	cout => \CTRL|Add2~35\);

-- Location: FF_X50_Y50_N3
\CTRL|h_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~34_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(17));

-- Location: LCCOMB_X50_Y50_N4
\CTRL|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~36_combout\ = (\CTRL|h_cnt\(18) & (\CTRL|Add2~35\ $ (GND))) # (!\CTRL|h_cnt\(18) & (!\CTRL|Add2~35\ & VCC))
-- \CTRL|Add2~37\ = CARRY((\CTRL|h_cnt\(18) & !\CTRL|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(18),
	datad => VCC,
	cin => \CTRL|Add2~35\,
	combout => \CTRL|Add2~36_combout\,
	cout => \CTRL|Add2~37\);

-- Location: FF_X50_Y50_N5
\CTRL|h_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~36_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(18));

-- Location: LCCOMB_X50_Y50_N6
\CTRL|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~38_combout\ = (\CTRL|h_cnt\(19) & (!\CTRL|Add2~37\)) # (!\CTRL|h_cnt\(19) & ((\CTRL|Add2~37\) # (GND)))
-- \CTRL|Add2~39\ = CARRY((!\CTRL|Add2~37\) # (!\CTRL|h_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(19),
	datad => VCC,
	cin => \CTRL|Add2~37\,
	combout => \CTRL|Add2~38_combout\,
	cout => \CTRL|Add2~39\);

-- Location: FF_X50_Y50_N7
\CTRL|h_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~38_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(19));

-- Location: LCCOMB_X50_Y50_N8
\CTRL|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~40_combout\ = (\CTRL|h_cnt\(20) & (\CTRL|Add2~39\ $ (GND))) # (!\CTRL|h_cnt\(20) & (!\CTRL|Add2~39\ & VCC))
-- \CTRL|Add2~41\ = CARRY((\CTRL|h_cnt\(20) & !\CTRL|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(20),
	datad => VCC,
	cin => \CTRL|Add2~39\,
	combout => \CTRL|Add2~40_combout\,
	cout => \CTRL|Add2~41\);

-- Location: FF_X50_Y50_N9
\CTRL|h_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~40_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(20));

-- Location: LCCOMB_X50_Y50_N10
\CTRL|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~42_combout\ = (\CTRL|h_cnt\(21) & (!\CTRL|Add2~41\)) # (!\CTRL|h_cnt\(21) & ((\CTRL|Add2~41\) # (GND)))
-- \CTRL|Add2~43\ = CARRY((!\CTRL|Add2~41\) # (!\CTRL|h_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(21),
	datad => VCC,
	cin => \CTRL|Add2~41\,
	combout => \CTRL|Add2~42_combout\,
	cout => \CTRL|Add2~43\);

-- Location: FF_X50_Y50_N11
\CTRL|h_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~42_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(21));

-- Location: LCCOMB_X50_Y50_N12
\CTRL|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~44_combout\ = (\CTRL|h_cnt\(22) & (\CTRL|Add2~43\ $ (GND))) # (!\CTRL|h_cnt\(22) & (!\CTRL|Add2~43\ & VCC))
-- \CTRL|Add2~45\ = CARRY((\CTRL|h_cnt\(22) & !\CTRL|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(22),
	datad => VCC,
	cin => \CTRL|Add2~43\,
	combout => \CTRL|Add2~44_combout\,
	cout => \CTRL|Add2~45\);

-- Location: FF_X50_Y50_N13
\CTRL|h_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~44_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(22));

-- Location: LCCOMB_X50_Y50_N14
\CTRL|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~46_combout\ = (\CTRL|h_cnt\(23) & (!\CTRL|Add2~45\)) # (!\CTRL|h_cnt\(23) & ((\CTRL|Add2~45\) # (GND)))
-- \CTRL|Add2~47\ = CARRY((!\CTRL|Add2~45\) # (!\CTRL|h_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(23),
	datad => VCC,
	cin => \CTRL|Add2~45\,
	combout => \CTRL|Add2~46_combout\,
	cout => \CTRL|Add2~47\);

-- Location: FF_X50_Y50_N15
\CTRL|h_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~46_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(23));

-- Location: LCCOMB_X50_Y50_N16
\CTRL|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~48_combout\ = (\CTRL|h_cnt\(24) & (\CTRL|Add2~47\ $ (GND))) # (!\CTRL|h_cnt\(24) & (!\CTRL|Add2~47\ & VCC))
-- \CTRL|Add2~49\ = CARRY((\CTRL|h_cnt\(24) & !\CTRL|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(24),
	datad => VCC,
	cin => \CTRL|Add2~47\,
	combout => \CTRL|Add2~48_combout\,
	cout => \CTRL|Add2~49\);

-- Location: FF_X50_Y50_N17
\CTRL|h_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~48_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(24));

-- Location: LCCOMB_X50_Y50_N18
\CTRL|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~50_combout\ = (\CTRL|h_cnt\(25) & (!\CTRL|Add2~49\)) # (!\CTRL|h_cnt\(25) & ((\CTRL|Add2~49\) # (GND)))
-- \CTRL|Add2~51\ = CARRY((!\CTRL|Add2~49\) # (!\CTRL|h_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(25),
	datad => VCC,
	cin => \CTRL|Add2~49\,
	combout => \CTRL|Add2~50_combout\,
	cout => \CTRL|Add2~51\);

-- Location: FF_X50_Y50_N19
\CTRL|h_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~50_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(25));

-- Location: LCCOMB_X49_Y50_N10
\CTRL|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~2_combout\ = (!\CTRL|h_cnt\(25) & (!\CTRL|h_cnt\(23) & (!\CTRL|h_cnt\(22) & !\CTRL|h_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(25),
	datab => \CTRL|h_cnt\(23),
	datac => \CTRL|h_cnt\(22),
	datad => \CTRL|h_cnt\(24),
	combout => \CTRL|LessThan3~2_combout\);

-- Location: LCCOMB_X50_Y50_N20
\CTRL|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~52_combout\ = (\CTRL|h_cnt\(26) & (\CTRL|Add2~51\ $ (GND))) # (!\CTRL|h_cnt\(26) & (!\CTRL|Add2~51\ & VCC))
-- \CTRL|Add2~53\ = CARRY((\CTRL|h_cnt\(26) & !\CTRL|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(26),
	datad => VCC,
	cin => \CTRL|Add2~51\,
	combout => \CTRL|Add2~52_combout\,
	cout => \CTRL|Add2~53\);

-- Location: FF_X50_Y50_N21
\CTRL|h_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~52_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(26));

-- Location: LCCOMB_X50_Y50_N22
\CTRL|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~54_combout\ = (\CTRL|h_cnt\(27) & (!\CTRL|Add2~53\)) # (!\CTRL|h_cnt\(27) & ((\CTRL|Add2~53\) # (GND)))
-- \CTRL|Add2~55\ = CARRY((!\CTRL|Add2~53\) # (!\CTRL|h_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(27),
	datad => VCC,
	cin => \CTRL|Add2~53\,
	combout => \CTRL|Add2~54_combout\,
	cout => \CTRL|Add2~55\);

-- Location: FF_X50_Y50_N23
\CTRL|h_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~54_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(27));

-- Location: LCCOMB_X50_Y50_N24
\CTRL|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~56_combout\ = (\CTRL|h_cnt\(28) & (\CTRL|Add2~55\ $ (GND))) # (!\CTRL|h_cnt\(28) & (!\CTRL|Add2~55\ & VCC))
-- \CTRL|Add2~57\ = CARRY((\CTRL|h_cnt\(28) & !\CTRL|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(28),
	datad => VCC,
	cin => \CTRL|Add2~55\,
	combout => \CTRL|Add2~56_combout\,
	cout => \CTRL|Add2~57\);

-- Location: FF_X50_Y50_N25
\CTRL|h_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~56_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(28));

-- Location: LCCOMB_X50_Y50_N26
\CTRL|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~58_combout\ = (\CTRL|h_cnt\(29) & (!\CTRL|Add2~57\)) # (!\CTRL|h_cnt\(29) & ((\CTRL|Add2~57\) # (GND)))
-- \CTRL|Add2~59\ = CARRY((!\CTRL|Add2~57\) # (!\CTRL|h_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(29),
	datad => VCC,
	cin => \CTRL|Add2~57\,
	combout => \CTRL|Add2~58_combout\,
	cout => \CTRL|Add2~59\);

-- Location: FF_X50_Y50_N27
\CTRL|h_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~58_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(29));

-- Location: LCCOMB_X49_Y50_N24
\CTRL|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~1_combout\ = (!\CTRL|h_cnt\(29) & !\CTRL|h_cnt\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(29),
	datad => \CTRL|h_cnt\(28),
	combout => \CTRL|LessThan3~1_combout\);

-- Location: LCCOMB_X49_Y50_N12
\CTRL|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~3_combout\ = (\CTRL|LessThan3~2_combout\ & (\CTRL|LessThan3~1_combout\ & (!\CTRL|h_cnt\(26) & !\CTRL|h_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~2_combout\,
	datab => \CTRL|LessThan3~1_combout\,
	datac => \CTRL|h_cnt\(26),
	datad => \CTRL|h_cnt\(27),
	combout => \CTRL|LessThan3~3_combout\);

-- Location: LCCOMB_X50_Y50_N28
\CTRL|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~60_combout\ = (\CTRL|h_cnt\(30) & (\CTRL|Add2~59\ $ (GND))) # (!\CTRL|h_cnt\(30) & (!\CTRL|Add2~59\ & VCC))
-- \CTRL|Add2~61\ = CARRY((\CTRL|h_cnt\(30) & !\CTRL|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(30),
	datad => VCC,
	cin => \CTRL|Add2~59\,
	combout => \CTRL|Add2~60_combout\,
	cout => \CTRL|Add2~61\);

-- Location: FF_X50_Y50_N29
\CTRL|h_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~60_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(30));

-- Location: LCCOMB_X49_Y50_N0
\CTRL|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~5_combout\ = (!\CTRL|h_cnt\(17) & (!\CTRL|h_cnt\(15) & (!\CTRL|h_cnt\(16) & !\CTRL|h_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(17),
	datab => \CTRL|h_cnt\(15),
	datac => \CTRL|h_cnt\(16),
	datad => \CTRL|h_cnt\(14),
	combout => \CTRL|LessThan3~5_combout\);

-- Location: LCCOMB_X49_Y50_N22
\CTRL|LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~4_combout\ = (!\CTRL|h_cnt\(19) & (!\CTRL|h_cnt\(21) & (!\CTRL|h_cnt\(20) & !\CTRL|h_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(19),
	datab => \CTRL|h_cnt\(21),
	datac => \CTRL|h_cnt\(20),
	datad => \CTRL|h_cnt\(18),
	combout => \CTRL|LessThan3~4_combout\);

-- Location: LCCOMB_X49_Y50_N26
\CTRL|LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~6_combout\ = (\CTRL|LessThan3~5_combout\ & \CTRL|LessThan3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|LessThan3~5_combout\,
	datac => \CTRL|LessThan3~4_combout\,
	combout => \CTRL|LessThan3~6_combout\);

-- Location: LCCOMB_X50_Y52_N0
\CTRL|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~0_combout\ = (!\CTRL|h_cnt\(11) & (!\CTRL|h_cnt\(13) & (!\CTRL|h_cnt\(12) & !\CTRL|h_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(11),
	datab => \CTRL|h_cnt\(13),
	datac => \CTRL|h_cnt\(12),
	datad => \CTRL|h_cnt\(10),
	combout => \CTRL|LessThan3~0_combout\);

-- Location: LCCOMB_X49_Y50_N4
\CTRL|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~7_combout\ = (\CTRL|LessThan3~3_combout\ & (!\CTRL|h_cnt\(30) & (\CTRL|LessThan3~6_combout\ & \CTRL|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~3_combout\,
	datab => \CTRL|h_cnt\(30),
	datac => \CTRL|LessThan3~6_combout\,
	datad => \CTRL|LessThan3~0_combout\,
	combout => \CTRL|LessThan3~7_combout\);

-- Location: LCCOMB_X49_Y51_N16
\CTRL|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal0~0_combout\ = (\CTRL|h_cnt\(7)) # (((\CTRL|h_cnt\(6)) # (!\CTRL|h_cnt\(9))) # (!\CTRL|h_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(7),
	datab => \CTRL|h_cnt\(8),
	datac => \CTRL|h_cnt\(6),
	datad => \CTRL|h_cnt\(9),
	combout => \CTRL|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y50_N30
\CTRL|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add2~62_combout\ = \CTRL|h_cnt\(31) $ (\CTRL|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(31),
	cin => \CTRL|Add2~61\,
	combout => \CTRL|Add2~62_combout\);

-- Location: FF_X50_Y50_N31
\CTRL|h_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add2~62_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(31));

-- Location: LCCOMB_X49_Y51_N26
\CTRL|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal0~1_combout\ = (\CTRL|h_cnt\(31)) # (((\CTRL|h_cnt\(4)) # (\CTRL|h_cnt\(3))) # (!\CTRL|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(31),
	datab => \CTRL|h_cnt\(5),
	datac => \CTRL|h_cnt\(4),
	datad => \CTRL|h_cnt\(3),
	combout => \CTRL|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y51_N20
\CTRL|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal0~2_combout\ = (\CTRL|h_cnt\(0)) # ((\CTRL|h_cnt\(2)) # (\CTRL|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(0),
	datac => \CTRL|h_cnt\(2),
	datad => \CTRL|h_cnt\(1),
	combout => \CTRL|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y51_N30
\CTRL|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal0~3_combout\ = ((\CTRL|Equal0~0_combout\) # ((\CTRL|Equal0~1_combout\) # (\CTRL|Equal0~2_combout\))) # (!\CTRL|LessThan3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~7_combout\,
	datab => \CTRL|Equal0~0_combout\,
	datac => \CTRL|Equal0~1_combout\,
	datad => \CTRL|Equal0~2_combout\,
	combout => \CTRL|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y51_N0
\CTRL|h_cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|h_cnt~2_combout\ = (\CTRL|Equal0~3_combout\ & \CTRL|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|Equal0~3_combout\,
	datad => \CTRL|Add2~18_combout\,
	combout => \CTRL|h_cnt~2_combout\);

-- Location: FF_X51_Y51_N1
\CTRL|h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|h_cnt~2_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|h_cnt\(9));

-- Location: LCCOMB_X49_Y51_N2
\CTRL|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan8~0_combout\ = (!\CTRL|h_cnt\(7) & (!\CTRL|h_cnt\(6) & !\CTRL|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(7),
	datac => \CTRL|h_cnt\(6),
	datad => \CTRL|h_cnt\(5),
	combout => \CTRL|LessThan8~0_combout\);

-- Location: LCCOMB_X49_Y51_N12
\CTRL|H_SYNCH~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|H_SYNCH~2_combout\ = (\CTRL|LessThan3~7_combout\ & (((\CTRL|LessThan8~0_combout\) # (!\CTRL|h_cnt\(8))) # (!\CTRL|h_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(9),
	datab => \CTRL|LessThan8~0_combout\,
	datac => \CTRL|h_cnt\(8),
	datad => \CTRL|LessThan3~7_combout\,
	combout => \CTRL|H_SYNCH~2_combout\);

-- Location: LCCOMB_X49_Y51_N22
\CTRL|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan6~0_combout\ = (((!\CTRL|h_cnt\(5)) # (!\CTRL|h_cnt\(4))) # (!\CTRL|h_cnt\(6))) # (!\CTRL|h_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(7),
	datab => \CTRL|h_cnt\(6),
	datac => \CTRL|h_cnt\(4),
	datad => \CTRL|h_cnt\(5),
	combout => \CTRL|LessThan6~0_combout\);

-- Location: LCCOMB_X49_Y50_N6
\CTRL|LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~8_combout\ = (\CTRL|LessThan3~3_combout\ & (\CTRL|LessThan3~5_combout\ & (\CTRL|LessThan3~4_combout\ & \CTRL|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~3_combout\,
	datab => \CTRL|LessThan3~5_combout\,
	datac => \CTRL|LessThan3~4_combout\,
	datad => \CTRL|LessThan3~0_combout\,
	combout => \CTRL|LessThan3~8_combout\);

-- Location: LCCOMB_X49_Y51_N24
\CTRL|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan6~1_combout\ = (\CTRL|LessThan3~8_combout\ & (((\CTRL|LessThan6~0_combout\ & !\CTRL|h_cnt\(8))) # (!\CTRL|h_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan6~0_combout\,
	datab => \CTRL|LessThan3~8_combout\,
	datac => \CTRL|h_cnt\(8),
	datad => \CTRL|h_cnt\(9),
	combout => \CTRL|LessThan6~1_combout\);

-- Location: LCCOMB_X49_Y51_N4
\CTRL|H_SYNCH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|H_SYNCH~0_combout\ = ((!\CTRL|h_cnt\(6) & (!\CTRL|h_cnt\(4) & !\CTRL|h_cnt\(5)))) # (!\CTRL|h_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|h_cnt\(7),
	datab => \CTRL|h_cnt\(6),
	datac => \CTRL|h_cnt\(4),
	datad => \CTRL|h_cnt\(5),
	combout => \CTRL|H_SYNCH~0_combout\);

-- Location: LCCOMB_X49_Y51_N8
\CTRL|H_SYNCH~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|H_SYNCH~1_combout\ = (\CTRL|LessThan3~7_combout\ & (((\CTRL|H_SYNCH~0_combout\ & !\CTRL|h_cnt\(8))) # (!\CTRL|h_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~7_combout\,
	datab => \CTRL|H_SYNCH~0_combout\,
	datac => \CTRL|h_cnt\(8),
	datad => \CTRL|h_cnt\(9),
	combout => \CTRL|H_SYNCH~1_combout\);

-- Location: LCCOMB_X49_Y51_N10
\CTRL|H_SYNCH~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|H_SYNCH~3_combout\ = (\CTRL|H_SYNCH~1_combout\) # ((!\CTRL|LessThan6~1_combout\ & ((\CTRL|H_SYNCH~2_combout\) # (\CTRL|H_SYNCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|H_SYNCH~2_combout\,
	datab => \CTRL|LessThan6~1_combout\,
	datac => \CTRL|H_SYNCH~1_combout\,
	datad => \CTRL|H_SYNCH~q\,
	combout => \CTRL|H_SYNCH~3_combout\);

-- Location: LCCOMB_X49_Y51_N0
\CTRL|H_SYNCH~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|H_SYNCH~4_combout\ = (\CTRL|H_SYNCH~3_combout\) # ((\CTRL|h_cnt\(31)) # ((\CTRL|h_cnt\(30) & \CTRL|H_SYNCH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|H_SYNCH~3_combout\,
	datab => \CTRL|h_cnt\(30),
	datac => \CTRL|H_SYNCH~q\,
	datad => \CTRL|h_cnt\(31),
	combout => \CTRL|H_SYNCH~4_combout\);

-- Location: FF_X49_Y51_N1
\CTRL|H_SYNCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|H_SYNCH~4_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|H_SYNCH~q\);

-- Location: LCCOMB_X46_Y50_N0
\CTRL|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~0_combout\ = \CTRL|v_cnt\(0) $ (VCC)
-- \CTRL|Add1~1\ = CARRY(\CTRL|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(0),
	datad => VCC,
	combout => \CTRL|Add1~0_combout\,
	cout => \CTRL|Add1~1\);

-- Location: LCCOMB_X46_Y50_N8
\CTRL|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~8_combout\ = (\CTRL|v_cnt\(4) & (\CTRL|Add1~7\ $ (GND))) # (!\CTRL|v_cnt\(4) & (!\CTRL|Add1~7\ & VCC))
-- \CTRL|Add1~9\ = CARRY((\CTRL|v_cnt\(4) & !\CTRL|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(4),
	datad => VCC,
	cin => \CTRL|Add1~7\,
	combout => \CTRL|Add1~8_combout\,
	cout => \CTRL|Add1~9\);

-- Location: LCCOMB_X46_Y50_N10
\CTRL|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~10_combout\ = (\CTRL|v_cnt\(5) & (!\CTRL|Add1~9\)) # (!\CTRL|v_cnt\(5) & ((\CTRL|Add1~9\) # (GND)))
-- \CTRL|Add1~11\ = CARRY((!\CTRL|Add1~9\) # (!\CTRL|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(5),
	datad => VCC,
	cin => \CTRL|Add1~9\,
	combout => \CTRL|Add1~10_combout\,
	cout => \CTRL|Add1~11\);

-- Location: FF_X46_Y50_N11
\CTRL|v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~10_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(5));

-- Location: LCCOMB_X46_Y50_N12
\CTRL|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~12_combout\ = (\CTRL|v_cnt\(6) & (\CTRL|Add1~11\ $ (GND))) # (!\CTRL|v_cnt\(6) & (!\CTRL|Add1~11\ & VCC))
-- \CTRL|Add1~13\ = CARRY((\CTRL|v_cnt\(6) & !\CTRL|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(6),
	datad => VCC,
	cin => \CTRL|Add1~11\,
	combout => \CTRL|Add1~12_combout\,
	cout => \CTRL|Add1~13\);

-- Location: FF_X46_Y50_N13
\CTRL|v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~12_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(6));

-- Location: LCCOMB_X46_Y50_N14
\CTRL|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~14_combout\ = (\CTRL|v_cnt\(7) & (!\CTRL|Add1~13\)) # (!\CTRL|v_cnt\(7) & ((\CTRL|Add1~13\) # (GND)))
-- \CTRL|Add1~15\ = CARRY((!\CTRL|Add1~13\) # (!\CTRL|v_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(7),
	datad => VCC,
	cin => \CTRL|Add1~13\,
	combout => \CTRL|Add1~14_combout\,
	cout => \CTRL|Add1~15\);

-- Location: FF_X46_Y50_N15
\CTRL|v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~14_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(7));

-- Location: LCCOMB_X46_Y50_N16
\CTRL|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~16_combout\ = (\CTRL|v_cnt\(8) & (\CTRL|Add1~15\ $ (GND))) # (!\CTRL|v_cnt\(8) & (!\CTRL|Add1~15\ & VCC))
-- \CTRL|Add1~17\ = CARRY((\CTRL|v_cnt\(8) & !\CTRL|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(8),
	datad => VCC,
	cin => \CTRL|Add1~15\,
	combout => \CTRL|Add1~16_combout\,
	cout => \CTRL|Add1~17\);

-- Location: FF_X46_Y50_N17
\CTRL|v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~16_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(8));

-- Location: LCCOMB_X46_Y50_N18
\CTRL|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~18_combout\ = (\CTRL|v_cnt\(9) & (!\CTRL|Add1~17\)) # (!\CTRL|v_cnt\(9) & ((\CTRL|Add1~17\) # (GND)))
-- \CTRL|Add1~19\ = CARRY((!\CTRL|Add1~17\) # (!\CTRL|v_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(9),
	datad => VCC,
	cin => \CTRL|Add1~17\,
	combout => \CTRL|Add1~18_combout\,
	cout => \CTRL|Add1~19\);

-- Location: LCCOMB_X46_Y49_N28
\CTRL|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~60_combout\ = (\CTRL|v_cnt\(30) & (\CTRL|Add1~59\ $ (GND))) # (!\CTRL|v_cnt\(30) & (!\CTRL|Add1~59\ & VCC))
-- \CTRL|Add1~61\ = CARRY((\CTRL|v_cnt\(30) & !\CTRL|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(30),
	datad => VCC,
	cin => \CTRL|Add1~59\,
	combout => \CTRL|Add1~60_combout\,
	cout => \CTRL|Add1~61\);

-- Location: LCCOMB_X46_Y49_N30
\CTRL|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~62_combout\ = \CTRL|v_cnt\(31) $ (\CTRL|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(31),
	cin => \CTRL|Add1~61\,
	combout => \CTRL|Add1~62_combout\);

-- Location: FF_X46_Y49_N31
\CTRL|v_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~62_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(31));

-- Location: LCCOMB_X47_Y50_N30
\CTRL|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~9_combout\ = (\CTRL|v_cnt\(2) & (\CTRL|v_cnt\(9) & (\CTRL|v_cnt\(3) & !\CTRL|v_cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(2),
	datab => \CTRL|v_cnt\(9),
	datac => \CTRL|v_cnt\(3),
	datad => \CTRL|v_cnt\(31),
	combout => \CTRL|Equal2~9_combout\);

-- Location: LCCOMB_X47_Y50_N24
\CTRL|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~10_combout\ = (!\CTRL|v_cnt\(1) & \CTRL|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(1),
	datac => \CTRL|v_cnt\(0),
	combout => \CTRL|Equal2~10_combout\);

-- Location: LCCOMB_X47_Y50_N4
\CTRL|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~8_combout\ = (!\CTRL|v_cnt\(6) & (!\CTRL|v_cnt\(7) & (!\CTRL|v_cnt\(8) & !\CTRL|v_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(6),
	datab => \CTRL|v_cnt\(7),
	datac => \CTRL|v_cnt\(8),
	datad => \CTRL|v_cnt\(5),
	combout => \CTRL|Equal2~8_combout\);

-- Location: LCCOMB_X47_Y50_N18
\CTRL|Equal2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~11_combout\ = (\CTRL|Equal2~9_combout\ & (\CTRL|Equal2~10_combout\ & (\CTRL|Equal2~8_combout\ & !\CTRL|v_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal2~9_combout\,
	datab => \CTRL|Equal2~10_combout\,
	datac => \CTRL|Equal2~8_combout\,
	datad => \CTRL|v_cnt\(4),
	combout => \CTRL|Equal2~11_combout\);

-- Location: LCCOMB_X47_Y50_N14
\CTRL|v_cnt[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[1]~1_combout\ = (!\CTRL|Equal0~3_combout\ & (\ctrl_en~input_o\ & ((!\CTRL|Equal2~11_combout\) # (!\CTRL|Equal2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal2~7_combout\,
	datab => \CTRL|Equal2~11_combout\,
	datac => \CTRL|Equal0~3_combout\,
	datad => \ctrl_en~input_o\,
	combout => \CTRL|v_cnt[1]~1_combout\);

-- Location: LCCOMB_X47_Y50_N2
\CTRL|v_cnt[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[9]~2_combout\ = (\CTRL|Add1~18_combout\ & ((\CTRL|v_cnt[1]~1_combout\) # ((\CTRL|v_cnt\(9) & !\CTRL|v_cnt[31]~0_combout\)))) # (!\CTRL|Add1~18_combout\ & (((\CTRL|v_cnt\(9) & !\CTRL|v_cnt[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Add1~18_combout\,
	datab => \CTRL|v_cnt[1]~1_combout\,
	datac => \CTRL|v_cnt\(9),
	datad => \CTRL|v_cnt[31]~0_combout\,
	combout => \CTRL|v_cnt[9]~2_combout\);

-- Location: FF_X47_Y50_N3
\CTRL|v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|v_cnt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(9));

-- Location: LCCOMB_X46_Y50_N20
\CTRL|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~20_combout\ = (\CTRL|v_cnt\(10) & (\CTRL|Add1~19\ $ (GND))) # (!\CTRL|v_cnt\(10) & (!\CTRL|Add1~19\ & VCC))
-- \CTRL|Add1~21\ = CARRY((\CTRL|v_cnt\(10) & !\CTRL|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(10),
	datad => VCC,
	cin => \CTRL|Add1~19\,
	combout => \CTRL|Add1~20_combout\,
	cout => \CTRL|Add1~21\);

-- Location: FF_X46_Y50_N21
\CTRL|v_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~20_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(10));

-- Location: LCCOMB_X46_Y50_N22
\CTRL|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~22_combout\ = (\CTRL|v_cnt\(11) & (!\CTRL|Add1~21\)) # (!\CTRL|v_cnt\(11) & ((\CTRL|Add1~21\) # (GND)))
-- \CTRL|Add1~23\ = CARRY((!\CTRL|Add1~21\) # (!\CTRL|v_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(11),
	datad => VCC,
	cin => \CTRL|Add1~21\,
	combout => \CTRL|Add1~22_combout\,
	cout => \CTRL|Add1~23\);

-- Location: FF_X46_Y50_N23
\CTRL|v_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~22_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(11));

-- Location: LCCOMB_X46_Y50_N24
\CTRL|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~24_combout\ = (\CTRL|v_cnt\(12) & (\CTRL|Add1~23\ $ (GND))) # (!\CTRL|v_cnt\(12) & (!\CTRL|Add1~23\ & VCC))
-- \CTRL|Add1~25\ = CARRY((\CTRL|v_cnt\(12) & !\CTRL|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(12),
	datad => VCC,
	cin => \CTRL|Add1~23\,
	combout => \CTRL|Add1~24_combout\,
	cout => \CTRL|Add1~25\);

-- Location: FF_X46_Y50_N25
\CTRL|v_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~24_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(12));

-- Location: LCCOMB_X46_Y50_N26
\CTRL|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~26_combout\ = (\CTRL|v_cnt\(13) & (!\CTRL|Add1~25\)) # (!\CTRL|v_cnt\(13) & ((\CTRL|Add1~25\) # (GND)))
-- \CTRL|Add1~27\ = CARRY((!\CTRL|Add1~25\) # (!\CTRL|v_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(13),
	datad => VCC,
	cin => \CTRL|Add1~25\,
	combout => \CTRL|Add1~26_combout\,
	cout => \CTRL|Add1~27\);

-- Location: FF_X46_Y50_N27
\CTRL|v_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~26_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(13));

-- Location: LCCOMB_X46_Y50_N28
\CTRL|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~28_combout\ = (\CTRL|v_cnt\(14) & (\CTRL|Add1~27\ $ (GND))) # (!\CTRL|v_cnt\(14) & (!\CTRL|Add1~27\ & VCC))
-- \CTRL|Add1~29\ = CARRY((\CTRL|v_cnt\(14) & !\CTRL|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(14),
	datad => VCC,
	cin => \CTRL|Add1~27\,
	combout => \CTRL|Add1~28_combout\,
	cout => \CTRL|Add1~29\);

-- Location: FF_X46_Y50_N29
\CTRL|v_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~28_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(14));

-- Location: LCCOMB_X46_Y50_N30
\CTRL|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~30_combout\ = (\CTRL|v_cnt\(15) & (!\CTRL|Add1~29\)) # (!\CTRL|v_cnt\(15) & ((\CTRL|Add1~29\) # (GND)))
-- \CTRL|Add1~31\ = CARRY((!\CTRL|Add1~29\) # (!\CTRL|v_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(15),
	datad => VCC,
	cin => \CTRL|Add1~29\,
	combout => \CTRL|Add1~30_combout\,
	cout => \CTRL|Add1~31\);

-- Location: FF_X46_Y50_N31
\CTRL|v_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~30_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(15));

-- Location: LCCOMB_X46_Y49_N0
\CTRL|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~32_combout\ = (\CTRL|v_cnt\(16) & (\CTRL|Add1~31\ $ (GND))) # (!\CTRL|v_cnt\(16) & (!\CTRL|Add1~31\ & VCC))
-- \CTRL|Add1~33\ = CARRY((\CTRL|v_cnt\(16) & !\CTRL|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(16),
	datad => VCC,
	cin => \CTRL|Add1~31\,
	combout => \CTRL|Add1~32_combout\,
	cout => \CTRL|Add1~33\);

-- Location: FF_X46_Y49_N1
\CTRL|v_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~32_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(16));

-- Location: LCCOMB_X46_Y49_N2
\CTRL|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~34_combout\ = (\CTRL|v_cnt\(17) & (!\CTRL|Add1~33\)) # (!\CTRL|v_cnt\(17) & ((\CTRL|Add1~33\) # (GND)))
-- \CTRL|Add1~35\ = CARRY((!\CTRL|Add1~33\) # (!\CTRL|v_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(17),
	datad => VCC,
	cin => \CTRL|Add1~33\,
	combout => \CTRL|Add1~34_combout\,
	cout => \CTRL|Add1~35\);

-- Location: FF_X46_Y49_N3
\CTRL|v_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~34_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(17));

-- Location: LCCOMB_X46_Y49_N4
\CTRL|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~36_combout\ = (\CTRL|v_cnt\(18) & (\CTRL|Add1~35\ $ (GND))) # (!\CTRL|v_cnt\(18) & (!\CTRL|Add1~35\ & VCC))
-- \CTRL|Add1~37\ = CARRY((\CTRL|v_cnt\(18) & !\CTRL|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(18),
	datad => VCC,
	cin => \CTRL|Add1~35\,
	combout => \CTRL|Add1~36_combout\,
	cout => \CTRL|Add1~37\);

-- Location: FF_X46_Y49_N5
\CTRL|v_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~36_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(18));

-- Location: LCCOMB_X46_Y49_N6
\CTRL|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~38_combout\ = (\CTRL|v_cnt\(19) & (!\CTRL|Add1~37\)) # (!\CTRL|v_cnt\(19) & ((\CTRL|Add1~37\) # (GND)))
-- \CTRL|Add1~39\ = CARRY((!\CTRL|Add1~37\) # (!\CTRL|v_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(19),
	datad => VCC,
	cin => \CTRL|Add1~37\,
	combout => \CTRL|Add1~38_combout\,
	cout => \CTRL|Add1~39\);

-- Location: FF_X46_Y49_N7
\CTRL|v_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~38_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(19));

-- Location: LCCOMB_X46_Y49_N8
\CTRL|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~40_combout\ = (\CTRL|v_cnt\(20) & (\CTRL|Add1~39\ $ (GND))) # (!\CTRL|v_cnt\(20) & (!\CTRL|Add1~39\ & VCC))
-- \CTRL|Add1~41\ = CARRY((\CTRL|v_cnt\(20) & !\CTRL|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(20),
	datad => VCC,
	cin => \CTRL|Add1~39\,
	combout => \CTRL|Add1~40_combout\,
	cout => \CTRL|Add1~41\);

-- Location: FF_X46_Y49_N9
\CTRL|v_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~40_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(20));

-- Location: LCCOMB_X46_Y49_N10
\CTRL|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~42_combout\ = (\CTRL|v_cnt\(21) & (!\CTRL|Add1~41\)) # (!\CTRL|v_cnt\(21) & ((\CTRL|Add1~41\) # (GND)))
-- \CTRL|Add1~43\ = CARRY((!\CTRL|Add1~41\) # (!\CTRL|v_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(21),
	datad => VCC,
	cin => \CTRL|Add1~41\,
	combout => \CTRL|Add1~42_combout\,
	cout => \CTRL|Add1~43\);

-- Location: FF_X46_Y49_N11
\CTRL|v_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~42_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(21));

-- Location: LCCOMB_X46_Y49_N12
\CTRL|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~44_combout\ = (\CTRL|v_cnt\(22) & (\CTRL|Add1~43\ $ (GND))) # (!\CTRL|v_cnt\(22) & (!\CTRL|Add1~43\ & VCC))
-- \CTRL|Add1~45\ = CARRY((\CTRL|v_cnt\(22) & !\CTRL|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(22),
	datad => VCC,
	cin => \CTRL|Add1~43\,
	combout => \CTRL|Add1~44_combout\,
	cout => \CTRL|Add1~45\);

-- Location: FF_X46_Y49_N13
\CTRL|v_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~44_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(22));

-- Location: LCCOMB_X46_Y49_N14
\CTRL|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~46_combout\ = (\CTRL|v_cnt\(23) & (!\CTRL|Add1~45\)) # (!\CTRL|v_cnt\(23) & ((\CTRL|Add1~45\) # (GND)))
-- \CTRL|Add1~47\ = CARRY((!\CTRL|Add1~45\) # (!\CTRL|v_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(23),
	datad => VCC,
	cin => \CTRL|Add1~45\,
	combout => \CTRL|Add1~46_combout\,
	cout => \CTRL|Add1~47\);

-- Location: FF_X46_Y49_N15
\CTRL|v_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~46_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(23));

-- Location: LCCOMB_X46_Y49_N16
\CTRL|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~48_combout\ = (\CTRL|v_cnt\(24) & (\CTRL|Add1~47\ $ (GND))) # (!\CTRL|v_cnt\(24) & (!\CTRL|Add1~47\ & VCC))
-- \CTRL|Add1~49\ = CARRY((\CTRL|v_cnt\(24) & !\CTRL|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(24),
	datad => VCC,
	cin => \CTRL|Add1~47\,
	combout => \CTRL|Add1~48_combout\,
	cout => \CTRL|Add1~49\);

-- Location: FF_X46_Y49_N17
\CTRL|v_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~48_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(24));

-- Location: LCCOMB_X46_Y49_N18
\CTRL|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~50_combout\ = (\CTRL|v_cnt\(25) & (!\CTRL|Add1~49\)) # (!\CTRL|v_cnt\(25) & ((\CTRL|Add1~49\) # (GND)))
-- \CTRL|Add1~51\ = CARRY((!\CTRL|Add1~49\) # (!\CTRL|v_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(25),
	datad => VCC,
	cin => \CTRL|Add1~49\,
	combout => \CTRL|Add1~50_combout\,
	cout => \CTRL|Add1~51\);

-- Location: FF_X46_Y49_N19
\CTRL|v_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~50_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(25));

-- Location: LCCOMB_X46_Y49_N20
\CTRL|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~52_combout\ = (\CTRL|v_cnt\(26) & (\CTRL|Add1~51\ $ (GND))) # (!\CTRL|v_cnt\(26) & (!\CTRL|Add1~51\ & VCC))
-- \CTRL|Add1~53\ = CARRY((\CTRL|v_cnt\(26) & !\CTRL|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(26),
	datad => VCC,
	cin => \CTRL|Add1~51\,
	combout => \CTRL|Add1~52_combout\,
	cout => \CTRL|Add1~53\);

-- Location: FF_X46_Y49_N21
\CTRL|v_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~52_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(26));

-- Location: LCCOMB_X46_Y49_N22
\CTRL|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~54_combout\ = (\CTRL|v_cnt\(27) & (!\CTRL|Add1~53\)) # (!\CTRL|v_cnt\(27) & ((\CTRL|Add1~53\) # (GND)))
-- \CTRL|Add1~55\ = CARRY((!\CTRL|Add1~53\) # (!\CTRL|v_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(27),
	datad => VCC,
	cin => \CTRL|Add1~53\,
	combout => \CTRL|Add1~54_combout\,
	cout => \CTRL|Add1~55\);

-- Location: FF_X46_Y49_N23
\CTRL|v_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~54_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(27));

-- Location: LCCOMB_X46_Y49_N24
\CTRL|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~56_combout\ = (\CTRL|v_cnt\(28) & (\CTRL|Add1~55\ $ (GND))) # (!\CTRL|v_cnt\(28) & (!\CTRL|Add1~55\ & VCC))
-- \CTRL|Add1~57\ = CARRY((\CTRL|v_cnt\(28) & !\CTRL|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(28),
	datad => VCC,
	cin => \CTRL|Add1~55\,
	combout => \CTRL|Add1~56_combout\,
	cout => \CTRL|Add1~57\);

-- Location: FF_X46_Y49_N25
\CTRL|v_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~56_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(28));

-- Location: LCCOMB_X46_Y49_N26
\CTRL|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~58_combout\ = (\CTRL|v_cnt\(29) & (!\CTRL|Add1~57\)) # (!\CTRL|v_cnt\(29) & ((\CTRL|Add1~57\) # (GND)))
-- \CTRL|Add1~59\ = CARRY((!\CTRL|Add1~57\) # (!\CTRL|v_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(29),
	datad => VCC,
	cin => \CTRL|Add1~57\,
	combout => \CTRL|Add1~58_combout\,
	cout => \CTRL|Add1~59\);

-- Location: FF_X46_Y49_N27
\CTRL|v_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~58_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(29));

-- Location: FF_X46_Y49_N29
\CTRL|v_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~60_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(30));

-- Location: LCCOMB_X47_Y49_N24
\CTRL|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~4_combout\ = (!\CTRL|v_cnt\(15) & !\CTRL|v_cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(15),
	datac => \CTRL|v_cnt\(14),
	combout => \CTRL|Equal2~4_combout\);

-- Location: LCCOMB_X47_Y49_N14
\CTRL|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~3_combout\ = (!\CTRL|v_cnt\(20) & (!\CTRL|v_cnt\(18) & (!\CTRL|v_cnt\(19) & !\CTRL|v_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(20),
	datab => \CTRL|v_cnt\(18),
	datac => \CTRL|v_cnt\(19),
	datad => \CTRL|v_cnt\(21),
	combout => \CTRL|Equal2~3_combout\);

-- Location: LCCOMB_X47_Y49_N10
\CTRL|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~5_combout\ = (!\CTRL|v_cnt\(16) & (\CTRL|Equal2~4_combout\ & (\CTRL|Equal2~3_combout\ & !\CTRL|v_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(16),
	datab => \CTRL|Equal2~4_combout\,
	datac => \CTRL|Equal2~3_combout\,
	datad => \CTRL|v_cnt\(17),
	combout => \CTRL|Equal2~5_combout\);

-- Location: LCCOMB_X47_Y49_N18
\CTRL|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~1_combout\ = (!\CTRL|v_cnt\(26) & (!\CTRL|v_cnt\(28) & (!\CTRL|v_cnt\(29) & !\CTRL|v_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(26),
	datab => \CTRL|v_cnt\(28),
	datac => \CTRL|v_cnt\(29),
	datad => \CTRL|v_cnt\(27),
	combout => \CTRL|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y49_N4
\CTRL|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~2_combout\ = (!\CTRL|v_cnt\(23) & (!\CTRL|v_cnt\(25) & (!\CTRL|v_cnt\(24) & !\CTRL|v_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(23),
	datab => \CTRL|v_cnt\(25),
	datac => \CTRL|v_cnt\(24),
	datad => \CTRL|v_cnt\(22),
	combout => \CTRL|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y50_N8
\CTRL|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~0_combout\ = (!\CTRL|v_cnt\(12) & (!\CTRL|v_cnt\(11) & (!\CTRL|v_cnt\(13) & !\CTRL|v_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(12),
	datab => \CTRL|v_cnt\(11),
	datac => \CTRL|v_cnt\(13),
	datad => \CTRL|v_cnt\(10),
	combout => \CTRL|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y49_N28
\CTRL|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~6_combout\ = (\CTRL|Equal2~5_combout\ & (\CTRL|Equal2~1_combout\ & (\CTRL|Equal2~2_combout\ & \CTRL|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal2~5_combout\,
	datab => \CTRL|Equal2~1_combout\,
	datac => \CTRL|Equal2~2_combout\,
	datad => \CTRL|Equal2~0_combout\,
	combout => \CTRL|Equal2~6_combout\);

-- Location: LCCOMB_X47_Y49_N22
\CTRL|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Equal2~7_combout\ = (!\CTRL|v_cnt\(30) & \CTRL|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(30),
	datad => \CTRL|Equal2~6_combout\,
	combout => \CTRL|Equal2~7_combout\);

-- Location: LCCOMB_X47_Y50_N20
\CTRL|v_cnt[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[31]~0_combout\ = (\ctrl_en~input_o\ & (((\CTRL|Equal2~7_combout\ & \CTRL|Equal2~11_combout\)) # (!\CTRL|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Equal2~7_combout\,
	datab => \CTRL|Equal2~11_combout\,
	datac => \CTRL|Equal0~3_combout\,
	datad => \ctrl_en~input_o\,
	combout => \CTRL|v_cnt[31]~0_combout\);

-- Location: FF_X46_Y50_N1
\CTRL|v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~0_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(0));

-- Location: LCCOMB_X46_Y50_N2
\CTRL|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~2_combout\ = (\CTRL|v_cnt\(1) & (!\CTRL|Add1~1\)) # (!\CTRL|v_cnt\(1) & ((\CTRL|Add1~1\) # (GND)))
-- \CTRL|Add1~3\ = CARRY((!\CTRL|Add1~1\) # (!\CTRL|v_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(1),
	datad => VCC,
	cin => \CTRL|Add1~1\,
	combout => \CTRL|Add1~2_combout\,
	cout => \CTRL|Add1~3\);

-- Location: LCCOMB_X47_Y50_N26
\CTRL|v_cnt[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[1]~4_combout\ = (\CTRL|Add1~2_combout\ & ((\CTRL|v_cnt[1]~1_combout\) # ((\CTRL|v_cnt\(1) & !\CTRL|v_cnt[31]~0_combout\)))) # (!\CTRL|Add1~2_combout\ & (((\CTRL|v_cnt\(1) & !\CTRL|v_cnt[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Add1~2_combout\,
	datab => \CTRL|v_cnt[1]~1_combout\,
	datac => \CTRL|v_cnt\(1),
	datad => \CTRL|v_cnt[31]~0_combout\,
	combout => \CTRL|v_cnt[1]~4_combout\);

-- Location: FF_X47_Y50_N27
\CTRL|v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|v_cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(1));

-- Location: LCCOMB_X46_Y50_N4
\CTRL|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~4_combout\ = (\CTRL|v_cnt\(2) & (\CTRL|Add1~3\ $ (GND))) # (!\CTRL|v_cnt\(2) & (!\CTRL|Add1~3\ & VCC))
-- \CTRL|Add1~5\ = CARRY((\CTRL|v_cnt\(2) & !\CTRL|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(2),
	datad => VCC,
	cin => \CTRL|Add1~3\,
	combout => \CTRL|Add1~4_combout\,
	cout => \CTRL|Add1~5\);

-- Location: LCCOMB_X47_Y50_N6
\CTRL|v_cnt[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[2]~3_combout\ = (\CTRL|Add1~4_combout\ & ((\CTRL|v_cnt[1]~1_combout\) # ((\CTRL|v_cnt\(2) & !\CTRL|v_cnt[31]~0_combout\)))) # (!\CTRL|Add1~4_combout\ & (((\CTRL|v_cnt\(2) & !\CTRL|v_cnt[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Add1~4_combout\,
	datab => \CTRL|v_cnt[1]~1_combout\,
	datac => \CTRL|v_cnt\(2),
	datad => \CTRL|v_cnt[31]~0_combout\,
	combout => \CTRL|v_cnt[2]~3_combout\);

-- Location: FF_X47_Y50_N7
\CTRL|v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|v_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(2));

-- Location: LCCOMB_X46_Y50_N6
\CTRL|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|Add1~6_combout\ = (\CTRL|v_cnt\(3) & (!\CTRL|Add1~5\)) # (!\CTRL|v_cnt\(3) & ((\CTRL|Add1~5\) # (GND)))
-- \CTRL|Add1~7\ = CARRY((!\CTRL|Add1~5\) # (!\CTRL|v_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|v_cnt\(3),
	datad => VCC,
	cin => \CTRL|Add1~5\,
	combout => \CTRL|Add1~6_combout\,
	cout => \CTRL|Add1~7\);

-- Location: LCCOMB_X47_Y50_N28
\CTRL|v_cnt[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|v_cnt[3]~5_combout\ = (\CTRL|Add1~6_combout\ & ((\CTRL|v_cnt[1]~1_combout\) # ((\CTRL|v_cnt\(3) & !\CTRL|v_cnt[31]~0_combout\)))) # (!\CTRL|Add1~6_combout\ & (((\CTRL|v_cnt\(3) & !\CTRL|v_cnt[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|Add1~6_combout\,
	datab => \CTRL|v_cnt[1]~1_combout\,
	datac => \CTRL|v_cnt\(3),
	datad => \CTRL|v_cnt[31]~0_combout\,
	combout => \CTRL|v_cnt[3]~5_combout\);

-- Location: FF_X47_Y50_N29
\CTRL|v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|v_cnt[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(3));

-- Location: FF_X46_Y50_N9
\CTRL|v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|Add1~8_combout\,
	ena => \CTRL|v_cnt[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|v_cnt\(4));

-- Location: LCCOMB_X47_Y50_N22
\CTRL|V_SYNCH~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~2_combout\ = (\CTRL|v_cnt\(3) & ((\CTRL|v_cnt\(1)) # ((\CTRL|v_cnt\(0) & \CTRL|v_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(0),
	datab => \CTRL|v_cnt\(9),
	datac => \CTRL|v_cnt\(1),
	datad => \CTRL|v_cnt\(3),
	combout => \CTRL|V_SYNCH~2_combout\);

-- Location: LCCOMB_X47_Y50_N0
\CTRL|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan4~0_combout\ = (\CTRL|v_cnt\(6) & (\CTRL|v_cnt\(7) & (\CTRL|v_cnt\(8) & \CTRL|v_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(6),
	datab => \CTRL|v_cnt\(7),
	datac => \CTRL|v_cnt\(8),
	datad => \CTRL|v_cnt\(5),
	combout => \CTRL|LessThan4~0_combout\);

-- Location: LCCOMB_X47_Y50_N16
\CTRL|V_SYNCH~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~3_combout\ = (\CTRL|V_SYNCH~2_combout\ & ((\CTRL|v_cnt\(2) & (\CTRL|v_cnt\(9))) # (!\CTRL|v_cnt\(2) & (!\CTRL|v_cnt\(9) & \CTRL|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(2),
	datab => \CTRL|v_cnt\(9),
	datac => \CTRL|V_SYNCH~2_combout\,
	datad => \CTRL|LessThan4~0_combout\,
	combout => \CTRL|V_SYNCH~3_combout\);

-- Location: LCCOMB_X47_Y50_N10
\CTRL|V_SYNCH~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~4_combout\ = (!\CTRL|v_cnt\(4) & ((\CTRL|V_SYNCH~3_combout\ & ((!\CTRL|v_cnt\(9)))) # (!\CTRL|V_SYNCH~3_combout\ & (\CTRL|Equal2~8_combout\ & \CTRL|v_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(4),
	datab => \CTRL|V_SYNCH~3_combout\,
	datac => \CTRL|Equal2~8_combout\,
	datad => \CTRL|v_cnt\(9),
	combout => \CTRL|V_SYNCH~4_combout\);

-- Location: LCCOMB_X47_Y49_N12
\CTRL|V_SYNCH~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~8_combout\ = (\CTRL|Equal2~6_combout\ & (!\CTRL|v_cnt\(30) & (\CTRL|V_SYNCH~4_combout\ $ (!\CTRL|v_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|V_SYNCH~4_combout\,
	datab => \CTRL|Equal2~6_combout\,
	datac => \CTRL|v_cnt\(9),
	datad => \CTRL|v_cnt\(30),
	combout => \CTRL|V_SYNCH~8_combout\);

-- Location: LCCOMB_X47_Y50_N12
\CTRL|V_SYNCH~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~5_combout\ = (\CTRL|LessThan4~0_combout\ & ((\CTRL|v_cnt\(4)) # ((\CTRL|v_cnt\(3) & \CTRL|v_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(4),
	datab => \CTRL|LessThan4~0_combout\,
	datac => \CTRL|v_cnt\(3),
	datad => \CTRL|v_cnt\(2),
	combout => \CTRL|V_SYNCH~5_combout\);

-- Location: LCCOMB_X47_Y49_N0
\CTRL|V_SYNCH~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~6_combout\ = (!\CTRL|V_SYNCH~5_combout\ & (\CTRL|Equal2~6_combout\ & (!\CTRL|v_cnt\(9) & !\CTRL|v_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|V_SYNCH~5_combout\,
	datab => \CTRL|Equal2~6_combout\,
	datac => \CTRL|v_cnt\(9),
	datad => \CTRL|v_cnt\(30),
	combout => \CTRL|V_SYNCH~6_combout\);

-- Location: LCCOMB_X47_Y49_N8
\CTRL|V_SYNCH~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|V_SYNCH~7_combout\ = (\CTRL|V_SYNCH~8_combout\) # ((\CTRL|v_cnt\(31)) # ((!\CTRL|V_SYNCH~6_combout\ & \CTRL|V_SYNCH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|V_SYNCH~8_combout\,
	datab => \CTRL|V_SYNCH~6_combout\,
	datac => \CTRL|V_SYNCH~q\,
	datad => \CTRL|v_cnt\(31),
	combout => \CTRL|V_SYNCH~7_combout\);

-- Location: FF_X47_Y49_N9
\CTRL|V_SYNCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|V_SYNCH~7_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|V_SYNCH~q\);

-- Location: LCCOMB_X49_Y51_N28
\CTRL|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan3~9_combout\ = ((!\CTRL|h_cnt\(8) & !\CTRL|h_cnt\(7))) # (!\CTRL|h_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|h_cnt\(8),
	datac => \CTRL|h_cnt\(7),
	datad => \CTRL|h_cnt\(9),
	combout => \CTRL|LessThan3~9_combout\);

-- Location: LCCOMB_X47_Y49_N26
\CTRL|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|LessThan4~1_combout\ = (\CTRL|v_cnt\(31)) # ((!\CTRL|v_cnt\(9) & (\CTRL|Equal2~7_combout\ & !\CTRL|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|v_cnt\(9),
	datab => \CTRL|v_cnt\(31),
	datac => \CTRL|Equal2~7_combout\,
	datad => \CTRL|LessThan4~0_combout\,
	combout => \CTRL|LessThan4~1_combout\);

-- Location: LCCOMB_X49_Y51_N18
\CTRL|vga_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL|vga_proc~0_combout\ = ((!\CTRL|h_cnt\(31) & ((!\CTRL|LessThan3~9_combout\) # (!\CTRL|LessThan3~7_combout\)))) # (!\CTRL|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|LessThan3~7_combout\,
	datab => \CTRL|LessThan3~9_combout\,
	datac => \CTRL|LessThan4~1_combout\,
	datad => \CTRL|h_cnt\(31),
	combout => \CTRL|vga_proc~0_combout\);

-- Location: FF_X49_Y51_N19
\CTRL|data_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CD|int_o~clkctrl_outclk\,
	d => \CTRL|vga_proc~0_combout\,
	ena => \ctrl_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|data_off~q\);

-- Location: IOIBUF_X51_Y54_N22
\fb_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_en,
	o => \fb_en~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\fb_we~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_we,
	o => \fb_we~input_o\);

-- Location: IOIBUF_X78_Y40_N1
\fb_din[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_din(0),
	o => \fb_din[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\fb_din[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_din(1),
	o => \fb_din[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\fb_din[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fb_din(2),
	o => \fb_din[2]~input_o\);

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

ww_H_SYNCH <= \H_SYNCH~output_o\;

ww_V_SYNCH <= \V_SYNCH~output_o\;

ww_vga_out(0) <= \vga_out[0]~output_o\;

ww_vga_out(1) <= \vga_out[1]~output_o\;

ww_vga_out(2) <= \vga_out[2]~output_o\;

ww_vga_out(3) <= \vga_out[3]~output_o\;

ww_vga_out(4) <= \vga_out[4]~output_o\;

ww_vga_out(5) <= \vga_out[5]~output_o\;

ww_vga_out(6) <= \vga_out[6]~output_o\;

ww_vga_out(7) <= \vga_out[7]~output_o\;

ww_vga_out(8) <= \vga_out[8]~output_o\;

ww_vga_out(9) <= \vga_out[9]~output_o\;

ww_vga_out(10) <= \vga_out[10]~output_o\;

ww_vga_out(11) <= \vga_out[11]~output_o\;
END structure;


