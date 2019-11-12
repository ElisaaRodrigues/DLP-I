-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "08/07/2019 11:54:32"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	COUNTER IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	LOAD : IN std_logic;
	DATA : IN std_logic_vector(31 DOWNTO 0);
	Q : OUT std_logic_vector(31 DOWNTO 0)
	);
END COUNTER;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[19]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[20]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[21]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[22]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[23]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[24]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[25]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[26]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[28]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[29]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[30]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[10]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[17]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[19]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[20]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[23]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[24]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[25]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[26]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[27]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[28]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[29]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[30]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[31]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF COUNTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_DATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(31 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Q[16]~output_o\ : std_logic;
SIGNAL \Q[17]~output_o\ : std_logic;
SIGNAL \Q[18]~output_o\ : std_logic;
SIGNAL \Q[19]~output_o\ : std_logic;
SIGNAL \Q[20]~output_o\ : std_logic;
SIGNAL \Q[21]~output_o\ : std_logic;
SIGNAL \Q[22]~output_o\ : std_logic;
SIGNAL \Q[23]~output_o\ : std_logic;
SIGNAL \Q[24]~output_o\ : std_logic;
SIGNAL \Q[25]~output_o\ : std_logic;
SIGNAL \Q[26]~output_o\ : std_logic;
SIGNAL \Q[27]~output_o\ : std_logic;
SIGNAL \Q[28]~output_o\ : std_logic;
SIGNAL \Q[29]~output_o\ : std_logic;
SIGNAL \Q[30]~output_o\ : std_logic;
SIGNAL \Q[31]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CNT[0]~32_combout\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \CNT[0]~33\ : std_logic;
SIGNAL \CNT[1]~34_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \CNT[1]~35\ : std_logic;
SIGNAL \CNT[2]~36_combout\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \CNT[2]~37\ : std_logic;
SIGNAL \CNT[3]~38_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \CNT[3]~39\ : std_logic;
SIGNAL \CNT[4]~40_combout\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \CNT[4]~41\ : std_logic;
SIGNAL \CNT[5]~42_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \CNT[5]~43\ : std_logic;
SIGNAL \CNT[6]~44_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \CNT[6]~45\ : std_logic;
SIGNAL \CNT[7]~46_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \CNT[7]~47\ : std_logic;
SIGNAL \CNT[8]~48_combout\ : std_logic;
SIGNAL \DATA[8]~input_o\ : std_logic;
SIGNAL \CNT[8]~49\ : std_logic;
SIGNAL \CNT[9]~50_combout\ : std_logic;
SIGNAL \DATA[9]~input_o\ : std_logic;
SIGNAL \CNT[9]~51\ : std_logic;
SIGNAL \CNT[10]~52_combout\ : std_logic;
SIGNAL \DATA[10]~input_o\ : std_logic;
SIGNAL \CNT[10]~53\ : std_logic;
SIGNAL \CNT[11]~54_combout\ : std_logic;
SIGNAL \DATA[11]~input_o\ : std_logic;
SIGNAL \CNT[11]~55\ : std_logic;
SIGNAL \CNT[12]~56_combout\ : std_logic;
SIGNAL \DATA[12]~input_o\ : std_logic;
SIGNAL \CNT[12]~57\ : std_logic;
SIGNAL \CNT[13]~58_combout\ : std_logic;
SIGNAL \DATA[13]~input_o\ : std_logic;
SIGNAL \CNT[13]~59\ : std_logic;
SIGNAL \CNT[14]~60_combout\ : std_logic;
SIGNAL \DATA[14]~input_o\ : std_logic;
SIGNAL \CNT[14]~61\ : std_logic;
SIGNAL \CNT[15]~62_combout\ : std_logic;
SIGNAL \DATA[15]~input_o\ : std_logic;
SIGNAL \CNT[15]~63\ : std_logic;
SIGNAL \CNT[16]~64_combout\ : std_logic;
SIGNAL \DATA[16]~input_o\ : std_logic;
SIGNAL \CNT[16]~65\ : std_logic;
SIGNAL \CNT[17]~66_combout\ : std_logic;
SIGNAL \DATA[17]~input_o\ : std_logic;
SIGNAL \CNT[17]~67\ : std_logic;
SIGNAL \CNT[18]~68_combout\ : std_logic;
SIGNAL \DATA[18]~input_o\ : std_logic;
SIGNAL \CNT[18]~69\ : std_logic;
SIGNAL \CNT[19]~70_combout\ : std_logic;
SIGNAL \DATA[19]~input_o\ : std_logic;
SIGNAL \CNT[19]~71\ : std_logic;
SIGNAL \CNT[20]~72_combout\ : std_logic;
SIGNAL \DATA[20]~input_o\ : std_logic;
SIGNAL \CNT[20]~73\ : std_logic;
SIGNAL \CNT[21]~74_combout\ : std_logic;
SIGNAL \DATA[21]~input_o\ : std_logic;
SIGNAL \CNT[21]~75\ : std_logic;
SIGNAL \CNT[22]~76_combout\ : std_logic;
SIGNAL \DATA[22]~input_o\ : std_logic;
SIGNAL \CNT[22]~77\ : std_logic;
SIGNAL \CNT[23]~78_combout\ : std_logic;
SIGNAL \DATA[23]~input_o\ : std_logic;
SIGNAL \CNT[23]~79\ : std_logic;
SIGNAL \CNT[24]~80_combout\ : std_logic;
SIGNAL \DATA[24]~input_o\ : std_logic;
SIGNAL \CNT[24]~81\ : std_logic;
SIGNAL \CNT[25]~82_combout\ : std_logic;
SIGNAL \DATA[25]~input_o\ : std_logic;
SIGNAL \CNT[25]~83\ : std_logic;
SIGNAL \CNT[26]~84_combout\ : std_logic;
SIGNAL \DATA[26]~input_o\ : std_logic;
SIGNAL \CNT[26]~85\ : std_logic;
SIGNAL \CNT[27]~86_combout\ : std_logic;
SIGNAL \DATA[27]~input_o\ : std_logic;
SIGNAL \CNT[27]~87\ : std_logic;
SIGNAL \CNT[28]~88_combout\ : std_logic;
SIGNAL \DATA[28]~input_o\ : std_logic;
SIGNAL \CNT[28]~89\ : std_logic;
SIGNAL \CNT[29]~90_combout\ : std_logic;
SIGNAL \DATA[29]~input_o\ : std_logic;
SIGNAL \CNT[29]~91\ : std_logic;
SIGNAL \CNT[30]~92_combout\ : std_logic;
SIGNAL \DATA[30]~input_o\ : std_logic;
SIGNAL \CNT[30]~93\ : std_logic;
SIGNAL \CNT[31]~94_combout\ : std_logic;
SIGNAL \DATA[31]~input_o\ : std_logic;
SIGNAL CNT : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_LOAD <= LOAD;
ww_DATA <= DATA;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOOBUF_X52_Y27_N9
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\Q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\Q[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(8),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\Q[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(9),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\Q[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(10),
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\Q[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(11),
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\Q[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(12),
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\Q[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(13),
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\Q[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(14),
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\Q[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(15),
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\Q[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(16),
	devoe => ww_devoe,
	o => \Q[16]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\Q[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(17),
	devoe => ww_devoe,
	o => \Q[17]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\Q[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(18),
	devoe => ww_devoe,
	o => \Q[18]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\Q[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(19),
	devoe => ww_devoe,
	o => \Q[19]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\Q[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(20),
	devoe => ww_devoe,
	o => \Q[20]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\Q[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(21),
	devoe => ww_devoe,
	o => \Q[21]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\Q[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(22),
	devoe => ww_devoe,
	o => \Q[22]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\Q[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(23),
	devoe => ww_devoe,
	o => \Q[23]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\Q[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(24),
	devoe => ww_devoe,
	o => \Q[24]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\Q[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(25),
	devoe => ww_devoe,
	o => \Q[25]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\Q[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(26),
	devoe => ww_devoe,
	o => \Q[26]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\Q[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(27),
	devoe => ww_devoe,
	o => \Q[27]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\Q[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(28),
	devoe => ww_devoe,
	o => \Q[28]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\Q[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(29),
	devoe => ww_devoe,
	o => \Q[29]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\Q[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(30),
	devoe => ww_devoe,
	o => \Q[30]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\Q[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT(31),
	devoe => ww_devoe,
	o => \Q[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X48_Y38_N0
\CNT[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[0]~32_combout\ = CNT(0) $ (VCC)
-- \CNT[0]~33\ = CARRY(CNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT(0),
	datad => VCC,
	combout => \CNT[0]~32_combout\,
	cout => \CNT[0]~33\);

-- Location: IOIBUF_X29_Y41_N8
\DATA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(0),
	o => \DATA[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: IOIBUF_X50_Y41_N8
\LOAD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: FF_X48_Y38_N1
\CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[0]~32_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(0));

-- Location: LCCOMB_X48_Y38_N2
\CNT[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[1]~34_combout\ = (CNT(1) & (!\CNT[0]~33\)) # (!CNT(1) & ((\CNT[0]~33\) # (GND)))
-- \CNT[1]~35\ = CARRY((!\CNT[0]~33\) # (!CNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(1),
	datad => VCC,
	cin => \CNT[0]~33\,
	combout => \CNT[1]~34_combout\,
	cout => \CNT[1]~35\);

-- Location: IOIBUF_X29_Y41_N1
\DATA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(1),
	o => \DATA[1]~input_o\);

-- Location: FF_X48_Y38_N3
\CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[1]~34_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(1));

-- Location: LCCOMB_X48_Y38_N4
\CNT[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[2]~36_combout\ = (CNT(2) & (\CNT[1]~35\ $ (GND))) # (!CNT(2) & (!\CNT[1]~35\ & VCC))
-- \CNT[2]~37\ = CARRY((CNT(2) & !\CNT[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(2),
	datad => VCC,
	cin => \CNT[1]~35\,
	combout => \CNT[2]~36_combout\,
	cout => \CNT[2]~37\);

-- Location: IOIBUF_X52_Y15_N8
\DATA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(2),
	o => \DATA[2]~input_o\);

-- Location: FF_X48_Y38_N5
\CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[2]~36_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(2));

-- Location: LCCOMB_X48_Y38_N6
\CNT[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[3]~38_combout\ = (CNT(3) & (!\CNT[2]~37\)) # (!CNT(3) & ((\CNT[2]~37\) # (GND)))
-- \CNT[3]~39\ = CARRY((!\CNT[2]~37\) # (!CNT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(3),
	datad => VCC,
	cin => \CNT[2]~37\,
	combout => \CNT[3]~38_combout\,
	cout => \CNT[3]~39\);

-- Location: IOIBUF_X31_Y41_N22
\DATA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X48_Y38_N7
\CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[3]~38_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(3));

-- Location: LCCOMB_X48_Y38_N8
\CNT[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[4]~40_combout\ = (CNT(4) & (\CNT[3]~39\ $ (GND))) # (!CNT(4) & (!\CNT[3]~39\ & VCC))
-- \CNT[4]~41\ = CARRY((CNT(4) & !\CNT[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(4),
	datad => VCC,
	cin => \CNT[3]~39\,
	combout => \CNT[4]~40_combout\,
	cout => \CNT[4]~41\);

-- Location: IOIBUF_X21_Y41_N8
\DATA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(4),
	o => \DATA[4]~input_o\);

-- Location: FF_X48_Y38_N9
\CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[4]~40_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(4));

-- Location: LCCOMB_X48_Y38_N10
\CNT[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[5]~42_combout\ = (CNT(5) & (!\CNT[4]~41\)) # (!CNT(5) & ((\CNT[4]~41\) # (GND)))
-- \CNT[5]~43\ = CARRY((!\CNT[4]~41\) # (!CNT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(5),
	datad => VCC,
	cin => \CNT[4]~41\,
	combout => \CNT[5]~42_combout\,
	cout => \CNT[5]~43\);

-- Location: IOIBUF_X52_Y31_N8
\DATA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(5),
	o => \DATA[5]~input_o\);

-- Location: FF_X48_Y38_N11
\CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[5]~42_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(5));

-- Location: LCCOMB_X48_Y38_N12
\CNT[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[6]~44_combout\ = (CNT(6) & (\CNT[5]~43\ $ (GND))) # (!CNT(6) & (!\CNT[5]~43\ & VCC))
-- \CNT[6]~45\ = CARRY((CNT(6) & !\CNT[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(6),
	datad => VCC,
	cin => \CNT[5]~43\,
	combout => \CNT[6]~44_combout\,
	cout => \CNT[6]~45\);

-- Location: IOIBUF_X46_Y41_N22
\DATA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(6),
	o => \DATA[6]~input_o\);

-- Location: FF_X48_Y38_N13
\CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[6]~44_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(6));

-- Location: LCCOMB_X48_Y38_N14
\CNT[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[7]~46_combout\ = (CNT(7) & (!\CNT[6]~45\)) # (!CNT(7) & ((\CNT[6]~45\) # (GND)))
-- \CNT[7]~47\ = CARRY((!\CNT[6]~45\) # (!CNT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(7),
	datad => VCC,
	cin => \CNT[6]~45\,
	combout => \CNT[7]~46_combout\,
	cout => \CNT[7]~47\);

-- Location: IOIBUF_X31_Y41_N15
\DATA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(7),
	o => \DATA[7]~input_o\);

-- Location: FF_X48_Y38_N15
\CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[7]~46_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(7));

-- Location: LCCOMB_X48_Y38_N16
\CNT[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[8]~48_combout\ = (CNT(8) & (\CNT[7]~47\ $ (GND))) # (!CNT(8) & (!\CNT[7]~47\ & VCC))
-- \CNT[8]~49\ = CARRY((CNT(8) & !\CNT[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(8),
	datad => VCC,
	cin => \CNT[7]~47\,
	combout => \CNT[8]~48_combout\,
	cout => \CNT[8]~49\);

-- Location: IOIBUF_X41_Y41_N22
\DATA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(8),
	o => \DATA[8]~input_o\);

-- Location: FF_X48_Y38_N17
\CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[8]~48_combout\,
	asdata => \DATA[8]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(8));

-- Location: LCCOMB_X48_Y38_N18
\CNT[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[9]~50_combout\ = (CNT(9) & (!\CNT[8]~49\)) # (!CNT(9) & ((\CNT[8]~49\) # (GND)))
-- \CNT[9]~51\ = CARRY((!\CNT[8]~49\) # (!CNT(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(9),
	datad => VCC,
	cin => \CNT[8]~49\,
	combout => \CNT[9]~50_combout\,
	cout => \CNT[9]~51\);

-- Location: IOIBUF_X52_Y27_N1
\DATA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(9),
	o => \DATA[9]~input_o\);

-- Location: FF_X48_Y38_N19
\CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[9]~50_combout\,
	asdata => \DATA[9]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(9));

-- Location: LCCOMB_X48_Y38_N20
\CNT[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[10]~52_combout\ = (CNT(10) & (\CNT[9]~51\ $ (GND))) # (!CNT(10) & (!\CNT[9]~51\ & VCC))
-- \CNT[10]~53\ = CARRY((CNT(10) & !\CNT[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(10),
	datad => VCC,
	cin => \CNT[9]~51\,
	combout => \CNT[10]~52_combout\,
	cout => \CNT[10]~53\);

-- Location: IOIBUF_X50_Y41_N1
\DATA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(10),
	o => \DATA[10]~input_o\);

-- Location: FF_X48_Y38_N21
\CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[10]~52_combout\,
	asdata => \DATA[10]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(10));

-- Location: LCCOMB_X48_Y38_N22
\CNT[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[11]~54_combout\ = (CNT(11) & (!\CNT[10]~53\)) # (!CNT(11) & ((\CNT[10]~53\) # (GND)))
-- \CNT[11]~55\ = CARRY((!\CNT[10]~53\) # (!CNT(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(11),
	datad => VCC,
	cin => \CNT[10]~53\,
	combout => \CNT[11]~54_combout\,
	cout => \CNT[11]~55\);

-- Location: IOIBUF_X48_Y41_N8
\DATA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(11),
	o => \DATA[11]~input_o\);

-- Location: FF_X48_Y38_N23
\CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[11]~54_combout\,
	asdata => \DATA[11]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(11));

-- Location: LCCOMB_X48_Y38_N24
\CNT[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[12]~56_combout\ = (CNT(12) & (\CNT[11]~55\ $ (GND))) # (!CNT(12) & (!\CNT[11]~55\ & VCC))
-- \CNT[12]~57\ = CARRY((CNT(12) & !\CNT[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(12),
	datad => VCC,
	cin => \CNT[11]~55\,
	combout => \CNT[12]~56_combout\,
	cout => \CNT[12]~57\);

-- Location: IOIBUF_X52_Y15_N1
\DATA[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(12),
	o => \DATA[12]~input_o\);

-- Location: FF_X48_Y38_N25
\CNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[12]~56_combout\,
	asdata => \DATA[12]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(12));

-- Location: LCCOMB_X48_Y38_N26
\CNT[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[13]~58_combout\ = (CNT(13) & (!\CNT[12]~57\)) # (!CNT(13) & ((\CNT[12]~57\) # (GND)))
-- \CNT[13]~59\ = CARRY((!\CNT[12]~57\) # (!CNT(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(13),
	datad => VCC,
	cin => \CNT[12]~57\,
	combout => \CNT[13]~58_combout\,
	cout => \CNT[13]~59\);

-- Location: IOIBUF_X46_Y41_N15
\DATA[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(13),
	o => \DATA[13]~input_o\);

-- Location: FF_X48_Y38_N27
\CNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[13]~58_combout\,
	asdata => \DATA[13]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(13));

-- Location: LCCOMB_X48_Y38_N28
\CNT[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[14]~60_combout\ = (CNT(14) & (\CNT[13]~59\ $ (GND))) # (!CNT(14) & (!\CNT[13]~59\ & VCC))
-- \CNT[14]~61\ = CARRY((CNT(14) & !\CNT[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(14),
	datad => VCC,
	cin => \CNT[13]~59\,
	combout => \CNT[14]~60_combout\,
	cout => \CNT[14]~61\);

-- Location: IOIBUF_X52_Y11_N1
\DATA[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(14),
	o => \DATA[14]~input_o\);

-- Location: FF_X48_Y38_N29
\CNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[14]~60_combout\,
	asdata => \DATA[14]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(14));

-- Location: LCCOMB_X48_Y38_N30
\CNT[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[15]~62_combout\ = (CNT(15) & (!\CNT[14]~61\)) # (!CNT(15) & ((\CNT[14]~61\) # (GND)))
-- \CNT[15]~63\ = CARRY((!\CNT[14]~61\) # (!CNT(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(15),
	datad => VCC,
	cin => \CNT[14]~61\,
	combout => \CNT[15]~62_combout\,
	cout => \CNT[15]~63\);

-- Location: IOIBUF_X48_Y41_N1
\DATA[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(15),
	o => \DATA[15]~input_o\);

-- Location: FF_X48_Y38_N31
\CNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[15]~62_combout\,
	asdata => \DATA[15]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(15));

-- Location: LCCOMB_X48_Y37_N0
\CNT[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[16]~64_combout\ = (CNT(16) & (\CNT[15]~63\ $ (GND))) # (!CNT(16) & (!\CNT[15]~63\ & VCC))
-- \CNT[16]~65\ = CARRY((CNT(16) & !\CNT[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(16),
	datad => VCC,
	cin => \CNT[15]~63\,
	combout => \CNT[16]~64_combout\,
	cout => \CNT[16]~65\);

-- Location: IOIBUF_X52_Y30_N8
\DATA[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(16),
	o => \DATA[16]~input_o\);

-- Location: FF_X48_Y37_N1
\CNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[16]~64_combout\,
	asdata => \DATA[16]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(16));

-- Location: LCCOMB_X48_Y37_N2
\CNT[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[17]~66_combout\ = (CNT(17) & (!\CNT[16]~65\)) # (!CNT(17) & ((\CNT[16]~65\) # (GND)))
-- \CNT[17]~67\ = CARRY((!\CNT[16]~65\) # (!CNT(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(17),
	datad => VCC,
	cin => \CNT[16]~65\,
	combout => \CNT[17]~66_combout\,
	cout => \CNT[17]~67\);

-- Location: IOIBUF_X52_Y32_N15
\DATA[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(17),
	o => \DATA[17]~input_o\);

-- Location: FF_X48_Y37_N3
\CNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[17]~66_combout\,
	asdata => \DATA[17]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(17));

-- Location: LCCOMB_X48_Y37_N4
\CNT[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[18]~68_combout\ = (CNT(18) & (\CNT[17]~67\ $ (GND))) # (!CNT(18) & (!\CNT[17]~67\ & VCC))
-- \CNT[18]~69\ = CARRY((CNT(18) & !\CNT[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(18),
	datad => VCC,
	cin => \CNT[17]~67\,
	combout => \CNT[18]~68_combout\,
	cout => \CNT[18]~69\);

-- Location: IOIBUF_X52_Y28_N8
\DATA[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(18),
	o => \DATA[18]~input_o\);

-- Location: FF_X48_Y37_N5
\CNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[18]~68_combout\,
	asdata => \DATA[18]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(18));

-- Location: LCCOMB_X48_Y37_N6
\CNT[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[19]~70_combout\ = (CNT(19) & (!\CNT[18]~69\)) # (!CNT(19) & ((\CNT[18]~69\) # (GND)))
-- \CNT[19]~71\ = CARRY((!\CNT[18]~69\) # (!CNT(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(19),
	datad => VCC,
	cin => \CNT[18]~69\,
	combout => \CNT[19]~70_combout\,
	cout => \CNT[19]~71\);

-- Location: IOIBUF_X52_Y23_N1
\DATA[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(19),
	o => \DATA[19]~input_o\);

-- Location: FF_X48_Y37_N7
\CNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[19]~70_combout\,
	asdata => \DATA[19]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(19));

-- Location: LCCOMB_X48_Y37_N8
\CNT[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[20]~72_combout\ = (CNT(20) & (\CNT[19]~71\ $ (GND))) # (!CNT(20) & (!\CNT[19]~71\ & VCC))
-- \CNT[20]~73\ = CARRY((CNT(20) & !\CNT[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(20),
	datad => VCC,
	cin => \CNT[19]~71\,
	combout => \CNT[20]~72_combout\,
	cout => \CNT[20]~73\);

-- Location: IOIBUF_X52_Y13_N1
\DATA[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(20),
	o => \DATA[20]~input_o\);

-- Location: FF_X48_Y37_N9
\CNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[20]~72_combout\,
	asdata => \DATA[20]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(20));

-- Location: LCCOMB_X48_Y37_N10
\CNT[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[21]~74_combout\ = (CNT(21) & (!\CNT[20]~73\)) # (!CNT(21) & ((\CNT[20]~73\) # (GND)))
-- \CNT[21]~75\ = CARRY((!\CNT[20]~73\) # (!CNT(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(21),
	datad => VCC,
	cin => \CNT[20]~73\,
	combout => \CNT[21]~74_combout\,
	cout => \CNT[21]~75\);

-- Location: IOIBUF_X41_Y41_N15
\DATA[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(21),
	o => \DATA[21]~input_o\);

-- Location: FF_X48_Y37_N11
\CNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[21]~74_combout\,
	asdata => \DATA[21]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(21));

-- Location: LCCOMB_X48_Y37_N12
\CNT[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[22]~76_combout\ = (CNT(22) & (\CNT[21]~75\ $ (GND))) # (!CNT(22) & (!\CNT[21]~75\ & VCC))
-- \CNT[22]~77\ = CARRY((CNT(22) & !\CNT[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(22),
	datad => VCC,
	cin => \CNT[21]~75\,
	combout => \CNT[22]~76_combout\,
	cout => \CNT[22]~77\);

-- Location: IOIBUF_X52_Y32_N8
\DATA[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(22),
	o => \DATA[22]~input_o\);

-- Location: FF_X48_Y37_N13
\CNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[22]~76_combout\,
	asdata => \DATA[22]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(22));

-- Location: LCCOMB_X48_Y37_N14
\CNT[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[23]~78_combout\ = (CNT(23) & (!\CNT[22]~77\)) # (!CNT(23) & ((\CNT[22]~77\) # (GND)))
-- \CNT[23]~79\ = CARRY((!\CNT[22]~77\) # (!CNT(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(23),
	datad => VCC,
	cin => \CNT[22]~77\,
	combout => \CNT[23]~78_combout\,
	cout => \CNT[23]~79\);

-- Location: IOIBUF_X52_Y23_N8
\DATA[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(23),
	o => \DATA[23]~input_o\);

-- Location: FF_X48_Y37_N15
\CNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[23]~78_combout\,
	asdata => \DATA[23]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(23));

-- Location: LCCOMB_X48_Y37_N16
\CNT[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[24]~80_combout\ = (CNT(24) & (\CNT[23]~79\ $ (GND))) # (!CNT(24) & (!\CNT[23]~79\ & VCC))
-- \CNT[24]~81\ = CARRY((CNT(24) & !\CNT[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(24),
	datad => VCC,
	cin => \CNT[23]~79\,
	combout => \CNT[24]~80_combout\,
	cout => \CNT[24]~81\);

-- Location: IOIBUF_X27_Y41_N1
\DATA[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(24),
	o => \DATA[24]~input_o\);

-- Location: FF_X48_Y37_N17
\CNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[24]~80_combout\,
	asdata => \DATA[24]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(24));

-- Location: LCCOMB_X48_Y37_N18
\CNT[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[25]~82_combout\ = (CNT(25) & (!\CNT[24]~81\)) # (!CNT(25) & ((\CNT[24]~81\) # (GND)))
-- \CNT[25]~83\ = CARRY((!\CNT[24]~81\) # (!CNT(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(25),
	datad => VCC,
	cin => \CNT[24]~81\,
	combout => \CNT[25]~82_combout\,
	cout => \CNT[25]~83\);

-- Location: IOIBUF_X27_Y41_N8
\DATA[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(25),
	o => \DATA[25]~input_o\);

-- Location: FF_X48_Y37_N19
\CNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[25]~82_combout\,
	asdata => \DATA[25]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(25));

-- Location: LCCOMB_X48_Y37_N20
\CNT[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[26]~84_combout\ = (CNT(26) & (\CNT[25]~83\ $ (GND))) # (!CNT(26) & (!\CNT[25]~83\ & VCC))
-- \CNT[26]~85\ = CARRY((CNT(26) & !\CNT[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(26),
	datad => VCC,
	cin => \CNT[25]~83\,
	combout => \CNT[26]~84_combout\,
	cout => \CNT[26]~85\);

-- Location: IOIBUF_X52_Y16_N8
\DATA[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(26),
	o => \DATA[26]~input_o\);

-- Location: FF_X48_Y37_N21
\CNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[26]~84_combout\,
	asdata => \DATA[26]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(26));

-- Location: LCCOMB_X48_Y37_N22
\CNT[27]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[27]~86_combout\ = (CNT(27) & (!\CNT[26]~85\)) # (!CNT(27) & ((\CNT[26]~85\) # (GND)))
-- \CNT[27]~87\ = CARRY((!\CNT[26]~85\) # (!CNT(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(27),
	datad => VCC,
	cin => \CNT[26]~85\,
	combout => \CNT[27]~86_combout\,
	cout => \CNT[27]~87\);

-- Location: IOIBUF_X52_Y25_N1
\DATA[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(27),
	o => \DATA[27]~input_o\);

-- Location: FF_X48_Y37_N23
\CNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[27]~86_combout\,
	asdata => \DATA[27]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(27));

-- Location: LCCOMB_X48_Y37_N24
\CNT[28]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[28]~88_combout\ = (CNT(28) & (\CNT[27]~87\ $ (GND))) # (!CNT(28) & (!\CNT[27]~87\ & VCC))
-- \CNT[28]~89\ = CARRY((CNT(28) & !\CNT[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(28),
	datad => VCC,
	cin => \CNT[27]~87\,
	combout => \CNT[28]~88_combout\,
	cout => \CNT[28]~89\);

-- Location: IOIBUF_X52_Y16_N1
\DATA[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(28),
	o => \DATA[28]~input_o\);

-- Location: FF_X48_Y37_N25
\CNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[28]~88_combout\,
	asdata => \DATA[28]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(28));

-- Location: LCCOMB_X48_Y37_N26
\CNT[29]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[29]~90_combout\ = (CNT(29) & (!\CNT[28]~89\)) # (!CNT(29) & ((\CNT[28]~89\) # (GND)))
-- \CNT[29]~91\ = CARRY((!\CNT[28]~89\) # (!CNT(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(29),
	datad => VCC,
	cin => \CNT[28]~89\,
	combout => \CNT[29]~90_combout\,
	cout => \CNT[29]~91\);

-- Location: IOIBUF_X52_Y32_N1
\DATA[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(29),
	o => \DATA[29]~input_o\);

-- Location: FF_X48_Y37_N27
\CNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[29]~90_combout\,
	asdata => \DATA[29]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(29));

-- Location: LCCOMB_X48_Y37_N28
\CNT[30]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[30]~92_combout\ = (CNT(30) & (\CNT[29]~91\ $ (GND))) # (!CNT(30) & (!\CNT[29]~91\ & VCC))
-- \CNT[30]~93\ = CARRY((CNT(30) & !\CNT[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT(30),
	datad => VCC,
	cin => \CNT[29]~91\,
	combout => \CNT[30]~92_combout\,
	cout => \CNT[30]~93\);

-- Location: IOIBUF_X52_Y28_N1
\DATA[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(30),
	o => \DATA[30]~input_o\);

-- Location: FF_X48_Y37_N29
\CNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[30]~92_combout\,
	asdata => \DATA[30]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(30));

-- Location: LCCOMB_X48_Y37_N30
\CNT[31]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CNT[31]~94_combout\ = CNT(31) $ (\CNT[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT(31),
	cin => \CNT[30]~93\,
	combout => \CNT[31]~94_combout\);

-- Location: IOIBUF_X52_Y30_N1
\DATA[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(31),
	o => \DATA[31]~input_o\);

-- Location: FF_X48_Y37_N31
\CNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT[31]~94_combout\,
	asdata => \DATA[31]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT(31));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;

ww_Q(16) <= \Q[16]~output_o\;

ww_Q(17) <= \Q[17]~output_o\;

ww_Q(18) <= \Q[18]~output_o\;

ww_Q(19) <= \Q[19]~output_o\;

ww_Q(20) <= \Q[20]~output_o\;

ww_Q(21) <= \Q[21]~output_o\;

ww_Q(22) <= \Q[22]~output_o\;

ww_Q(23) <= \Q[23]~output_o\;

ww_Q(24) <= \Q[24]~output_o\;

ww_Q(25) <= \Q[25]~output_o\;

ww_Q(26) <= \Q[26]~output_o\;

ww_Q(27) <= \Q[27]~output_o\;

ww_Q(28) <= \Q[28]~output_o\;

ww_Q(29) <= \Q[29]~output_o\;

ww_Q(30) <= \Q[30]~output_o\;

ww_Q(31) <= \Q[31]~output_o\;
END structure;


