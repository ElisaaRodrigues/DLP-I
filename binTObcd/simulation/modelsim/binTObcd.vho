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

-- DATE "09/24/2019 18:16:18"

-- 
-- Device: Altera EP1C3T100A8 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	binTObcd IS
    PORT (
	binario : IN std_logic_vector(13 DOWNTO 0);
	milhar : OUT std_logic_vector(3 DOWNTO 0);
	centena : OUT std_logic_vector(3 DOWNTO 0);
	dezena : OUT std_logic_vector(3 DOWNTO 0);
	unidade : OUT std_logic_vector(3 DOWNTO 0)
	);
END binTObcd;

-- Design Ports Information
-- milhar[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[1]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[3]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[0]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[3]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- binario[0]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[10]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[11]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[12]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[13]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[7]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[8]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[9]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[6]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[3]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[5]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- binario[4]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF binTObcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binario : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_milhar : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_centena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~35\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~30\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~40\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~40\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~45\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~50\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~55\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~30\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~40\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_52\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32COUT1_54\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_56\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2COUT1_58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42COUT1_58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_60\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_64\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_68\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_70\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_72\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_60\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_64\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17COUT1_68\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_70\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_72\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_60\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27COUT1_64\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12COUT1_68\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_70\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_54\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_56\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27COUT1_60\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12COUT1_64\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7COUT1_66\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_52\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7COUT1_54\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12COUT1_56\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_58\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_62\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_58\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_60\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12COUT1_62\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_64\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_70\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_80\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_64\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22COUT1_66\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_68\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_70\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_78\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_85\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_69\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_71\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22COUT1_73\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_75\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[180]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[180]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUTCOUT1_90\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_82\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57COUT1_84\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47COUT1_86\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_88\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_38\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_40\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_42\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_44\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~33_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~17_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~23_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32COUT1_44\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_46\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_48\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~15_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_50\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_52\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[59]~19_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[59]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_54\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_44\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_46\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_48\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~11_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_50\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_52\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~21_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~32_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_42\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_44\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_46\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~13_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_48\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_50\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_38\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_40\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_42\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_44\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_44\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_46\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_48\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_52\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_62\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_50\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_52\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_54\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_56\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_60\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_72\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_58\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_60\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_62\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_64\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42COUT1_66\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37COUT1_68\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_70\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[185]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_35\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_37\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_41\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_33\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_37\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_39\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~11_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~19_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_31\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_33\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_35\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_37\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_35\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_37\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_46\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_38\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_40\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_44\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~22_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~23_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_56\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_46\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_48\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_50\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_52\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_54\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[43]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \binario~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella\ : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_binario <= binario;
milhar <= ww_milhar;
centena <= ww_centena;
dezena <= ww_dezena;
unidade <= ww_unidade;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[11]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(11),
	combout => \binario~combout\(11));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[10]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(10),
	combout => \binario~combout\(10));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[9]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(9),
	combout => \binario~combout\(9));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[8]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(8),
	combout => \binario~combout\(8));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(7),
	combout => \binario~combout\(7));

