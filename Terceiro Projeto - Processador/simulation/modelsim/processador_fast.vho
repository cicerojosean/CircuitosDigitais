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

-- DATE "06/28/2018 17:59:02"

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
-- output[0]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acumulador_atual|output~1_combout\ : std_logic;
SIGNAL \controller|Selector36~0_combout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|alu1|output[0]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controller|Selector38~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~feeder_combout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|WideOr2~0_combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Selector30~0_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|OPCODE[1]~0_combout\ : std_logic;
SIGNAL \controller|Selector40~0_combout\ : std_logic;
SIGNAL \controller|state.s3~regout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Selector45~0_combout\ : std_logic;
SIGNAL \controller|Selector45~1_combout\ : std_logic;
SIGNAL \hex3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \controller|Selector44~0_combout\ : std_logic;
SIGNAL \controller|Selector44~1_combout\ : std_logic;
SIGNAL \hex3[0]~0_combout\ : std_logic;
SIGNAL \hex3[0]~reg0_regout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \hex1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \hex1[0]~reg0_regout\ : std_logic;
SIGNAL \controller|WideOr1~combout\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|enable~regout\ : std_logic;
SIGNAL \datapath|acumulador_atual|temp[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output~3_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector33~0_combout\ : std_logic;
SIGNAL \datapath|acu_in[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output~2_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|acu_in[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[2]~feeder_combout\ : std_logic;
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
SIGNAL \hex4[6]~1_combout\ : std_logic;
SIGNAL \hex4[6]~reg0_regout\ : std_logic;
SIGNAL \datapath|acumulador_atual|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acumulador_atual|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|estado_atual\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acu_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;
SIGNAL \ALT_INV_hex4[6]~reg0_regout\ : std_logic;

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

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;
\ALT_INV_hex4[6]~reg0_regout\ <= NOT \hex4[6]~reg0_regout\;

-- Location: LCFF_X62_Y26_N11
\datapath|acumulador_atual|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(0));

-- Location: LCFF_X63_Y26_N11
\datapath|acu_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|alu1|output\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(0));

-- Location: LCFF_X63_Y26_N5
\datapath|acumulador_atual|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|temp\(0));

-- Location: LCCOMB_X63_Y26_N4
\datapath|acumulador_atual|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output~1_combout\ = (\controller|enable~regout\ & ((\datapath|acu_in\(0)))) # (!\controller|enable~regout\ & (\datapath|acumulador_atual|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enable~regout\,
	datac => \datapath|acumulador_atual|temp\(0),
	datad => \datapath|acu_in\(0),
	combout => \datapath|acumulador_atual|output~1_combout\);

-- Location: LCFF_X63_Y26_N15
\datapath|alu1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|output[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(0));

-- Location: LCFF_X64_Y27_N21
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector36~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCFF_X64_Y27_N13
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Mux3~0_combout\,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCCOMB_X64_Y27_N20
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

-- Location: LCFF_X64_Y27_N29
\controller|ADDRESS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|PC\(2),
	sload => VCC,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(3));

-- Location: LCCOMB_X64_Y27_N12
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (\controller|PC\(0)) # ((\controller|PC\(2) & \controller|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(2),
	datac => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y26_N10
\datapath|acumulador_atual|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[0]~feeder_combout\ = \datapath|acumulador_atual|output~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output~1_combout\,
	combout => \datapath|acumulador_atual|output[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y26_N14
\datapath|alu1|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[0]~feeder_combout\ = \controller|imm\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|imm\(0),
	combout => \datapath|alu1|output[0]~feeder_combout\);

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

-- Location: LCCOMB_X63_Y27_N2
\controller|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector38~0_combout\ = (\controller|state.s3~regout\) # ((!\controller|state.s0~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datac => \start~combout\,
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector38~0_combout\);

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

-- Location: LCFF_X63_Y27_N3
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector38~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCCOMB_X63_Y27_N28
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

-- Location: LCFF_X63_Y27_N29
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|state.s2~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X63_Y27_N14
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|state.done~regout\) # ((\controller|state.s2~regout\ & !\controller|OPCODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s2~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|state.done~0_combout\);

-- Location: LCFF_X63_Y27_N15
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|state.done~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X63_Y27_N6
\controller|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr2~0_combout\ = (\controller|state.s1~regout\) # ((\controller|state.done~regout\) # (\controller|state.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s1~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|state.s3~regout\,
	combout => \controller|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y26_N0
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

