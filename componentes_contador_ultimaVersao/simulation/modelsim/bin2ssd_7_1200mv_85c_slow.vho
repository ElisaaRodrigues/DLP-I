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

-- DATE "10/25/2019 14:10:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	timer0_9H IS
    PORT (
	clk_50MHz : IN std_logic;
	rst : IN std_logic;
	ssd_unidade : OUT std_logic_vector(6 DOWNTO 0);
	ssd_dezena : OUT std_logic_vector(6 DOWNTO 0);
	ssd_centena : OUT std_logic_vector(6 DOWNTO 0)
	);
END timer0_9H;

-- Design Ports Information
-- ssd_unidade[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_unidade[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_dezena[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_centena[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer0_9H IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ssd_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_centena : std_logic_vector(6 DOWNTO 0);
SIGNAL \contadorDezena|Equal1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|Add0~0_combout\ : std_logic;
SIGNAL \c3|Add0~1\ : std_logic;
SIGNAL \c3|Add0~2_combout\ : std_logic;
SIGNAL \c3|Add0~3\ : std_logic;
SIGNAL \c3|Add0~4_combout\ : std_logic;
SIGNAL \c3|Add0~5\ : std_logic;
SIGNAL \c3|Add0~6_combout\ : std_logic;
SIGNAL \c3|Add0~7\ : std_logic;
SIGNAL \c3|Add0~8_combout\ : std_logic;
SIGNAL \c3|Add0~9\ : std_logic;
SIGNAL \c3|Add0~10_combout\ : std_logic;
SIGNAL \c3|Add0~11\ : std_logic;
SIGNAL \c3|Add0~12_combout\ : std_logic;
SIGNAL \c3|Add0~13\ : std_logic;
SIGNAL \c3|Add0~14_combout\ : std_logic;
SIGNAL \c3|Add0~15\ : std_logic;
SIGNAL \c3|Add0~16_combout\ : std_logic;
SIGNAL \c3|Add0~17\ : std_logic;
SIGNAL \c3|Add0~18_combout\ : std_logic;
SIGNAL \c3|Add0~19\ : std_logic;
SIGNAL \c3|Add0~20_combout\ : std_logic;
SIGNAL \c3|Add0~21\ : std_logic;
SIGNAL \c3|Add0~22_combout\ : std_logic;
SIGNAL \c3|Add0~23\ : std_logic;
SIGNAL \c3|Add0~24_combout\ : std_logic;
SIGNAL \c3|Add0~25\ : std_logic;
SIGNAL \c3|Add0~26_combout\ : std_logic;
SIGNAL \c3|Add0~27\ : std_logic;
SIGNAL \c3|Add0~28_combout\ : std_logic;
SIGNAL \c3|Add0~29\ : std_logic;
SIGNAL \c3|Add0~30_combout\ : std_logic;
SIGNAL \c3|Add0~31\ : std_logic;
SIGNAL \c3|Add0~32_combout\ : std_logic;
SIGNAL \c3|Add0~33\ : std_logic;
SIGNAL \c3|Add0~34_combout\ : std_logic;
SIGNAL \c3|Add0~35\ : std_logic;
SIGNAL \c3|Add0~36_combout\ : std_logic;
SIGNAL \c3|Add0~37\ : std_logic;
SIGNAL \c3|Add0~38_combout\ : std_logic;
SIGNAL \c3|Add0~39\ : std_logic;
SIGNAL \c3|Add0~40_combout\ : std_logic;
SIGNAL \c3|Add0~41\ : std_logic;
SIGNAL \c3|Add0~42_combout\ : std_logic;
SIGNAL \c3|Add0~43\ : std_logic;
SIGNAL \c3|Add0~44_combout\ : std_logic;
SIGNAL \c3|Add0~45\ : std_logic;
SIGNAL \c3|Add0~46_combout\ : std_logic;
SIGNAL \c3|Add0~47\ : std_logic;
SIGNAL \c3|Add0~48_combout\ : std_logic;
SIGNAL \c3|Add0~49\ : std_logic;
SIGNAL \c3|Add0~50_combout\ : std_logic;
SIGNAL \c3|Equal0~0_combout\ : std_logic;
SIGNAL \c3|Equal0~1_combout\ : std_logic;
SIGNAL \c3|Equal0~2_combout\ : std_logic;
SIGNAL \c3|Equal1~0_combout\ : std_logic;
SIGNAL \c3|Equal1~1_combout\ : std_logic;
SIGNAL \c3|Equal1~2_combout\ : std_logic;
SIGNAL \c3|Equal1~3_combout\ : std_logic;
SIGNAL \c3|Equal1~4_combout\ : std_logic;
SIGNAL \c3|Equal1~combout\ : std_logic;
SIGNAL \contadorUnidade|Equal1~combout\ : std_logic;
SIGNAL \contadorDezena|Equal1~combout\ : std_logic;
SIGNAL \c3|Equal0~3_combout\ : std_logic;
SIGNAL \c3|Equal0~4_combout\ : std_logic;
SIGNAL \c3|Equal0~5_combout\ : std_logic;
SIGNAL \c3|Equal0~6_combout\ : std_logic;
SIGNAL \c3|Equal0~7_combout\ : std_logic;
SIGNAL \c3|Equal0~8_combout\ : std_logic;
SIGNAL \c3|count~0_combout\ : std_logic;
SIGNAL \c3|count~1_combout\ : std_logic;
SIGNAL \c3|count~2_combout\ : std_logic;
SIGNAL \c3|count~3_combout\ : std_logic;
SIGNAL \c3|count~4_combout\ : std_logic;
SIGNAL \c3|count~5_combout\ : std_logic;
SIGNAL \c3|count~6_combout\ : std_logic;
SIGNAL \c3|count~7_combout\ : std_logic;
SIGNAL \c3|count~8_combout\ : std_logic;
SIGNAL \c3|count~9_combout\ : std_logic;
SIGNAL \c3|count~10_combout\ : std_logic;
SIGNAL \c3|count~11_combout\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \contadorDezena|Equal1~clkctrl_outclk\ : std_logic;
SIGNAL \ssd_unidade[0]~output_o\ : std_logic;
SIGNAL \ssd_unidade[1]~output_o\ : std_logic;
SIGNAL \ssd_unidade[2]~output_o\ : std_logic;
SIGNAL \ssd_unidade[3]~output_o\ : std_logic;
SIGNAL \ssd_unidade[4]~output_o\ : std_logic;
SIGNAL \ssd_unidade[5]~output_o\ : std_logic;
SIGNAL \ssd_unidade[6]~output_o\ : std_logic;
SIGNAL \ssd_dezena[0]~output_o\ : std_logic;
SIGNAL \ssd_dezena[1]~output_o\ : std_logic;
SIGNAL \ssd_dezena[2]~output_o\ : std_logic;
SIGNAL \ssd_dezena[3]~output_o\ : std_logic;
SIGNAL \ssd_dezena[4]~output_o\ : std_logic;
SIGNAL \ssd_dezena[5]~output_o\ : std_logic;
SIGNAL \ssd_dezena[6]~output_o\ : std_logic;
SIGNAL \ssd_centena[0]~output_o\ : std_logic;
SIGNAL \ssd_centena[1]~output_o\ : std_logic;
SIGNAL \ssd_centena[2]~output_o\ : std_logic;
SIGNAL \ssd_centena[3]~output_o\ : std_logic;
SIGNAL \ssd_centena[4]~output_o\ : std_logic;
SIGNAL \ssd_centena[5]~output_o\ : std_logic;
SIGNAL \ssd_centena[6]~output_o\ : std_logic;
SIGNAL \contadorUnidade|count[0]~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \contadorUnidade|count[2]~1_combout\ : std_logic;
SIGNAL \contadorUnidade|count~2_combout\ : std_logic;
SIGNAL \contadorUnidade|count~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux6~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux5~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux4~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux3~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux2~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux1~0_combout\ : std_logic;
SIGNAL \displayUnidade|Mux0~0_combout\ : std_logic;
SIGNAL \contadorDezena|count[0]~3_combout\ : std_logic;
SIGNAL \contadorDezena|count~0_combout\ : std_logic;
SIGNAL \contadorDezena|count[2]~1_combout\ : std_logic;
SIGNAL \contadorDezena|count~2_combout\ : std_logic;
SIGNAL \displayDezena|Mux6~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux5~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux4~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux3~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux2~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux1~0_combout\ : std_logic;
SIGNAL \displayDezena|Mux0~0_combout\ : std_logic;
SIGNAL \contadorCentena|count[0]~3_combout\ : std_logic;
SIGNAL \contadorCentena|count[2]~1_combout\ : std_logic;
SIGNAL \contadorCentena|count~2_combout\ : std_logic;
SIGNAL \contadorCentena|count~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux6~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux5~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux4~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux3~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux2~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux1~0_combout\ : std_logic;
SIGNAL \displayCentena|Mux0~0_combout\ : std_logic;
SIGNAL \contadorDezena|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contadorCentena|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contadorUnidade|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \displayCentena|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayDezena|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayUnidade|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_rst <= rst;
ssd_unidade <= ww_ssd_unidade;
ssd_dezena <= ww_ssd_dezena;
ssd_centena <= ww_ssd_centena;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\contadorDezena|Equal1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \contadorDezena|Equal1~combout\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\displayCentena|ALT_INV_Mux0~0_combout\ <= NOT \displayCentena|Mux0~0_combout\;
\displayDezena|ALT_INV_Mux0~0_combout\ <= NOT \displayDezena|Mux0~0_combout\;
\displayUnidade|ALT_INV_Mux0~0_combout\ <= NOT \displayUnidade|Mux0~0_combout\;

-- Location: LCCOMB_X62_Y17_N6
\c3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~0_combout\ = \c3|count\(0) $ (VCC)
-- \c3|Add0~1\ = CARRY(\c3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(0),
	datad => VCC,
	combout => \c3|Add0~0_combout\,
	cout => \c3|Add0~1\);

-- Location: LCCOMB_X62_Y17_N8
\c3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~2_combout\ = (\c3|count\(1) & (!\c3|Add0~1\)) # (!\c3|count\(1) & ((\c3|Add0~1\) # (GND)))
-- \c3|Add0~3\ = CARRY((!\c3|Add0~1\) # (!\c3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(1),
	datad => VCC,
	cin => \c3|Add0~1\,
	combout => \c3|Add0~2_combout\,
	cout => \c3|Add0~3\);

-- Location: LCCOMB_X62_Y17_N10
\c3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~4_combout\ = (\c3|count\(2) & (\c3|Add0~3\ $ (GND))) # (!\c3|count\(2) & (!\c3|Add0~3\ & VCC))
-- \c3|Add0~5\ = CARRY((\c3|count\(2) & !\c3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(2),
	datad => VCC,
	cin => \c3|Add0~3\,
	combout => \c3|Add0~4_combout\,
	cout => \c3|Add0~5\);

-- Location: LCCOMB_X62_Y17_N12
\c3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~6_combout\ = (\c3|count\(3) & (!\c3|Add0~5\)) # (!\c3|count\(3) & ((\c3|Add0~5\) # (GND)))
-- \c3|Add0~7\ = CARRY((!\c3|Add0~5\) # (!\c3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(3),
	datad => VCC,
	cin => \c3|Add0~5\,
	combout => \c3|Add0~6_combout\,
	cout => \c3|Add0~7\);

-- Location: LCCOMB_X62_Y17_N14
\c3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~8_combout\ = (\c3|count\(4) & (\c3|Add0~7\ $ (GND))) # (!\c3|count\(4) & (!\c3|Add0~7\ & VCC))
-- \c3|Add0~9\ = CARRY((\c3|count\(4) & !\c3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(4),
	datad => VCC,
	cin => \c3|Add0~7\,
	combout => \c3|Add0~8_combout\,
	cout => \c3|Add0~9\);

-- Location: LCCOMB_X62_Y17_N16
\c3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~10_combout\ = (\c3|count\(5) & (!\c3|Add0~9\)) # (!\c3|count\(5) & ((\c3|Add0~9\) # (GND)))
-- \c3|Add0~11\ = CARRY((!\c3|Add0~9\) # (!\c3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(5),
	datad => VCC,
	cin => \c3|Add0~9\,
	combout => \c3|Add0~10_combout\,
	cout => \c3|Add0~11\);

-- Location: LCCOMB_X62_Y17_N18
\c3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~12_combout\ = (\c3|count\(6) & (\c3|Add0~11\ $ (GND))) # (!\c3|count\(6) & (!\c3|Add0~11\ & VCC))
-- \c3|Add0~13\ = CARRY((\c3|count\(6) & !\c3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(6),
	datad => VCC,
	cin => \c3|Add0~11\,
	combout => \c3|Add0~12_combout\,
	cout => \c3|Add0~13\);

-- Location: LCCOMB_X62_Y17_N20
\c3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~14_combout\ = (\c3|count\(7) & (!\c3|Add0~13\)) # (!\c3|count\(7) & ((\c3|Add0~13\) # (GND)))
-- \c3|Add0~15\ = CARRY((!\c3|Add0~13\) # (!\c3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(7),
	datad => VCC,
	cin => \c3|Add0~13\,
	combout => \c3|Add0~14_combout\,
	cout => \c3|Add0~15\);

-- Location: LCCOMB_X62_Y17_N22
\c3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~16_combout\ = (\c3|count\(8) & (\c3|Add0~15\ $ (GND))) # (!\c3|count\(8) & (!\c3|Add0~15\ & VCC))
-- \c3|Add0~17\ = CARRY((\c3|count\(8) & !\c3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(8),
	datad => VCC,
	cin => \c3|Add0~15\,
	combout => \c3|Add0~16_combout\,
	cout => \c3|Add0~17\);

-- Location: LCCOMB_X62_Y17_N24
\c3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~18_combout\ = (\c3|count\(9) & (!\c3|Add0~17\)) # (!\c3|count\(9) & ((\c3|Add0~17\) # (GND)))
-- \c3|Add0~19\ = CARRY((!\c3|Add0~17\) # (!\c3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(9),
	datad => VCC,
	cin => \c3|Add0~17\,
	combout => \c3|Add0~18_combout\,
	cout => \c3|Add0~19\);

-- Location: LCCOMB_X62_Y17_N26
\c3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~20_combout\ = (\c3|count\(10) & (\c3|Add0~19\ $ (GND))) # (!\c3|count\(10) & (!\c3|Add0~19\ & VCC))
-- \c3|Add0~21\ = CARRY((\c3|count\(10) & !\c3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(10),
	datad => VCC,
	cin => \c3|Add0~19\,
	combout => \c3|Add0~20_combout\,
	cout => \c3|Add0~21\);

-- Location: LCCOMB_X62_Y17_N28
\c3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~22_combout\ = (\c3|count\(11) & (!\c3|Add0~21\)) # (!\c3|count\(11) & ((\c3|Add0~21\) # (GND)))
-- \c3|Add0~23\ = CARRY((!\c3|Add0~21\) # (!\c3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(11),
	datad => VCC,
	cin => \c3|Add0~21\,
	combout => \c3|Add0~22_combout\,
	cout => \c3|Add0~23\);

-- Location: LCCOMB_X62_Y17_N30
\c3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~24_combout\ = (\c3|count\(12) & (\c3|Add0~23\ $ (GND))) # (!\c3|count\(12) & (!\c3|Add0~23\ & VCC))
-- \c3|Add0~25\ = CARRY((\c3|count\(12) & !\c3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(12),
	datad => VCC,
	cin => \c3|Add0~23\,
	combout => \c3|Add0~24_combout\,
	cout => \c3|Add0~25\);

-- Location: LCCOMB_X62_Y16_N0
\c3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~26_combout\ = (\c3|count\(13) & (!\c3|Add0~25\)) # (!\c3|count\(13) & ((\c3|Add0~25\) # (GND)))
-- \c3|Add0~27\ = CARRY((!\c3|Add0~25\) # (!\c3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(13),
	datad => VCC,
	cin => \c3|Add0~25\,
	combout => \c3|Add0~26_combout\,
	cout => \c3|Add0~27\);

-- Location: LCCOMB_X62_Y16_N2
\c3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~28_combout\ = (\c3|count\(14) & (\c3|Add0~27\ $ (GND))) # (!\c3|count\(14) & (!\c3|Add0~27\ & VCC))
-- \c3|Add0~29\ = CARRY((\c3|count\(14) & !\c3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(14),
	datad => VCC,
	cin => \c3|Add0~27\,
	combout => \c3|Add0~28_combout\,
	cout => \c3|Add0~29\);

-- Location: LCCOMB_X62_Y16_N4
\c3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~30_combout\ = (\c3|count\(15) & (!\c3|Add0~29\)) # (!\c3|count\(15) & ((\c3|Add0~29\) # (GND)))
-- \c3|Add0~31\ = CARRY((!\c3|Add0~29\) # (!\c3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(15),
	datad => VCC,
	cin => \c3|Add0~29\,
	combout => \c3|Add0~30_combout\,
	cout => \c3|Add0~31\);

-- Location: LCCOMB_X62_Y16_N6
\c3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~32_combout\ = (\c3|count\(16) & (\c3|Add0~31\ $ (GND))) # (!\c3|count\(16) & (!\c3|Add0~31\ & VCC))
-- \c3|Add0~33\ = CARRY((\c3|count\(16) & !\c3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(16),
	datad => VCC,
	cin => \c3|Add0~31\,
	combout => \c3|Add0~32_combout\,
	cout => \c3|Add0~33\);

-- Location: LCCOMB_X62_Y16_N8
\c3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~34_combout\ = (\c3|count\(17) & (!\c3|Add0~33\)) # (!\c3|count\(17) & ((\c3|Add0~33\) # (GND)))
-- \c3|Add0~35\ = CARRY((!\c3|Add0~33\) # (!\c3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(17),
	datad => VCC,
	cin => \c3|Add0~33\,
	combout => \c3|Add0~34_combout\,
	cout => \c3|Add0~35\);

-- Location: LCCOMB_X62_Y16_N10
\c3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~36_combout\ = (\c3|count\(18) & (\c3|Add0~35\ $ (GND))) # (!\c3|count\(18) & (!\c3|Add0~35\ & VCC))
-- \c3|Add0~37\ = CARRY((\c3|count\(18) & !\c3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(18),
	datad => VCC,
	cin => \c3|Add0~35\,
	combout => \c3|Add0~36_combout\,
	cout => \c3|Add0~37\);

-- Location: LCCOMB_X62_Y16_N12
\c3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~38_combout\ = (\c3|count\(19) & (!\c3|Add0~37\)) # (!\c3|count\(19) & ((\c3|Add0~37\) # (GND)))
-- \c3|Add0~39\ = CARRY((!\c3|Add0~37\) # (!\c3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(19),
	datad => VCC,
	cin => \c3|Add0~37\,
	combout => \c3|Add0~38_combout\,
	cout => \c3|Add0~39\);

-- Location: LCCOMB_X62_Y16_N14
\c3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~40_combout\ = (\c3|count\(20) & (\c3|Add0~39\ $ (GND))) # (!\c3|count\(20) & (!\c3|Add0~39\ & VCC))
-- \c3|Add0~41\ = CARRY((\c3|count\(20) & !\c3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(20),
	datad => VCC,
	cin => \c3|Add0~39\,
	combout => \c3|Add0~40_combout\,
	cout => \c3|Add0~41\);

-- Location: LCCOMB_X62_Y16_N16
\c3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~42_combout\ = (\c3|count\(21) & (!\c3|Add0~41\)) # (!\c3|count\(21) & ((\c3|Add0~41\) # (GND)))
-- \c3|Add0~43\ = CARRY((!\c3|Add0~41\) # (!\c3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(21),
	datad => VCC,
	cin => \c3|Add0~41\,
	combout => \c3|Add0~42_combout\,
	cout => \c3|Add0~43\);

-- Location: LCCOMB_X62_Y16_N18
\c3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~44_combout\ = (\c3|count\(22) & (\c3|Add0~43\ $ (GND))) # (!\c3|count\(22) & (!\c3|Add0~43\ & VCC))
-- \c3|Add0~45\ = CARRY((\c3|count\(22) & !\c3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c3|count\(22),
	datad => VCC,
	cin => \c3|Add0~43\,
	combout => \c3|Add0~44_combout\,
	cout => \c3|Add0~45\);

-- Location: LCCOMB_X62_Y16_N20
\c3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~46_combout\ = (\c3|count\(23) & (!\c3|Add0~45\)) # (!\c3|count\(23) & ((\c3|Add0~45\) # (GND)))
-- \c3|Add0~47\ = CARRY((!\c3|Add0~45\) # (!\c3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(23),
	datad => VCC,
	cin => \c3|Add0~45\,
	combout => \c3|Add0~46_combout\,
	cout => \c3|Add0~47\);

-- Location: LCCOMB_X62_Y16_N22
\c3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~48_combout\ = (\c3|count\(24) & (\c3|Add0~47\ $ (GND))) # (!\c3|count\(24) & (!\c3|Add0~47\ & VCC))
-- \c3|Add0~49\ = CARRY((\c3|count\(24) & !\c3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(24),
	datad => VCC,
	cin => \c3|Add0~47\,
	combout => \c3|Add0~48_combout\,
	cout => \c3|Add0~49\);

-- Location: LCCOMB_X62_Y16_N24
\c3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Add0~50_combout\ = \c3|Add0~49\ $ (\c3|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c3|count\(25),
	cin => \c3|Add0~49\,
	combout => \c3|Add0~50_combout\);

-- Location: FF_X62_Y16_N23
\c3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(24));

-- Location: FF_X62_Y16_N11
\c3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(18));

-- Location: FF_X62_Y16_N7
\c3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(16));

-- Location: FF_X62_Y17_N29
\c3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(11));

-- Location: LCCOMB_X62_Y16_N28
\c3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~0_combout\ = (!\c3|count\(18) & (!\c3|count\(24) & (!\c3|count\(11) & !\c3|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(18),
	datab => \c3|count\(24),
	datac => \c3|count\(11),
	datad => \c3|count\(16),
	combout => \c3|Equal0~0_combout\);

-- Location: FF_X62_Y17_N27
\c3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(10));

-- Location: FF_X62_Y17_N25
\c3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(9));

-- Location: FF_X62_Y17_N23
\c3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(8));

-- Location: FF_X63_Y16_N19
\c3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(7));

-- Location: LCCOMB_X62_Y17_N2
\c3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~1_combout\ = (!\c3|count\(8) & (!\c3|count\(9) & (!\c3|count\(10) & !\c3|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(8),
	datab => \c3|count\(9),
	datac => \c3|count\(10),
	datad => \c3|count\(7),
	combout => \c3|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y17_N30
\c3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~2_combout\ = (\c3|Equal0~0_combout\ & \c3|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Equal0~0_combout\,
	datad => \c3|Equal0~1_combout\,
	combout => \c3|Equal0~2_combout\);

-- Location: FF_X62_Y17_N7
\c3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(0));

-- Location: FF_X63_Y17_N23
\c3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(25));

-- Location: FF_X63_Y17_N29
\c3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(23));

-- Location: FF_X63_Y17_N21
\c3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(22));

-- Location: LCCOMB_X63_Y17_N4
\c3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~0_combout\ = (!\c3|count\(0) & (!\c3|count\(22) & (!\c3|count\(25) & !\c3|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(0),
	datab => \c3|count\(22),
	datac => \c3|count\(25),
	datad => \c3|count\(23),
	combout => \c3|Equal1~0_combout\);

-- Location: FF_X62_Y16_N27
\c3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(21));

-- Location: FF_X63_Y16_N7
\c3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(20));

-- Location: FF_X63_Y16_N3
\c3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(19));

-- Location: FF_X62_Y16_N31
\c3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(17));

-- Location: LCCOMB_X63_Y16_N0
\c3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~1_combout\ = (!\c3|count\(20) & (!\c3|count\(17) & (!\c3|count\(21) & !\c3|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(20),
	datab => \c3|count\(17),
	datac => \c3|count\(21),
	datad => \c3|count\(19),
	combout => \c3|Equal1~1_combout\);

-- Location: FF_X63_Y17_N17
\c3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(15));

-- Location: FF_X63_Y17_N11
\c3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(14));

-- Location: FF_X63_Y17_N9
\c3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(13));

-- Location: FF_X63_Y17_N7
\c3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|count~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(12));

-- Location: LCCOMB_X63_Y17_N2
\c3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~2_combout\ = (!\c3|count\(14) & (!\c3|count\(15) & (!\c3|count\(13) & !\c3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(14),
	datab => \c3|count\(15),
	datac => \c3|count\(13),
	datad => \c3|count\(12),
	combout => \c3|Equal1~2_combout\);

-- Location: FF_X62_Y17_N19
\c3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(6));

-- Location: FF_X62_Y17_N17
\c3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(5));

-- Location: FF_X62_Y17_N15
\c3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(4));

-- Location: FF_X62_Y17_N13
\c3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(3));

-- Location: LCCOMB_X62_Y17_N4
\c3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~3_combout\ = (!\c3|count\(3) & (!\c3|count\(6) & (!\c3|count\(4) & !\c3|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(3),
	datab => \c3|count\(6),
	datac => \c3|count\(4),
	datad => \c3|count\(5),
	combout => \c3|Equal1~3_combout\);

-- Location: FF_X62_Y17_N11
\c3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(2));

-- Location: FF_X62_Y17_N9
\c3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \c3|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|count\(1));

-- Location: LCCOMB_X63_Y17_N12
\c3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~4_combout\ = (!\c3|count\(1) & (\c3|Equal1~2_combout\ & (\c3|Equal1~3_combout\ & !\c3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(1),
	datab => \c3|Equal1~2_combout\,
	datac => \c3|Equal1~3_combout\,
	datad => \c3|count\(2),
	combout => \c3|Equal1~4_combout\);

-- Location: LCCOMB_X63_Y17_N14
\c3|Equal1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal1~combout\ = LCELL((\c3|Equal0~2_combout\ & (\c3|Equal1~1_combout\ & (\c3|Equal1~0_combout\ & \c3|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|Equal0~2_combout\,
	datab => \c3|Equal1~1_combout\,
	datac => \c3|Equal1~0_combout\,
	datad => \c3|Equal1~4_combout\,
	combout => \c3|Equal1~combout\);

-- Location: LCCOMB_X114_Y17_N26
\contadorUnidade|Equal1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUnidade|Equal1~combout\ = LCELL((!\contadorUnidade|count\(0) & (!\contadorUnidade|count\(1) & (!\contadorUnidade|count\(2) & !\contadorUnidade|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(0),
	datab => \contadorUnidade|count\(1),
	datac => \contadorUnidade|count\(2),
	datad => \contadorUnidade|count\(3),
	combout => \contadorUnidade|Equal1~combout\);

-- Location: LCCOMB_X112_Y17_N14
\contadorDezena|Equal1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDezena|Equal1~combout\ = LCELL((!\contadorDezena|count\(0) & (!\contadorDezena|count\(3) & (!\contadorDezena|count\(2) & !\contadorDezena|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(3),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \contadorDezena|Equal1~combout\);

-- Location: LCCOMB_X63_Y17_N18
\c3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~3_combout\ = (\c3|count\(23) & (\c3|count\(25) & (\c3|count\(0) & \c3|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(23),
	datab => \c3|count\(25),
	datac => \c3|count\(0),
	datad => \c3|count\(22),
	combout => \c3|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y16_N24
\c3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~4_combout\ = (\c3|count\(21) & (\c3|count\(19) & (\c3|count\(17) & \c3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(21),
	datab => \c3|count\(19),
	datac => \c3|count\(17),
	datad => \c3|count\(20),
	combout => \c3|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y17_N26
\c3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~5_combout\ = (\c3|count\(14) & (\c3|count\(15) & (\c3|count\(13) & \c3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(14),
	datab => \c3|count\(15),
	datac => \c3|count\(13),
	datad => \c3|count\(12),
	combout => \c3|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y17_N0
\c3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~6_combout\ = (\c3|count\(3) & (\c3|count\(6) & (\c3|count\(4) & \c3|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(3),
	datab => \c3|count\(6),
	datac => \c3|count\(4),
	datad => \c3|count\(5),
	combout => \c3|Equal0~6_combout\);

-- Location: LCCOMB_X63_Y17_N0
\c3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~7_combout\ = (\c3|count\(2) & (\c3|Equal0~5_combout\ & (\c3|Equal0~6_combout\ & \c3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|count\(2),
	datab => \c3|Equal0~5_combout\,
	datac => \c3|Equal0~6_combout\,
	datad => \c3|count\(1),
	combout => \c3|Equal0~7_combout\);

-- Location: LCCOMB_X63_Y17_N24
\c3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|Equal0~8_combout\ = (\c3|Equal0~2_combout\ & (\c3|Equal0~7_combout\ & (\c3|Equal0~4_combout\ & \c3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|Equal0~2_combout\,
	datab => \c3|Equal0~7_combout\,
	datac => \c3|Equal0~4_combout\,
	datad => \c3|Equal0~3_combout\,
	combout => \c3|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y16_N18
\c3|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~0_combout\ = (!\c3|Equal0~8_combout\ & \c3|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Equal0~8_combout\,
	datad => \c3|Add0~14_combout\,
	combout => \c3|count~0_combout\);

-- Location: LCCOMB_X63_Y17_N22
\c3|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~1_combout\ = (\c3|Add0~50_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c3|Add0~50_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~1_combout\);

-- Location: LCCOMB_X63_Y17_N28
\c3|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~2_combout\ = (\c3|Add0~46_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c3|Add0~46_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~2_combout\);

-- Location: LCCOMB_X63_Y17_N20
\c3|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~3_combout\ = (\c3|Add0~44_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c3|Add0~44_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~3_combout\);

-- Location: LCCOMB_X62_Y16_N26
\c3|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~4_combout\ = (!\c3|Equal0~8_combout\ & \c3|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Equal0~8_combout\,
	datad => \c3|Add0~42_combout\,
	combout => \c3|count~4_combout\);

-- Location: LCCOMB_X63_Y16_N6
\c3|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~5_combout\ = (!\c3|Equal0~8_combout\ & \c3|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Equal0~8_combout\,
	datad => \c3|Add0~40_combout\,
	combout => \c3|count~5_combout\);

-- Location: LCCOMB_X63_Y16_N2
\c3|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~6_combout\ = (!\c3|Equal0~8_combout\ & \c3|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Equal0~8_combout\,
	datad => \c3|Add0~38_combout\,
	combout => \c3|count~6_combout\);

-- Location: LCCOMB_X62_Y16_N30
\c3|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~7_combout\ = (\c3|Add0~34_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c3|Add0~34_combout\,
	datac => \c3|Equal0~8_combout\,
	combout => \c3|count~7_combout\);

-- Location: LCCOMB_X63_Y17_N16
\c3|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~8_combout\ = (!\c3|Equal0~8_combout\ & \c3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c3|Equal0~8_combout\,
	datad => \c3|Add0~30_combout\,
	combout => \c3|count~8_combout\);

-- Location: LCCOMB_X63_Y17_N10
\c3|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~9_combout\ = (\c3|Add0~28_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Add0~28_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~9_combout\);

-- Location: LCCOMB_X63_Y17_N8
\c3|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~10_combout\ = (\c3|Add0~26_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Add0~26_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~10_combout\);

-- Location: LCCOMB_X63_Y17_N6
\c3|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|count~11_combout\ = (\c3|Add0~24_combout\ & !\c3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c3|Add0~24_combout\,
	datad => \c3|Equal0~8_combout\,
	combout => \c3|count~11_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G6
\contadorDezena|Equal1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \contadorDezena|Equal1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \contadorDezena|Equal1~clkctrl_outclk\);

-- Location: IOOBUF_X115_Y17_N9
\ssd_unidade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\ssd_unidade[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\ssd_unidade[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\ssd_unidade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\ssd_unidade[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\ssd_unidade[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\ssd_unidade[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnidade|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_unidade[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\ssd_dezena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\ssd_dezena[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\ssd_dezena[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\ssd_dezena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\ssd_dezena[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\ssd_dezena[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\ssd_dezena[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDezena|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_dezena[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\ssd_centena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\ssd_centena[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ssd_centena[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ssd_centena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ssd_centena[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ssd_centena[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ssd_centena[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayCentena|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_centena[6]~output_o\);

-- Location: LCCOMB_X114_Y17_N12
\contadorUnidade|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUnidade|count[0]~3_combout\ = !\contadorUnidade|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadorUnidade|count\(0),
	combout => \contadorUnidade|count[0]~3_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X114_Y17_N13
\contadorUnidade|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c3|Equal1~combout\,
	d => \contadorUnidade|count[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorUnidade|count\(0));

-- Location: LCCOMB_X114_Y17_N22
\contadorUnidade|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUnidade|count[2]~1_combout\ = \contadorUnidade|count\(2) $ (((\contadorUnidade|count\(1) & \contadorUnidade|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(1),
	datac => \contadorUnidade|count\(2),
	datad => \contadorUnidade|count\(0),
	combout => \contadorUnidade|count[2]~1_combout\);

-- Location: FF_X114_Y17_N23
\contadorUnidade|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c3|Equal1~combout\,
	d => \contadorUnidade|count[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorUnidade|count\(2));

-- Location: LCCOMB_X114_Y17_N6
\contadorUnidade|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUnidade|count~2_combout\ = (\contadorUnidade|count\(1) & (\contadorUnidade|count\(3) $ (((\contadorUnidade|count\(2) & \contadorUnidade|count\(0)))))) # (!\contadorUnidade|count\(1) & (\contadorUnidade|count\(3) & ((\contadorUnidade|count\(2)) # 
-- (!\contadorUnidade|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(1),
	datab => \contadorUnidade|count\(2),
	datac => \contadorUnidade|count\(3),
	datad => \contadorUnidade|count\(0),
	combout => \contadorUnidade|count~2_combout\);

-- Location: FF_X114_Y17_N7
\contadorUnidade|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c3|Equal1~combout\,
	d => \contadorUnidade|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorUnidade|count\(3));

-- Location: LCCOMB_X114_Y17_N20
\contadorUnidade|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUnidade|count~0_combout\ = (\contadorUnidade|count\(0) & (!\contadorUnidade|count\(1) & ((\contadorUnidade|count\(2)) # (!\contadorUnidade|count\(3))))) # (!\contadorUnidade|count\(0) & (((\contadorUnidade|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(0),
	datac => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(3),
	combout => \contadorUnidade|count~0_combout\);

-- Location: FF_X114_Y17_N21
\contadorUnidade|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c3|Equal1~combout\,
	d => \contadorUnidade|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorUnidade|count\(1));

-- Location: LCCOMB_X114_Y17_N28
\displayUnidade|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux6~0_combout\ = (!\contadorUnidade|count\(1) & (!\contadorUnidade|count\(3) & (\contadorUnidade|count\(2) $ (\contadorUnidade|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(0),
	datac => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(3),
	combout => \displayUnidade|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\displayUnidade|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux5~0_combout\ = (\contadorUnidade|count\(2) & (\contadorUnidade|count\(1) $ (\contadorUnidade|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(0),
	combout => \displayUnidade|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y17_N24
\displayUnidade|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux4~0_combout\ = (!\contadorUnidade|count\(2) & (\contadorUnidade|count\(1) & !\contadorUnidade|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(0),
	combout => \displayUnidade|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\displayUnidade|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux3~0_combout\ = (!\contadorUnidade|count\(3) & ((\contadorUnidade|count\(2) & (\contadorUnidade|count\(0) $ (!\contadorUnidade|count\(1)))) # (!\contadorUnidade|count\(2) & (\contadorUnidade|count\(0) & !\contadorUnidade|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(0),
	datac => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(3),
	combout => \displayUnidade|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y17_N18
\displayUnidade|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux2~0_combout\ = (\contadorUnidade|count\(0)) # ((\contadorUnidade|count\(2) & !\contadorUnidade|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(0),
	combout => \displayUnidade|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y17_N16
\displayUnidade|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux1~0_combout\ = (!\contadorUnidade|count\(3) & ((\contadorUnidade|count\(2) & (\contadorUnidade|count\(0) & \contadorUnidade|count\(1))) # (!\contadorUnidade|count\(2) & ((\contadorUnidade|count\(0)) # (\contadorUnidade|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(0),
	datac => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(3),
	combout => \displayUnidade|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\displayUnidade|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnidade|Mux0~0_combout\ = (\contadorUnidade|count\(3)) # ((\contadorUnidade|count\(2) & ((!\contadorUnidade|count\(1)) # (!\contadorUnidade|count\(0)))) # (!\contadorUnidade|count\(2) & ((\contadorUnidade|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorUnidade|count\(2),
	datab => \contadorUnidade|count\(0),
	datac => \contadorUnidade|count\(1),
	datad => \contadorUnidade|count\(3),
	combout => \displayUnidade|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y17_N10
\contadorDezena|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDezena|count[0]~3_combout\ = !\contadorDezena|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadorDezena|count\(0),
	combout => \contadorDezena|count[0]~3_combout\);

-- Location: FF_X112_Y17_N11
\contadorDezena|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorUnidade|Equal1~combout\,
	d => \contadorDezena|count[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorDezena|count\(0));

-- Location: LCCOMB_X112_Y17_N28
\contadorDezena|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDezena|count~0_combout\ = (\contadorDezena|count\(0) & (!\contadorDezena|count\(1) & ((\contadorDezena|count\(2)) # (!\contadorDezena|count\(3))))) # (!\contadorDezena|count\(0) & (((\contadorDezena|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(2),
	datac => \contadorDezena|count\(1),
	datad => \contadorDezena|count\(3),
	combout => \contadorDezena|count~0_combout\);

-- Location: FF_X112_Y17_N29
\contadorDezena|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorUnidade|Equal1~combout\,
	d => \contadorDezena|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorDezena|count\(1));

-- Location: LCCOMB_X112_Y17_N26
\contadorDezena|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDezena|count[2]~1_combout\ = \contadorDezena|count\(2) $ (((\contadorDezena|count\(0) & \contadorDezena|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \contadorDezena|count[2]~1_combout\);

-- Location: FF_X112_Y17_N27
\contadorDezena|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorUnidade|Equal1~combout\,
	d => \contadorDezena|count[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorDezena|count\(2));

-- Location: LCCOMB_X112_Y17_N0
\contadorDezena|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDezena|count~2_combout\ = (\contadorDezena|count\(0) & ((\contadorDezena|count\(2) & (\contadorDezena|count\(3) $ (\contadorDezena|count\(1)))) # (!\contadorDezena|count\(2) & (\contadorDezena|count\(3) & \contadorDezena|count\(1))))) # 
-- (!\contadorDezena|count\(0) & (((\contadorDezena|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(2),
	datac => \contadorDezena|count\(3),
	datad => \contadorDezena|count\(1),
	combout => \contadorDezena|count~2_combout\);

-- Location: FF_X112_Y17_N1
\contadorDezena|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorUnidade|Equal1~combout\,
	d => \contadorDezena|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorDezena|count\(3));

-- Location: LCCOMB_X112_Y17_N22
\displayDezena|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux6~0_combout\ = (!\contadorDezena|count\(3) & (!\contadorDezena|count\(1) & (\contadorDezena|count\(0) $ (\contadorDezena|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(3),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y17_N12
\displayDezena|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux5~0_combout\ = (\contadorDezena|count\(2) & (\contadorDezena|count\(0) $ (\contadorDezena|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y17_N30
\displayDezena|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux4~0_combout\ = (!\contadorDezena|count\(0) & (!\contadorDezena|count\(2) & \contadorDezena|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y17_N20
\displayDezena|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux3~0_combout\ = (!\contadorDezena|count\(3) & ((\contadorDezena|count\(0) & (\contadorDezena|count\(2) $ (!\contadorDezena|count\(1)))) # (!\contadorDezena|count\(0) & (\contadorDezena|count\(2) & !\contadorDezena|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(3),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y17_N16
\displayDezena|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux2~0_combout\ = (\contadorDezena|count\(0)) # ((\contadorDezena|count\(2) & !\contadorDezena|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y17_N24
\displayDezena|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux1~0_combout\ = (!\contadorDezena|count\(3) & ((\contadorDezena|count\(0) & ((\contadorDezena|count\(1)) # (!\contadorDezena|count\(2)))) # (!\contadorDezena|count\(0) & (!\contadorDezena|count\(2) & \contadorDezena|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(3),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y17_N4
\displayDezena|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayDezena|Mux0~0_combout\ = (\contadorDezena|count\(3)) # ((\contadorDezena|count\(2) & ((!\contadorDezena|count\(1)) # (!\contadorDezena|count\(0)))) # (!\contadorDezena|count\(2) & ((\contadorDezena|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDezena|count\(0),
	datab => \contadorDezena|count\(3),
	datac => \contadorDezena|count\(2),
	datad => \contadorDezena|count\(1),
	combout => \displayDezena|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y16_N28
\contadorCentena|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCentena|count[0]~3_combout\ = !\contadorCentena|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadorCentena|count\(0),
	combout => \contadorCentena|count[0]~3_combout\);

-- Location: FF_X63_Y16_N29
\contadorCentena|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorDezena|Equal1~clkctrl_outclk\,
	d => \contadorCentena|count[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorCentena|count\(0));

-- Location: LCCOMB_X63_Y16_N10
\contadorCentena|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCentena|count[2]~1_combout\ = \contadorCentena|count\(2) $ (((\contadorCentena|count\(1) & \contadorCentena|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datac => \contadorCentena|count\(2),
	datad => \contadorCentena|count\(0),
	combout => \contadorCentena|count[2]~1_combout\);

-- Location: FF_X63_Y16_N11
\contadorCentena|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorDezena|Equal1~clkctrl_outclk\,
	d => \contadorCentena|count[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorCentena|count\(2));

-- Location: LCCOMB_X63_Y16_N22
\contadorCentena|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCentena|count~2_combout\ = (\contadorCentena|count\(1) & (\contadorCentena|count\(3) $ (((\contadorCentena|count\(0) & \contadorCentena|count\(2)))))) # (!\contadorCentena|count\(1) & (\contadorCentena|count\(3) & ((\contadorCentena|count\(2)) # 
-- (!\contadorCentena|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datac => \contadorCentena|count\(3),
	datad => \contadorCentena|count\(2),
	combout => \contadorCentena|count~2_combout\);

-- Location: FF_X63_Y16_N23
\contadorCentena|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorDezena|Equal1~clkctrl_outclk\,
	d => \contadorCentena|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorCentena|count\(3));

-- Location: LCCOMB_X63_Y16_N12
\contadorCentena|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCentena|count~0_combout\ = (\contadorCentena|count\(1) & (((!\contadorCentena|count\(0))))) # (!\contadorCentena|count\(1) & (\contadorCentena|count\(0) & ((\contadorCentena|count\(2)) # (!\contadorCentena|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(2),
	datab => \contadorCentena|count\(3),
	datac => \contadorCentena|count\(1),
	datad => \contadorCentena|count\(0),
	combout => \contadorCentena|count~0_combout\);

-- Location: FF_X63_Y16_N13
\contadorCentena|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contadorDezena|Equal1~clkctrl_outclk\,
	d => \contadorCentena|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contadorCentena|count\(1));

-- Location: LCCOMB_X63_Y16_N30
\displayCentena|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux6~0_combout\ = (!\contadorCentena|count\(1) & (!\contadorCentena|count\(3) & (\contadorCentena|count\(0) $ (\contadorCentena|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datac => \contadorCentena|count\(3),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y16_N20
\displayCentena|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux5~0_combout\ = (\contadorCentena|count\(2) & (\contadorCentena|count\(1) $ (\contadorCentena|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y16_N16
\displayCentena|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux4~0_combout\ = (\contadorCentena|count\(1) & (!\contadorCentena|count\(0) & !\contadorCentena|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y16_N14
\displayCentena|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux3~0_combout\ = (!\contadorCentena|count\(3) & ((\contadorCentena|count\(1) & (\contadorCentena|count\(0) & \contadorCentena|count\(2))) # (!\contadorCentena|count\(1) & (\contadorCentena|count\(0) $ (\contadorCentena|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datac => \contadorCentena|count\(3),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y16_N26
\displayCentena|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux2~0_combout\ = (\contadorCentena|count\(0)) # ((!\contadorCentena|count\(1) & \contadorCentena|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y16_N8
\displayCentena|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux1~0_combout\ = (!\contadorCentena|count\(3) & ((\contadorCentena|count\(1) & ((\contadorCentena|count\(0)) # (!\contadorCentena|count\(2)))) # (!\contadorCentena|count\(1) & (\contadorCentena|count\(0) & !\contadorCentena|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datac => \contadorCentena|count\(3),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y16_N4
\displayCentena|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayCentena|Mux0~0_combout\ = (\contadorCentena|count\(3)) # ((\contadorCentena|count\(1) & ((!\contadorCentena|count\(2)) # (!\contadorCentena|count\(0)))) # (!\contadorCentena|count\(1) & ((\contadorCentena|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorCentena|count\(1),
	datab => \contadorCentena|count\(0),
	datac => \contadorCentena|count\(3),
	datad => \contadorCentena|count\(2),
	combout => \displayCentena|Mux0~0_combout\);

ww_ssd_unidade(0) <= \ssd_unidade[0]~output_o\;

ww_ssd_unidade(1) <= \ssd_unidade[1]~output_o\;

ww_ssd_unidade(2) <= \ssd_unidade[2]~output_o\;

ww_ssd_unidade(3) <= \ssd_unidade[3]~output_o\;

ww_ssd_unidade(4) <= \ssd_unidade[4]~output_o\;

ww_ssd_unidade(5) <= \ssd_unidade[5]~output_o\;

ww_ssd_unidade(6) <= \ssd_unidade[6]~output_o\;

ww_ssd_dezena(0) <= \ssd_dezena[0]~output_o\;

ww_ssd_dezena(1) <= \ssd_dezena[1]~output_o\;

ww_ssd_dezena(2) <= \ssd_dezena[2]~output_o\;

ww_ssd_dezena(3) <= \ssd_dezena[3]~output_o\;

ww_ssd_dezena(4) <= \ssd_dezena[4]~output_o\;

ww_ssd_dezena(5) <= \ssd_dezena[5]~output_o\;

ww_ssd_dezena(6) <= \ssd_dezena[6]~output_o\;

ww_ssd_centena(0) <= \ssd_centena[0]~output_o\;

ww_ssd_centena(1) <= \ssd_centena[1]~output_o\;

ww_ssd_centena(2) <= \ssd_centena[2]~output_o\;

ww_ssd_centena(3) <= \ssd_centena[3]~output_o\;

ww_ssd_centena(4) <= \ssd_centena[4]~output_o\;

ww_ssd_centena(5) <= \ssd_centena[5]~output_o\;

ww_ssd_centena(6) <= \ssd_centena[6]~output_o\;
END structure;