-- Location: LC_X21_Y7_N2
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3) = ((\binario~combout\(7)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\ = CARRY(((\binario~combout\(7))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\ = CARRY(((\binario~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\);

-- Location: LC_X21_Y7_N3
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\);

-- Location: LC_X20_Y7_N0
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_52\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_52\);

-- Location: LC_X20_Y7_N1
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\ = (\binario~combout\(8) $ ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ = CARRY(((!\binario~combout\(8) & !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32COUT1_54\ = CARRY(((!\binario~combout\(8) & !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(8),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32COUT1_54\);

-- Location: LC_X20_Y7_N2
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\ = \binario~combout\(9) $ ((((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\ = CARRY((\binario~combout\(9) & ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_56\ = CARRY((\binario~combout\(9) & ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(9),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_56\);

-- Location: LC_X20_Y7_N3
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ = (\binario~combout\(10) $ ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\) # (!\binario~combout\(10))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2COUT1_58\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_56\) # (!\binario~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(10),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2COUT1_58\);

-- Location: LC_X20_Y7_N4
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ = \binario~combout\(11) $ ((((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ = CARRY((\binario~combout\(11) & ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(11),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~2COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[13]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(13),
	combout => \binario~combout\(13));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[12]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(12),
	combout => \binario~combout\(12));

-- Location: LC_X20_Y7_N5
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\ = (\binario~combout\(12) $ ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\) # (!\binario~combout\(12))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\) # (!\binario~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(12),
	cin => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\);

-- Location: LC_X20_Y7_N6
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20_combout\ = \binario~combout\(13) $ ((((!(!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\ = CARRY((\binario~combout\(13) & ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_62\ = CARRY((\binario~combout\(13) & ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(13),
	cin => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_62\);

-- Location: LC_X20_Y7_N7
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ = ((((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\);

-- Location: LC_X20_Y7_N8
\Div0|auto_generated|divider|divider|StageOut[105]~12\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~12_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~12_combout\);

-- Location: LC_X20_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[105]~11\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~11_combout\ = (\binario~combout\(10) & (((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(10),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~11_combout\);

-- Location: LC_X19_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[104]~24\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~24_combout\ = (\binario~combout\(9) & (((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(9),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~24_combout\);

-- Location: LC_X20_Y8_N4
\Div0|auto_generated|divider|divider|StageOut[104]~25\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~25_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~25_combout\);

-- Location: LC_X20_Y8_N3
\Div0|auto_generated|divider|divider|StageOut[103]~33\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~33_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~33_combout\);

-- Location: LC_X20_Y8_N7
\Div0|auto_generated|divider|divider|StageOut[103]~32\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ = (\binario~combout\(8) & (((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(8),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\);

-- Location: LC_X21_Y7_N1
\Div0|auto_generated|divider|divider|StageOut[102]~41\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~41_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~41_combout\);

-- Location: LC_X21_Y7_N5
\Div0|auto_generated|divider|divider|StageOut[102]~40\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~40_combout\ = (((\binario~combout\(7) & !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \binario~combout\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~40_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(6),
	combout => \binario~combout\(6));

-- Location: LC_X23_Y8_N3
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3) = (\binario~combout\(6))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(6)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\ = CARRY((\binario~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\);

-- Location: LC_X23_Y8_N4
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\);

-- Location: LC_X21_Y8_N0
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42COUT1_58\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42COUT1_58\);

-- Location: LC_X21_Y8_N1
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\ $ (((!\Div0|auto_generated|divider|divider|StageOut[102]~41_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[102]~40_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[102]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_60\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[102]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~40_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_60\);

-- Location: LC_X21_Y8_N2
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ $ (((!\Div0|auto_generated|divider|divider|StageOut[103]~33_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ & ((\Div0|auto_generated|divider|divider|StageOut[103]~33_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_62\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_60\ & ((\Div0|auto_generated|divider|divider|StageOut[103]~33_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_62\);

-- Location: LC_X21_Y8_N3
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\ $ (((\Div0|auto_generated|divider|divider|StageOut[104]~24_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[104]~25_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[104]~24_combout\ & !\Div0|auto_generated|divider|divider|StageOut[104]~25_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_64\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[104]~24_combout\ & !\Div0|auto_generated|divider|divider|StageOut[104]~25_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_62\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~25_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_64\);

-- Location: LC_X21_Y8_N4
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\ $ (((!\Div0|auto_generated|divider|divider|StageOut[105]~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[105]~11_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_64\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~12_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~11_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\);

-- Location: LC_X19_Y7_N2
\Div0|auto_generated|divider|divider|StageOut[108]~9\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~9_combout\ = ((\binario~combout\(13) & (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(13),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~9_combout\);

-- Location: LC_X21_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[108]~10\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~10_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~10_combout\);

-- Location: LC_X20_Y8_N8
\Div0|auto_generated|divider|divider|StageOut[107]~22\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~22_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & \binario~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \binario~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~22_combout\);

-- Location: LC_X20_Y8_N1
\Div0|auto_generated|divider|divider|StageOut[107]~23\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~23_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~23_combout\);

-- Location: LC_X20_Y8_N6
\Div0|auto_generated|divider|divider|StageOut[106]~20\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~20_combout\);

-- Location: LC_X21_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[106]~19\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~19_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \binario~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~19_combout\);

-- Location: LC_X21_Y8_N5
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ $ (((\Div0|auto_generated|divider|divider|StageOut[106]~20_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[106]~19_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[106]~20_combout\ & !\Div0|auto_generated|divider|divider|StageOut[106]~19_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[106]~20_combout\ & !\Div0|auto_generated|divider|divider|StageOut[106]~19_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~19_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\);

-- Location: LC_X21_Y8_N6
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\) $ (((!\Div0|auto_generated|divider|divider|StageOut[107]~22_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~23_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~22_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~23_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_68\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~22_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~23_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_68\);

-- Location: LC_X21_Y8_N7
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[108]~9_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[108]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_70\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[108]~9_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[108]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~10_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_70\);

-- Location: LC_X21_Y8_N8
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ = (((!(!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7_cout0\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\);

-- Location: LC_X20_Y8_N5
\Div0|auto_generated|divider|divider|StageOut[116]~15\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~15_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	datac => \binario~combout\(9),
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~15_combout\);

-- Location: LC_X22_Y9_N1
\Div0|auto_generated|divider|divider|StageOut[116]~26\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~26_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~26_combout\);

-- Location: LC_X20_Y8_N9
\Div0|auto_generated|divider|divider|StageOut[115]~28\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~28_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & (\binario~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(8),
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~28_combout\);

-- Location: LC_X22_Y7_N5
\Div0|auto_generated|divider|divider|StageOut[115]~34\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~34_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~34_combout\);

-- Location: LC_X21_Y7_N4
\Div0|auto_generated|divider|divider|StageOut[114]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~42_combout\);

-- Location: LC_X21_Y7_N7
\Div0|auto_generated|divider|divider|StageOut[114]~36\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~36_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3))) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1130",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datac => \binario~combout\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~36_combout\);

-- Location: LC_X19_Y9_N3
\Div0|auto_generated|divider|divider|StageOut[113]~47\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~47_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\binario~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~47_combout\);

-- Location: LC_X23_Y8_N9
\Div0|auto_generated|divider|divider|StageOut[113]~48\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~48_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~48_combout\);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(5),
	combout => \binario~combout\(5));

-- Location: LC_X22_Y9_N8
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3) = (\binario~combout\(5))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(5)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_72\ = CARRY((\binario~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_72\);

-- Location: LC_X22_Y9_N9
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\);

-- Location: LC_X22_Y8_N0
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_58\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_58\);

-- Location: LC_X22_Y8_N1
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\ $ (((!\Div0|auto_generated|divider|divider|StageOut[113]~47_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~48_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~48_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_60\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~48_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~48_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_60\);

-- Location: LC_X22_Y8_N2
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ $ (((!\Div0|auto_generated|divider|divider|StageOut[114]~42_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[114]~36_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~42_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~36_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_62\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_60\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~42_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~42_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~36_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_62\);

-- Location: LC_X22_Y8_N3
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\ $ (((\Div0|auto_generated|divider|divider|StageOut[115]~28_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[115]~34_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~28_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~34_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_64\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~28_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~34_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_62\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~34_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_64\);

-- Location: LC_X22_Y8_N4
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\ $ (((!\Div0|auto_generated|divider|divider|StageOut[116]~15_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[116]~26_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_64\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~15_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~26_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\);

-- Location: LC_X20_Y8_N2
\Div0|auto_generated|divider|divider|StageOut[119]~7\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	datab => \binario~combout\(12),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~7_combout\);

-- Location: LC_X21_Y8_N9
\Div0|auto_generated|divider|divider|StageOut[119]~8\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~8_combout\);

-- Location: LC_X20_Y8_N0
\Div0|auto_generated|divider|divider|StageOut[118]~4\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~4_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	datab => \binario~combout\(11),
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~4_combout\);

-- Location: LC_X22_Y7_N4
\Div0|auto_generated|divider|divider|StageOut[118]~21\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~21_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~21_combout\);

-- Location: LC_X20_Y7_N9
\Div0|auto_generated|divider|divider|StageOut[117]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ & ((\binario~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datac => \binario~combout\(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~0_combout\);

-- Location: LC_X23_Y8_N0
\Div0|auto_generated|divider|divider|StageOut[117]~13\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~13_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~13_combout\);

-- Location: LC_X22_Y8_N5
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ $ (((\Div0|auto_generated|divider|divider|StageOut[117]~0_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[117]~13_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[117]~0_combout\ & !\Div0|auto_generated|divider|divider|StageOut[117]~13_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[117]~0_combout\ & !\Div0|auto_generated|divider|divider|StageOut[117]~13_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~13_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\);

-- Location: LC_X22_Y8_N6
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\) $ (((!\Div0|auto_generated|divider|divider|StageOut[118]~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[118]~21_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~4_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~21_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17COUT1_68\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~4_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[118]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~21_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17COUT1_68\);

-- Location: LC_X22_Y8_N7
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[119]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[119]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_70\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[119]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[119]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~8_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_70\);

-- Location: LC_X22_Y8_N8
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ = (((!(!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7_cout0\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\);

-- Location: LC_X21_Y7_N8
\Div0|auto_generated|divider|divider|StageOut[126]~37\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~37_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~36_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[114]~36_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~37_combout\);

-- Location: LC_X22_Y7_N3
\Div0|auto_generated|divider|divider|StageOut[127]~35\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~35_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~35_combout\);

-- Location: LC_X22_Y7_N7
\Div0|auto_generated|divider|divider|StageOut[127]~29\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~29_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~28_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[115]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~29_combout\);

-- Location: LC_X21_Y7_N9
\Div0|auto_generated|divider|divider|StageOut[126]~43\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~43_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~43_combout\);

-- Location: LC_X23_Y8_N8
\Div0|auto_generated|divider|divider|StageOut[125]~49\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~49_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~49_combout\);

-- Location: LC_X23_Y8_N5
\Div0|auto_generated|divider|divider|StageOut[125]~44\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~44_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3))) # (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\binario~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0702",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~44_combout\);

-- Location: LC_X22_Y9_N5
\Div0|auto_generated|divider|divider|StageOut[124]~53\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~53_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3) & (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~53_combout\);

-- Location: LC_X22_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[124]~52\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~52_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \binario~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~52_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(4),
	combout => \binario~combout\(4));

-- Location: LC_X22_Y7_N0
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3) = (\binario~combout\(4))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(4)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_72\ = CARRY((\binario~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_72\);

-- Location: LC_X22_Y7_N1
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\);

-- Location: LC_X23_Y7_N0
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_58\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~40\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_58\);

-- Location: LC_X23_Y7_N1
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ $ (((!\Div0|auto_generated|divider|divider|StageOut[124]~53_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[124]~52_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[124]~53_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~52_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_60\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[124]~53_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~52_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~52_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_60\);

-- Location: LC_X23_Y7_N2
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ $ (((!\Div0|auto_generated|divider|divider|StageOut[125]~49_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[125]~44_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[125]~44_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_62\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_60\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[125]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~44_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_62\);

-- Location: LC_X23_Y7_N3
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ $ (((\Div0|auto_generated|divider|divider|StageOut[126]~37_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[126]~43_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[126]~37_combout\ & !\Div0|auto_generated|divider|divider|StageOut[126]~43_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27COUT1_64\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[126]~37_combout\ & !\Div0|auto_generated|divider|divider|StageOut[126]~43_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_62\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~43_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27COUT1_64\);

-- Location: LC_X23_Y7_N4
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\ $ (((!\Div0|auto_generated|divider|divider|StageOut[127]~35_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[127]~29_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27COUT1_64\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[127]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~29_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\);

-- Location: LC_X22_Y7_N6
\Div0|auto_generated|divider|divider|StageOut[130]~5\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~5_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~4_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[118]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~5_combout\);

-- Location: LC_X22_Y8_N9
\Div0|auto_generated|divider|divider|StageOut[130]~6\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\);

-- Location: LC_X23_Y8_N7
\Div0|auto_generated|divider|divider|StageOut[129]~1\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[117]~0_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~1_combout\);

-- Location: LC_X23_Y8_N1
\Div0|auto_generated|divider|divider|StageOut[129]~14\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~14_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~14_combout\);

-- Location: LC_X22_Y9_N3
\Div0|auto_generated|divider|divider|StageOut[128]~27\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~27_combout\);

-- Location: LC_X22_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[128]~16\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~16_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~15_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~16_combout\);

-- Location: LC_X23_Y7_N5
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ $ (((\Div0|auto_generated|divider|divider|StageOut[128]~27_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[128]~16_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[128]~27_combout\ & !\Div0|auto_generated|divider|divider|StageOut[128]~16_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[128]~27_combout\ & !\Div0|auto_generated|divider|divider|StageOut[128]~16_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~16_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\);

-- Location: LC_X23_Y7_N6
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\) $ (((!\Div0|auto_generated|divider|divider|StageOut[129]~1_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[129]~14_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~1_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[129]~14_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12COUT1_68\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~1_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[129]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12COUT1_68\);

-- Location: LC_X23_Y7_N7
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[130]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_70\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[130]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_70\);

-- Location: LC_X23_Y7_N8
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ = (((!(!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7_cout0\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\);

-- Location: LC_X21_Y7_N6
\Div0|auto_generated|divider|divider|StageOut[138]~38\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~38_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[126]~37_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[126]~37_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~38_combout\);

-- Location: LC_X23_Y6_N6
\Div0|auto_generated|divider|divider|StageOut[138]~39\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~39_combout\);

-- Location: LC_X23_Y8_N6
\Div0|auto_generated|divider|divider|StageOut[137]~45\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~45_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~44_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[125]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~45_combout\);

-- Location: LC_X23_Y6_N2
\Div0|auto_generated|divider|divider|StageOut[137]~46\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~46_combout\);

-- Location: LC_X23_Y7_N9
\Div0|auto_generated|divider|divider|StageOut[136]~51\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~51_combout\);

-- Location: LC_X22_Y9_N7
\Div0|auto_generated|divider|divider|StageOut[136]~50\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~50_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3))) # (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\binario~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	datad => \binario~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~50_combout\);

-- Location: LC_X22_Y7_N2
\Div0|auto_generated|divider|divider|StageOut[135]~55\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~55_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3) & ((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~55_combout\);

-- Location: LC_X22_Y7_N9
\Div0|auto_generated|divider|divider|StageOut[135]~54\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~54_combout\ = (\binario~combout\(4) & (((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~54_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(3),
	combout => \binario~combout\(3));

-- Location: LC_X23_Y6_N8
\Div0|auto_generated|divider|divider|StageOut[134]~56\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~56_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\binario~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~56_combout\);

-- Location: LC_X23_Y6_N9
\Div0|auto_generated|divider|divider|StageOut[134]~57\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\binario~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~57_combout\);

-- Location: LC_X22_Y6_N0
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42_cout0\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~56_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[134]~57_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_54\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~56_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[134]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[134]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_54\);

-- Location: LC_X22_Y6_N1
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[135]~55_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[135]~54_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_56\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[135]~55_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[135]~54_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~54_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~35\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_56\);

-- Location: LC_X22_Y6_N2
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~50_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_58\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_56\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~50_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_58\);

-- Location: LC_X22_Y6_N3
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout0\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[137]~45_combout\ & !\Div0|auto_generated|divider|divider|StageOut[137]~46_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32_cout0\))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27COUT1_60\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[137]~45_combout\ & !\Div0|auto_generated|divider|divider|StageOut[137]~46_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_58\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff1f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~45_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[137]~46_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~25\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27COUT1_60\);

-- Location: LC_X22_Y6_N4
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27COUT1_60\ & ((\Div0|auto_generated|divider|divider|StageOut[138]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[138]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~39_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\);

-- Location: LC_X23_Y8_N2
\Div0|auto_generated|divider|divider|StageOut[141]~2\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~2_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~1_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[129]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~2_combout\);

-- Location: LC_X23_Y6_N4
\Div0|auto_generated|divider|divider|StageOut[141]~3\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\);

-- Location: LC_X22_Y9_N6
\Div0|auto_generated|divider|divider|StageOut[140]~17\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~17_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~16_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[128]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~17_combout\);

-- Location: LC_X23_Y6_N5
\Div0|auto_generated|divider|divider|StageOut[140]~18\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~18_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~18_combout\);

-- Location: LC_X22_Y6_N9
\Div0|auto_generated|divider|divider|StageOut[139]~31\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~31_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~31_combout\);

-- Location: LC_X22_Y7_N8
\Div0|auto_generated|divider|divider|StageOut[139]~30\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~30_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~29_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[127]~29_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~30_combout\);

-- Location: LC_X22_Y6_N5
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17_cout0\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[139]~31_combout\ & !\Div0|auto_generated|divider|divider|StageOut[139]~30_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_62\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[139]~31_combout\ & !\Div0|auto_generated|divider|divider|StageOut[139]~30_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff1f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[139]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[139]~30_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_62\);

-- Location: LC_X22_Y6_N6
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17_cout0\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~17_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[140]~18_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12COUT1_64\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_62\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~17_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[140]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~18_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12COUT1_64\);

-- Location: LC_X22_Y6_N7
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~2_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7COUT1_66\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~2_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7COUT1_66\);

-- Location: LC_X22_Y6_N8
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\ = (((!(!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\ & \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7_cout0\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\ & \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22_cout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~7COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\);

-- Location: LC_X19_Y8_N2
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3) = ((\binario~combout\(7)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\ = CARRY(((\binario~combout\(7))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\ = CARRY(((\binario~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\);

-- Location: LC_X19_Y8_N3
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~COUTCOUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\);

-- Location: LC_X18_Y7_N0
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_52\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_52\);

-- Location: LC_X18_Y7_N1
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\ = \binario~combout\(8) $ ((((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\ = CARRY((!\binario~combout\(8) & ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7COUT1_54\ = CARRY((!\binario~combout\(8) & ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(8),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7COUT1_54\);

-- Location: LC_X18_Y7_N2
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ = (\binario~combout\(9) $ ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\ = CARRY(((\binario~combout\(9) & !\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12COUT1_56\ = CARRY(((\binario~combout\(9) & !\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(9),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~7COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12COUT1_56\);

-- Location: LC_X18_Y7_N3
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\ = \binario~combout\(10) $ ((((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\)) # (!\binario~combout\(10)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_58\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12COUT1_56\)) # (!\binario~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(10),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_58\);

-- Location: LC_X18_Y7_N4
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\ = \binario~combout\(11) $ ((((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ = CARRY((\binario~combout\(11) & ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(11),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~37COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\);

-- Location: LC_X18_Y7_N5
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\ = (\binario~combout\(12) $ ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\) # (!\binario~combout\(12))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\) # (!\binario~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(12),
	cin => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\);

-- Location: LC_X18_Y7_N6
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\ = (\binario~combout\(13) $ ((!(!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\))))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\ = CARRY(((\binario~combout\(13) & !\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_62\ = CARRY(((\binario~combout\(13) & !\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(13),
	cin => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_62\);

-- Location: LC_X18_Y7_N7
\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ = ((((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~32\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~17COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\);

-- Location: LC_X18_Y7_N8
\Mod0|auto_generated|divider|divider|StageOut[135]~57\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\);

-- Location: LC_X19_Y7_N4
\Mod0|auto_generated|divider|divider|StageOut[135]~56\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\ = ((\binario~combout\(13) & ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(13),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\);

-- Location: LC_X18_Y8_N1
\Mod0|auto_generated|divider|divider|StageOut[132]~88\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\);

-- Location: LC_X18_Y8_N5
\Mod0|auto_generated|divider|divider|StageOut[132]~87\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\ = (((\binario~combout\(10) & !\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \binario~combout\(10),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\);

-- Location: LC_X18_Y8_N3
\Mod0|auto_generated|divider|divider|StageOut[131]~37\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\);

-- Location: LC_X18_Y8_N9
\Mod0|auto_generated|divider|divider|StageOut[131]~36\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (((\binario~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\);

-- Location: LC_X19_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[130]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & \binario~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\);

-- Location: LC_X19_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[130]~31\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\);

-- Location: LC_X19_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[129]~26\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (\binario~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datac => \binario~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\);

-- Location: LC_X19_Y8_N1
\Mod0|auto_generated|divider|divider|StageOut[129]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\);

-- Location: LC_X19_Y9_N6
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3) = (\binario~combout\(6))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(6)))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\ = CARRY((\binario~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\);

-- Location: LC_X19_Y9_N7
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~COUTCOUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\);

-- Location: LC_X17_Y8_N0
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_58\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~25\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_58\);

-- Location: LC_X17_Y8_N1
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_60\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~27_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_60\);

-- Location: LC_X17_Y8_N2
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12COUT1_62\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_60\ & ((\Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~31_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~7COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12COUT1_62\);

-- Location: LC_X17_Y8_N3
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\ $ (((\Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_64\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12COUT1_62\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[131]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[131]~36_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~12COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_64\);

-- Location: LC_X17_Y8_N4
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_64\ & ((\Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[132]~88_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[132]~87_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~17COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\);

-- Location: LC_X17_Y8_N9
\Mod0|auto_generated|divider|divider|StageOut[134]~69\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (((\binario~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\);

-- Location: LC_X17_Y9_N3
\Mod0|auto_generated|divider|divider|StageOut[134]~70\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\);

-- Location: LC_X17_Y7_N2
\Mod0|auto_generated|divider|divider|StageOut[133]~79\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & \binario~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\);

-- Location: LC_X17_Y9_N9
\Mod0|auto_generated|divider|divider|StageOut[133]~80\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\);

-- Location: LC_X17_Y8_N5
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ $ (((\Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[133]~79_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[133]~80_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\);

-- Location: LC_X17_Y8_N6
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\ & ((\Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\ & ((\Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[134]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[134]~70_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\);

-- Location: LC_X17_Y8_N7
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_70\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[135]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[135]~56_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~32COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_70\);

-- Location: LC_X17_Y8_N8
\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ = (((!(!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~42\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~22COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\);

-- Location: LC_X18_Y7_N9
\Mod0|auto_generated|divider|divider|StageOut[150]~52\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & ((\binario~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\);

-- Location: LC_X18_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[146]~38\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\);

-- Location: LC_X18_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[146]~12\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & ((\binario~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\);

-- Location: LC_X19_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[145]~8\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & ((\binario~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\);

-- Location: LC_X18_Y11_N2
\Mod0|auto_generated|divider|divider|StageOut[145]~32\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\);

-- Location: LC_X19_Y8_N7
\Mod0|auto_generated|divider|divider|StageOut[144]~4\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (\binario~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \binario~combout\(7),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\);

-- Location: LC_X19_Y8_N5
\Mod0|auto_generated|divider|divider|StageOut[144]~28\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\);

-- Location: LC_X19_Y9_N8
\Mod0|auto_generated|divider|divider|StageOut[143]~51\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\);

-- Location: LC_X19_Y9_N9
\Mod0|auto_generated|divider|divider|StageOut[143]~50\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \binario~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\);

-- Location: LC_X18_Y12_N8
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3) = ((\binario~combout\(5)))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\ = CARRY(((\binario~combout\(5))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_80\ = CARRY(((\binario~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_80\);

-- Location: LC_X18_Y12_N9
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~COUTCOUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\);

-- Location: LC_X18_Y9_N0
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_64\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~30\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_64\);

-- Location: LC_X18_Y9_N1
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22COUT1_66\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[143]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[143]~50_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22COUT1_66\);

-- Location: LC_X18_Y9_N2
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\ & ((\Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_68\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22COUT1_66\ & ((\Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[144]~28_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_68\);

-- Location: LC_X18_Y9_N3
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\ $ (((\Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_70\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_68\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[145]~32_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~7COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_70\);

-- Location: LC_X18_Y9_N4
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_70\ & ((\Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[146]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~12COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\);

-- Location: LC_X19_Y9_N1
\Mod0|auto_generated|divider|divider|StageOut[150]~58\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\);

-- Location: LC_X17_Y9_N1
\Mod0|auto_generated|divider|divider|StageOut[149]~65\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & ((\binario~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datac => \binario~combout\(12),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\);

-- Location: LC_X17_Y9_N2
\Mod0|auto_generated|divider|divider|StageOut[149]~71\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\);

-- Location: LC_X17_Y9_N6
\Mod0|auto_generated|divider|divider|StageOut[148]~75\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (\binario~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(11),
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\);

-- Location: LC_X17_Y9_N4
\Mod0|auto_generated|divider|divider|StageOut[148]~81\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\);

-- Location: LC_X18_Y8_N2
\Mod0|auto_generated|divider|divider|StageOut[147]~89\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\);

-- Location: LC_X18_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[147]~83\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\ & (\binario~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \binario~combout\(10),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\);

-- Location: LC_X18_Y9_N5
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ $ (((\Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[147]~89_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\);

-- Location: LC_X18_Y9_N6
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\ & ((\Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\ & ((\Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[148]~81_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~47COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\);

-- Location: LC_X18_Y9_N7
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[149]~71_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~42COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\);

-- Location: LC_X18_Y9_N8
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\) $ (((\Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_78\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[150]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~37COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_78\);

-- Location: LC_X18_Y9_N9
\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ = ((((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~17\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~27COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\);

-- Location: LC_X19_Y9_N2
\Mod0|auto_generated|divider|divider|StageOut[165]~53\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[150]~52_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\);

-- Location: LC_X19_Y9_N4
\Mod0|auto_generated|divider|divider|StageOut[165]~59\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\);

-- Location: LC_X18_Y11_N3
\Mod0|auto_generated|divider|divider|StageOut[160]~9\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[145]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\);

-- Location: LC_X18_Y11_N0
\Mod0|auto_generated|divider|divider|StageOut[160]~33\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\);

-- Location: LC_X16_Y10_N0
\Mod0|auto_generated|divider|divider|StageOut[159]~29\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\);

-- Location: LC_X19_Y8_N9
\Mod0|auto_generated|divider|divider|StageOut[159]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[144]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\);

-- Location: LC_X19_Y9_N0
\Mod0|auto_generated|divider|divider|StageOut[158]~21\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3))) # (!\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & ((\binario~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\);

-- Location: LC_X17_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[158]~49\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\);

-- Location: LC_X18_Y11_N1
\Mod0|auto_generated|divider|divider|StageOut[157]~63\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \binario~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \binario~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\);

-- Location: LC_X18_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[157]~64\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\);

-- Location: LC_X18_Y12_N1
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3) = (\binario~combout\(4))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(4)))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_85\ = CARRY((\binario~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_85\);

-- Location: LC_X18_Y12_N2
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~COUTCOUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\);

-- Location: LC_X18_Y11_N5
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_69\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~40\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_69\);

-- Location: LC_X18_Y11_N6
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\ = \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_71\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_69\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[157]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[157]~64_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~42COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_71\);

-- Location: LC_X18_Y11_N7
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\ & ((\Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22COUT1_73\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_71\ & ((\Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[158]~49_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~32COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22COUT1_73\);

-- Location: LC_X18_Y11_N8
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\ $ (((\Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_75\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22COUT1_73\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[159]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_75\);

-- Location: LC_X18_Y11_N9
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_75\ & ((\Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[160]~33_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~7COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\);

-- Location: LC_X17_Y9_N8
\Mod0|auto_generated|divider|divider|StageOut[164]~66\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[149]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\);

-- Location: LC_X17_Y9_N7
\Mod0|auto_generated|divider|divider|StageOut[164]~72\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\);

-- Location: LC_X17_Y9_N0
\Mod0|auto_generated|divider|divider|StageOut[163]~76\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[148]~75_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\);

-- Location: LC_X17_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[163]~82\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\);

-- Location: LC_X18_Y10_N7
\Mod0|auto_generated|divider|divider|StageOut[162]~90\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\);

-- Location: LC_X18_Y8_N7
\Mod0|auto_generated|divider|divider|StageOut[162]~84\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[147]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\);

-- Location: LC_X18_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[161]~13\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[146]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\);

-- Location: LC_X18_Y10_N8
\Mod0|auto_generated|divider|divider|StageOut[161]~39\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\);

-- Location: LC_X18_Y10_N0
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ = \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ $ (((\Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[161]~39_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\);

-- Location: LC_X18_Y10_N1
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\ & ((\Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\ & ((\Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[162]~90_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~17COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\);

-- Location: LC_X18_Y10_N2
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\)))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[163]~82_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~52COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\);

-- Location: LC_X18_Y10_N3
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\) $ (((\Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\)))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[164]~72_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~47COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\);

-- Location: LC_X18_Y10_N4
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[165]~59_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~37COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\);

-- Location: LC_X18_Y10_N5
\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\);

-- Location: LC_X17_Y10_N6
\Mod0|auto_generated|divider|divider|StageOut[180]~55\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[180]~55_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[180]~55_combout\);

-- Location: LC_X19_Y9_N5
\Mod0|auto_generated|divider|divider|StageOut[180]~54\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[180]~54_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[165]~53_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[180]~54_combout\);

-- Location: LC_X16_Y10_N3
\Mod0|auto_generated|divider|divider|StageOut[175]~34\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\);

-- Location: LC_X18_Y11_N4
\Mod0|auto_generated|divider|divider|StageOut[175]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[160]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\);

-- Location: LC_X17_Y12_N0
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(3) = (\binario~combout\(3))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUT\ = CARRY((\binario~combout\(3)))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUTCOUT1_90\ = CARRY((\binario~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(3),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUTCOUT1_90\);

-- Location: LC_X17_Y12_N1
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~COUTCOUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62_combout\);

-- Location: LC_X17_Y11_N4
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~50\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\);

-- Location: LC_X16_Y10_N4
\Mod0|auto_generated|divider|divider|StageOut[174]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\);

-- Location: LC_X16_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[174]~6\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[159]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\);

-- Location: LC_X17_Y12_N5
\Mod0|auto_generated|divider|divider|StageOut[173]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[158]~21_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\);

-- Location: LC_X17_Y12_N9
\Mod0|auto_generated|divider|divider|StageOut[173]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\);

-- Location: LC_X17_Y11_N2
\Mod0|auto_generated|divider|divider|StageOut[172]~62\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\);

-- Location: LC_X18_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[172]~44\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3))) # (!\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & ((\binario~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0072",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(3),
	datac => \binario~combout\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\);

-- Location: LC_X18_Y12_N3
\Mod0|auto_generated|divider|divider|StageOut[171]~74\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\);

-- Location: LC_X18_Y12_N7
\Mod0|auto_generated|divider|divider|StageOut[171]~73\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (\binario~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \binario~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\);

-- Location: LC_X17_Y11_N5
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40_combout\ = \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[171]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[171]~73_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\);

-- Location: LC_X17_Y11_N6
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\ & ((\Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\ & ((\Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[172]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~42COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\);

-- Location: LC_X17_Y11_N7
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\) $ (((\Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~32COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\);

-- Location: LC_X17_Y11_N8
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\) $ (((!\Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\ & ((\Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\ & ((\Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[174]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~22COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\);

-- Location: LC_X17_Y11_N9
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\) $ (((\Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[175]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~52_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~2COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\);

-- Location: LC_X17_Y9_N5
\Mod0|auto_generated|divider|divider|StageOut[179]~67\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[164]~66_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\);

-- Location: LC_X17_Y10_N8
\Mod0|auto_generated|divider|divider|StageOut[179]~68\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\);

-- Location: LC_X17_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[178]~78\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~45_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\);

-- Location: LC_X17_Y12_N3
\Mod0|auto_generated|divider|divider|StageOut[178]~77\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[163]~76_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\);

-- Location: LC_X17_Y10_N7
\Mod0|auto_generated|divider|divider|StageOut[177]~86\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\);

-- Location: LC_X18_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[177]~85\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[162]~84_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~45_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\);

-- Location: LC_X16_Y10_N6
\Mod0|auto_generated|divider|divider|StageOut[176]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\);

-- Location: LC_X18_Y10_N6
\Mod0|auto_generated|divider|divider|StageOut[176]~14\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[161]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\);

-- Location: LC_X17_Y10_N0
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\ = \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ & ((\Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_82\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\ & ((\Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[176]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_82\);

-- Location: LC_X17_Y10_N1
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\)))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57COUT1_84\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[177]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[177]~85_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~17COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~55\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57COUT1_84\);

-- Location: LC_X17_Y10_N2
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47COUT1_86\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[178]~78_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[178]~77_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~45\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47COUT1_86\);

-- Location: LC_X17_Y10_N3
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_88\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[179]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[179]~68_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~35\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_88\);

-- Location: LC_X17_Y10_N4
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[180]~55_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[180]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[180]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[180]~54_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~12\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~37COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~25\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout\);

-- Location: LC_X17_Y10_N5
\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~27_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\);

-- Location: LC_X18_Y12_N5
\Mod0|auto_generated|divider|divider|StageOut[187]~45\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[172]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\);

-- Location: LC_X17_Y11_N0
\Mod0|auto_generated|divider|divider|StageOut[187]~46\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\);

-- Location: LC_X15_Y10_N7
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	cout0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\);

-- Location: LC_X15_Y10_N5
\Mod0|auto_generated|divider|divider|StageOut[187]~19\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\);

-- Location: LC_X16_Y11_N0
\Mod0|auto_generated|divider|divider|StageOut[190]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\);

-- Location: LC_X16_Y10_N7
\Mod0|auto_generated|divider|divider|StageOut[190]~11\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[175]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\);

-- Location: LC_X16_Y10_N1
\Mod0|auto_generated|divider|divider|StageOut[189]~3\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\);

-- Location: LC_X16_Y10_N2
\Mod0|auto_generated|divider|divider|StageOut[189]~7\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[174]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\);

-- Location: LC_X17_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[188]~47\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\);

-- Location: LC_X17_Y11_N3
\Mod0|auto_generated|divider|divider|StageOut[188]~48\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\);

-- Location: LC_X15_Y10_N8
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\);

-- Location: LC_X16_Y11_N1
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\ = CARRY(((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_38\ = CARRY(((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_38\);

-- Location: LC_X16_Y11_N2
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ = \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_40\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_40\);

-- Location: LC_X16_Y11_N3
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ = \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ $ (((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\)))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_42\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_42\);

-- Location: LC_X16_Y11_N4
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ = \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ $ (((\Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_42\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\);

-- Location: LC_X16_Y10_N8
\Mod0|auto_generated|divider|divider|StageOut[191]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[176]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\);

-- Location: LC_X16_Y9_N0
\Mod0|auto_generated|divider|divider|StageOut[191]~16\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\);

-- Location: LC_X16_Y11_N5
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ = \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_44\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_44\);

-- Location: LC_X16_Y11_N6
\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ = ((((!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\) # 
-- (\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\);

-- Location: LC_X15_Y11_N0
\Div1|auto_generated|divider|divider|StageOut[52]~33\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~33_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~33_combout\);

-- Location: LC_X15_Y11_N8
\Div1|auto_generated|divider|divider|StageOut[52]~10\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~10_combout\);

-- Location: LC_X15_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[51]~17\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~17_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~17_combout\);

-- Location: LC_X17_Y11_N1
\Mod1|auto_generated|divider|divider|StageOut[63]~18\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[173]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[173]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\);

-- Location: LC_X15_Y12_N3
\Div1|auto_generated|divider|divider|StageOut[51]~16\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~16_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~16_combout\);

-- Location: LC_X15_Y10_N2
\Div1|auto_generated|divider|divider|StageOut[50]~23\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~23_combout\ = (((!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2) & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~23_combout\);

-- Location: LC_X15_Y10_N3
\Div1|auto_generated|divider|divider|StageOut[50]~22\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ = ((!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~22_combout\);

-- Location: LC_X12_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[186]~60\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\);

-- Location: LC_X18_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[186]~61\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3)))) # (!\Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\ & (\binario~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0232",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\);

-- Location: LC_X15_Y12_N1
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\);

-- Location: LC_X15_Y12_N2
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\);

-- Location: LC_X15_Y11_N1
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32COUT1_44\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32COUT1_44\);

-- Location: LC_X15_Y11_N2
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\ = \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\ $ (((!\Div1|auto_generated|divider|divider|StageOut[50]~23_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[50]~22_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[50]~23_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_46\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[50]~23_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~23_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~22_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_46\);

-- Location: LC_X15_Y11_N3
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\ = \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ $ (((\Div1|auto_generated|divider|divider|StageOut[51]~17_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[51]~16_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[51]~17_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[51]~16_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\)))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_48\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[51]~17_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[51]~16_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~17_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~16_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_48\);

-- Location: LC_X15_Y11_N4
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ = \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ $ (((\Div1|auto_generated|divider|divider|StageOut[52]~33_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[52]~10_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[52]~33_combout\ & !\Div1|auto_generated|divider|divider|StageOut[52]~10_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_48\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~33_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~10_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\);

-- Location: LC_X15_Y12_N7
\Div1|auto_generated|divider|divider|StageOut[54]~9\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~9_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~9_combout\);

-- Location: LC_X16_Y9_N8
\Div1|auto_generated|divider|divider|StageOut[54]~8\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~8_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~8_combout\);

-- Location: LC_X16_Y11_N7
\Div1|auto_generated|divider|divider|StageOut[53]~5\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~5_combout\);

-- Location: LC_X16_Y11_N9
\Div1|auto_generated|divider|divider|StageOut[53]~15\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~15_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~15_combout\);

-- Location: LC_X15_Y11_N5
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ = \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ $ (((!\Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[53]~15_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~5_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~15_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_50\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~5_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~5_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[53]~15_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_50\);

-- Location: LC_X15_Y11_N6
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[54]~9_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[54]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\)))
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_52\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[54]~9_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[54]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[54]~9_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[54]~8_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_52\);

-- Location: LC_X15_Y11_N7
\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ = (((!(!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\) # 
-- (\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\);

-- Location: LC_X15_Y10_N9
\Div1|auto_generated|divider|divider|StageOut[59]~19\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[59]~19_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2))) # (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[59]~19_combout\);

-- Location: LC_X15_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[59]~24\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[59]~24_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[59]~24_combout\);

-- Location: LC_X12_Y10_N0
\Div1|auto_generated|divider|divider|StageOut[58]~27\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ = ((!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~27_combout\);

-- Location: LC_X15_Y12_N9
\Div1|auto_generated|divider|divider|StageOut[58]~28\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~28_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~28_combout\);

-- Location: LC_X17_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[185]~23\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\);

-- Location: LC_X17_Y12_N7
\Mod0|auto_generated|divider|divider|StageOut[185]~24\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & (((\binario~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datac => \binario~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\);

-- Location: LC_X12_Y12_N1
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_54\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_54\);

-- Location: LC_X12_Y12_N2
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\);

-- Location: LC_X16_Y12_N1
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ = CARRY(((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_44\ = CARRY(((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~30\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_44\);

-- Location: LC_X16_Y12_N2
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ = \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ $ (((!\Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[58]~28_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[58]~28_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_46\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[58]~28_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[58]~27_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[58]~28_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_46\);

-- Location: LC_X16_Y12_N3
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ = \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ $ (((\Div1|auto_generated|divider|divider|StageOut[59]~19_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[59]~24_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[59]~19_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[59]~24_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\)))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_48\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[59]~19_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[59]~24_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[59]~19_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[59]~24_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_48\);

-- Location: LC_X15_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[60]~12\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~12_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~12_combout\);

-- Location: LC_X15_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[60]~18\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~18_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~18_combout\);

-- Location: LC_X16_Y12_N4
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ = \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ $ (((\Div1|auto_generated|divider|divider|StageOut[60]~12_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[60]~18_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[60]~12_combout\ & !\Div1|auto_generated|divider|divider|StageOut[60]~18_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_48\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[60]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[60]~18_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\);

-- Location: LC_X15_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[62]~7\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~7_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~7_combout\);

-- Location: LC_X16_Y11_N8
\Div1|auto_generated|divider|divider|StageOut[62]~6\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~6_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~5_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~5_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~6_combout\);

-- Location: LC_X15_Y11_N9
\Div1|auto_generated|divider|divider|StageOut[61]~2\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~2_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~33_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[52]~33_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~2_combout\);

-- Location: LC_X16_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[61]~11\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~11_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~11_combout\);

-- Location: LC_X16_Y12_N5
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ = \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ $ (((!\Div1|auto_generated|divider|divider|StageOut[61]~2_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[61]~11_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~2_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~11_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_50\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~2_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[61]~11_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_50\);

-- Location: LC_X16_Y12_N6
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[62]~7_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[62]~6_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\)))
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_52\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[62]~7_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[62]~6_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[62]~7_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[62]~6_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_52\);

-- Location: LC_X16_Y12_N7
\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ = (((!(!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ & \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\) # 
-- (\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ & \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\);

-- Location: LC_X16_Y13_N9
\Div1|auto_generated|divider|divider|StageOut[68]~21\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~21_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ & \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~21_combout\);

-- Location: LC_X15_Y13_N7
\Div1|auto_generated|divider|divider|StageOut[68]~20\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~20_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[59]~19_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[59]~19_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~20_combout\);

-- Location: LC_X12_Y10_N1
\Mod0|auto_generated|divider|divider|StageOut[186]~43\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\);

-- Location: LC_X15_Y12_N5
\Div1|auto_generated|divider|divider|StageOut[67]~25\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~25_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2)))) # (!\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~25_combout\);

-- Location: LC_X16_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[67]~26\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~26_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~26_combout\);

