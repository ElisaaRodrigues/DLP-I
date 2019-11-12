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

-- DATE "08/07/2019 11:56:34"

-- 
-- Device: Altera EPM7128AETA144-10 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

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
-- RST	=>  Location: PIN_112
-- CLK	=>  Location: PIN_125
-- LOAD	=>  Location: PIN_82
-- DATA[0]	=>  Location: PIN_131
-- DATA[1]	=>  Location: PIN_119
-- DATA[2]	=>  Location: PIN_118
-- DATA[3]	=>  Location: PIN_5
-- DATA[4]	=>  Location: PIN_101
-- DATA[5]	=>  Location: PIN_87
-- DATA[6]	=>  Location: PIN_97
-- DATA[7]	=>  Location: PIN_10
-- DATA[8]	=>  Location: PIN_138
-- DATA[9]	=>  Location: PIN_111
-- DATA[10]	=>  Location: PIN_81
-- DATA[11]	=>  Location: PIN_139
-- DATA[12]	=>  Location: PIN_117
-- DATA[13]	=>  Location: PIN_6
-- DATA[14]	=>  Location: PIN_106
-- DATA[15]	=>  Location: PIN_109
-- DATA[16]	=>  Location: PIN_29
-- DATA[17]	=>  Location: PIN_96
-- DATA[18]	=>  Location: PIN_140
-- DATA[19]	=>  Location: PIN_110
-- DATA[20]	=>  Location: PIN_80
-- DATA[21]	=>  Location: PIN_15
-- DATA[22]	=>  Location: PIN_74
-- DATA[23]	=>  Location: PIN_14
-- DATA[24]	=>  Location: PIN_94
-- DATA[25]	=>  Location: PIN_11
-- DATA[26]	=>  Location: PIN_141
-- DATA[27]	=>  Location: PIN_79
-- DATA[28]	=>  Location: PIN_78
-- DATA[29]	=>  Location: PIN_107
-- DATA[30]	=>  Location: PIN_126
-- DATA[31]	=>  Location: PIN_143
-- Q[0]	=>  Location: PIN_67
-- Q[1]	=>  Location: PIN_60
-- Q[2]	=>  Location: PIN_61
-- Q[3]	=>  Location: PIN_62
-- Q[4]	=>  Location: PIN_63
-- Q[5]	=>  Location: PIN_65
-- Q[6]	=>  Location: PIN_56
-- Q[7]	=>  Location: PIN_55
-- Q[8]	=>  Location: PIN_53
-- Q[9]	=>  Location: PIN_54
-- Q[10]	=>  Location: PIN_45
-- Q[11]	=>  Location: PIN_44
-- Q[12]	=>  Location: PIN_42
-- Q[13]	=>  Location: PIN_41
-- Q[14]	=>  Location: PIN_37
-- Q[15]	=>  Location: PIN_38
-- Q[16]	=>  Location: PIN_39
-- Q[17]	=>  Location: PIN_40
-- Q[18]	=>  Location: PIN_25
-- Q[19]	=>  Location: PIN_32
-- Q[20]	=>  Location: PIN_31
-- Q[21]	=>  Location: PIN_30
-- Q[22]	=>  Location: PIN_28
-- Q[23]	=>  Location: PIN_27
-- Q[24]	=>  Location: PIN_26
-- Q[25]	=>  Location: PIN_92
-- Q[26]	=>  Location: PIN_9
-- Q[27]	=>  Location: PIN_8
-- Q[28]	=>  Location: PIN_7
-- Q[29]	=>  Location: PIN_83
-- Q[30]	=>  Location: PIN_136
-- Q[31]	=>  Location: PIN_113


ARCHITECTURE structure OF COUNTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_DATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(31 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[0]|1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[1]|1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[2]|1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_rtl_0|p8c[3]|1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \LOAD~dataout\ : std_logic;
SIGNAL \RST~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|8~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|7~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|6~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|5~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|4~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|3~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|2~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|1~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|8~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|7~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|6~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|5~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|4~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|3~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|2~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[1]|1~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|8~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|7~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|6~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|5~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|4~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|3~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|2~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[2]|1~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|8~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|7~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|6~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|5~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|4~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|3~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|2~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[3]|1~dataout\ : std_logic;
SIGNAL \DATA~dataout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_DATA~dataout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_LOAD~dataout\ : std_logic;
SIGNAL \CNT_rtl_0|p8c[0]|ALT_INV_8~dataout\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_LOAD <= LOAD;
ww_DATA <= DATA;
Q <= ww_Q;

\CNT_rtl_0|p8c[0]|8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CNT_rtl_0|p8c[0]|8~dataout\);

