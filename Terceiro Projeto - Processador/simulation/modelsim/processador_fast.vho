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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/28/2018 15:07:22"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- output[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \datapath|alu1|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Selector44~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|Selector31~1_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|OPCODE[1]~0_combout\ : std_logic;
SIGNAL \controller|Selector40~0_combout\ : std_logic;
SIGNAL \controller|state.s3~regout\ : std_logic;
SIGNAL \controller|Selector38~0_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~feeder_combout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|Selector44~1_combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Selector45~0_combout\ : std_logic;
SIGNAL \controller|Selector45~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \controller|WideOr1~combout\ : std_logic;
SIGNAL \controller|Selector36~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[0]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|enable~regout\ : std_logic;
SIGNAL \output[0]~reg0_regout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_regout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[2]~feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_regout\ : std_logic;
SIGNAL \controller|Selector33~0_combout\ : std_logic;
SIGNAL \output[3]~reg0_regout\ : std_logic;
SIGNAL \hex0[0]~0_combout\ : std_logic;
SIGNAL \hex0[0]~reg0_regout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \hex1[0]~reg0_regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \hex4[0]~0_combout\ : std_logic;
SIGNAL \hex4[0]~reg0_regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \hex4[1]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hex4[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \hex4[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \hex4[4]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \hex4[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \hex4[6]~reg0_regout\ : std_logic;
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|estado_atual\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acumulador_atual|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clk <= clk;
output <= ww_output;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\datapath|alu1|Mux4~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \datapath|alu1|Mux4~0_combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: LCCOMB_X3_Y14_N6
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (VCC)
-- \controller|Add0~1\ = CARRY(\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X2_Y14_N20
\controller|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector44~0_combout\ = (\controller|estado_atual\(1) & (((\controller|OPCODE\(1) & \controller|state.s3~regout\)) # (!\controller|state.s0~regout\))) # (!\controller|estado_atual\(1) & (((\controller|OPCODE\(1) & 
-- \controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \controller|state.s0~regout\,
	datac => \controller|OPCODE\(1),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector44~0_combout\);

-- Location: LCFF_X3_Y14_N5
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|PC\(0),
	sload => VCC,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCFF_X3_Y14_N19
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|PC\(1),
	sload => VCC,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X3_Y14_N26
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|state.done~regout\) # ((\controller|state.s2~regout\ & !\controller|OPCODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|state.done~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X3_Y14_N27
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.done~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X3_Y14_N28
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.done~regout\) # ((\controller|state.s3~regout\) # (\controller|state.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.done~regout\,
	datac => \controller|state.s3~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCCOMB_X3_Y14_N14
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (\controller|Add0~0_combout\ & ((\controller|state.s2~regout\) # ((\controller|Selector31~0_combout\ & \controller|PC\(0))))) # (!\controller|Add0~0_combout\ & (\controller|Selector31~0_combout\ & (\controller|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Add0~0_combout\,
	datab => \controller|Selector31~0_combout\,
	datac => \controller|PC\(0),
	datad => \controller|state.s2~regout\,
	combout => \controller|Selector32~0_combout\);

-- Location: LCFF_X3_Y14_N15
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector32~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X3_Y14_N8
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = \controller|PC\(1) $ (\controller|Add0~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(1),
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\);

-- Location: LCCOMB_X3_Y14_N20
\controller|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~1_combout\ = (\controller|state.s2~regout\ & ((\controller|Add0~2_combout\) # ((\controller|PC\(1) & \controller|Selector31~0_combout\)))) # (!\controller|state.s2~regout\ & (((\controller|PC\(1) & 
-- \controller|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~2_combout\,
	datac => \controller|PC\(1),
	datad => \controller|Selector31~0_combout\,
	combout => \controller|Selector31~1_combout\);

-- Location: LCFF_X3_Y14_N21
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector31~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X3_Y14_N10
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (!\controller|PC\(1)) # (!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	combout => \controller|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y14_N16
\controller|OPCODE[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[1]~0_combout\ = (!\rst~combout\ & \controller|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|OPCODE[1]~0_combout\);

-- Location: LCFF_X3_Y14_N11
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X3_Y14_N24
\controller|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector40~0_combout\ = (\controller|state.s2~regout\ & \controller|OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector40~0_combout\);

-- Location: LCFF_X3_Y14_N25
\controller|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector40~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s3~regout\);

-- Location: LCCOMB_X3_Y14_N22
\controller|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector38~0_combout\ = (\controller|state.s3~regout\) # ((!\controller|state.s0~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datab => \start~combout\,
	datac => \controller|state.s3~regout\,
	combout => \controller|Selector38~0_combout\);

-- Location: LCFF_X3_Y14_N23
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector38~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCCOMB_X3_Y14_N12
\controller|state.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s2~feeder_combout\ = \controller|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|state.s1~regout\,
	combout => \controller|state.s2~feeder_combout\);

-- Location: LCFF_X3_Y14_N13
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.s2~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X2_Y14_N10
\controller|Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector44~1_combout\ = (\controller|Selector44~0_combout\) # ((\controller|estado_atual\(1) & ((\controller|state.s2~regout\) # (\controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Selector44~0_combout\,
	datab => \controller|state.s2~regout\,
	datac => \controller|estado_atual\(1),
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector44~1_combout\);

-- Location: LCFF_X2_Y14_N11
\controller|estado_atual[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector44~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(1));

-- Location: LCCOMB_X3_Y14_N0
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\start~combout\) # (\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \controller|state.s0~regout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X3_Y14_N1
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.s0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X2_Y14_N18
\controller|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector45~0_combout\ = (\controller|estado_atual\(0)) # ((\controller|state.s0~regout\ & (!\controller|state.s2~regout\ & !\controller|state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datab => \controller|state.s0~regout\,
	datac => \controller|state.s2~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector45~0_combout\);