-- Location: LC_X12_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[66]~30\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~30_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2) & (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~30_combout\);

-- Location: LC_X12_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[66]~29\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~29_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~29_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(2),
	combout => \binario~combout\(2));

-- Location: LC_X15_Y13_N5
\Div1|auto_generated|divider|divider|StageOut[65]~32\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~32_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \binario~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \binario~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~32_combout\);

-- Location: LC_X15_Y13_N9
\Div1|auto_generated|divider|divider|StageOut[65]~31\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~31_combout\ = (((!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \binario~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \binario~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~31_combout\);

-- Location: LC_X16_Y13_N1
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32_cout0\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[65]~32_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[65]~31_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_42\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[65]~32_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[65]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[65]~32_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[65]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_42\);

-- Location: LC_X16_Y13_N2
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[66]~30_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[66]~29_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_44\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[66]~30_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[66]~29_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[66]~30_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[66]~29_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~25\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_44\);

-- Location: LC_X16_Y13_N3
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[67]~25_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[67]~26_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_46\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[67]~25_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[67]~26_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[67]~25_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[67]~26_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_46\);

-- Location: LC_X16_Y13_N4
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[68]~21_combout\ & !\Div1|auto_generated|divider|divider|StageOut[68]~20_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_46\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff1f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[68]~21_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[68]~20_combout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\);