\CNT_rtl_0|p8c[0]|8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|8_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \DATA~dataout\(0) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|8_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(1) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|7_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(2) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|6_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(3) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|5_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(4) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|4_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(5) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|3_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(6) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & NOT \LOAD~dataout\
);

\CNT_rtl_0|p8c[0]|2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(7) & \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & 
\CNT_rtl_0|p8c[0]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[0]|1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[0]|1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[0]|1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[0]|1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(9) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & 
\CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|7_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(8) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|8_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(10) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & 
\CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|6_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(11) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & 
\CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|5_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(12) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & 
\CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|4_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(13) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\
& \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|3_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(14) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(15) & \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[1]|1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[1]|1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[1]|1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[1]|1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(16) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & NOT 
\LOAD~dataout\);

\CNT_rtl_0|p8c[2]|8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|8_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(17) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & 
\CNT_rtl_0|p8c[2]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|7_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(18) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & 
\CNT_rtl_0|p8c[2]|8~dataout\ & \CNT_rtl_0|p8c[2]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|6_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(19) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & 
\CNT_rtl_0|p8c[2]|8~dataout\ & \CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|5_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(20) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|4_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(21) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|3_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(22) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(23) & \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[2]|1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[2]|1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[2]|1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[2]|1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(24) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & 
\CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & 
\CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & 
\CNT_rtl_0|p8c[2]|8~dataout\ & \CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|8_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(25) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|7~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|7_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(26) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & NOT 
\LOAD~dataout\);

\CNT_rtl_0|p8c[3]|6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|6_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(27) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & 
\CNT_rtl_0|p8c[3]|6~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|5_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(28) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & 
\CNT_rtl_0|p8c[3]|6~dataout\ & \CNT_rtl_0|p8c[3]|5~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|4_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(29) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|8~dataout\ & \CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & 
\CNT_rtl_0|p8c[1]|7~dataout\ & \CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & 
\CNT_rtl_0|p8c[2]|7~dataout\ & \CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & 
\CNT_rtl_0|p8c[3]|6~dataout\ & \CNT_rtl_0|p8c[3]|5~dataout\ & \CNT_rtl_0|p8c[3]|4~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|3_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(30) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & 
\CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & \CNT_rtl_0|p8c[2]|7~dataout\ & 
\CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & \CNT_rtl_0|p8c[3]|6~dataout\ & 
\CNT_rtl_0|p8c[3]|5~dataout\ & \CNT_rtl_0|p8c[3]|4~dataout\ & \CNT_rtl_0|p8c[3]|3~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \DATA~dataout\(31) & \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[2]|2~dataout\ & \CNT_rtl_0|p8c[1]|8~dataout\ & \CNT_rtl_0|p8c[0]|8~dataout\ & 
\CNT_rtl_0|p8c[0]|7~dataout\ & \CNT_rtl_0|p8c[0]|6~dataout\ & \CNT_rtl_0|p8c[0]|5~dataout\ & \CNT_rtl_0|p8c[0]|4~dataout\ & \CNT_rtl_0|p8c[0]|3~dataout\ & \CNT_rtl_0|p8c[0]|2~dataout\ & \CNT_rtl_0|p8c[0]|1~dataout\ & \CNT_rtl_0|p8c[1]|7~dataout\ & 
\CNT_rtl_0|p8c[1]|6~dataout\ & \CNT_rtl_0|p8c[1]|5~dataout\ & \CNT_rtl_0|p8c[1]|4~dataout\ & \CNT_rtl_0|p8c[1]|3~dataout\ & \CNT_rtl_0|p8c[1]|2~dataout\ & \CNT_rtl_0|p8c[1]|1~dataout\ & \CNT_rtl_0|p8c[2]|8~dataout\ & \CNT_rtl_0|p8c[2]|7~dataout\ & 
\CNT_rtl_0|p8c[2]|6~dataout\ & \CNT_rtl_0|p8c[2]|5~dataout\ & \CNT_rtl_0|p8c[2]|4~dataout\ & \CNT_rtl_0|p8c[2]|3~dataout\ & \CNT_rtl_0|p8c[2]|1~dataout\ & \CNT_rtl_0|p8c[3]|8~dataout\ & \CNT_rtl_0|p8c[3]|7~dataout\ & \CNT_rtl_0|p8c[3]|6~dataout\ & 
\CNT_rtl_0|p8c[3]|5~dataout\ & \CNT_rtl_0|p8c[3]|4~dataout\ & \CNT_rtl_0|p8c[3]|3~dataout\ & \CNT_rtl_0|p8c[3]|2~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_rtl_0|p8c[3]|1~dataout\ & NOT \LOAD~dataout\);