-- Location: LCCOMB_X2_Y14_N2
\controller|Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector45~1_combout\ = (\controller|Selector45~0_combout\ & ((!\controller|state.s3~regout\) # (!\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Selector45~0_combout\,
	datac => \controller|OPCODE\(1),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector45~1_combout\);

-- Location: LCFF_X2_Y14_N3
\controller|estado_atual[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector45~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(0));

-- Location: LCCOMB_X1_Y14_N8
\datapath|alu1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux4~0_combout\ = (\controller|estado_atual\(1) & !\controller|estado_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|estado_atual\(1),
	datad => \controller|estado_atual\(0),
	combout => \datapath|alu1|Mux4~0_combout\);

-- Location: CLKCTRL_G2
\datapath|alu1|Mux4~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \datapath|alu1|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \datapath|alu1|Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y14_N24
\controller|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr1~combout\ = (\controller|state.done~regout\) # ((\controller|state.s2~regout\) # (\controller|state.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done~regout\,
	datab => \controller|state.s2~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|WideOr1~combout\);

-- Location: LCCOMB_X2_Y14_N26
\controller|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector36~0_combout\ = (\controller|ADDRESS\(0) & ((\controller|state.s3~regout\) # ((\controller|imm\(0) & \controller|WideOr1~combout\)))) # (!\controller|ADDRESS\(0) & (((\controller|imm\(0) & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(0),
	datab => \controller|state.s3~regout\,
	datac => \controller|imm\(0),
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector36~0_combout\);

-- Location: LCFF_X2_Y14_N27
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector36~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X2_Y14_N14
\datapath|alu1|output[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(0) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & ((\controller|imm\(0)))) # (!GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & (\datapath|alu1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(0),
	datac => \datapath|alu1|Mux4~0clkctrl_outclk\,
	datad => \controller|imm\(0),
	combout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X1_Y14_N6
\datapath|acumulador_atual|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|acumulador_atual|output[0]~feeder_combout\);

-- Location: LCCOMB_X2_Y14_N6
\controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = (\controller|state.s3~regout\) # ((\controller|WideOr1~combout\ & \controller|enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|WideOr1~combout\,
	datab => \controller|state.s3~regout\,
	datac => \controller|enable~regout\,
	combout => \controller|Selector0~0_combout\);

-- Location: LCFF_X2_Y14_N7
\controller|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector0~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enable~regout\);

-- Location: LCFF_X1_Y14_N7
\datapath|acumulador_atual|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|acumulador_atual|output[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(0));

-- Location: LCFF_X2_Y14_N25
\output[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acumulador_atual|output\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y14_N4
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|ADDRESS\(1) & ((\controller|state.s3~regout\) # ((\controller|imm\(1) & \controller|WideOr1~combout\)))) # (!\controller|ADDRESS\(1) & (((\controller|imm\(1) & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(1),
	datab => \controller|state.s3~regout\,
	datac => \controller|imm\(1),
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector35~0_combout\);

-- Location: LCFF_X2_Y14_N5
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector35~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCCOMB_X1_Y14_N16
\datapath|alu1|output[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(1) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & ((\controller|imm\(1)))) # (!GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & (\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(1),
	datac => \datapath|alu1|Mux4~0clkctrl_outclk\,
	datad => \controller|imm\(1),
	combout => \datapath|alu1|output\(1));

-- Location: LCFF_X1_Y14_N17
\datapath|acumulador_atual|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output\(1),
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(1));