-- Location: LC_X16_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[70]~3\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~3_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~2_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~3_combout\);

-- Location: LC_X16_Y12_N9
\Div1|auto_generated|divider|divider|StageOut[70]~4\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~4_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~4_combout\);

-- Location: LC_X15_Y13_N8
\Div1|auto_generated|divider|divider|StageOut[69]~13\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~13_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[60]~12_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\ & \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[60]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~13_combout\);

-- Location: LC_X16_Y13_N8
\Div1|auto_generated|divider|divider|StageOut[69]~14\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~14_combout\ = (((\Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ & \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~14_combout\);

-- Location: LC_X16_Y13_N5
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12_cout0\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~13_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~14_combout\))))
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_48\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~13_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[69]~13_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~14_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_48\);

-- Location: LC_X16_Y13_N6
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[70]~3_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[70]~4_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12_cout0\)))
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_50\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[70]~3_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[70]~4_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[70]~3_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[70]~4_combout\,
	cin => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5\,
	cout0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\,
	cout1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_50\);

-- Location: LC_X16_Y13_N7
\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ = (((!(!\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ & \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\) # 
-- (\Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\ & \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17_cout\,
	cin0 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\,
	cin1 => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\);

-- Location: LC_X15_Y10_N0
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\);

-- Location: LC_X15_Y10_N1
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\);

-- Location: LC_X16_Y9_N1
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_38\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_38\);