-- Location: LCCOMB_X64_Y26_N8
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (\controller|state.s2~regout\ & ((\controller|Add0~0_combout\) # ((\controller|PC\(0) & \controller|WideOr2~0_combout\)))) # (!\controller|state.s2~regout\ & (((\controller|PC\(0) & \controller|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~0_combout\,
	datac => \controller|PC\(0),
	datad => \controller|WideOr2~0_combout\,
	combout => \controller|Selector32~0_combout\);

-- Location: LCFF_X64_Y26_N9
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector32~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X64_Y26_N2
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|PC\(1) & (!\controller|Add0~1\)) # (!\controller|PC\(1) & ((\controller|Add0~1\) # (GND)))
-- \controller|Add0~3\ = CARRY((!\controller|Add0~1\) # (!\controller|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => VCC,
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\,
	cout => \controller|Add0~3\);

-- Location: LCCOMB_X64_Y26_N22
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.s2~regout\ & ((\controller|Add0~2_combout\) # ((\controller|WideOr2~0_combout\ & \controller|PC\(1))))) # (!\controller|state.s2~regout\ & (\controller|WideOr2~0_combout\ & (\controller|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|WideOr2~0_combout\,
	datac => \controller|PC\(1),
	datad => \controller|Add0~2_combout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCFF_X64_Y26_N23
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector31~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X64_Y26_N4
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = \controller|PC\(2) $ (!\controller|Add0~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(2),
	cin => \controller|Add0~3\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X64_Y26_N24
\controller|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector30~0_combout\ = (\controller|state.s2~regout\ & ((\controller|Add0~4_combout\) # ((\controller|PC\(2) & \controller|WideOr2~0_combout\)))) # (!\controller|state.s2~regout\ & (((\controller|PC\(2) & \controller|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~4_combout\,
	datac => \controller|PC\(2),
	datad => \controller|WideOr2~0_combout\,
	combout => \controller|Selector30~0_combout\);

-- Location: LCFF_X64_Y26_N25
\controller|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector30~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(2));

-- Location: LCCOMB_X64_Y27_N24
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (!\controller|PC\(1)) # (!\controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(2),
	datac => \controller|PC\(1),
	combout => \controller|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y27_N28
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

-- Location: LCFF_X64_Y27_N25
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X63_Y27_N22
\controller|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector40~0_combout\ = (\controller|state.s2~regout\ & \controller|OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s2~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector40~0_combout\);

-- Location: LCFF_X63_Y27_N23
\controller|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector40~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s3~regout\);

-- Location: LCCOMB_X63_Y27_N16
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\start~combout\) # (\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \controller|state.s0~regout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X63_Y27_N17
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|state.s0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X63_Y26_N8
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

-- Location: LCCOMB_X63_Y26_N24
\controller|Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector45~1_combout\ = (\controller|Selector45~0_combout\ & ((!\controller|OPCODE\(1)) # (!\controller|state.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s3~regout\,
	datac => \controller|Selector45~0_combout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector45~1_combout\);

-- Location: LCFF_X63_Y26_N25
\controller|estado_atual[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector45~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(0));

-- Location: LCCOMB_X64_Y26_N6
\hex3[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3[0]~reg0feeder_combout\ = \controller|estado_atual\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|estado_atual\(0),
	combout => \hex3[0]~reg0feeder_combout\);

-- Location: LCCOMB_X63_Y26_N26
\controller|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector44~0_combout\ = (\controller|estado_atual\(1) & (((\controller|state.s3~regout\ & \controller|OPCODE\(1))) # (!\controller|state.s0~regout\))) # (!\controller|estado_atual\(1) & (((\controller|state.s3~regout\ & 
-- \controller|OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \controller|state.s0~regout\,
	datac => \controller|state.s3~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector44~0_combout\);

-- Location: LCCOMB_X63_Y26_N6
\controller|Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector44~1_combout\ = (\controller|Selector44~0_combout\) # ((\controller|estado_atual\(1) & ((\controller|state.s2~regout\) # (\controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Selector44~0_combout\,
	datac => \controller|estado_atual\(1),
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector44~1_combout\);

-- Location: LCFF_X63_Y26_N7
\controller|estado_atual[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector44~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(1));

-- Location: LCCOMB_X63_Y26_N20
\hex3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3[0]~0_combout\ = (!\rst~combout\ & ((!\controller|estado_atual\(1)) # (!\controller|estado_atual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datab => \rst~combout\,
	datad => \controller|estado_atual\(1),
	combout => \hex3[0]~0_combout\);

-- Location: LCFF_X64_Y26_N7
\hex3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex3[0]~reg0feeder_combout\,
	ena => \hex3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex3[0]~reg0_regout\);

-- Location: LCCOMB_X63_Y26_N18
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\controller|estado_atual\(0) & \controller|estado_atual\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(1),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X64_Y26_N12
\hex1[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1[0]~reg0feeder_combout\ = \Mux27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux27~0_combout\,
	combout => \hex1[0]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N13
\hex1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex1[0]~reg0feeder_combout\,
	ena => \hex3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex1[0]~reg0_regout\);

-- Location: LCCOMB_X63_Y27_N12
\controller|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr1~combout\ = (\controller|state.s1~regout\) # ((\controller|state.done~regout\) # (\controller|state.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s1~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|WideOr1~combout\);

-- Location: LCCOMB_X63_Y26_N0
\controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = (\controller|state.s3~regout\) # ((\controller|WideOr1~combout\ & \controller|enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|WideOr1~combout\,
	datac => \controller|enable~regout\,
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector0~0_combout\);

