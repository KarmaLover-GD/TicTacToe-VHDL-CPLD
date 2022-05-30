-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/11/2022 18:19:23"

-- 
-- Device: Altera 5M160ZE64C5 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Tictactoe IS
    PORT (
	clk : IN std_logic;
	rows : OUT std_logic_vector(5 DOWNTO 0);
	cols : OUT std_logic_vector(5 DOWNTO 0);
	buttons : IN std_logic_vector(8 DOWNTO 0);
	reset : IN std_logic;
	victory_led : OUT std_logic
	);
END Tictactoe;

-- Design Ports Information


ARCHITECTURE structure OF Tictactoe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rows : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_cols : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_buttons : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_victory_led : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \row_counter[1]~1\ : std_logic;
SIGNAL \row_counter[1]~1COUT1_6\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \state.check~regout\ : std_logic;
SIGNAL \state.play~regout\ : std_logic;
SIGNAL \OUTPUT_PROC~2_combout\ : std_logic;
SIGNAL \x~3_combout\ : std_logic;
SIGNAL \matrix~6_combout\ : std_logic;
SIGNAL \matrix[5][1]~regout\ : std_logic;
SIGNAL \OUTPUT_PROC~0_combout\ : std_logic;
SIGNAL \matrix~4_combout\ : std_logic;
SIGNAL \matrix[3][3]~regout\ : std_logic;
SIGNAL \matrix~5_combout\ : std_logic;
SIGNAL \matrix[1][3]~regout\ : std_logic;
SIGNAL \grid~7_combout\ : std_logic;
SIGNAL \grid~8_combout\ : std_logic;
SIGNAL \Selector40~0\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \matrix[1][1]~regout\ : std_logic;
SIGNAL \grid~6_combout\ : std_logic;
SIGNAL \matrix~7_combout\ : std_logic;
SIGNAL \matrix[3][1]~regout\ : std_logic;
SIGNAL \OUTPUT_PROC~5_combout\ : std_logic;
SIGNAL \OUTPUT_PROC~3_combout\ : std_logic;
SIGNAL \OUTPUT_PROC~4_combout\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \x~1_combout\ : std_logic;
SIGNAL \matrix~3_combout\ : std_logic;
SIGNAL \matrix[5][3]~regout\ : std_logic;
SIGNAL \OUTPUT_PROC~1_combout\ : std_logic;
SIGNAL \matrix~2_combout\ : std_logic;
SIGNAL \matrix[1][5]~regout\ : std_logic;
SIGNAL \grid~9_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state.reset_st~regout\ : std_logic;
SIGNAL \matrix~0_combout\ : std_logic;
SIGNAL \matrix[5][5]~regout\ : std_logic;
SIGNAL \state.display~regout\ : std_logic;
SIGNAL \matrix~1_combout\ : std_logic;
SIGNAL \matrix[3][5]~regout\ : std_logic;
SIGNAL \player~regout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \matrix[0][5]~regout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \matrix[2][5]~regout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \matrix[4][5]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \matrix[2][3]~regout\ : std_logic;
SIGNAL \matrix[0][3]~regout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \matrix[4][3]~regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \matrix[4][1]~regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \matrix[0][1]~regout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \matrix[2][1]~regout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Decoder4~0_combout\ : std_logic;
SIGNAL \Decoder4~1_combout\ : std_logic;
SIGNAL \Decoder4~2_combout\ : std_logic;
SIGNAL \Decoder4~3_combout\ : std_logic;
SIGNAL \Decoder4~4_combout\ : std_logic;
SIGNAL \Decoder4~5_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \grid~17_combout\ : std_logic;
SIGNAL \grid[2][1]~regout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \grid[2][0]~regout\ : std_logic;
SIGNAL \grid~14_combout\ : std_logic;
SIGNAL \grid[5][1]~regout\ : std_logic;
SIGNAL \grid~13_combout\ : std_logic;
SIGNAL \grid[8][1]~regout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \grid[8][0]~regout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \grid[5][0]~regout\ : std_logic;
SIGNAL \victory_led~20_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \grid~10_combout\ : std_logic;
SIGNAL \grid[4][0]~regout\ : std_logic;
SIGNAL \grid[4][1]~regout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \grid~11_combout\ : std_logic;
SIGNAL \grid[6][0]~regout\ : std_logic;
SIGNAL \grid[6][1]~regout\ : std_logic;
SIGNAL \victory_led~19_combout\ : std_logic;
SIGNAL \victory_led~18_combout\ : std_logic;
SIGNAL \victory_led~17_combout\ : std_logic;
SIGNAL \victory_led~21_combout\ : std_logic;
SIGNAL \grid~12_combout\ : std_logic;
SIGNAL \grid[7][1]~regout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \grid[7][0]~regout\ : std_logic;
SIGNAL \victory_led~15_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \grid~15_combout\ : std_logic;
SIGNAL \grid[1][0]~regout\ : std_logic;
SIGNAL \grid[1][1]~regout\ : std_logic;
SIGNAL \victory_led~14_combout\ : std_logic;
SIGNAL \victory_led~16_combout\ : std_logic;
SIGNAL \victory_led~22_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \grid[0][0]~regout\ : std_logic;
SIGNAL \grid[0][1]~regout\ : std_logic;
SIGNAL \victory_led~1_combout\ : std_logic;
SIGNAL \victory_led~3_combout\ : std_logic;
SIGNAL \victory_led~2_combout\ : std_logic;
SIGNAL \grid~16_combout\ : std_logic;
SIGNAL \grid[3][1]~regout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \grid[3][0]~regout\ : std_logic;
SIGNAL \victory_led~0_combout\ : std_logic;
SIGNAL \victory_led~4_combout\ : std_logic;
SIGNAL \victory_led~10_combout\ : std_logic;
SIGNAL \victory_led~11_combout\ : std_logic;
SIGNAL \victory_led~7_combout\ : std_logic;
SIGNAL \victory_led~8_combout\ : std_logic;
SIGNAL \victory_led~6_combout\ : std_logic;
SIGNAL \victory_led~5_combout\ : std_logic;
SIGNAL \victory_led~9_combout\ : std_logic;
SIGNAL \victory_led~12_combout\ : std_logic;
SIGNAL \victory_led~13_combout\ : std_logic;
SIGNAL \victory_led~reg0_regout\ : std_logic;
SIGNAL row_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL y : std_logic_vector(2 DOWNTO 0);
SIGNAL x : std_logic_vector(2 DOWNTO 0);
SIGNAL \buttons~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_state.play~regout\ : std_logic;

BEGIN