-- Location: LCCOMB_X2_Y14_N8
\output[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = \datapath|acumulador_atual|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output\(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: LCFF_X2_Y14_N9
\output[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \output[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y14_N22
\datapath|alu1|output[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(2) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & ((\controller|enable~regout\))) # (!GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & (\datapath|alu1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|Mux4~0clkctrl_outclk\,
	datad => \controller|enable~regout\,
	combout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X1_Y14_N20
\datapath|acumulador_atual|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[2]~feeder_combout\ = \datapath|alu1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(2),
	combout => \datapath|acumulador_atual|output[2]~feeder_combout\);

-- Location: LCFF_X1_Y14_N21
\datapath|acumulador_atual|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|acumulador_atual|output[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(2));

-- Location: LCFF_X2_Y14_N29
\output[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acumulador_atual|output\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[2]~reg0_regout\);

-- Location: LCCOMB_X2_Y14_N30
\controller|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector33~0_combout\ = (\controller|WideOr1~combout\ & ((\controller|imm\(3)) # ((!\controller|OPCODE\(1) & \controller|state.s3~regout\)))) # (!\controller|WideOr1~combout\ & (!\controller|OPCODE\(1) & ((\controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|WideOr1~combout\,
	datab => \controller|OPCODE\(1),
	datac => \controller|imm\(3),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector33~0_combout\);

-- Location: LCFF_X2_Y14_N31
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector33~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCCOMB_X1_Y14_N28
\datapath|alu1|output[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(3) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & ((\controller|imm\(3)))) # (!GLOBAL(\datapath|alu1|Mux4~0clkctrl_outclk\) & (\datapath|alu1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|Mux4~0clkctrl_outclk\,
	datad => \controller|imm\(3),
	combout => \datapath|alu1|output\(3));

-- Location: LCFF_X1_Y14_N29
\datapath|acumulador_atual|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output\(3),
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(3));

-- Location: LCFF_X2_Y14_N17
\output[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acumulador_atual|output\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y14_N12
\hex0[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0[0]~0_combout\ = (\controller|estado_atual\(0) & ((\hex0[0]~reg0_regout\) # (!\controller|estado_atual\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datac => \hex0[0]~reg0_regout\,
	datad => \controller|estado_atual\(1),
	combout => \hex0[0]~0_combout\);

-- Location: LCFF_X2_Y14_N13
\hex0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y14_N0
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\controller|estado_atual\(1) & ((\hex1[0]~reg0_regout\) # (!\controller|estado_atual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datac => \hex1[0]~reg0_regout\,
	datad => \controller|estado_atual\(1),
	combout => \Mux27~0_combout\);

-- Location: LCFF_X2_Y14_N1
\hex1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex1[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N30
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\datapath|acumulador_atual|output\(3) & (!\datapath|acumulador_atual|output\(1) & (\datapath|acumulador_atual|output\(2) $ (\datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\hex4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4[0]~0_combout\ = ((!\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(2))) # (!\datapath|acumulador_atual|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(2),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \hex4[0]~0_combout\);

-- Location: LCFF_X1_Y14_N31
\hex4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux6~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N24
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\datapath|acumulador_atual|output\(3) & (\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) $ (\datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X1_Y14_N25
\hex4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux5~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N22
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\datapath|acumulador_atual|output\(3) & (!\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X1_Y14_N23
\hex4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux4~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N12
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) $ (!\datapath|acumulador_atual|output\(0)))) # (!\datapath|acumulador_atual|output\(2) & 
-- (!\datapath|acumulador_atual|output\(1) & \datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X1_Y14_N13
\hex4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux3~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N14
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(0)) # ((\datapath|acumulador_atual|output\(2) & !\datapath|acumulador_atual|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X1_Y14_N15
\hex4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux2~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\datapath|acumulador_atual|output\(3) & (((\datapath|acumulador_atual|output\(0))))) # (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) & 
-- \datapath|acumulador_atual|output\(0))) # (!\datapath|acumulador_atual|output\(2) & ((\datapath|acumulador_atual|output\(1)) # (\datapath|acumulador_atual|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X1_Y14_N19
\hex4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux1~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y14_N10
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) & \datapath|acumulador_atual|output\(0))) # (!\datapath|acumulador_atual|output\(2) & 
-- (!\datapath|acumulador_atual|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \datapath|acumulador_atual|output\(2),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(0),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X1_Y14_N11
\hex4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux0~0_combout\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[6]~reg0_regout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => \output[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => \output[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => \output[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => \output[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
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
	datain => \hex4[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
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
	datain => \hex4[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
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
	datain => \hex4[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
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
	datain => \hex4[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
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
	datain => \hex4[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
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
	datain => \hex4[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
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
	datain => \hex4[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));
END structure;