\CNT_rtl_0|p8c[3]|1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_rtl_0|p8c[3]|1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_rtl_0|p8c[3]|1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RST~dataout\);

\CNT_rtl_0|p8c[3]|1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_DATA~dataout\(0) <= NOT \DATA~dataout\(0);
\ALT_INV_LOAD~dataout\ <= NOT \LOAD~dataout\;
\CNT_rtl_0|p8c[0]|ALT_INV_8~dataout\ <= NOT \CNT_rtl_0|p8c[0]|8~dataout\;

-- Location: PIN_125
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	dataout => \CLK~dataout\);

-- Location: PIN_82
\LOAD~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LOAD,
	dataout => \LOAD~dataout\);

-- Location: PIN_131
\DATA[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(0),
	dataout => \DATA~dataout\(0));

-- Location: PIN_112
\RST~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	dataout => \RST~dataout\);

-- Location: LC72
\CNT_rtl_0|p8c[0]|8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|8_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|8_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|8_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|8_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|8_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|8_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|8_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|8_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|8_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|8_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|8_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|8~dataout\);

-- Location: PIN_119
\DATA[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(1),
	dataout => \DATA~dataout\(1));

-- Location: LC65
\CNT_rtl_0|p8c[0]|7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|7_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|7_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|7_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|7_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|7_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|7_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|7_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|7_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|7_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|7_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|7_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|7~dataout\);

-- Location: PIN_118
\DATA[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(2),
	dataout => \DATA~dataout\(2));

-- Location: LC67
\CNT_rtl_0|p8c[0]|6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|6_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|6_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|6_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|6_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|6_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|6_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|6_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|6_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|6_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|6_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|6_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|6~dataout\);

-- Location: PIN_5
\DATA[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(3),
	dataout => \DATA~dataout\(3));

-- Location: LC68
\CNT_rtl_0|p8c[0]|5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|5_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|5_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|5_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|5_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|5_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|5_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|5_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|5_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|5_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|5_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|5_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|5~dataout\);

-- Location: PIN_101
\DATA[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(4),
	dataout => \DATA~dataout\(4));

-- Location: LC69
\CNT_rtl_0|p8c[0]|4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|4_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|4_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|4_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|4_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|4_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|4_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|4_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|4_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|4_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|4_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|4_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|4~dataout\);

-- Location: PIN_87
\DATA[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(5),
	dataout => \DATA~dataout\(5));

-- Location: LC70
\CNT_rtl_0|p8c[0]|3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|3_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|3_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|3_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|3_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|3_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|3_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|3_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|3_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|3_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|3_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|3_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|3~dataout\);

-- Location: PIN_97
\DATA[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(6),
	dataout => \DATA~dataout\(6));

-- Location: LC49
\CNT_rtl_0|p8c[0]|2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|2_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|2_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|2_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|2_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|2_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|2_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|2_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|2_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|2_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|2_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|2_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|2~dataout\);

-- Location: PIN_10
\DATA[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(7),
	dataout => \DATA~dataout\(7));

-- Location: LC51
\CNT_rtl_0|p8c[0]|1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[0]|1_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[0]|1_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[0]|1_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[0]|1_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[0]|1_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[0]|1_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[0]|1_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[0]|1_pclk_bus\,
	papre => \CNT_rtl_0|p8c[0]|1_papre_bus\,
	paclr => \CNT_rtl_0|p8c[0]|1_paclr_bus\,
	pena => \CNT_rtl_0|p8c[0]|1_pena_bus\,
	dataout => \CNT_rtl_0|p8c[0]|1~dataout\);