-- Location: LC_X16_Y9_N2
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_40\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[188]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[188]~47_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_40\);

-- Location: LC_X16_Y9_N3
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ $ (((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_42\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[189]~3_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_42\);

-- Location: LC_X16_Y9_N4
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\ $ (((\Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_42\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[190]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\);

-- Location: LC_X16_Y9_N5
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_44\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[191]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_44\);

-- Location: LC_X16_Y9_N6
\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ = ((((!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\);

-- Location: LC_X9_Y10_N6
\Mod1|auto_generated|divider|divider|StageOut[64]~56\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\);

-- Location: LC_X16_Y10_N5
\Mod1|auto_generated|divider|divider|StageOut[64]~57\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[189]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\);

-- Location: LC_X10_Y9_N2
\Mod1|auto_generated|divider|divider|StageOut[63]~33\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\);

-- Location: LC_X10_Y9_N5
\Mod1|auto_generated|divider|divider|StageOut[63]~34\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\);

-- Location: LC_X15_Y10_N4
\Mod1|auto_generated|divider|divider|StageOut[62]~28\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[187]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\);

-- Location: LC_X11_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[62]~29\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ = (((!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2) & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\);

-- Location: LC_X12_Y10_N3
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\);

-- Location: LC_X12_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\);

-- Location: LC_X11_Y10_N1
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_44\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_44\);