-- Location: LCFF_X63_Y26_N1
\controller|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector0~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enable~regout\);

-- Location: LCCOMB_X64_Y27_N14
\datapath|acumulador_atual|temp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|temp[1]~feeder_combout\ = \datapath|acumulador_atual|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output~3_combout\,
	combout => \datapath|acumulador_atual|temp[1]~feeder_combout\);

-- Location: LCFF_X64_Y27_N15
\datapath|acumulador_atual|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|temp[1]~feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|temp\(1));

-- Location: LCFF_X64_Y27_N3
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|PC\(1),
	sload => VCC,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: LCCOMB_X64_Y27_N16
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|WideOr1~combout\ & ((\controller|imm\(1)) # ((\controller|ADDRESS\(1) & \controller|state.s3~regout\)))) # (!\controller|WideOr1~combout\ & (\controller|ADDRESS\(1) & ((\controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|WideOr1~combout\,
	datab => \controller|ADDRESS\(1),
	datac => \controller|imm\(1),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector35~0_combout\);

-- Location: LCFF_X64_Y27_N17
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector35~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCFF_X63_Y26_N21
\datapath|alu1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|imm\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(1));

-- Location: LCFF_X63_Y26_N3
\datapath|acu_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|alu1|output\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(1));

-- Location: LCCOMB_X63_Y27_N8
\datapath|acumulador_atual|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output~3_combout\ = (\controller|enable~regout\ & ((\datapath|acu_in\(1)))) # (!\controller|enable~regout\ & (\datapath|acumulador_atual|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enable~regout\,
	datac => \datapath|acumulador_atual|temp\(1),
	datad => \datapath|acu_in\(1),
	combout => \datapath|acumulador_atual|output~3_combout\);

-- Location: LCCOMB_X62_Y26_N22
\datapath|acumulador_atual|output[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[1]~feeder_combout\ = \datapath|acumulador_atual|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output~3_combout\,
	combout => \datapath|acumulador_atual|output[1]~feeder_combout\);

-- Location: LCFF_X62_Y26_N23
\datapath|acumulador_atual|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[1]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(1));

-- Location: LCFF_X63_Y26_N17
\datapath|acumulador_atual|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|temp\(3));

-- Location: LCCOMB_X64_Y27_N26
\controller|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector33~0_combout\ = (\controller|ADDRESS\(3) & ((\controller|state.s3~regout\) # ((\controller|imm\(3) & \controller|WideOr1~combout\)))) # (!\controller|ADDRESS\(3) & (((\controller|imm\(3) & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(3),
	datab => \controller|state.s3~regout\,
	datac => \controller|imm\(3),
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector33~0_combout\);

-- Location: LCFF_X64_Y27_N27
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector33~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCFF_X63_Y26_N19
\datapath|alu1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|imm\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X63_Y26_N22
\datapath|acu_in[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acu_in[3]~feeder_combout\ = \datapath|alu1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(3),
	combout => \datapath|acu_in[3]~feeder_combout\);

-- Location: LCFF_X63_Y26_N23
\datapath|acu_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acu_in[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(3));

-- Location: LCCOMB_X63_Y26_N16
\datapath|acumulador_atual|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output~2_combout\ = (\controller|enable~regout\ & ((\datapath|acu_in\(3)))) # (!\controller|enable~regout\ & (\datapath|acumulador_atual|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enable~regout\,
	datac => \datapath|acumulador_atual|temp\(3),
	datad => \datapath|acu_in\(3),
	combout => \datapath|acumulador_atual|output~2_combout\);

-- Location: LCFF_X62_Y26_N25
\datapath|acumulador_atual|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acumulador_atual|output~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(3));

-- Location: LCFF_X63_Y26_N31
\datapath|acumulador_atual|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|temp\(2));

-- Location: LCCOMB_X64_Y27_N18
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (\controller|PC\(1)) # (!\controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(2),
	datac => \controller|PC\(1),
	combout => \controller|Mux2~0_combout\);

-- Location: LCFF_X64_Y27_N19
\controller|ADDRESS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Mux2~0_combout\,
	ena => \controller|OPCODE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(2));