-- Location: PIN_138
\DATA[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(8),
	dataout => \DATA~dataout\(8));

-- Location: LC53
\CNT_rtl_0|p8c[1]|8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|8_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|8_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|8_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|8_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|8_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|8_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|8_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|8_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|8_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|8_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|8_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|8~dataout\);

-- Location: PIN_111
\DATA[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(9),
	dataout => \DATA~dataout\(9));

-- Location: LC52
\CNT_rtl_0|p8c[1]|7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|7_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|7_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|7_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|7_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|7_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|7_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|7_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|7_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|7_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|7_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|7_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|7~dataout\);

-- Location: PIN_81
\DATA[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(10),
	dataout => \DATA~dataout\(10));

-- Location: LC54
\CNT_rtl_0|p8c[1]|6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|6_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|6_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|6_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|6_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|6_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|6_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|6_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|6_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|6_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|6_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|6_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|6~dataout\);

-- Location: PIN_139
\DATA[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(11),
	dataout => \DATA~dataout\(11));

-- Location: LC56
\CNT_rtl_0|p8c[1]|5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|5_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|5_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|5_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|5_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|5_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|5_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|5_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|5_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|5_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|5_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|5_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|5~dataout\);

-- Location: PIN_117
\DATA[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(12),
	dataout => \DATA~dataout\(12));

-- Location: LC57
\CNT_rtl_0|p8c[1]|4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|4_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|4_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|4_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|4_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|4_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|4_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|4_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|4_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|4_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|4_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|4_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|4~dataout\);

-- Location: PIN_6
\DATA[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(13),
	dataout => \DATA~dataout\(13));

-- Location: LC59
\CNT_rtl_0|p8c[1]|3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|3_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|3_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|3_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|3_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|3_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|3_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|3_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|3_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|3_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|3_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|3_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|3~dataout\);

-- Location: PIN_106
\DATA[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(14),
	dataout => \DATA~dataout\(14));

-- Location: LC64
\CNT_rtl_0|p8c[1]|2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|2_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|2_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|2_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|2_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|2_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|2_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|2_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|2_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|2_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|2_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|2_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|2~dataout\);

-- Location: PIN_109
\DATA[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(15),
	dataout => \DATA~dataout\(15));

-- Location: LC62
\CNT_rtl_0|p8c[1]|1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[1]|1_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[1]|1_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[1]|1_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[1]|1_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[1]|1_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[1]|1_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[1]|1_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[1]|1_pclk_bus\,
	papre => \CNT_rtl_0|p8c[1]|1_papre_bus\,
	paclr => \CNT_rtl_0|p8c[1]|1_paclr_bus\,
	pena => \CNT_rtl_0|p8c[1]|1_pena_bus\,
	dataout => \CNT_rtl_0|p8c[1]|1~dataout\);

-- Location: PIN_29
\DATA[16]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(16),
	dataout => \DATA~dataout\(16));

-- Location: LC61
\CNT_rtl_0|p8c[2]|8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|8_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|8_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|8_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|8_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|8_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|8_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|8_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|8_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|8_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|8_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|8_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|8~dataout\);

-- Location: PIN_96
\DATA[17]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(17),
	dataout => \DATA~dataout\(17));

-- Location: LC60
\CNT_rtl_0|p8c[2]|7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|7_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|7_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|7_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|7_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|7_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|7_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|7_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|7_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|7_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|7_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|7_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|7~dataout\);

-- Location: PIN_140
\DATA[18]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(18),
	dataout => \DATA~dataout\(18));

-- Location: LC43
\CNT_rtl_0|p8c[2]|6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|6_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|6_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|6_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|6_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|6_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|6_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|6_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|6_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|6_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|6_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|6_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|6~dataout\);

-- Location: PIN_110
\DATA[19]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(19),
	dataout => \DATA~dataout\(19));

-- Location: LC33
\CNT_rtl_0|p8c[2]|5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|5_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|5_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|5_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|5_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|5_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|5_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|5_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|5_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|5_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|5_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|5_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|5~dataout\);