-- Location: LC_X11_Y10_N2
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_46\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[62]~28_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_46\);

-- Location: LC_X11_Y10_N3
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\ $ (((\Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_48\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[63]~33_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[63]~34_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_48\);

-- Location: LC_X11_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ $ (((\Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_48\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[64]~56_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\);

-- Location: LC_X16_Y9_N9
\Mod1|auto_generated|divider|divider|StageOut[66]~37\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[191]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\);

-- Location: LC_X11_Y10_N0
\Mod1|auto_generated|divider|divider|StageOut[66]~45\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\);

-- Location: LC_X16_Y9_N7
\Mod1|auto_generated|divider|divider|StageOut[65]~46\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[190]~11_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\);

-- Location: LC_X10_Y9_N9
\Mod1|auto_generated|divider|divider|StageOut[65]~51\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\);

-- Location: LC_X11_Y10_N5
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & ((\Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & ((\Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[65]~51_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\);

-- Location: LC_X11_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\) $ (((!\Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_52\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[66]~45_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_52\);

-- Location: LC_X11_Y10_N7
\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ = (((!(!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~32\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\);

-- Location: LC_X9_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[75]~52\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[64]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\);

-- Location: LC_X9_Y10_N4
\Mod1|auto_generated|divider|divider|StageOut[75]~55\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\);

-- Location: LC_X10_Y9_N4
\Mod1|auto_generated|divider|divider|StageOut[74]~19\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\);

-- Location: LC_X10_Y9_N8
\Mod1|auto_generated|divider|divider|StageOut[74]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\);

-- Location: LC_X15_Y10_N6
\Mod1|auto_generated|divider|divider|StageOut[73]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~19_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\);

-- Location: LC_X9_Y10_N5
\Mod1|auto_generated|divider|divider|StageOut[73]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\);

-- Location: LC_X12_Y10_N6
\Mod1|auto_generated|divider|divider|StageOut[72]~44\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\);

-- Location: LC_X12_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[72]~43\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3232",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[186]~60_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[186]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\);

-- Location: LC_X12_Y12_N7
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2) = (\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_62\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_62\);

-- Location: LC_X12_Y12_N8
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\);

-- Location: LC_X8_Y10_N0
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_50\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~30\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_50\);

-- Location: LC_X8_Y10_N1
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_52\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[72]~44_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[72]~43_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_52\);

-- Location: LC_X8_Y10_N2
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ $ (((\Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_54\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[73]~30_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_54\);

-- Location: LC_X8_Y10_N3
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\ $ (((\Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_56\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_54\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~35_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_56\);

-- Location: LC_X8_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_56\ & ((\Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[75]~55_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\);

-- Location: LC_X11_Y10_N9
\Mod1|auto_generated|divider|divider|StageOut[77]~38\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[66]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\);

-- Location: LC_X12_Y10_N7
\Mod1|auto_generated|divider|divider|StageOut[77]~41\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\);

-- Location: LC_X10_Y9_N1
\Mod1|auto_generated|divider|divider|StageOut[76]~47\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[65]~46_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\);

-- Location: LC_X10_Y9_N6
\Mod1|auto_generated|divider|divider|StageOut[76]~50\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\);

-- Location: LC_X8_Y10_N5
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[76]~50_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\);