-- Location: LCCOMB_X64_Y27_N22
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|WideOr1~combout\ & ((\controller|imm\(2)) # ((\controller|ADDRESS\(2) & \controller|state.s3~regout\)))) # (!\controller|WideOr1~combout\ & (\controller|ADDRESS\(2) & ((\controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|WideOr1~combout\,
	datab => \controller|ADDRESS\(2),
	datac => \controller|imm\(2),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X64_Y27_N23
\controller|imm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector34~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(2));

-- Location: LCCOMB_X63_Y26_N28
\datapath|alu1|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[2]~feeder_combout\ = \controller|imm\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|imm\(2),
	combout => \datapath|alu1|output[2]~feeder_combout\);

-- Location: LCFF_X63_Y26_N29
\datapath|alu1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|output[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X63_Y26_N12
\datapath|acu_in[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acu_in[2]~feeder_combout\ = \datapath|alu1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(2),
	combout => \datapath|acu_in[2]~feeder_combout\);

-- Location: LCFF_X63_Y26_N13
\datapath|acu_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acu_in[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(2));

-- Location: LCCOMB_X63_Y26_N30
\datapath|acumulador_atual|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output~0_combout\ = (\controller|enable~regout\ & ((\datapath|acu_in\(2)))) # (!\controller|enable~regout\ & (\datapath|acumulador_atual|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enable~regout\,
	datac => \datapath|acumulador_atual|temp\(2),
	datad => \datapath|acu_in\(2),
	combout => \datapath|acumulador_atual|output~0_combout\);

-- Location: LCCOMB_X62_Y26_N0
\datapath|acumulador_atual|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[2]~feeder_combout\ = \datapath|acumulador_atual|output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output~0_combout\,
	combout => \datapath|acumulador_atual|output[2]~feeder_combout\);

-- Location: LCFF_X62_Y26_N1
\datapath|acumulador_atual|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(2));

-- Location: LCCOMB_X62_Y26_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\datapath|acumulador_atual|output\(1) & (!\datapath|acumulador_atual|output\(3) & (\datapath|acumulador_atual|output\(0) $ (\datapath|acumulador_atual|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X62_Y26_N20
\hex4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4[0]~0_combout\ = ((!\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(2))) # (!\datapath|acumulador_atual|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \hex4[0]~0_combout\);

-- Location: LCFF_X62_Y26_N17
\hex4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[0]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N14
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\datapath|acumulador_atual|output\(3) & (\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(0) $ (\datapath|acumulador_atual|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X62_Y26_N15
\hex4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[1]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N4
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\datapath|acumulador_atual|output\(0) & (\datapath|acumulador_atual|output\(1) & (!\datapath|acumulador_atual|output\(3) & !\datapath|acumulador_atual|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X62_Y26_N5
\hex4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[2]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N26
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(0) & (\datapath|acumulador_atual|output\(1) $ (!\datapath|acumulador_atual|output\(2)))) # (!\datapath|acumulador_atual|output\(0) & 
-- (!\datapath|acumulador_atual|output\(1) & \datapath|acumulador_atual|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X62_Y26_N27
\hex4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[3]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N28
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\datapath|acumulador_atual|output\(0)) # ((!\datapath|acumulador_atual|output\(1) & (!\datapath|acumulador_atual|output\(3) & \datapath|acumulador_atual|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X62_Y26_N29
\hex4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[4]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N2
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(0) & ((\datapath|acumulador_atual|output\(1)) # (!\datapath|acumulador_atual|output\(2)))) # (!\datapath|acumulador_atual|output\(0) & 
-- (\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X62_Y26_N3
\hex4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[5]~reg0_regout\);

-- Location: LCCOMB_X62_Y26_N18
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\datapath|acumulador_atual|output\(3)) # ((\datapath|acumulador_atual|output\(1) & ((!\datapath|acumulador_atual|output\(2)) # (!\datapath|acumulador_atual|output\(0)))) # (!\datapath|acumulador_atual|output\(1) & 
-- ((\datapath|acumulador_atual|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(3),
	datad => \datapath|acumulador_atual|output\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X64_Y26_N10
\hex4[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4[6]~1_combout\ = (\hex4[0]~0_combout\ & ((\Mux0~0_combout\))) # (!\hex4[0]~0_combout\ & (\hex4[6]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4[0]~0_combout\,
	datac => \hex4[6]~reg0_regout\,
	datad => \Mux0~0_combout\,
	combout => \hex4[6]~1_combout\);

-- Location: LCFF_X64_Y26_N11
\hex4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex4[6]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[6]~reg0_regout\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \hex3[0]~reg0_regout\,
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
	datain => \ALT_INV_hex4[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));
END structure;