-- Location: PIN_80
\DATA[20]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(20),
	dataout => \DATA~dataout\(20));

-- Location: LC35
\CNT_rtl_0|p8c[2]|4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|4_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|4_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|4_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|4_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|4_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|4_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|4_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|4_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|4_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|4_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|4_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|4~dataout\);

-- Location: PIN_15
\DATA[21]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(21),
	dataout => \DATA~dataout\(21));

-- Location: LC36
\CNT_rtl_0|p8c[2]|3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|3_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|3_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|3_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|3_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|3_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|3_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|3_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|3_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|3_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|3_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|3_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|3~dataout\);

-- Location: PIN_74
\DATA[22]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(22),
	dataout => \DATA~dataout\(22));

-- Location: LC38
\CNT_rtl_0|p8c[2]|2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|2_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|2_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|2_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|2_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|2_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|2_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|2_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|2_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|2_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|2_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|2_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|2~dataout\);

-- Location: PIN_14
\DATA[23]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(23),
	dataout => \DATA~dataout\(23));

-- Location: LC40
\CNT_rtl_0|p8c[2]|1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[2]|1_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[2]|1_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[2]|1_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[2]|1_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[2]|1_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[2]|1_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[2]|1_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[2]|1_pclk_bus\,
	papre => \CNT_rtl_0|p8c[2]|1_papre_bus\,
	paclr => \CNT_rtl_0|p8c[2]|1_paclr_bus\,
	pena => \CNT_rtl_0|p8c[2]|1_pena_bus\,
	dataout => \CNT_rtl_0|p8c[2]|1~dataout\);

-- Location: PIN_94
\DATA[24]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(24),
	dataout => \DATA~dataout\(24));

-- Location: LC41
\CNT_rtl_0|p8c[3]|8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|8_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|8_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|8_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|8_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|8_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|8_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|8_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|8_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|8_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|8_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|8_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|8~dataout\);

-- Location: PIN_11
\DATA[25]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(25),
	dataout => \DATA~dataout\(25));

-- Location: LC99
\CNT_rtl_0|p8c[3]|7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|7_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|7_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|7_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|7_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|7_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|7_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|7_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|7_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|7_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|7_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|7_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|7~dataout\);

-- Location: PIN_141
\DATA[26]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(26),
	dataout => \DATA~dataout\(26));

-- Location: LC25
\CNT_rtl_0|p8c[3]|6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|6_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|6_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|6_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|6_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|6_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|6_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|6_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|6_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|6_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|6_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|6_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|6~dataout\);

-- Location: PIN_79
\DATA[27]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(27),
	dataout => \DATA~dataout\(27));

-- Location: LC27
\CNT_rtl_0|p8c[3]|5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|5_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|5_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|5_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|5_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|5_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|5_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|5_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|5_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|5_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|5_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|5_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|5~dataout\);

-- Location: PIN_78
\DATA[28]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(28),
	dataout => \DATA~dataout\(28));

-- Location: LC28
\CNT_rtl_0|p8c[3]|4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|4_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|4_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|4_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|4_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|4_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|4_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|4_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|4_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|4_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|4_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|4_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|4~dataout\);

-- Location: PIN_107
\DATA[29]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(29),
	dataout => \DATA~dataout\(29));

-- Location: LC89
\CNT_rtl_0|p8c[3]|3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|3_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|3_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|3_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|3_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|3_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|3_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|3_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|3_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|3_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|3_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|3_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|3~dataout\);

-- Location: PIN_126
\DATA[30]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(30),
	dataout => \DATA~dataout\(30));

-- Location: LC11
\CNT_rtl_0|p8c[3]|2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|2_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|2_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|2_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|2_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|2_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|2_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|2_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|2_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|2_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|2_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|2_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|2~dataout\);

-- Location: PIN_143
\DATA[31]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA(31),
	dataout => \DATA~dataout\(31));