-- Location: LC_X8_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\) $ (((\Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_60\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_60\);

-- Location: LC_X8_Y10_N7
\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ = ((((!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_60\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~37\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\);

-- Location: LC_X10_Y9_N7
\Mod1|auto_generated|divider|divider|StageOut[85]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~19_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\);

-- Location: LC_X7_Y10_N2
\Mod1|auto_generated|divider|divider|StageOut[85]~36\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\);

-- Location: LC_X9_Y10_N3
\Mod1|auto_generated|divider|divider|StageOut[84]~16\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~15_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\);

-- Location: LC_X9_Y10_N0
\Mod1|auto_generated|divider|divider|StageOut[84]~31\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\);

-- Location: LC_X12_Y10_N2
\Mod1|auto_generated|divider|divider|StageOut[83]~26\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[186]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\);

-- Location: LC_X9_Y10_N7
\Mod1|auto_generated|divider|divider|StageOut[83]~42\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\);

-- Location: LC_X12_Y12_N9
\Mod1|auto_generated|divider|divider|StageOut[82]~23\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\ = ((!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\);

-- Location: LC_X12_Y12_N5
\Mod1|auto_generated|divider|divider|StageOut[82]~24\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2) & (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\);

-- Location: LC_X15_Y13_N2
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2) = ((\binario~combout\(2)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\ = CARRY(((\binario~combout\(2))))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_72\ = CARRY(((\binario~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \binario~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_72\);

-- Location: LC_X15_Y13_N3
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\);

-- Location: LC_X10_Y10_N0
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_58\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~25\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_58\);

-- Location: LC_X10_Y10_N1
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_60\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[82]~23_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_60\);

-- Location: LC_X10_Y10_N2
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\ $ (((\Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_62\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[83]~42_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_62\);

-- Location: LC_X10_Y10_N3
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\ $ (((\Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_64\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_62\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[84]~31_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~32COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_64\);

-- Location: LC_X10_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\))))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_64\ & ((\Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[85]~36_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\);

-- Location: LC_X8_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[88]~40\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\);

-- Location: LC_X12_Y10_N5
\Mod1|auto_generated|divider|divider|StageOut[88]~39\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\);

-- Location: LC_X10_Y9_N3
\Mod1|auto_generated|divider|divider|StageOut[87]~48\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[76]~47_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\);

-- Location: LC_X7_Y9_N2
\Mod1|auto_generated|divider|divider|StageOut[87]~49\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~25_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\);

-- Location: LC_X8_Y10_N9
\Mod1|auto_generated|divider|divider|StageOut[86]~54\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\);

-- Location: LC_X9_Y10_N1
\Mod1|auto_generated|divider|divider|StageOut[86]~53\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~30_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[75]~52_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\);

-- Location: LC_X10_Y10_N5
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42_cout0\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42COUT1_66\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[86]~54_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[86]~53_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~40\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42COUT1_66\);

-- Location: LC_X10_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37_cout0\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37COUT1_68\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[87]~48_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[87]~49_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~42COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~35\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37COUT1_68\);

-- Location: LC_X10_Y10_N7
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_70\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[88]~40_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[88]~39_combout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~37COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_70\);

-- Location: LC_X10_Y10_N8
\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ = (((!(!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\);

-- Location: LC_X8_Y11_N6
\Mod1|auto_generated|divider|divider|StageOut[96]~21\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[85]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\);

-- Location: LC_X8_Y11_N8
\Mod1|auto_generated|divider|divider|StageOut[96]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\);

-- Location: LC_X8_Y12_N2
\Mod1|auto_generated|divider|divider|StageOut[95]~32\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\);

-- Location: LC_X9_Y10_N9
\Mod1|auto_generated|divider|divider|StageOut[95]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[84]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\);

-- Location: LC_X10_Y10_N9
\Mod1|auto_generated|divider|divider|StageOut[94]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~30_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\);

-- Location: LC_X9_Y10_N2
\Mod1|auto_generated|divider|divider|StageOut[94]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[83]~26_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\);

-- Location: LC_X9_Y11_N1
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	cout0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\);

-- Location: LC_X9_Y11_N2
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\);

-- Location: LC_X8_Y12_N5
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ = CARRY((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\ = CARRY((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\);

-- Location: LC_X8_Y12_N6
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ = \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\);

-- Location: LC_X8_Y12_N7
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ = \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\);

-- Location: LC_X8_Y12_N8
\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\);

-- Location: LC_X8_Y12_N4
\Div2|auto_generated|divider|divider|StageOut[18]~7\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~7_combout\ = ((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: LC_X8_Y11_N5
\Div2|auto_generated|divider|divider|StageOut[18]~6\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~6_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LC_X8_Y12_N1
\Div2|auto_generated|divider|divider|StageOut[17]~13\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~13_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LC_X8_Y12_N9
\Div2|auto_generated|divider|divider|StageOut[17]~3\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~3_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LC_X9_Y11_N8
\Div2|auto_generated|divider|divider|StageOut[16]~8\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~8_combout\ = ((!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LC_X9_Y11_N5
\Div2|auto_generated|divider|divider|StageOut[16]~9\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~9_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~9_combout\);

-- Location: LC_X12_Y12_N3
\Mod0|auto_generated|divider|divider|StageOut[185]~2\ : cyclone_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[185]~2_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[185]~24_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[185]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[185]~2_combout\);

-- Location: LC_X12_Y12_N0
\Mod1|auto_generated|divider|divider|StageOut[93]~11\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2))) # (!\Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[185]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	datad => \Mod0|auto_generated|divider|divider|StageOut[185]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\);

-- Location: LC_X11_Y13_N7
\Mod1|auto_generated|divider|divider|StageOut[93]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\);

-- Location: LC_X11_Y13_N5
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	cout0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\);

-- Location: LC_X11_Y13_N6
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\);