ww_clk <= clk;
rows <= ww_rows;
cols <= ww_cols;
ww_buttons <= buttons;
ww_reset <= reset;
victory_led <= ww_victory_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.play~regout\ <= NOT \state.play~regout\;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X5_Y1_N8
\row_counter[0]\ : maxv_lcell
-- Equation(s):
-- row_counter(0) = DFFEAS((((!row_counter(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => row_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_counter(0));

-- Location: LC_X5_Y1_N1
\row_counter[1]\ : maxv_lcell
-- Equation(s):
-- row_counter(1) = DFFEAS(row_counter(0) $ ((row_counter(1))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \row_counter[1]~1\ = CARRY((row_counter(0) & (row_counter(1))))
-- \row_counter[1]~1COUT1_6\ = CARRY((row_counter(0) & (row_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_counter(0),
	datab => row_counter(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_counter(1),
	cout0 => \row_counter[1]~1\,
	cout1 => \row_counter[1]~1COUT1_6\);

-- Location: LC_X5_Y1_N2
\row_counter[2]\ : maxv_lcell
-- Equation(s):
-- row_counter(2) = DFFEAS(((\row_counter[1]~1\ $ (row_counter(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => row_counter(2),
	aclr => GND,
	cin0 => \row_counter[1]~1\,
	cin1 => \row_counter[1]~1COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_counter(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(8),
	combout => \buttons~combout\(8));

-- Location: LC_X3_Y2_N4
\state.check\ : maxv_lcell
-- Equation(s):
-- \state.check~regout\ = DFFEAS((\state.display~regout\) # ((\state.check~regout\ & (\reset~combout\ & \Selector37~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.check~regout\,
	datab => \state.display~regout\,
	datac => \reset~combout\,
	datad => \Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.check~regout\);

-- Location: LC_X3_Y2_N2
\state.play\ : maxv_lcell
-- Equation(s):
-- \state.play~regout\ = DFFEAS((\state.check~regout\) # (((\reset~combout\ & \Selector37~0_combout\)) # (!\state.reset_st~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efaf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.check~regout\,
	datab => \reset~combout\,
	datac => \state.reset_st~regout\,
	datad => \Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.play~regout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(6),
	combout => \buttons~combout\(6));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(5),
	combout => \buttons~combout\(5));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(1),
	combout => \buttons~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(7),
	combout => \buttons~combout\(7));

-- Location: LC_X3_Y2_N6
\OUTPUT_PROC~2\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~2_combout\ = (((!\buttons~combout\(7) & \matrix[3][5]~regout\)))

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
	datac => \buttons~combout\(7),
	datad => \matrix[3][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~2_combout\);

-- Location: LC_X3_Y2_N5
\x~3\ : maxv_lcell
-- Equation(s):
-- \x~3_combout\ = (\OUTPUT_PROC~1_combout\) # ((!\OUTPUT_PROC~2_combout\ & ((\buttons~combout\(6)) # (!\matrix[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff45",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT_PROC~2_combout\,
	datab => \buttons~combout\(6),
	datac => \matrix[1][5]~regout\,
	datad => \OUTPUT_PROC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~3_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(0),
	combout => \buttons~combout\(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(2),
	combout => \buttons~combout\(2));

-- Location: LC_X5_Y4_N3
\matrix~6\ : maxv_lcell
-- Equation(s):
-- \matrix~6_combout\ = (y(1) & (x(1) & (!x(2) & y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(1),
	datac => x(2),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~6_combout\);

-- Location: LC_X4_Y2_N9
\matrix[5][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[5][1]~regout\ = DFFEAS((\matrix[5][1]~regout\ & (((!\state.display~regout\) # (!\matrix~6_combout\)))) # (!\matrix[5][1]~regout\ & (!\state.reset_st~regout\ & ((!\state.display~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cdd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.reset_st~regout\,
	datab => \matrix[5][1]~regout\,
	datac => \matrix~6_combout\,
	datad => \state.display~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[5][1]~regout\);

-- Location: LC_X4_Y2_N1
\OUTPUT_PROC~0\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~0_combout\ = ((!\buttons~combout\(2) & ((\matrix[5][1]~regout\))))

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
	datab => \buttons~combout\(2),
	datad => \matrix[5][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~0_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(3),
	combout => \buttons~combout\(3));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(4),
	combout => \buttons~combout\(4));

-- Location: LC_X5_Y4_N1
\matrix~4\ : maxv_lcell
-- Equation(s):
-- \matrix~4_combout\ = (!x(1) & (x(2) & (!y(1) & y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => x(2),
	datac => y(1),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~4_combout\);

-- Location: LC_X3_Y3_N0
\matrix[3][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[3][3]~regout\ = DFFEAS((\state.display~regout\ & (((\matrix[3][3]~regout\ & !\matrix~4_combout\)))) # (!\state.display~regout\ & (((\matrix[3][3]~regout\)) # (!\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51f1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.display~regout\,
	datab => \state.reset_st~regout\,
	datac => \matrix[3][3]~regout\,
	datad => \matrix~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[3][3]~regout\);

-- Location: LC_X5_Y4_N4
\matrix~5\ : maxv_lcell
-- Equation(s):
-- \matrix~5_combout\ = (!y(1) & (x(1) & (x(2) & y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(1),
	datac => x(2),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~5_combout\);

-- Location: LC_X3_Y3_N9
\matrix[1][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[1][3]~regout\ = DFFEAS((\state.display~regout\ & (((\matrix[1][3]~regout\ & !\matrix~5_combout\)))) # (!\state.display~regout\ & (((\matrix[1][3]~regout\)) # (!\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51f1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.display~regout\,
	datab => \state.reset_st~regout\,
	datac => \matrix[1][3]~regout\,
	datad => \matrix~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[1][3]~regout\);

-- Location: LC_X3_Y3_N5
\grid~7\ : maxv_lcell
-- Equation(s):
-- \grid~7_combout\ = (\buttons~combout\(3) & ((\buttons~combout\(4)) # ((!\matrix[3][3]~regout\)))) # (!\buttons~combout\(3) & (!\matrix[1][3]~regout\ & ((\buttons~combout\(4)) # (!\matrix[3][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8acf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(3),
	datab => \buttons~combout\(4),
	datac => \matrix[3][3]~regout\,
	datad => \matrix[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~7_combout\);

-- Location: LC_X4_Y2_N6
\grid~8\ : maxv_lcell
-- Equation(s):
-- \grid~8_combout\ = (!\OUTPUT_PROC~1_combout\ & (!\OUTPUT_PROC~0_combout\ & (\grid~6_combout\ & \grid~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT_PROC~1_combout\,
	datab => \OUTPUT_PROC~0_combout\,
	datac => \grid~6_combout\,
	datad => \grid~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~8_combout\);

-- Location: LC_X4_Y2_N8
\state.display\ : maxv_lcell
-- Equation(s):
-- \Selector40~0\ = (\state.play~regout\ & (((\matrix[5][5]~regout\ & !\buttons~combout\(8))) # (!\grid~9_combout\)))
-- \state.display~regout\ = DFFEAS(\Selector40~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[5][5]~regout\,
	datab => \state.play~regout\,
	datac => \buttons~combout\(8),
	datad => \grid~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector40~0\,
	regout => \state.display~regout\);

-- Location: LC_X4_Y2_N4
\y[2]\ : maxv_lcell
-- Equation(s):
-- y(2) = DFFEAS((((!\grid~8_combout\))), GLOBAL(\clk~combout\), VCC, , \Selector40~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \grid~8_combout\,
	aclr => GND,
	ena => \Selector40~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(2));

-- Location: LC_X5_Y4_N7
\Selector1~0\ : maxv_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (y(1) & (x(1) & (x(2) & y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(1),
	datac => x(2),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X4_Y3_N6
\matrix[1][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[1][1]~regout\ = DFFEAS((\matrix[1][1]~regout\ & (((!\state.display~regout\) # (!\Selector1~0_combout\)))) # (!\matrix[1][1]~regout\ & (!\state.reset_st~regout\ & ((!\state.display~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cdd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.reset_st~regout\,
	datab => \matrix[1][1]~regout\,
	datac => \Selector1~0_combout\,
	datad => \state.display~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[1][1]~regout\);

-- Location: LC_X4_Y3_N7
\grid~6\ : maxv_lcell
-- Equation(s):
-- \grid~6_combout\ = (\buttons~combout\(0) & ((\buttons~combout\(1)) # ((!\matrix[3][1]~regout\)))) # (!\buttons~combout\(0) & (!\matrix[1][1]~regout\ & ((\buttons~combout\(1)) # (!\matrix[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8caf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(0),
	datab => \buttons~combout\(1),
	datac => \matrix[1][1]~regout\,
	datad => \matrix[3][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~6_combout\);

-- Location: LC_X4_Y2_N2
\x[2]\ : maxv_lcell
-- Equation(s):
-- x(2) = DFFEAS(((!\OUTPUT_PROC~0_combout\ & ((!\grid~7_combout\) # (!\x~3_combout\)))) # (!\grid~6_combout\), GLOBAL(\clk~combout\), VCC, , \Selector40~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "337f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \x~3_combout\,
	datab => \grid~6_combout\,
	datac => \grid~7_combout\,
	datad => \OUTPUT_PROC~0_combout\,
	aclr => GND,
	ena => \Selector40~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(2));

-- Location: LC_X5_Y4_N9
\matrix~7\ : maxv_lcell
-- Equation(s):
-- \matrix~7_combout\ = (y(1) & (x(2) & (y(2) & !x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(2),
	datac => y(2),
	datad => x(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~7_combout\);

-- Location: LC_X4_Y3_N2
\matrix[3][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[3][1]~regout\ = DFFEAS((\matrix[3][1]~regout\ & (((!\matrix~7_combout\)) # (!\state.display~regout\))) # (!\matrix[3][1]~regout\ & (!\state.display~regout\ & (!\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23ab",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[3][1]~regout\,
	datab => \state.display~regout\,
	datac => \state.reset_st~regout\,
	datad => \matrix~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[3][1]~regout\);

-- Location: LC_X4_Y3_N4
\OUTPUT_PROC~5\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~5_combout\ = (((!\buttons~combout\(0) & \matrix[1][1]~regout\)))

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
	datac => \buttons~combout\(0),
	datad => \matrix[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~5_combout\);

-- Location: LC_X3_Y3_N7
\OUTPUT_PROC~3\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~3_combout\ = ((!\buttons~combout\(4) & (\matrix[3][3]~regout\)))

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
	datab => \buttons~combout\(4),
	datac => \matrix[3][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~3_combout\);

-- Location: LC_X4_Y3_N0
\OUTPUT_PROC~4\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~4_combout\ = (((!\buttons~combout\(3) & \matrix[1][3]~regout\)))

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
	datac => \buttons~combout\(3),
	datad => \matrix[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~4_combout\);

-- Location: LC_X3_Y2_N0
\x~0\ : maxv_lcell
-- Equation(s):
-- \x~0_combout\ = (\OUTPUT_PROC~2_combout\ & (!\OUTPUT_PROC~1_combout\ & ((\buttons~combout\(6)) # (!\matrix[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(6),
	datab => \matrix[1][5]~regout\,
	datac => \OUTPUT_PROC~2_combout\,
	datad => \OUTPUT_PROC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~0_combout\);

-- Location: LC_X4_Y2_N3
\x~1\ : maxv_lcell
-- Equation(s):
-- \x~1_combout\ = (!\OUTPUT_PROC~0_combout\ & (!\OUTPUT_PROC~4_combout\ & ((\OUTPUT_PROC~3_combout\) # (\x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT_PROC~0_combout\,
	datab => \OUTPUT_PROC~3_combout\,
	datac => \OUTPUT_PROC~4_combout\,
	datad => \x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~1_combout\);

-- Location: LC_X4_Y2_N0
\x[1]\ : maxv_lcell
-- Equation(s):
-- x(1) = DFFEAS((\OUTPUT_PROC~5_combout\) # ((!\x~1_combout\ & ((\buttons~combout\(1)) # (!\matrix[3][1]~regout\)))), GLOBAL(\clk~combout\), VCC, , \Selector40~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \buttons~combout\(1),
	datab => \matrix[3][1]~regout\,
	datac => \OUTPUT_PROC~5_combout\,
	datad => \x~1_combout\,
	aclr => GND,
	ena => \Selector40~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(1));

-- Location: LC_X5_Y4_N8
\matrix~3\ : maxv_lcell
-- Equation(s):
-- \matrix~3_combout\ = (!y(1) & (x(1) & (!x(2) & y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(1),
	datac => x(2),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~3_combout\);

-- Location: LC_X3_Y2_N1
\matrix[5][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[5][3]~regout\ = DFFEAS((\state.display~regout\ & (((\matrix[5][3]~regout\ & !\matrix~3_combout\)))) # (!\state.display~regout\ & (((\matrix[5][3]~regout\)) # (!\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31f1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.reset_st~regout\,
	datab => \state.display~regout\,
	datac => \matrix[5][3]~regout\,
	datad => \matrix~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[5][3]~regout\);

-- Location: LC_X3_Y2_N9
\OUTPUT_PROC~1\ : maxv_lcell
-- Equation(s):
-- \OUTPUT_PROC~1_combout\ = ((!\buttons~combout\(5) & ((\matrix[5][3]~regout\))))

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
	datab => \buttons~combout\(5),
	datad => \matrix[5][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OUTPUT_PROC~1_combout\);

-- Location: LC_X4_Y2_N5
\y[1]\ : maxv_lcell
-- Equation(s):
-- y(1) = DFFEAS(((\OUTPUT_PROC~0_combout\) # ((!\OUTPUT_PROC~1_combout\ & \grid~7_combout\))) # (!\grid~6_combout\), GLOBAL(\clk~combout\), VCC, , \Selector40~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff73",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \OUTPUT_PROC~1_combout\,
	datab => \grid~6_combout\,
	datac => \grid~7_combout\,
	datad => \OUTPUT_PROC~0_combout\,
	aclr => GND,
	ena => \Selector40~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(1));

-- Location: LC_X5_Y4_N5
\matrix~2\ : maxv_lcell
-- Equation(s):
-- \matrix~2_combout\ = (y(1) & (x(1) & (!y(2) & x(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(1),
	datac => y(2),
	datad => x(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~2_combout\);

-- Location: LC_X4_Y1_N2
\matrix[1][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[1][5]~regout\ = DFFEAS((\matrix[1][5]~regout\ & (((!\matrix~2_combout\) # (!\state.display~regout\)))) # (!\matrix[1][5]~regout\ & (!\state.reset_st~regout\ & (!\state.display~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0dcd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.reset_st~regout\,
	datab => \matrix[1][5]~regout\,
	datac => \state.display~regout\,
	datad => \matrix~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[1][5]~regout\);

-- Location: LC_X4_Y2_N7
\grid~9\ : maxv_lcell
-- Equation(s):
-- \grid~9_combout\ = (!\OUTPUT_PROC~2_combout\ & (\grid~8_combout\ & ((\buttons~combout\(6)) # (!\matrix[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(6),
	datab => \matrix[1][5]~regout\,
	datac => \OUTPUT_PROC~2_combout\,
	datad => \grid~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~9_combout\);

-- Location: LC_X3_Y2_N3
\Selector37~0\ : maxv_lcell
-- Equation(s):
-- \Selector37~0_combout\ = (\state.play~regout\ & (\grid~9_combout\ & ((\buttons~combout\(8)) # (!\matrix[5][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(8),
	datab => \state.play~regout\,
	datac => \matrix[5][5]~regout\,
	datad => \grid~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector37~0_combout\);

-- Location: LC_X3_Y2_N7
\state.reset_st\ : maxv_lcell
-- Equation(s):
-- \state.reset_st~regout\ = DFFEAS((((\reset~combout\) # (!\Selector37~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.reset_st~regout\);

-- Location: LC_X5_Y4_N6
\matrix~0\ : maxv_lcell
-- Equation(s):
-- \matrix~0_combout\ = (!x(2) & (x(1) & (y(1) & !y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datab => x(1),
	datac => y(1),
	datad => y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~0_combout\);

-- Location: LC_X4_Y1_N0
\matrix[5][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[5][5]~regout\ = DFFEAS((\matrix[5][5]~regout\ & (((!\matrix~0_combout\) # (!\state.display~regout\)))) # (!\matrix[5][5]~regout\ & (!\state.reset_st~regout\ & (!\state.display~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0dcd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.reset_st~regout\,
	datab => \matrix[5][5]~regout\,
	datac => \state.display~regout\,
	datad => \matrix~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[5][5]~regout\);

-- Location: LC_X5_Y4_N2
\matrix~1\ : maxv_lcell
-- Equation(s):
-- \matrix~1_combout\ = (y(1) & (x(2) & (!y(2) & !x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => x(2),
	datac => y(2),
	datad => x(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \matrix~1_combout\);

-- Location: LC_X3_Y2_N8
\matrix[3][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[3][5]~regout\ = DFFEAS((\matrix[3][5]~regout\ & (((!\matrix~1_combout\)) # (!\state.display~regout\))) # (!\matrix[3][5]~regout\ & (!\state.display~regout\ & (!\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23ab",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[3][5]~regout\,
	datab => \state.display~regout\,
	datac => \state.reset_st~regout\,
	datad => \matrix~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[3][5]~regout\);

-- Location: LC_X6_Y1_N6
player : maxv_lcell
-- Equation(s):
-- \player~regout\ = DFFEAS((\player~regout\ $ ((\state.display~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \player~regout\,
	datac => \state.display~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \player~regout\);

-- Location: LC_X4_Y1_N8
\Selector17~1\ : maxv_lcell
-- Equation(s):
-- \Selector17~1_combout\ = (((\state.display~regout\ & \player~regout\)))

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
	datac => \state.display~regout\,
	datad => \player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~1_combout\);

-- Location: LC_X4_Y1_N3
\Selector17~0\ : maxv_lcell
-- Equation(s):
-- \Selector17~0_combout\ = (((!\state.display~regout\ & !\state.reset_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.display~regout\,
	datad => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~0_combout\);

-- Location: LC_X4_Y1_N4
\matrix[0][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[0][5]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[0][5]~regout\ & ((!\Selector17~1_combout\) # (!\matrix~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[0][5]~regout\,
	datab => \matrix~2_combout\,
	datac => \Selector17~1_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[0][5]~regout\);

-- Location: LC_X4_Y1_N1
\Mux5~1\ : maxv_lcell
-- Equation(s):
-- \Mux5~1_combout\ = (row_counter(1) & (row_counter(0))) # (!row_counter(1) & ((row_counter(0) & ((\matrix[1][5]~regout\))) # (!row_counter(0) & (\matrix[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => row_counter(0),
	datac => \matrix[0][5]~regout\,
	datad => \matrix[1][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

-- Location: LC_X4_Y1_N5
\matrix[2][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[2][5]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[2][5]~regout\ & ((!\matrix~1_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[2][5]~regout\,
	datab => \Selector17~1_combout\,
	datac => \matrix~1_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[2][5]~regout\);

-- Location: LC_X4_Y1_N6
\Mux5~2\ : maxv_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & ((\matrix[3][5]~regout\) # ((!row_counter(1))))) # (!\Mux5~1_combout\ & (((\matrix[2][5]~regout\ & row_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[3][5]~regout\,
	datab => \Mux5~1_combout\,
	datac => \matrix[2][5]~regout\,
	datad => row_counter(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X2_Y2_N6
\matrix[4][5]\ : maxv_lcell
-- Equation(s):
-- \matrix[4][5]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[4][5]~regout\ & ((!\matrix~0_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[4][5]~regout\,
	datab => \Selector17~1_combout\,
	datac => \matrix~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[4][5]~regout\);

-- Location: LC_X2_Y2_N9
\Mux5~0\ : maxv_lcell
-- Equation(s):
-- \Mux5~0_combout\ = ((row_counter(0) & ((\matrix[5][5]~regout\))) # (!row_counter(0) & (\matrix[4][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => \matrix[4][5]~regout\,
	datad => \matrix[5][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X2_Y2_N3
\Mux5~3\ : maxv_lcell
-- Equation(s):
-- \Mux5~3_combout\ = (row_counter(2) & (((\Mux5~0_combout\)))) # (!row_counter(2) & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(2),
	datac => \Mux5~2_combout\,
	datad => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: LC_X4_Y1_N9
\Mux4~1\ : maxv_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (row_counter(1) & (row_counter(0))) # (!row_counter(1) & ((row_counter(0) & (\matrix[0][5]~regout\)) # (!row_counter(0) & ((\matrix[1][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => row_counter(0),
	datac => \matrix[0][5]~regout\,
	datad => \matrix[1][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X4_Y1_N7
\Mux4~2\ : maxv_lcell
-- Equation(s):
-- \Mux4~2_combout\ = (row_counter(1) & ((\Mux4~1_combout\ & (\matrix[2][5]~regout\)) # (!\Mux4~1_combout\ & ((\matrix[3][5]~regout\))))) # (!row_counter(1) & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[2][5]~regout\,
	datab => row_counter(1),
	datac => \matrix[3][5]~regout\,
	datad => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X2_Y2_N8
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((row_counter(0) & (\matrix[4][5]~regout\)) # (!row_counter(0) & ((\matrix[5][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => \matrix[4][5]~regout\,
	datad => \matrix[5][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X2_Y2_N7
\Mux4~3\ : maxv_lcell
-- Equation(s):
-- \Mux4~3_combout\ = (row_counter(2) & (((\Mux4~0_combout\)))) # (!row_counter(2) & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(2),
	datac => \Mux4~2_combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

-- Location: LC_X3_Y3_N8
\matrix[2][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[2][3]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[2][3]~regout\ & ((!\matrix~4_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[2][3]~regout\,
	datab => \Selector17~1_combout\,
	datac => \Selector17~0_combout\,
	datad => \matrix~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[2][3]~regout\);

-- Location: LC_X3_Y3_N6
\matrix[0][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[0][3]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[0][3]~regout\ & ((!\Selector17~1_combout\) # (!\matrix~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[0][3]~regout\,
	datab => \matrix~5_combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector17~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[0][3]~regout\);

-- Location: LC_X2_Y3_N5
\Mux3~1\ : maxv_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (row_counter(1) & (row_counter(0))) # (!row_counter(1) & ((row_counter(0) & (\matrix[1][3]~regout\)) # (!row_counter(0) & ((\matrix[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => row_counter(0),
	datac => \matrix[1][3]~regout\,
	datad => \matrix[0][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X2_Y3_N6
\Mux3~2\ : maxv_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (row_counter(1) & ((\Mux3~1_combout\ & ((\matrix[3][3]~regout\))) # (!\Mux3~1_combout\ & (\matrix[2][3]~regout\)))) # (!row_counter(1) & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => \matrix[2][3]~regout\,
	datac => \matrix[3][3]~regout\,
	datad => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X3_Y3_N4
\matrix[4][3]\ : maxv_lcell
-- Equation(s):
-- \matrix[4][3]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[4][3]~regout\ & ((!\matrix~3_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[4][3]~regout\,
	datab => \Selector17~1_combout\,
	datac => \Selector17~0_combout\,
	datad => \matrix~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[4][3]~regout\);

-- Location: LC_X2_Y3_N1
\Mux3~0\ : maxv_lcell
-- Equation(s):
-- \Mux3~0_combout\ = ((row_counter(0) & ((\matrix[5][3]~regout\))) # (!row_counter(0) & (\matrix[4][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[4][3]~regout\,
	datac => \matrix[5][3]~regout\,
	datad => row_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X2_Y3_N4
\Mux3~3\ : maxv_lcell
-- Equation(s):
-- \Mux3~3_combout\ = ((row_counter(2) & ((\Mux3~0_combout\))) # (!row_counter(2) & (\Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(2),
	datac => \Mux3~2_combout\,
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X2_Y3_N0
\Mux2~1\ : maxv_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (row_counter(1) & (row_counter(0))) # (!row_counter(1) & ((row_counter(0) & ((\matrix[0][3]~regout\))) # (!row_counter(0) & (\matrix[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => row_counter(0),
	datac => \matrix[1][3]~regout\,
	datad => \matrix[0][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X2_Y3_N7
\Mux2~2\ : maxv_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (row_counter(1) & ((\Mux2~1_combout\ & ((\matrix[2][3]~regout\))) # (!\Mux2~1_combout\ & (\matrix[3][3]~regout\)))) # (!row_counter(1) & (\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datab => \Mux2~1_combout\,
	datac => \matrix[3][3]~regout\,
	datad => \matrix[2][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X2_Y3_N8
\Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Mux2~0_combout\ = ((row_counter(0) & (\matrix[4][3]~regout\)) # (!row_counter(0) & ((\matrix[5][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[4][3]~regout\,
	datac => \matrix[5][3]~regout\,
	datad => row_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X2_Y3_N2
\Mux2~3\ : maxv_lcell
-- Equation(s):
-- \Mux2~3_combout\ = ((row_counter(2) & ((\Mux2~0_combout\))) # (!row_counter(2) & (\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(2),
	datac => \Mux2~2_combout\,
	datad => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X2_Y2_N4
\matrix[4][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[4][1]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[4][1]~regout\ & ((!\matrix~6_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[4][1]~regout\,
	datab => \Selector17~1_combout\,
	datac => \Selector17~0_combout\,
	datad => \matrix~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[4][1]~regout\);

-- Location: LC_X2_Y2_N2
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((row_counter(0) & ((\matrix[5][1]~regout\))) # (!row_counter(0) & (\matrix[4][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => \matrix[4][1]~regout\,
	datad => \matrix[5][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X4_Y3_N8
\matrix[0][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[0][1]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[0][1]~regout\ & ((!\Selector1~0_combout\) # (!\Selector17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector17~1_combout\,
	datab => \matrix[0][1]~regout\,
	datac => \Selector1~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[0][1]~regout\);

-- Location: LC_X3_Y3_N1
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (row_counter(1) & (((row_counter(0))))) # (!row_counter(1) & ((row_counter(0) & ((\matrix[1][1]~regout\))) # (!row_counter(0) & (\matrix[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[0][1]~regout\,
	datab => \matrix[1][1]~regout\,
	datac => row_counter(1),
	datad => row_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X4_Y3_N3
\matrix[2][1]\ : maxv_lcell
-- Equation(s):
-- \matrix[2][1]~regout\ = DFFEAS((\Selector17~0_combout\) # ((\matrix[2][1]~regout\ & ((!\Selector17~1_combout\) # (!\matrix~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \matrix[2][1]~regout\,
	datab => \matrix~7_combout\,
	datac => \Selector17~1_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \matrix[2][1]~regout\);

-- Location: LC_X3_Y4_N9
\Mux1~2\ : maxv_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\matrix[3][1]~regout\) # ((!row_counter(1))))) # (!\Mux1~1_combout\ & (((row_counter(1) & \matrix[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \matrix[3][1]~regout\,
	datac => row_counter(1),
	datad => \matrix[2][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X3_Y4_N4
\Mux1~3\ : maxv_lcell
-- Equation(s):
-- \Mux1~3_combout\ = ((row_counter(2) & (\Mux1~0_combout\)) # (!row_counter(2) & ((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(2),
	datac => \Mux1~0_combout\,
	datad => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X2_Y2_N5
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = ((row_counter(0) & (\matrix[4][1]~regout\)) # (!row_counter(0) & ((\matrix[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => \matrix[4][1]~regout\,
	datad => \matrix[5][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X3_Y3_N2
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (row_counter(1) & (((row_counter(0))))) # (!row_counter(1) & ((row_counter(0) & (\matrix[0][1]~regout\)) # (!row_counter(0) & ((\matrix[1][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[0][1]~regout\,
	datab => \matrix[1][1]~regout\,
	datac => row_counter(1),
	datad => row_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X3_Y4_N8
\Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\matrix[2][1]~regout\) # (!row_counter(1))))) # (!\Mux0~1_combout\ & (\matrix[3][1]~regout\ & (row_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \matrix[3][1]~regout\,
	datac => row_counter(1),
	datad => \matrix[2][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X3_Y4_N1
\Mux0~3\ : maxv_lcell
-- Equation(s):
-- \Mux0~3_combout\ = ((row_counter(2) & (\Mux0~0_combout\)) # (!row_counter(2) & ((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(2),
	datac => \Mux0~0_combout\,
	datad => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X2_Y3_N3
\Decoder4~0\ : maxv_lcell
-- Equation(s):
-- \Decoder4~0_combout\ = ((!row_counter(0) & (!row_counter(1) & !row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~0_combout\);

-- Location: LC_X3_Y4_N6
\Decoder4~1\ : maxv_lcell
-- Equation(s):
-- \Decoder4~1_combout\ = ((row_counter(0) & (!row_counter(1) & !row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~1_combout\);

-- Location: LC_X2_Y3_N9
\Decoder4~2\ : maxv_lcell
-- Equation(s):
-- \Decoder4~2_combout\ = ((!row_counter(0) & (row_counter(1) & !row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~2_combout\);

-- Location: LC_X3_Y4_N2
\Decoder4~3\ : maxv_lcell
-- Equation(s):
-- \Decoder4~3_combout\ = ((row_counter(0) & (row_counter(1) & !row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~3_combout\);

-- Location: LC_X3_Y4_N3
\Decoder4~4\ : maxv_lcell
-- Equation(s):
-- \Decoder4~4_combout\ = ((!row_counter(0) & (!row_counter(1) & row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~4_combout\);

-- Location: LC_X3_Y4_N7
\Decoder4~5\ : maxv_lcell
-- Equation(s):
-- \Decoder4~5_combout\ = ((row_counter(0) & (!row_counter(1) & row_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_counter(0),
	datac => row_counter(1),
	datad => row_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder4~5_combout\);

-- Location: LC_X6_Y2_N0
\Selector36~0\ : maxv_lcell
-- Equation(s):
-- \Selector36~0_combout\ = ((\victory_led~reg0_regout\ & ((\state.play~regout\) # (\state.display~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \victory_led~reg0_regout\,
	datac => \state.play~regout\,
	datad => \state.display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~0_combout\);

-- Location: LC_X5_Y1_N0
\grid~17\ : maxv_lcell
-- Equation(s):
-- \grid~17_combout\ = ((!\buttons~combout\(2) & (\matrix[5][1]~regout\ & \grid~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \buttons~combout\(2),
	datac => \matrix[5][1]~regout\,
	datad => \grid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~17_combout\);

-- Location: LC_X6_Y3_N1
\grid[2][1]\ : maxv_lcell
-- Equation(s):
-- \grid[2][1]~regout\ = DFFEAS((\state.play~regout\ & (((\grid[2][1]~regout\) # (\grid~17_combout\)))) # (!\state.play~regout\ & (\state.reset_st~regout\ & (\grid[2][1]~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eae0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.play~regout\,
	datab => \state.reset_st~regout\,
	datac => \grid[2][1]~regout\,
	datad => \grid~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[2][1]~regout\);

-- Location: LC_X6_Y1_N2
\Selector47~0\ : maxv_lcell
-- Equation(s):
-- \Selector47~0_combout\ = (((\grid[2][0]~regout\ & \state.reset_st~regout\)))

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
	datac => \grid[2][0]~regout\,
	datad => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector47~0_combout\);

-- Location: LC_X6_Y3_N4
\grid[2][0]\ : maxv_lcell
-- Equation(s):
-- \grid[2][0]~regout\ = DFFEAS(((\grid~17_combout\ & (\player~regout\)) # (!\grid~17_combout\ & ((\grid[2][0]~regout\)))), GLOBAL(\clk~combout\), VCC, , , \Selector47~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \player~regout\,
	datab => \grid[2][0]~regout\,
	datac => \Selector47~0_combout\,
	datad => \grid~17_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[2][0]~regout\);

-- Location: LC_X5_Y2_N2
\grid~14\ : maxv_lcell
-- Equation(s):
-- \grid~14_combout\ = (!\OUTPUT_PROC~0_combout\ & (\grid~7_combout\ & (\grid~6_combout\ & \OUTPUT_PROC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT_PROC~0_combout\,
	datab => \grid~7_combout\,
	datac => \grid~6_combout\,
	datad => \OUTPUT_PROC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~14_combout\);

-- Location: LC_X6_Y2_N5
\grid[5][1]\ : maxv_lcell
-- Equation(s):
-- \grid[5][1]~regout\ = DFFEAS((\grid[5][1]~regout\ & ((\state.reset_st~regout\) # ((\state.play~regout\)))) # (!\grid[5][1]~regout\ & (((\state.play~regout\ & \grid~14_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[5][1]~regout\,
	datab => \state.reset_st~regout\,
	datac => \state.play~regout\,
	datad => \grid~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[5][1]~regout\);

-- Location: LC_X5_Y2_N1
\grid~13\ : maxv_lcell
-- Equation(s):
-- \grid~13_combout\ = (!\buttons~combout\(8) & (((\matrix[5][5]~regout\ & \grid~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(8),
	datac => \matrix[5][5]~regout\,
	datad => \grid~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~13_combout\);

-- Location: LC_X5_Y2_N8
\grid[8][1]\ : maxv_lcell
-- Equation(s):
-- \grid[8][1]~regout\ = DFFEAS((\grid[8][1]~regout\ & ((\state.play~regout\) # ((\state.reset_st~regout\)))) # (!\grid[8][1]~regout\ & (\state.play~regout\ & ((\grid~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[8][1]~regout\,
	datab => \state.play~regout\,
	datac => \state.reset_st~regout\,
	datad => \grid~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[8][1]~regout\);

-- Location: LC_X6_Y1_N4
\Selector59~0\ : maxv_lcell
-- Equation(s):
-- \Selector59~0_combout\ = (((\state.reset_st~regout\ & \grid[8][0]~regout\)))

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
	datac => \state.reset_st~regout\,
	datad => \grid[8][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector59~0_combout\);

-- Location: LC_X5_Y2_N7
\grid[8][0]\ : maxv_lcell
-- Equation(s):
-- \grid[8][0]~regout\ = DFFEAS(((\grid~13_combout\ & ((\player~regout\))) # (!\grid~13_combout\ & (\grid[8][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector59~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[8][0]~regout\,
	datab => \player~regout\,
	datac => \Selector59~0_combout\,
	datad => \grid~13_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[8][0]~regout\);

-- Location: LC_X5_Y2_N0
\Selector53~0\ : maxv_lcell
-- Equation(s):
-- \Selector53~0_combout\ = (((\state.reset_st~regout\ & \grid[5][0]~regout\)))

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
	datac => \state.reset_st~regout\,
	datad => \grid[5][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector53~0_combout\);

-- Location: LC_X5_Y2_N3
\grid[5][0]\ : maxv_lcell
-- Equation(s):
-- \grid[5][0]~regout\ = DFFEAS(((\grid~14_combout\ & ((\player~regout\))) # (!\grid~14_combout\ & (\grid[5][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector53~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[5][0]~regout\,
	datab => \player~regout\,
	datac => \Selector53~0_combout\,
	datad => \grid~14_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[5][0]~regout\);

-- Location: LC_X7_Y2_N3
\victory_led~20\ : maxv_lcell
-- Equation(s):
-- \victory_led~20_combout\ = (\grid[5][1]~regout\ & (\grid[8][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[5][0]~regout\)))) # (!\grid[5][1]~regout\ & (!\grid[8][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[5][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[5][1]~regout\,
	datab => \grid[8][1]~regout\,
	datac => \grid[8][0]~regout\,
	datad => \grid[5][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~20_combout\);

-- Location: LC_X6_Y3_N9
\Selector51~0\ : maxv_lcell
-- Equation(s):
-- \Selector51~0_combout\ = (((\state.reset_st~regout\ & \grid[4][0]~regout\)))

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
	datac => \state.reset_st~regout\,
	datad => \grid[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector51~0_combout\);

-- Location: LC_X4_Y3_N9
\grid~10\ : maxv_lcell
-- Equation(s):
-- \grid~10_combout\ = (\grid~6_combout\ & (\OUTPUT_PROC~3_combout\ & (!\OUTPUT_PROC~4_combout\ & !\OUTPUT_PROC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid~6_combout\,
	datab => \OUTPUT_PROC~3_combout\,
	datac => \OUTPUT_PROC~4_combout\,
	datad => \OUTPUT_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~10_combout\);

-- Location: LC_X6_Y3_N3
\grid[4][0]\ : maxv_lcell
-- Equation(s):
-- \grid[4][0]~regout\ = DFFEAS(((\grid~10_combout\ & ((\player~regout\))) # (!\grid~10_combout\ & (\grid[4][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector51~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[4][0]~regout\,
	datab => \player~regout\,
	datac => \Selector51~0_combout\,
	datad => \grid~10_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[4][0]~regout\);

-- Location: LC_X6_Y3_N0
\grid[4][1]\ : maxv_lcell
-- Equation(s):
-- \grid[4][1]~regout\ = DFFEAS((\grid[4][1]~regout\ & ((\state.reset_st~regout\) # ((\state.play~regout\)))) # (!\grid[4][1]~regout\ & (((\state.play~regout\ & \grid~10_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[4][1]~regout\,
	datab => \state.reset_st~regout\,
	datac => \state.play~regout\,
	datad => \grid~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[4][1]~regout\);

-- Location: LC_X5_Y3_N0
\Selector55~0\ : maxv_lcell
-- Equation(s):
-- \Selector55~0_combout\ = ((\grid[6][0]~regout\ & ((\state.reset_st~regout\))))

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
	datab => \grid[6][0]~regout\,
	datad => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector55~0_combout\);

-- Location: LC_X5_Y3_N9
\grid~11\ : maxv_lcell
-- Equation(s):
-- \grid~11_combout\ = ((!\buttons~combout\(6) & (\grid~8_combout\ & \matrix[1][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \buttons~combout\(6),
	datac => \grid~8_combout\,
	datad => \matrix[1][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~11_combout\);

-- Location: LC_X5_Y3_N1
\grid[6][0]\ : maxv_lcell
-- Equation(s):
-- \grid[6][0]~regout\ = DFFEAS(((\grid~11_combout\ & (\player~regout\)) # (!\grid~11_combout\ & ((\grid[6][0]~regout\)))), GLOBAL(\clk~combout\), VCC, , , \Selector55~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \player~regout\,
	datab => \grid[6][0]~regout\,
	datac => \Selector55~0_combout\,
	datad => \grid~11_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[6][0]~regout\);

-- Location: LC_X5_Y3_N6
\grid[6][1]\ : maxv_lcell
-- Equation(s):
-- \grid[6][1]~regout\ = DFFEAS((\grid[6][1]~regout\ & ((\state.reset_st~regout\) # ((\state.play~regout\)))) # (!\grid[6][1]~regout\ & (((\state.play~regout\ & \grid~11_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[6][1]~regout\,
	datab => \state.reset_st~regout\,
	datac => \state.play~regout\,
	datad => \grid~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[6][1]~regout\);

-- Location: LC_X6_Y3_N7
\victory_led~19\ : maxv_lcell
-- Equation(s):
-- \victory_led~19_combout\ = (\grid[4][0]~regout\ & (\grid[6][0]~regout\ & (\grid[4][1]~regout\ $ (!\grid[6][1]~regout\)))) # (!\grid[4][0]~regout\ & (!\grid[6][0]~regout\ & (\grid[4][1]~regout\ $ (!\grid[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[4][0]~regout\,
	datab => \grid[4][1]~regout\,
	datac => \grid[6][0]~regout\,
	datad => \grid[6][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~19_combout\);

-- Location: LC_X7_Y2_N4
\victory_led~18\ : maxv_lcell
-- Equation(s):
-- \victory_led~18_combout\ = (\grid[2][1]~regout\ & (\grid[4][1]~regout\ & (\grid[2][0]~regout\ $ (!\grid[4][0]~regout\)))) # (!\grid[2][1]~regout\ & (!\grid[4][1]~regout\ & (\grid[2][0]~regout\ $ (!\grid[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[2][1]~regout\,
	datab => \grid[4][1]~regout\,
	datac => \grid[2][0]~regout\,
	datad => \grid[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~18_combout\);

-- Location: LC_X7_Y2_N8
\victory_led~17\ : maxv_lcell
-- Equation(s):
-- \victory_led~17_combout\ = (\grid[5][1]~regout\ & (\grid[2][1]~regout\ & (\grid[5][0]~regout\ $ (!\grid[2][0]~regout\)))) # (!\grid[5][1]~regout\ & (!\grid[2][1]~regout\ & (\grid[5][0]~regout\ $ (!\grid[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[5][1]~regout\,
	datab => \grid[5][0]~regout\,
	datac => \grid[2][1]~regout\,
	datad => \grid[2][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~17_combout\);

-- Location: LC_X7_Y2_N5
\victory_led~21\ : maxv_lcell
-- Equation(s):
-- \victory_led~21_combout\ = (\victory_led~20_combout\ & ((\victory_led~17_combout\) # ((\victory_led~19_combout\ & \victory_led~18_combout\)))) # (!\victory_led~20_combout\ & (\victory_led~19_combout\ & (\victory_led~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \victory_led~20_combout\,
	datab => \victory_led~19_combout\,
	datac => \victory_led~18_combout\,
	datad => \victory_led~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~21_combout\);

-- Location: LC_X5_Y3_N8
\grid~12\ : maxv_lcell
-- Equation(s):
-- \grid~12_combout\ = (\grid~8_combout\ & (\OUTPUT_PROC~2_combout\ & ((\buttons~combout\(6)) # (!\matrix[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(6),
	datab => \matrix[1][5]~regout\,
	datac => \grid~8_combout\,
	datad => \OUTPUT_PROC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~12_combout\);

-- Location: LC_X5_Y3_N2
\grid[7][1]\ : maxv_lcell
-- Equation(s):
-- \grid[7][1]~regout\ = DFFEAS((\grid[7][1]~regout\ & ((\state.reset_st~regout\) # ((\state.play~regout\)))) # (!\grid[7][1]~regout\ & (((\state.play~regout\ & \grid~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[7][1]~regout\,
	datab => \state.reset_st~regout\,
	datac => \state.play~regout\,
	datad => \grid~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[7][1]~regout\);

-- Location: LC_X5_Y3_N7
\Selector57~0\ : maxv_lcell
-- Equation(s):
-- \Selector57~0_combout\ = (((\grid[7][0]~regout\ & \state.reset_st~regout\)))

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
	datac => \grid[7][0]~regout\,
	datad => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector57~0_combout\);

-- Location: LC_X5_Y3_N4
\grid[7][0]\ : maxv_lcell
-- Equation(s):
-- \grid[7][0]~regout\ = DFFEAS(((\grid~12_combout\ & (\player~regout\)) # (!\grid~12_combout\ & ((\grid[7][0]~regout\)))), GLOBAL(\clk~combout\), VCC, , , \Selector57~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \player~regout\,
	datab => \grid[7][0]~regout\,
	datac => \Selector57~0_combout\,
	datad => \grid~12_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[7][0]~regout\);

-- Location: LC_X6_Y3_N2
\victory_led~15\ : maxv_lcell
-- Equation(s):
-- \victory_led~15_combout\ = (\grid[4][0]~regout\ & (\grid[7][0]~regout\ & (\grid[4][1]~regout\ $ (!\grid[7][1]~regout\)))) # (!\grid[4][0]~regout\ & (!\grid[7][0]~regout\ & (\grid[4][1]~regout\ $ (!\grid[7][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[4][0]~regout\,
	datab => \grid[4][1]~regout\,
	datac => \grid[7][1]~regout\,
	datad => \grid[7][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~15_combout\);

-- Location: LC_X5_Y3_N3
\Selector45~0\ : maxv_lcell
-- Equation(s):
-- \Selector45~0_combout\ = ((\grid[1][0]~regout\ & ((\state.reset_st~regout\))))

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
	datab => \grid[1][0]~regout\,
	datad => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector45~0_combout\);

-- Location: LC_X4_Y3_N1
\grid~15\ : maxv_lcell
-- Equation(s):
-- \grid~15_combout\ = (!\buttons~combout\(1) & (\matrix[3][1]~regout\ & ((\buttons~combout\(0)) # (!\matrix[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(0),
	datab => \buttons~combout\(1),
	datac => \matrix[1][1]~regout\,
	datad => \matrix[3][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~15_combout\);

-- Location: LC_X6_Y3_N5
\grid[1][0]\ : maxv_lcell
-- Equation(s):
-- \grid[1][0]~regout\ = DFFEAS(((\grid~15_combout\ & ((\player~regout\))) # (!\grid~15_combout\ & (\grid[1][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector45~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[1][0]~regout\,
	datab => \player~regout\,
	datac => \Selector45~0_combout\,
	datad => \grid~15_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[1][0]~regout\);

-- Location: LC_X6_Y3_N6
\grid[1][1]\ : maxv_lcell
-- Equation(s):
-- \grid[1][1]~regout\ = DFFEAS((\state.play~regout\ & ((\grid[1][1]~regout\) # ((\grid~15_combout\)))) # (!\state.play~regout\ & (\grid[1][1]~regout\ & (\state.reset_st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.play~regout\,
	datab => \grid[1][1]~regout\,
	datac => \state.reset_st~regout\,
	datad => \grid~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[1][1]~regout\);

-- Location: LC_X7_Y2_N2
\victory_led~14\ : maxv_lcell
-- Equation(s):
-- \victory_led~14_combout\ = (\grid[1][0]~regout\ & (\grid[4][0]~regout\ & (\grid[4][1]~regout\ $ (!\grid[1][1]~regout\)))) # (!\grid[1][0]~regout\ & (\grid[4][1]~regout\ & (\grid[1][1]~regout\ & !\grid[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[1][0]~regout\,
	datab => \grid[4][1]~regout\,
	datac => \grid[1][1]~regout\,
	datad => \grid[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~14_combout\);

-- Location: LC_X7_Y2_N9
\victory_led~16\ : maxv_lcell
-- Equation(s):
-- \victory_led~16_combout\ = ((\victory_led~reg0_regout\) # ((\victory_led~15_combout\ & \victory_led~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \victory_led~reg0_regout\,
	datac => \victory_led~15_combout\,
	datad => \victory_led~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~16_combout\);

-- Location: LC_X7_Y2_N0
\victory_led~22\ : maxv_lcell
-- Equation(s):
-- \victory_led~22_combout\ = (\victory_led~16_combout\) # ((\victory_led~21_combout\ & ((\grid[2][1]~regout\) # (\grid[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[2][1]~regout\,
	datab => \grid[2][0]~regout\,
	datac => \victory_led~21_combout\,
	datad => \victory_led~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~22_combout\);

-- Location: LC_X5_Y2_N9
\Selector43~0\ : maxv_lcell
-- Equation(s):
-- \Selector43~0_combout\ = (\grid[0][0]~regout\ & (((\state.reset_st~regout\))))

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
	dataa => \grid[0][0]~regout\,
	datac => \state.reset_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector43~0_combout\);

-- Location: LC_X5_Y2_N5
\grid[0][0]\ : maxv_lcell
-- Equation(s):
-- \grid[0][0]~regout\ = DFFEAS(((\OUTPUT_PROC~5_combout\ & ((\player~regout\))) # (!\OUTPUT_PROC~5_combout\ & (\grid[0][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector43~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[0][0]~regout\,
	datab => \player~regout\,
	datac => \Selector43~0_combout\,
	datad => \OUTPUT_PROC~5_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[0][0]~regout\);

-- Location: LC_X5_Y2_N4
\grid[0][1]\ : maxv_lcell
-- Equation(s):
-- \grid[0][1]~regout\ = DFFEAS((\grid[0][1]~regout\ & ((\state.play~regout\) # ((\state.reset_st~regout\)))) # (!\grid[0][1]~regout\ & (\state.play~regout\ & ((\OUTPUT_PROC~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[0][1]~regout\,
	datab => \state.play~regout\,
	datac => \state.reset_st~regout\,
	datad => \OUTPUT_PROC~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[0][1]~regout\);

-- Location: LC_X5_Y3_N5
\victory_led~1\ : maxv_lcell
-- Equation(s):
-- \victory_led~1_combout\ = (\grid[7][0]~regout\ & (\grid[6][0]~regout\ & (\grid[6][1]~regout\ $ (!\grid[7][1]~regout\)))) # (!\grid[7][0]~regout\ & (!\grid[6][0]~regout\ & (\grid[6][1]~regout\ & \grid[7][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[7][0]~regout\,
	datab => \grid[6][0]~regout\,
	datac => \grid[6][1]~regout\,
	datad => \grid[7][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~1_combout\);

-- Location: LC_X7_Y2_N7
\victory_led~3\ : maxv_lcell
-- Equation(s):
-- \victory_led~3_combout\ = (\grid[5][1]~regout\ & (\grid[4][1]~regout\ & (\grid[5][0]~regout\ $ (!\grid[4][0]~regout\)))) # (!\grid[5][1]~regout\ & (!\grid[4][1]~regout\ & (\grid[5][0]~regout\ $ (!\grid[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[5][1]~regout\,
	datab => \grid[5][0]~regout\,
	datac => \grid[4][0]~regout\,
	datad => \grid[4][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~3_combout\);

-- Location: LC_X6_Y2_N1
\victory_led~2\ : maxv_lcell
-- Equation(s):
-- \victory_led~2_combout\ = (\grid[8][1]~regout\ & (\grid[7][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[7][0]~regout\)))) # (!\grid[8][1]~regout\ & (!\grid[7][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[7][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[8][1]~regout\,
	datab => \grid[8][0]~regout\,
	datac => \grid[7][1]~regout\,
	datad => \grid[7][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~2_combout\);

-- Location: LC_X4_Y3_N5
\grid~16\ : maxv_lcell
-- Equation(s):
-- \grid~16_combout\ = (\matrix[1][3]~regout\ & (\grid~6_combout\ & (!\OUTPUT_PROC~0_combout\ & !\buttons~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \matrix[1][3]~regout\,
	datab => \grid~6_combout\,
	datac => \OUTPUT_PROC~0_combout\,
	datad => \buttons~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \grid~16_combout\);

-- Location: LC_X6_Y1_N7
\grid[3][1]\ : maxv_lcell
-- Equation(s):
-- \grid[3][1]~regout\ = DFFEAS((\grid[3][1]~regout\ & ((\state.play~regout\) # ((\state.reset_st~regout\)))) # (!\grid[3][1]~regout\ & (\state.play~regout\ & ((\grid~16_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[3][1]~regout\,
	datab => \state.play~regout\,
	datac => \state.reset_st~regout\,
	datad => \grid~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[3][1]~regout\);

-- Location: LC_X6_Y1_N5
\Selector49~0\ : maxv_lcell
-- Equation(s):
-- \Selector49~0_combout\ = (((\state.reset_st~regout\ & \grid[3][0]~regout\)))

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
	datac => \state.reset_st~regout\,
	datad => \grid[3][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector49~0_combout\);

-- Location: LC_X6_Y1_N1
\grid[3][0]\ : maxv_lcell
-- Equation(s):
-- \grid[3][0]~regout\ = DFFEAS(((\grid~16_combout\ & ((\player~regout\))) # (!\grid~16_combout\ & (\grid[3][0]~regout\))), GLOBAL(\clk~combout\), VCC, , , \Selector49~0_combout\, , , !\state.play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \grid[3][0]~regout\,
	datab => \player~regout\,
	datac => \Selector49~0_combout\,
	datad => \grid~16_combout\,
	aclr => GND,
	sload => \ALT_INV_state.play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \grid[3][0]~regout\);

-- Location: LC_X7_Y2_N1
\victory_led~0\ : maxv_lcell
-- Equation(s):
-- \victory_led~0_combout\ = (\grid[3][1]~regout\ & (\grid[4][1]~regout\ & (\grid[4][0]~regout\ $ (!\grid[3][0]~regout\)))) # (!\grid[3][1]~regout\ & (!\grid[4][1]~regout\ & (\grid[4][0]~regout\ & \grid[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[3][1]~regout\,
	datab => \grid[4][1]~regout\,
	datac => \grid[4][0]~regout\,
	datad => \grid[3][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~0_combout\);

-- Location: LC_X7_Y2_N6
\victory_led~4\ : maxv_lcell
-- Equation(s):
-- \victory_led~4_combout\ = (\victory_led~1_combout\ & ((\victory_led~2_combout\) # ((\victory_led~3_combout\ & \victory_led~0_combout\)))) # (!\victory_led~1_combout\ & (\victory_led~3_combout\ & ((\victory_led~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \victory_led~1_combout\,
	datab => \victory_led~3_combout\,
	datac => \victory_led~2_combout\,
	datad => \victory_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~4_combout\);

-- Location: LC_X5_Y2_N6
\victory_led~10\ : maxv_lcell
-- Equation(s):
-- \victory_led~10_combout\ = (\grid[0][0]~regout\ & (\grid[3][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[3][1]~regout\)))) # (!\grid[0][0]~regout\ & (!\grid[3][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[0][0]~regout\,
	datab => \grid[0][1]~regout\,
	datac => \grid[3][1]~regout\,
	datad => \grid[3][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~10_combout\);

-- Location: LC_X6_Y1_N3
\victory_led~11\ : maxv_lcell
-- Equation(s):
-- \victory_led~11_combout\ = (\grid[3][1]~regout\ & (\grid[6][1]~regout\ & (\grid[3][0]~regout\ $ (!\grid[6][0]~regout\)))) # (!\grid[3][1]~regout\ & (!\grid[6][1]~regout\ & (\grid[3][0]~regout\ $ (!\grid[6][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[3][1]~regout\,
	datab => \grid[3][0]~regout\,
	datac => \grid[6][0]~regout\,
	datad => \grid[6][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~11_combout\);

-- Location: LC_X6_Y2_N4
\victory_led~7\ : maxv_lcell
-- Equation(s):
-- \victory_led~7_combout\ = (\grid[8][1]~regout\ & (\grid[4][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[4][0]~regout\)))) # (!\grid[8][1]~regout\ & (!\grid[4][1]~regout\ & (\grid[8][0]~regout\ $ (!\grid[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[8][1]~regout\,
	datab => \grid[8][0]~regout\,
	datac => \grid[4][1]~regout\,
	datad => \grid[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~7_combout\);

-- Location: LC_X6_Y3_N8
\victory_led~8\ : maxv_lcell
-- Equation(s):
-- \victory_led~8_combout\ = (\grid[1][1]~regout\ & (\grid[2][1]~regout\ & (\grid[1][0]~regout\ $ (!\grid[2][0]~regout\)))) # (!\grid[1][1]~regout\ & (!\grid[2][1]~regout\ & (\grid[1][0]~regout\ $ (!\grid[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[1][1]~regout\,
	datab => \grid[2][1]~regout\,
	datac => \grid[1][0]~regout\,
	datad => \grid[2][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~8_combout\);

-- Location: LC_X6_Y2_N6
\victory_led~6\ : maxv_lcell
-- Equation(s):
-- \victory_led~6_combout\ = (\grid[0][0]~regout\ & (\grid[4][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[4][1]~regout\)))) # (!\grid[0][0]~regout\ & (!\grid[4][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[0][0]~regout\,
	datab => \grid[0][1]~regout\,
	datac => \grid[4][1]~regout\,
	datad => \grid[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~6_combout\);

-- Location: LC_X6_Y2_N7
\victory_led~5\ : maxv_lcell
-- Equation(s):
-- \victory_led~5_combout\ = (\grid[0][0]~regout\ & (\grid[1][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[1][1]~regout\)))) # (!\grid[0][0]~regout\ & (!\grid[1][0]~regout\ & (\grid[0][1]~regout\ $ (!\grid[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[0][0]~regout\,
	datab => \grid[0][1]~regout\,
	datac => \grid[1][1]~regout\,
	datad => \grid[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~5_combout\);

-- Location: LC_X6_Y2_N8
\victory_led~9\ : maxv_lcell
-- Equation(s):
-- \victory_led~9_combout\ = (\victory_led~7_combout\ & ((\victory_led~6_combout\) # ((\victory_led~8_combout\ & \victory_led~5_combout\)))) # (!\victory_led~7_combout\ & (\victory_led~8_combout\ & ((\victory_led~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \victory_led~7_combout\,
	datab => \victory_led~8_combout\,
	datac => \victory_led~6_combout\,
	datad => \victory_led~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~9_combout\);

-- Location: LC_X6_Y2_N2
\victory_led~12\ : maxv_lcell
-- Equation(s):
-- \victory_led~12_combout\ = ((\victory_led~9_combout\) # ((\victory_led~10_combout\ & \victory_led~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \victory_led~10_combout\,
	datac => \victory_led~11_combout\,
	datad => \victory_led~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~12_combout\);

-- Location: LC_X6_Y2_N3
\victory_led~13\ : maxv_lcell
-- Equation(s):
-- \victory_led~13_combout\ = (\victory_led~4_combout\) # ((\victory_led~12_combout\ & ((\grid[0][0]~regout\) # (\grid[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \grid[0][0]~regout\,
	datab => \grid[0][1]~regout\,
	datac => \victory_led~4_combout\,
	datad => \victory_led~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \victory_led~13_combout\);

-- Location: LC_X6_Y2_N9
\victory_led~reg0\ : maxv_lcell
-- Equation(s):
-- \victory_led~reg0_regout\ = DFFEAS((\Selector36~0_combout\) # ((\state.check~regout\ & ((\victory_led~22_combout\) # (\victory_led~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.check~regout\,
	datab => \Selector36~0_combout\,
	datac => \victory_led~22_combout\,
	datad => \victory_led~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \victory_led~reg0_regout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~3_combout\,
	oe => VCC,
	padio => ww_rows(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~3_combout\,
	oe => VCC,
	padio => ww_rows(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~3_combout\,
	oe => VCC,
	padio => ww_rows(2));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~3_combout\,
	oe => VCC,
	padio => ww_rows(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_rows(4));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rows[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~3_combout\,
	oe => VCC,
	padio => ww_rows(5));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~0_combout\,
	oe => VCC,
	padio => ww_cols(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~1_combout\,
	oe => VCC,
	padio => ww_cols(1));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~2_combout\,
	oe => VCC,
	padio => ww_cols(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~3_combout\,
	oe => VCC,
	padio => ww_cols(3));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~4_combout\,
	oe => VCC,
	padio => ww_cols(4));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cols[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder4~5_combout\,
	oe => VCC,
	padio => ww_cols(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\victory_led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \victory_led~reg0_regout\,
	oe => VCC,
	padio => ww_victory_led);
END structure;