-- Location: LC121
\CNT_rtl_0|p8c[3]|1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \CNT_rtl_0|p8c[3]|1_pterm0_bus\,
	pterm1 => \CNT_rtl_0|p8c[3]|1_pterm1_bus\,
	pterm2 => \CNT_rtl_0|p8c[3]|1_pterm2_bus\,
	pterm3 => \CNT_rtl_0|p8c[3]|1_pterm3_bus\,
	pterm4 => \CNT_rtl_0|p8c[3]|1_pterm4_bus\,
	pterm5 => \CNT_rtl_0|p8c[3]|1_pterm5_bus\,
	pxor => \CNT_rtl_0|p8c[3]|1_pxor_bus\,
	pclk => \CNT_rtl_0|p8c[3]|1_pclk_bus\,
	papre => \CNT_rtl_0|p8c[3]|1_papre_bus\,
	paclr => \CNT_rtl_0|p8c[3]|1_paclr_bus\,
	pena => \CNT_rtl_0|p8c[3]|1_pena_bus\,
	dataout => \CNT_rtl_0|p8c[3]|1~dataout\);

-- Location: PIN_67
\Q[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|8~dataout\,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_60
\Q[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|7~dataout\,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_61
\Q[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|6~dataout\,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_62
\Q[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|5~dataout\,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_63
\Q[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|4~dataout\,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_65
\Q[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|3~dataout\,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_56
\Q[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|2~dataout\,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_55
\Q[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[0]|1~dataout\,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_53
\Q[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|8~dataout\,
	oe => VCC,
	padio => ww_Q(8));

-- Location: PIN_54
\Q[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|7~dataout\,
	oe => VCC,
	padio => ww_Q(9));

-- Location: PIN_45
\Q[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|6~dataout\,
	oe => VCC,
	padio => ww_Q(10));

-- Location: PIN_44
\Q[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|5~dataout\,
	oe => VCC,
	padio => ww_Q(11));

-- Location: PIN_42
\Q[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|4~dataout\,
	oe => VCC,
	padio => ww_Q(12));

-- Location: PIN_41
\Q[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|3~dataout\,
	oe => VCC,
	padio => ww_Q(13));

-- Location: PIN_37
\Q[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|2~dataout\,
	oe => VCC,
	padio => ww_Q(14));

-- Location: PIN_38
\Q[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[1]|1~dataout\,
	oe => VCC,
	padio => ww_Q(15));

-- Location: PIN_39
\Q[16]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|8~dataout\,
	oe => VCC,
	padio => ww_Q(16));

-- Location: PIN_40
\Q[17]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|7~dataout\,
	oe => VCC,
	padio => ww_Q(17));

-- Location: PIN_25
\Q[18]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|6~dataout\,
	oe => VCC,
	padio => ww_Q(18));

-- Location: PIN_32
\Q[19]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|5~dataout\,
	oe => VCC,
	padio => ww_Q(19));

-- Location: PIN_31
\Q[20]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|4~dataout\,
	oe => VCC,
	padio => ww_Q(20));

-- Location: PIN_30
\Q[21]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|3~dataout\,
	oe => VCC,
	padio => ww_Q(21));

-- Location: PIN_28
\Q[22]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|2~dataout\,
	oe => VCC,
	padio => ww_Q(22));

-- Location: PIN_27
\Q[23]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[2]|1~dataout\,
	oe => VCC,
	padio => ww_Q(23));

-- Location: PIN_26
\Q[24]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|8~dataout\,
	oe => VCC,
	padio => ww_Q(24));

-- Location: PIN_92
\Q[25]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|7~dataout\,
	oe => VCC,
	padio => ww_Q(25));

-- Location: PIN_9
\Q[26]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|6~dataout\,
	oe => VCC,
	padio => ww_Q(26));

-- Location: PIN_8
\Q[27]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|5~dataout\,
	oe => VCC,
	padio => ww_Q(27));

-- Location: PIN_7
\Q[28]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|4~dataout\,
	oe => VCC,
	padio => ww_Q(28));

-- Location: PIN_83
\Q[29]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|3~dataout\,
	oe => VCC,
	padio => ww_Q(29));

-- Location: PIN_136
\Q[30]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|2~dataout\,
	oe => VCC,
	padio => ww_Q(30));

-- Location: PIN_113
\Q[31]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CNT_rtl_0|p8c[3]|1~dataout\,
	oe => VCC,
	padio => ww_Q(31));
END structure;