-- Location: LC_X9_Y12_N0
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ = CARRY(((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\ = CARRY(((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\);

-- Location: LC_X9_Y12_N1
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ = \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ $ (((!\Div2|auto_generated|divider|divider|StageOut[16]~8_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~9_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~8_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~9_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\)))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_35\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~8_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~9_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~9_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_35\);

-- Location: LC_X9_Y12_N2
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ = \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ $ (((!\Div2|auto_generated|divider|divider|StageOut[17]~13_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[17]~3_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~3_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_37\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_35\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~3_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_37\);

-- Location: LC_X9_Y12_N3
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~7_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\)))
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~7_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~6_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\);

-- Location: LC_X9_Y12_N4
\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ = (((!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y13_N7
\Div2|auto_generated|divider|divider|StageOut[23]~5\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~5_combout\ = ((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~5_combout\);

-- Location: LC_X8_Y12_N0
\Div2|auto_generated|divider|divider|StageOut[23]~4\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~4_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~3_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~4_combout\);

-- Location: LC_X9_Y11_N0
\Mod1|auto_generated|divider|divider|StageOut[94]~14\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\ = ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\);

-- Location: LC_X9_Y13_N5
\Div2|auto_generated|divider|divider|StageOut[22]~0\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~0_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- ((!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1)))) # (!\Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LC_X9_Y13_N8
\Div2|auto_generated|divider|divider|StageOut[22]~10\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~10_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ & (((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~10_combout\);

-- Location: LC_X11_Y13_N3
\Div2|auto_generated|divider|divider|StageOut[21]~14\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~14_combout\ = ((!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~14_combout\);

-- Location: LC_X11_Y13_N8
\Div2|auto_generated|divider|divider|StageOut[21]~15\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~15_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~15_combout\);

-- Location: LC_X15_Y13_N6
\Mod1|auto_generated|divider|divider|StageOut[92]~8\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\ = ((!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\binario~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \binario~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\);

-- Location: LC_X15_Y13_N1
\Mod1|auto_generated|divider|divider|StageOut[92]~7\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\ = (((!\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2) & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\);

-- Location: LC_X9_Y12_N5
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_41\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_41\);

-- Location: LC_X9_Y12_N6
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ = (((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\);

-- Location: LC_X9_Y13_N0
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ = CARRY(((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_33\ = CARRY(((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_33\);

-- Location: LC_X9_Y13_N1
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ = \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ $ (((!\Div2|auto_generated|divider|divider|StageOut[21]~14_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~15_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~14_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\)))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~14_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~14_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~15_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\);

-- Location: LC_X9_Y13_N2
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ = \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ $ (((!\Div2|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[22]~10_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~0_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~10_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_37\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~0_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_37\);

-- Location: LC_X9_Y13_N3
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~5_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\)))
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_39\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~5_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~5_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~4_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_39\);

-- Location: LC_X9_Y13_N4
\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = (((!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y13_N6
\Div2|auto_generated|divider|divider|StageOut[28]~2\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~2_combout\ = ((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~2_combout\);

-- Location: LC_X9_Y13_N9
\Div2|auto_generated|divider|divider|StageOut[28]~1\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~1_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~0_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~1_combout\);

-- Location: LC_X10_Y13_N9
\Div2|auto_generated|divider|divider|StageOut[27]~12\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~12_combout\ = ((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~12_combout\);

-- Location: LC_X11_Y13_N4
\Mod1|auto_generated|divider|divider|StageOut[93]~6\ : cyclone_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\);

-- Location: LC_X11_Y13_N9
\Div2|auto_generated|divider|divider|StageOut[27]~11\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~11_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1))) # (!\Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0072",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	datac => \Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~11_combout\);

-- Location: LC_X10_Y13_N7
\Div2|auto_generated|divider|divider|StageOut[26]~16\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~16_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3322",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~16_combout\);

-- Location: LC_X10_Y13_N5
\Div2|auto_generated|divider|divider|StageOut[26]~17\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~17_combout\ = (((!\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) & \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~17_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(1),
	combout => \binario~combout\(1));

-- Location: LC_X10_Y13_N6
\Div2|auto_generated|divider|divider|StageOut[25]~19\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~19_combout\ = (((\binario~combout\(1) & \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \binario~combout\(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~19_combout\);

-- Location: LC_X10_Y13_N8
\Div2|auto_generated|divider|divider|StageOut[25]~18\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~18_combout\ = (((\binario~combout\(1) & !\Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \binario~combout\(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~18_combout\);

-- Location: LC_X10_Y13_N0
\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[25]~19_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[25]~18_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_31\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[25]~19_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[25]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~19_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_31\);

-- Location: LC_X10_Y13_N1
\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[26]~16_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[26]~17_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\)))
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_33\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[26]~16_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[26]~17_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~16_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~17_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_33\);

-- Location: LC_X10_Y13_N2
\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~12_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~11_combout\))))
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_35\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_33\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~12_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~11_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_35\);

-- Location: LC_X10_Y13_N3
\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[28]~2_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[28]~1_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\)))
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_37\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[28]~2_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[28]~1_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~1_combout\,
	cin0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\,
	cout0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\,
	cout1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_37\);

-- Location: LC_X10_Y13_N4
\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (((!\Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\,
	cin1 => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\binario[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_binario(0),
	combout => \binario~combout\(0));

-- Location: LC_X9_Y12_N7
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1) = (\binario~combout\(1))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ = CARRY((\binario~combout\(1)))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_56\ = CARRY((\binario~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \binario~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_56\);

-- Location: LC_X9_Y11_N3
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\);

-- Location: LC_X9_Y11_N4
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\);

-- Location: LC_X8_Y11_N0
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ = CARRY(((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\ = CARRY(((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\);

-- Location: LC_X8_Y11_N1
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ = \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[95]~32_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\);

-- Location: LC_X8_Y11_N2
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ = \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[96]~22_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\);

-- Location: LC_X8_Y11_N3
\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\);

-- Location: LC_X8_Y11_N9
\Mod2|auto_generated|divider|divider|StageOut[24]~9\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[96]~21_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LC_X8_Y11_N4
\Mod2|auto_generated|divider|divider|StageOut[24]~14\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\);

-- Location: LC_X8_Y12_N3
\Mod2|auto_generated|divider|divider|StageOut[23]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[95]~17_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\);

-- Location: LC_X10_Y11_N5
\Mod2|auto_generated|divider|divider|StageOut[23]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\ = ((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\);

-- Location: LC_X9_Y11_N6
\Mod2|auto_generated|divider|divider|StageOut[22]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\ = ((!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[94]~27_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[94]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LC_X9_Y11_N9
\Mod2|auto_generated|divider|divider|StageOut[22]~26\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\);

-- Location: LC_X11_Y12_N0
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\);

-- Location: LC_X11_Y12_N1
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\);

-- Location: LC_X10_Y11_N0
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ = CARRY((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\ = CARRY((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\);

-- Location: LC_X10_Y11_N1
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_35\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[22]~26_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_35\);

-- Location: LC_X10_Y11_N2
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ & ((\Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_37\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_35\ & ((\Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[23]~20_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_37\);

-- Location: LC_X10_Y11_N3
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~14_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\);

-- Location: LC_X10_Y11_N4
\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ = (((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y11_N7
\Mod2|auto_generated|divider|divider|StageOut[30]~21\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[94]~14_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\);

-- Location: LC_X12_Y11_N2
\Mod2|auto_generated|divider|divider|StageOut[30]~24\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\);

-- Location: LC_X11_Y12_N7
\Mod2|auto_generated|divider|divider|StageOut[29]~8\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\);

-- Location: LC_X11_Y13_N2
\Mod2|auto_generated|divider|divider|StageOut[29]~7\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\ = ((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[93]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[93]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\);

-- Location: LC_X11_Y12_N2
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = (\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_46\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_46\);

-- Location: LC_X11_Y12_N3
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\);

-- Location: LC_X11_Y11_N2
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ = CARRY(((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_38\ = CARRY(((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_38\);

-- Location: LC_X11_Y11_N3
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ = \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_40\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[29]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[29]~7_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_40\);

-- Location: LC_X11_Y11_N4
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ = \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_40\ & ((\Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[30]~24_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\);

-- Location: LC_X8_Y11_N7
\Mod2|auto_generated|divider|divider|StageOut[32]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\);

-- Location: LC_X11_Y12_N4
\Mod2|auto_generated|divider|divider|StageOut[32]~13\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\);

-- Location: LC_X10_Y11_N8
\Mod2|auto_generated|divider|divider|StageOut[31]~16\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[23]~15_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\);

-- Location: LC_X10_Y11_N7
\Mod2|auto_generated|divider|divider|StageOut[31]~19\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\ = ((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\);

-- Location: LC_X11_Y11_N5
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\ = \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~19_combout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\);

-- Location: LC_X11_Y11_N6
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\) $ (((\Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_44\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[32]~13_combout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_44\);

-- Location: LC_X11_Y11_N7
\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = ((((!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y11_N9
\Mod2|auto_generated|divider|divider|StageOut[38]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~22_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[30]~21_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~22_combout\);

-- Location: LC_X11_Y11_N8
\Mod2|auto_generated|divider|divider|StageOut[38]~23\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~23_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~23_combout\);

-- Location: LC_X11_Y12_N8
\Mod2|auto_generated|divider|divider|StageOut[37]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[93]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\);

-- Location: LC_X11_Y11_N1
\Mod2|auto_generated|divider|divider|StageOut[37]~4\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\);

-- Location: LC_X11_Y12_N6
\Mod2|auto_generated|divider|divider|StageOut[36]~1\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\ = ((!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[92]~7_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\);

-- Location: LC_X11_Y12_N9
\Mod2|auto_generated|divider|divider|StageOut[36]~2\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\ = (((!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\);

-- Location: LC_X9_Y12_N8
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\);

-- Location: LC_X10_Y12_N1
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ = CARRY((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_46\ = CARRY((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_46\);

-- Location: LC_X10_Y12_N2
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ = \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\)))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_48\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_48\);

-- Location: LC_X10_Y12_N3
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ = \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ $ (((!\Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\))))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_50\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_48\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_50\);

-- Location: LC_X10_Y12_N4
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[38]~22_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[38]~23_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[38]~22_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[38]~23_combout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\);

-- Location: LC_X11_Y11_N9
\Mod2|auto_generated|divider|divider|StageOut[40]~12\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\);

-- Location: LC_X11_Y12_N5
\Mod2|auto_generated|divider|divider|StageOut[40]~11\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\);

-- Location: LC_X10_Y11_N6
\Mod2|auto_generated|divider|divider|StageOut[39]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\);

-- Location: LC_X11_Y11_N0
\Mod2|auto_generated|divider|divider|StageOut[39]~18\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\ = (((\Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\);

-- Location: LC_X10_Y12_N5
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_52\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[39]~17_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[39]~18_combout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_52\);

-- Location: LC_X10_Y12_N6
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\)))
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_54\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[40]~12_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[40]~11_combout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\,
	cout0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_54\);

-- Location: LC_X10_Y12_N7
\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (((!(!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ & \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ & \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	cin0 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y12_N9
\Mod2|auto_generated|divider|divider|StageOut[43]~0\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[43]~0_combout\ = ((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\binario~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	datac => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \binario~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[43]~0_combout\);

-- Location: LC_X10_Y12_N9
\Mod2|auto_generated|divider|divider|StageOut[44]~3\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[44]~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[36]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[36]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[44]~3_combout\);

-- Location: LC_X10_Y12_N8
\Mod2|auto_generated|divider|divider|StageOut[45]~6\ : cyclone_lcell
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[45]~6_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod2|auto_generated|divider|divider|StageOut[45]~6_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(0));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(1));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(2));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(3));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div1|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div1|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(1));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div1|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div1|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div2|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div2|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div2|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div2|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \binario~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(0));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mod2|auto_generated|divider|divider|StageOut[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mod2|auto_generated|divider|divider|StageOut[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(2));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mod2|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(3));
END structure;


