-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/26/2020 13:53:42"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(15 DOWNTO 0)
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(15 DOWNTO 0);
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \ydir|Button_Detection~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \ydir|next_target_position[2]~0_combout\ : std_logic;
SIGNAL \ydir|next_target_position[3]~1_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \ydir|next_target_position[2]~2_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \ydir|next_target_position[1]~3_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \ydir|next_target_position[0]~4_combout\ : std_logic;
SIGNAL \ydir|Equal0~0_combout\ : std_logic;
SIGNAL \ydir|position[2]~0_combout\ : std_logic;
SIGNAL \ydir|target_position[2]~0_combout\ : std_logic;
SIGNAL \ydir|target_position[2]~1_combout\ : std_logic;
SIGNAL \ydir|target_position[2]~2_combout\ : std_logic;
SIGNAL \ydir|comp0|a_great_b~1_combout\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \ydir|comp0|a_equal_b~0_combout\ : std_logic;
SIGNAL \ydir|sm0|count|process_0~0_combout\ : std_logic;
SIGNAL \ydir|comp0|a_lesser_b~0_combout\ : std_logic;
SIGNAL \ydir|comp0|a_lesser_b~1_combout\ : std_logic;
SIGNAL \ydir|sm0|count|process_0~1_combout\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \ydir|sm0|count|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \ydir|comp0|a_great_b~0_combout\ : std_logic;
SIGNAL \ydir|comp0|a_great_b~2_combout\ : std_logic;
SIGNAL \ydir|comp0|a_great_b~3_combout\ : std_logic;
SIGNAL \ydir|comp0|a_lesser_b~2_combout\ : std_logic;
SIGNAL \ydir|sm0|Selector1~0_combout\ : std_logic;
SIGNAL \ydir|sm0|current_state.S2~q\ : std_logic;
SIGNAL \ydir|sm0|Selector0~0_combout\ : std_logic;
SIGNAL \ydir|sm0|current_state.S0~q\ : std_logic;
SIGNAL \ydir|motion_flag_in~0_combout\ : std_logic;
SIGNAL \ydir|motion_flag_in~q\ : std_logic;
SIGNAL \ydir|in_motion~q\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \xdir|Button_Detection~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \xdir|next_target_position[2]~0_combout\ : std_logic;
SIGNAL \xdir|next_target_position[3]~1_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \xdir|next_target_position[2]~2_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \xdir|next_target_position[1]~3_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \xdir|next_target_position[0]~4_combout\ : std_logic;
SIGNAL \xdir|Equal0~0_combout\ : std_logic;
SIGNAL \xdir|position[2]~0_combout\ : std_logic;
SIGNAL \xdir|target_position[2]~0_combout\ : std_logic;
SIGNAL \xdir|target_position[2]~1_combout\ : std_logic;
SIGNAL \xdir|target_position[2]~2_combout\ : std_logic;
SIGNAL \xdir|comp0|a_great_b~1_combout\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \xdir|comp0|a_equal_b~0_combout\ : std_logic;
SIGNAL \xdir|sm0|count|process_0~0_combout\ : std_logic;
SIGNAL \xdir|comp0|a_lesser_b~0_combout\ : std_logic;
SIGNAL \xdir|comp0|a_lesser_b~1_combout\ : std_logic;
SIGNAL \xdir|sm0|count|process_0~1_combout\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \xdir|sm0|count|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \xdir|comp0|a_great_b~0_combout\ : std_logic;
SIGNAL \xdir|comp0|a_great_b~2_combout\ : std_logic;
SIGNAL \xdir|comp0|a_great_b~3_combout\ : std_logic;
SIGNAL \xdir|comp0|a_lesser_b~2_combout\ : std_logic;
SIGNAL \xdir|sm0|Selector1~0_combout\ : std_logic;
SIGNAL \xdir|sm0|current_state.S2~q\ : std_logic;
SIGNAL \xdir|sm0|Selector0~0_combout\ : std_logic;
SIGNAL \xdir|sm0|current_state.S0~q\ : std_logic;
SIGNAL \xdir|motion_flag_in~0_combout\ : std_logic;
SIGNAL \xdir|motion_flag_in~q\ : std_logic;
SIGNAL \xdir|in_motion~q\ : std_logic;
SIGNAL \Extendo|Selector2~0_combout\ : std_logic;
SIGNAL \ShiftReg|sreg~3_combout\ : std_logic;
SIGNAL \Extendo|clk_en~combout\ : std_logic;
SIGNAL \ShiftReg|sreg~2_combout\ : std_logic;
SIGNAL \ShiftReg|sreg~1_combout\ : std_logic;
SIGNAL \ShiftReg|sreg~0_combout\ : std_logic;
SIGNAL \Extendo|Selector4~0_combout\ : std_logic;
SIGNAL \Extendo|Selector2~1_combout\ : std_logic;
SIGNAL \Extendo|current_state.extending~q\ : std_logic;
SIGNAL \Extendo|Selector4~1_combout\ : std_logic;
SIGNAL \Extendo|current_state.extended~q\ : std_logic;
SIGNAL \Extendo|Selector1~0_combout\ : std_logic;
SIGNAL \Extendo|Selector3~0_combout\ : std_logic;
SIGNAL \Extendo|current_state.retracting~q\ : std_logic;
SIGNAL \Extendo|Selector1~1_combout\ : std_logic;
SIGNAL \Extendo|Selector1~2_combout\ : std_logic;
SIGNAL \Extendo|current_state.retracted~q\ : std_logic;
SIGNAL \Extendo|Selector0~0_combout\ : std_logic;
SIGNAL \Extendo|current_state.disabled~q\ : std_logic;
SIGNAL \xdir|SYSTEM_FAULT_ERROR~0_combout\ : std_logic;
SIGNAL \xdir|SYSTEM_FAULT_ERROR~1_combout\ : std_logic;
SIGNAL \xdir|SYSTEM_FAULT_ERROR~q\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \Grap|current_state~0_combout\ : std_logic;
SIGNAL \Grap|current_state~q\ : std_logic;
SIGNAL \xdir|next_target_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ydir|sm0|count|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xdir|position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xdir|sm0|count|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ShiftReg|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ydir|position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ydir|current_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ydir|next_target_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xdir|current_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ydir|target_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xdir|target_position\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clk~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clk~input_o\ <= NOT \Clk~input_o\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|SYSTEM_FAULT_ERROR~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ydir|in_motion~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|in_motion~q\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Grap|current_state~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftReg|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftReg|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftReg|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftReg|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ydir|current_position\(0),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ydir|current_position\(1),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ydir|current_position\(2),
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ydir|current_position\(3),
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|current_position\(0),
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

\leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|current_position\(1),
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

\leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|current_position\(2),
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

\leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xdir|current_position\(3),
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\ydir|sm0|count|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|ud_bin_counter[1]~5_cout\ = CARRY(\ydir|sm0|count|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|count|ud_bin_counter\(0),
	datad => VCC,
	cout => \ydir|sm0|count|ud_bin_counter[1]~5_cout\);

\ydir|sm0|count|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|ud_bin_counter[1]~6_combout\ = (\ydir|sm0|count|ud_bin_counter\(1) & ((\ydir|sm0|count|process_0~1_combout\ & (!\ydir|sm0|count|ud_bin_counter[1]~5_cout\)) # (!\ydir|sm0|count|process_0~1_combout\ & 
-- (\ydir|sm0|count|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\ydir|sm0|count|ud_bin_counter\(1) & ((\ydir|sm0|count|process_0~1_combout\ & ((\ydir|sm0|count|ud_bin_counter[1]~5_cout\) # (GND))) # (!\ydir|sm0|count|process_0~1_combout\ & 
-- (!\ydir|sm0|count|ud_bin_counter[1]~5_cout\))))
-- \ydir|sm0|count|ud_bin_counter[1]~7\ = CARRY((\ydir|sm0|count|ud_bin_counter\(1) & (\ydir|sm0|count|process_0~1_combout\ & !\ydir|sm0|count|ud_bin_counter[1]~5_cout\)) # (!\ydir|sm0|count|ud_bin_counter\(1) & ((\ydir|sm0|count|process_0~1_combout\) # 
-- (!\ydir|sm0|count|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|count|ud_bin_counter\(1),
	datab => \ydir|sm0|count|process_0~1_combout\,
	datad => VCC,
	cin => \ydir|sm0|count|ud_bin_counter[1]~5_cout\,
	combout => \ydir|sm0|count|ud_bin_counter[1]~6_combout\,
	cout => \ydir|sm0|count|ud_bin_counter[1]~7\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\ydir|sm0|count|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \ydir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|count|ud_bin_counter\(1));

\ydir|sm0|count|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|ud_bin_counter[2]~8_combout\ = ((\ydir|sm0|count|ud_bin_counter\(2) $ (\ydir|sm0|count|process_0~1_combout\ $ (\ydir|sm0|count|ud_bin_counter[1]~7\)))) # (GND)
-- \ydir|sm0|count|ud_bin_counter[2]~9\ = CARRY((\ydir|sm0|count|ud_bin_counter\(2) & ((!\ydir|sm0|count|ud_bin_counter[1]~7\) # (!\ydir|sm0|count|process_0~1_combout\))) # (!\ydir|sm0|count|ud_bin_counter\(2) & (!\ydir|sm0|count|process_0~1_combout\ & 
-- !\ydir|sm0|count|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|count|ud_bin_counter\(2),
	datab => \ydir|sm0|count|process_0~1_combout\,
	datad => VCC,
	cin => \ydir|sm0|count|ud_bin_counter[1]~7\,
	combout => \ydir|sm0|count|ud_bin_counter[2]~8_combout\,
	cout => \ydir|sm0|count|ud_bin_counter[2]~9\);

\ydir|sm0|count|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \ydir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|count|ud_bin_counter\(2));

\ydir|Button_Detection~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|Button_Detection~0_combout\ = (\ydir|motion_flag_in~q\) # (\ydir|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|motion_flag_in~q\,
	datab => \ydir|Equal0~0_combout\,
	combout => \ydir|Button_Detection~0_combout\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

\ydir|next_target_position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|next_target_position[2]~0_combout\ = (\rst_n~input_o\ & (((\pb[2]~input_o\ & !\xdir|SYSTEM_FAULT_ERROR~0_combout\)) # (!\ydir|Button_Detection~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \pb[2]~input_o\,
	datac => \xdir|SYSTEM_FAULT_ERROR~0_combout\,
	datad => \ydir|Button_Detection~0_combout\,
	combout => \ydir|next_target_position[2]~0_combout\);

\ydir|next_target_position[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|next_target_position[3]~1_combout\ = (\ydir|next_target_position[2]~0_combout\ & (\ydir|Button_Detection~0_combout\ & (\sw[3]~input_o\))) # (!\ydir|next_target_position[2]~0_combout\ & (((\ydir|next_target_position\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|Button_Detection~0_combout\,
	datab => \sw[3]~input_o\,
	datac => \ydir|next_target_position\(3),
	datad => \ydir|next_target_position[2]~0_combout\,
	combout => \ydir|next_target_position[3]~1_combout\);

\ydir|next_target_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|next_target_position\(3));

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\ydir|next_target_position[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|next_target_position[2]~2_combout\ = (\ydir|next_target_position[2]~0_combout\ & (\ydir|Button_Detection~0_combout\ & (\sw[2]~input_o\))) # (!\ydir|next_target_position[2]~0_combout\ & (((\ydir|next_target_position\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|Button_Detection~0_combout\,
	datab => \sw[2]~input_o\,
	datac => \ydir|next_target_position\(2),
	datad => \ydir|next_target_position[2]~0_combout\,
	combout => \ydir|next_target_position[2]~2_combout\);

\ydir|next_target_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|next_target_position\(2));

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\ydir|next_target_position[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|next_target_position[1]~3_combout\ = (\ydir|next_target_position[2]~0_combout\ & (\ydir|Button_Detection~0_combout\ & (\sw[1]~input_o\))) # (!\ydir|next_target_position[2]~0_combout\ & (((\ydir|next_target_position\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|Button_Detection~0_combout\,
	datab => \sw[1]~input_o\,
	datac => \ydir|next_target_position\(1),
	datad => \ydir|next_target_position[2]~0_combout\,
	combout => \ydir|next_target_position[1]~3_combout\);

\ydir|next_target_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|next_target_position\(1));

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\ydir|next_target_position[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|next_target_position[0]~4_combout\ = (\ydir|next_target_position[2]~0_combout\ & (\ydir|Button_Detection~0_combout\ & (\sw[0]~input_o\))) # (!\ydir|next_target_position[2]~0_combout\ & (((\ydir|next_target_position\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|Button_Detection~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \ydir|next_target_position\(0),
	datad => \ydir|next_target_position[2]~0_combout\,
	combout => \ydir|next_target_position[0]~4_combout\);

\ydir|next_target_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|next_target_position\(0));

\ydir|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|Equal0~0_combout\ = (!\ydir|next_target_position\(3) & (!\ydir|next_target_position\(2) & (!\ydir|next_target_position\(1) & !\ydir|next_target_position\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|next_target_position\(3),
	datab => \ydir|next_target_position\(2),
	datac => \ydir|next_target_position\(1),
	datad => \ydir|next_target_position\(0),
	combout => \ydir|Equal0~0_combout\);

\ydir|position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|position[2]~0_combout\ = (\rst_n~input_o\ & ((\ydir|motion_flag_in~q\) # (!\ydir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \ydir|motion_flag_in~q\,
	datad => \ydir|Equal0~0_combout\,
	combout => \ydir|position[2]~0_combout\);

\ydir|position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter\(2),
	ena => \ydir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|position\(2));

\ydir|target_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position\(1),
	ena => \ydir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|target_position\(1));

\ydir|target_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position\(0),
	ena => \ydir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|target_position\(0));

\ydir|target_position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|target_position[2]~0_combout\ = (\ydir|next_target_position\(1) & ((\ydir|next_target_position\(0) $ (\ydir|target_position\(0))) # (!\ydir|target_position\(1)))) # (!\ydir|next_target_position\(1) & ((\ydir|target_position\(1)) # 
-- (\ydir|next_target_position\(0) $ (\ydir|target_position\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|next_target_position\(1),
	datab => \ydir|target_position\(1),
	datac => \ydir|next_target_position\(0),
	datad => \ydir|target_position\(0),
	combout => \ydir|target_position[2]~0_combout\);

\ydir|target_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position\(2),
	ena => \ydir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|target_position\(2));

\ydir|target_position[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|target_position[2]~1_combout\ = (\ydir|next_target_position\(3) & ((\ydir|next_target_position\(2) $ (\ydir|target_position\(2))) # (!\ydir|target_position\(3)))) # (!\ydir|next_target_position\(3) & ((\ydir|target_position\(3)) # 
-- (\ydir|next_target_position\(2) $ (\ydir|target_position\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|next_target_position\(3),
	datab => \ydir|target_position\(3),
	datac => \ydir|next_target_position\(2),
	datad => \ydir|target_position\(2),
	combout => \ydir|target_position[2]~1_combout\);

\ydir|target_position[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|target_position[2]~2_combout\ = (\rst_n~input_o\ & (!\ydir|Button_Detection~0_combout\ & ((\ydir|target_position[2]~0_combout\) # (\ydir|target_position[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \ydir|target_position[2]~0_combout\,
	datac => \ydir|target_position[2]~1_combout\,
	datad => \ydir|Button_Detection~0_combout\,
	combout => \ydir|target_position[2]~2_combout\);

\ydir|target_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|next_target_position\(3),
	ena => \ydir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|target_position\(3));

\ydir|comp0|a_great_b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_great_b~1_combout\ = (\ydir|position\(2) & (\ydir|target_position\(2) & (\ydir|position\(3) $ (!\ydir|target_position\(3))))) # (!\ydir|position\(2) & (!\ydir|target_position\(2) & (\ydir|position\(3) $ (!\ydir|target_position\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|position\(2),
	datab => \ydir|position\(3),
	datac => \ydir|target_position\(3),
	datad => \ydir|target_position\(2),
	combout => \ydir|comp0|a_great_b~1_combout\);

\ydir|sm0|count|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|ud_bin_counter[0]~3_combout\ = \ydir|sm0|count|ud_bin_counter\(0) $ (((\ydir|motion_flag_in~q\ & ((\ydir|comp0|a_equal_b~0_combout\) # (!\ydir|comp0|a_great_b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|comp0|a_great_b~1_combout\,
	datab => \ydir|comp0|a_equal_b~0_combout\,
	datac => \ydir|sm0|count|ud_bin_counter\(0),
	datad => \ydir|motion_flag_in~q\,
	combout => \ydir|sm0|count|ud_bin_counter[0]~3_combout\);

\ydir|sm0|count|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|count|ud_bin_counter\(0));

\ydir|position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter\(0),
	ena => \ydir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|position\(0));

\ydir|position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter\(1),
	ena => \ydir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|position\(1));

\ydir|comp0|a_equal_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_equal_b~0_combout\ = (\ydir|position\(0) & ((\ydir|position\(1) $ (\ydir|target_position\(1))) # (!\ydir|target_position\(0)))) # (!\ydir|position\(0) & ((\ydir|target_position\(0)) # (\ydir|position\(1) $ (\ydir|target_position\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|position\(0),
	datab => \ydir|target_position\(0),
	datac => \ydir|position\(1),
	datad => \ydir|target_position\(1),
	combout => \ydir|comp0|a_equal_b~0_combout\);

\ydir|sm0|count|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|process_0~0_combout\ = (\ydir|motion_flag_in~q\ & ((\ydir|comp0|a_equal_b~0_combout\) # (!\ydir|comp0|a_great_b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|motion_flag_in~q\,
	datab => \ydir|comp0|a_equal_b~0_combout\,
	datad => \ydir|comp0|a_great_b~1_combout\,
	combout => \ydir|sm0|count|process_0~0_combout\);

\ydir|comp0|a_lesser_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_lesser_b~0_combout\ = (\ydir|target_position\(3) & (((\ydir|target_position\(2) & !\ydir|position\(2))) # (!\ydir|position\(3)))) # (!\ydir|target_position\(3) & (\ydir|target_position\(2) & (!\ydir|position\(2) & !\ydir|position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|target_position\(3),
	datab => \ydir|target_position\(2),
	datac => \ydir|position\(2),
	datad => \ydir|position\(3),
	combout => \ydir|comp0|a_lesser_b~0_combout\);

\ydir|comp0|a_lesser_b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_lesser_b~1_combout\ = (\ydir|target_position\(1) & (((\ydir|target_position\(0) & !\ydir|position\(0))) # (!\ydir|position\(1)))) # (!\ydir|target_position\(1) & (\ydir|target_position\(0) & (!\ydir|position\(0) & !\ydir|position\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|target_position\(1),
	datab => \ydir|target_position\(0),
	datac => \ydir|position\(0),
	datad => \ydir|position\(1),
	combout => \ydir|comp0|a_lesser_b~1_combout\);

\ydir|sm0|count|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|process_0~1_combout\ = (\ydir|sm0|count|process_0~0_combout\ & ((\ydir|comp0|a_lesser_b~0_combout\) # ((\ydir|comp0|a_lesser_b~1_combout\ & \ydir|comp0|a_great_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|count|process_0~0_combout\,
	datab => \ydir|comp0|a_lesser_b~0_combout\,
	datac => \ydir|comp0|a_lesser_b~1_combout\,
	datad => \ydir|comp0|a_great_b~1_combout\,
	combout => \ydir|sm0|count|process_0~1_combout\);

\ydir|sm0|count|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|count|ud_bin_counter[3]~10_combout\ = \ydir|sm0|count|ud_bin_counter\(3) $ (\ydir|sm0|count|process_0~1_combout\ $ (!\ydir|sm0|count|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|count|ud_bin_counter\(3),
	datab => \ydir|sm0|count|process_0~1_combout\,
	cin => \ydir|sm0|count|ud_bin_counter[2]~9\,
	combout => \ydir|sm0|count|ud_bin_counter[3]~10_combout\);

\ydir|sm0|count|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \ydir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|count|ud_bin_counter\(3));

\ydir|position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|count|ud_bin_counter\(3),
	ena => \ydir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|position\(3));

\ydir|comp0|a_great_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_great_b~0_combout\ = (\ydir|position\(3) & (((\ydir|position\(2) & !\ydir|target_position\(2))) # (!\ydir|target_position\(3)))) # (!\ydir|position\(3) & (\ydir|position\(2) & (!\ydir|target_position\(2) & !\ydir|target_position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|position\(3),
	datab => \ydir|position\(2),
	datac => \ydir|target_position\(2),
	datad => \ydir|target_position\(3),
	combout => \ydir|comp0|a_great_b~0_combout\);

\ydir|comp0|a_great_b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_great_b~2_combout\ = (\ydir|position\(1) & (((\ydir|position\(0) & !\ydir|target_position\(0))) # (!\ydir|target_position\(1)))) # (!\ydir|position\(1) & (\ydir|position\(0) & (!\ydir|target_position\(0) & !\ydir|target_position\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|position\(1),
	datab => \ydir|position\(0),
	datac => \ydir|target_position\(0),
	datad => \ydir|target_position\(1),
	combout => \ydir|comp0|a_great_b~2_combout\);

\ydir|comp0|a_great_b~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_great_b~3_combout\ = (\ydir|comp0|a_great_b~0_combout\) # ((\ydir|comp0|a_great_b~1_combout\ & \ydir|comp0|a_great_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|comp0|a_great_b~0_combout\,
	datab => \ydir|comp0|a_great_b~1_combout\,
	datac => \ydir|comp0|a_great_b~2_combout\,
	combout => \ydir|comp0|a_great_b~3_combout\);

\ydir|comp0|a_lesser_b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|comp0|a_lesser_b~2_combout\ = (\ydir|comp0|a_lesser_b~0_combout\) # ((\ydir|comp0|a_lesser_b~1_combout\ & \ydir|comp0|a_great_b~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|comp0|a_lesser_b~0_combout\,
	datab => \ydir|comp0|a_lesser_b~1_combout\,
	datac => \ydir|comp0|a_great_b~1_combout\,
	combout => \ydir|comp0|a_lesser_b~2_combout\);

\ydir|sm0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|Selector1~0_combout\ = (\ydir|comp0|a_great_b~3_combout\ & ((\ydir|sm0|current_state.S2~q\) # ((!\ydir|sm0|current_state.S0~q\ & !\ydir|comp0|a_lesser_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|comp0|a_great_b~3_combout\,
	datab => \ydir|sm0|current_state.S2~q\,
	datac => \ydir|sm0|current_state.S0~q\,
	datad => \ydir|comp0|a_lesser_b~2_combout\,
	combout => \ydir|sm0|Selector1~0_combout\);

\ydir|sm0|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|current_state.S2~q\);

\ydir|sm0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|sm0|Selector0~0_combout\ = (\ydir|sm0|current_state.S0~q\ & ((\ydir|sm0|current_state.S2~q\ & (\ydir|comp0|a_great_b~3_combout\)) # (!\ydir|sm0|current_state.S2~q\ & ((\ydir|comp0|a_lesser_b~2_combout\))))) # (!\ydir|sm0|current_state.S0~q\ & 
-- ((\ydir|comp0|a_great_b~3_combout\) # ((\ydir|comp0|a_lesser_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|comp0|a_great_b~3_combout\,
	datab => \ydir|comp0|a_lesser_b~2_combout\,
	datac => \ydir|sm0|current_state.S2~q\,
	datad => \ydir|sm0|current_state.S0~q\,
	combout => \ydir|sm0|Selector0~0_combout\);

\ydir|sm0|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|sm0|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|sm0|current_state.S0~q\);

\ydir|motion_flag_in~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ydir|motion_flag_in~0_combout\ = (\ydir|motion_flag_in~q\ & (\ydir|sm0|current_state.S0~q\)) # (!\ydir|motion_flag_in~q\ & ((!\ydir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|sm0|current_state.S0~q\,
	datab => \ydir|motion_flag_in~q\,
	datad => \ydir|Equal0~0_combout\,
	combout => \ydir|motion_flag_in~0_combout\);

\ydir|motion_flag_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|motion_flag_in~0_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|motion_flag_in~q\);

\ydir|in_motion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|motion_flag_in~q\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|in_motion~q\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\xdir|sm0|count|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|ud_bin_counter[1]~5_cout\ = CARRY(\xdir|sm0|count|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|count|ud_bin_counter\(0),
	datad => VCC,
	cout => \xdir|sm0|count|ud_bin_counter[1]~5_cout\);

\xdir|sm0|count|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|ud_bin_counter[1]~6_combout\ = (\xdir|sm0|count|ud_bin_counter\(1) & ((\xdir|sm0|count|process_0~1_combout\ & (!\xdir|sm0|count|ud_bin_counter[1]~5_cout\)) # (!\xdir|sm0|count|process_0~1_combout\ & 
-- (\xdir|sm0|count|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\xdir|sm0|count|ud_bin_counter\(1) & ((\xdir|sm0|count|process_0~1_combout\ & ((\xdir|sm0|count|ud_bin_counter[1]~5_cout\) # (GND))) # (!\xdir|sm0|count|process_0~1_combout\ & 
-- (!\xdir|sm0|count|ud_bin_counter[1]~5_cout\))))
-- \xdir|sm0|count|ud_bin_counter[1]~7\ = CARRY((\xdir|sm0|count|ud_bin_counter\(1) & (\xdir|sm0|count|process_0~1_combout\ & !\xdir|sm0|count|ud_bin_counter[1]~5_cout\)) # (!\xdir|sm0|count|ud_bin_counter\(1) & ((\xdir|sm0|count|process_0~1_combout\) # 
-- (!\xdir|sm0|count|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|count|ud_bin_counter\(1),
	datab => \xdir|sm0|count|process_0~1_combout\,
	datad => VCC,
	cin => \xdir|sm0|count|ud_bin_counter[1]~5_cout\,
	combout => \xdir|sm0|count|ud_bin_counter[1]~6_combout\,
	cout => \xdir|sm0|count|ud_bin_counter[1]~7\);

\xdir|sm0|count|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \xdir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|count|ud_bin_counter\(1));

\xdir|sm0|count|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|ud_bin_counter[2]~8_combout\ = ((\xdir|sm0|count|ud_bin_counter\(2) $ (\xdir|sm0|count|process_0~1_combout\ $ (\xdir|sm0|count|ud_bin_counter[1]~7\)))) # (GND)
-- \xdir|sm0|count|ud_bin_counter[2]~9\ = CARRY((\xdir|sm0|count|ud_bin_counter\(2) & ((!\xdir|sm0|count|ud_bin_counter[1]~7\) # (!\xdir|sm0|count|process_0~1_combout\))) # (!\xdir|sm0|count|ud_bin_counter\(2) & (!\xdir|sm0|count|process_0~1_combout\ & 
-- !\xdir|sm0|count|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|count|ud_bin_counter\(2),
	datab => \xdir|sm0|count|process_0~1_combout\,
	datad => VCC,
	cin => \xdir|sm0|count|ud_bin_counter[1]~7\,
	combout => \xdir|sm0|count|ud_bin_counter[2]~8_combout\,
	cout => \xdir|sm0|count|ud_bin_counter[2]~9\);

\xdir|sm0|count|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \xdir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|count|ud_bin_counter\(2));

\xdir|Button_Detection~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|Button_Detection~0_combout\ = (\xdir|motion_flag_in~q\) # (\xdir|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|motion_flag_in~q\,
	datab => \xdir|Equal0~0_combout\,
	combout => \xdir|Button_Detection~0_combout\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\xdir|next_target_position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|next_target_position[2]~0_combout\ = (\rst_n~input_o\ & (((\pb[2]~input_o\ & !\xdir|SYSTEM_FAULT_ERROR~0_combout\)) # (!\xdir|Button_Detection~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \pb[2]~input_o\,
	datac => \xdir|SYSTEM_FAULT_ERROR~0_combout\,
	datad => \xdir|Button_Detection~0_combout\,
	combout => \xdir|next_target_position[2]~0_combout\);

\xdir|next_target_position[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|next_target_position[3]~1_combout\ = (\xdir|next_target_position[2]~0_combout\ & (\xdir|Button_Detection~0_combout\ & (\sw[7]~input_o\))) # (!\xdir|next_target_position[2]~0_combout\ & (((\xdir|next_target_position\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|Button_Detection~0_combout\,
	datab => \sw[7]~input_o\,
	datac => \xdir|next_target_position\(3),
	datad => \xdir|next_target_position[2]~0_combout\,
	combout => \xdir|next_target_position[3]~1_combout\);

\xdir|next_target_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|next_target_position\(3));

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\xdir|next_target_position[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|next_target_position[2]~2_combout\ = (\xdir|next_target_position[2]~0_combout\ & (\xdir|Button_Detection~0_combout\ & (\sw[6]~input_o\))) # (!\xdir|next_target_position[2]~0_combout\ & (((\xdir|next_target_position\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|Button_Detection~0_combout\,
	datab => \sw[6]~input_o\,
	datac => \xdir|next_target_position\(2),
	datad => \xdir|next_target_position[2]~0_combout\,
	combout => \xdir|next_target_position[2]~2_combout\);

\xdir|next_target_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|next_target_position\(2));

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\xdir|next_target_position[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|next_target_position[1]~3_combout\ = (\xdir|next_target_position[2]~0_combout\ & (\xdir|Button_Detection~0_combout\ & (\sw[5]~input_o\))) # (!\xdir|next_target_position[2]~0_combout\ & (((\xdir|next_target_position\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|Button_Detection~0_combout\,
	datab => \sw[5]~input_o\,
	datac => \xdir|next_target_position\(1),
	datad => \xdir|next_target_position[2]~0_combout\,
	combout => \xdir|next_target_position[1]~3_combout\);

\xdir|next_target_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|next_target_position\(1));

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\xdir|next_target_position[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|next_target_position[0]~4_combout\ = (\xdir|next_target_position[2]~0_combout\ & (\xdir|Button_Detection~0_combout\ & (\sw[4]~input_o\))) # (!\xdir|next_target_position[2]~0_combout\ & (((\xdir|next_target_position\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|Button_Detection~0_combout\,
	datab => \sw[4]~input_o\,
	datac => \xdir|next_target_position\(0),
	datad => \xdir|next_target_position[2]~0_combout\,
	combout => \xdir|next_target_position[0]~4_combout\);

\xdir|next_target_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|next_target_position\(0));

\xdir|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|Equal0~0_combout\ = (!\xdir|next_target_position\(3) & (!\xdir|next_target_position\(2) & (!\xdir|next_target_position\(1) & !\xdir|next_target_position\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|next_target_position\(3),
	datab => \xdir|next_target_position\(2),
	datac => \xdir|next_target_position\(1),
	datad => \xdir|next_target_position\(0),
	combout => \xdir|Equal0~0_combout\);

\xdir|position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|position[2]~0_combout\ = (\rst_n~input_o\ & ((\xdir|motion_flag_in~q\) # (!\xdir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \xdir|motion_flag_in~q\,
	datad => \xdir|Equal0~0_combout\,
	combout => \xdir|position[2]~0_combout\);

\xdir|position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter\(2),
	ena => \xdir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|position\(2));

\xdir|target_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position\(1),
	ena => \xdir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|target_position\(1));

\xdir|target_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position\(0),
	ena => \xdir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|target_position\(0));

\xdir|target_position[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|target_position[2]~0_combout\ = (\xdir|next_target_position\(1) & ((\xdir|next_target_position\(0) $ (\xdir|target_position\(0))) # (!\xdir|target_position\(1)))) # (!\xdir|next_target_position\(1) & ((\xdir|target_position\(1)) # 
-- (\xdir|next_target_position\(0) $ (\xdir|target_position\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|next_target_position\(1),
	datab => \xdir|target_position\(1),
	datac => \xdir|next_target_position\(0),
	datad => \xdir|target_position\(0),
	combout => \xdir|target_position[2]~0_combout\);

\xdir|target_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position\(2),
	ena => \xdir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|target_position\(2));

\xdir|target_position[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|target_position[2]~1_combout\ = (\xdir|next_target_position\(3) & ((\xdir|next_target_position\(2) $ (\xdir|target_position\(2))) # (!\xdir|target_position\(3)))) # (!\xdir|next_target_position\(3) & ((\xdir|target_position\(3)) # 
-- (\xdir|next_target_position\(2) $ (\xdir|target_position\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|next_target_position\(3),
	datab => \xdir|target_position\(3),
	datac => \xdir|next_target_position\(2),
	datad => \xdir|target_position\(2),
	combout => \xdir|target_position[2]~1_combout\);

\xdir|target_position[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|target_position[2]~2_combout\ = (\rst_n~input_o\ & (!\xdir|Button_Detection~0_combout\ & ((\xdir|target_position[2]~0_combout\) # (\xdir|target_position[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \xdir|target_position[2]~0_combout\,
	datac => \xdir|target_position[2]~1_combout\,
	datad => \xdir|Button_Detection~0_combout\,
	combout => \xdir|target_position[2]~2_combout\);

\xdir|target_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|next_target_position\(3),
	ena => \xdir|target_position[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|target_position\(3));

\xdir|comp0|a_great_b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_great_b~1_combout\ = (\xdir|position\(2) & (\xdir|target_position\(2) & (\xdir|position\(3) $ (!\xdir|target_position\(3))))) # (!\xdir|position\(2) & (!\xdir|target_position\(2) & (\xdir|position\(3) $ (!\xdir|target_position\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|position\(2),
	datab => \xdir|position\(3),
	datac => \xdir|target_position\(3),
	datad => \xdir|target_position\(2),
	combout => \xdir|comp0|a_great_b~1_combout\);

\xdir|sm0|count|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|ud_bin_counter[0]~3_combout\ = \xdir|sm0|count|ud_bin_counter\(0) $ (((\xdir|motion_flag_in~q\ & ((\xdir|comp0|a_equal_b~0_combout\) # (!\xdir|comp0|a_great_b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|comp0|a_great_b~1_combout\,
	datab => \xdir|comp0|a_equal_b~0_combout\,
	datac => \xdir|sm0|count|ud_bin_counter\(0),
	datad => \xdir|motion_flag_in~q\,
	combout => \xdir|sm0|count|ud_bin_counter[0]~3_combout\);

\xdir|sm0|count|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|count|ud_bin_counter\(0));

\xdir|position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter\(0),
	ena => \xdir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|position\(0));

\xdir|position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter\(1),
	ena => \xdir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|position\(1));

\xdir|comp0|a_equal_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_equal_b~0_combout\ = (\xdir|position\(0) & ((\xdir|position\(1) $ (\xdir|target_position\(1))) # (!\xdir|target_position\(0)))) # (!\xdir|position\(0) & ((\xdir|target_position\(0)) # (\xdir|position\(1) $ (\xdir|target_position\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|position\(0),
	datab => \xdir|target_position\(0),
	datac => \xdir|position\(1),
	datad => \xdir|target_position\(1),
	combout => \xdir|comp0|a_equal_b~0_combout\);

\xdir|sm0|count|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|process_0~0_combout\ = (\xdir|motion_flag_in~q\ & ((\xdir|comp0|a_equal_b~0_combout\) # (!\xdir|comp0|a_great_b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|motion_flag_in~q\,
	datab => \xdir|comp0|a_equal_b~0_combout\,
	datad => \xdir|comp0|a_great_b~1_combout\,
	combout => \xdir|sm0|count|process_0~0_combout\);

\xdir|comp0|a_lesser_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_lesser_b~0_combout\ = (\xdir|target_position\(3) & (((\xdir|target_position\(2) & !\xdir|position\(2))) # (!\xdir|position\(3)))) # (!\xdir|target_position\(3) & (\xdir|target_position\(2) & (!\xdir|position\(2) & !\xdir|position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|target_position\(3),
	datab => \xdir|target_position\(2),
	datac => \xdir|position\(2),
	datad => \xdir|position\(3),
	combout => \xdir|comp0|a_lesser_b~0_combout\);

\xdir|comp0|a_lesser_b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_lesser_b~1_combout\ = (\xdir|target_position\(1) & (((\xdir|target_position\(0) & !\xdir|position\(0))) # (!\xdir|position\(1)))) # (!\xdir|target_position\(1) & (\xdir|target_position\(0) & (!\xdir|position\(0) & !\xdir|position\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|target_position\(1),
	datab => \xdir|target_position\(0),
	datac => \xdir|position\(0),
	datad => \xdir|position\(1),
	combout => \xdir|comp0|a_lesser_b~1_combout\);

\xdir|sm0|count|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|process_0~1_combout\ = (\xdir|sm0|count|process_0~0_combout\ & ((\xdir|comp0|a_lesser_b~0_combout\) # ((\xdir|comp0|a_lesser_b~1_combout\ & \xdir|comp0|a_great_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|count|process_0~0_combout\,
	datab => \xdir|comp0|a_lesser_b~0_combout\,
	datac => \xdir|comp0|a_lesser_b~1_combout\,
	datad => \xdir|comp0|a_great_b~1_combout\,
	combout => \xdir|sm0|count|process_0~1_combout\);

\xdir|sm0|count|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|count|ud_bin_counter[3]~10_combout\ = \xdir|sm0|count|ud_bin_counter\(3) $ (\xdir|sm0|count|process_0~1_combout\ $ (!\xdir|sm0|count|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|count|ud_bin_counter\(3),
	datab => \xdir|sm0|count|process_0~1_combout\,
	cin => \xdir|sm0|count|ud_bin_counter[2]~9\,
	combout => \xdir|sm0|count|ud_bin_counter[3]~10_combout\);

\xdir|sm0|count|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \xdir|sm0|count|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|count|ud_bin_counter\(3));

\xdir|position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|count|ud_bin_counter\(3),
	ena => \xdir|position[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|position\(3));

\xdir|comp0|a_great_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_great_b~0_combout\ = (\xdir|position\(3) & (((\xdir|position\(2) & !\xdir|target_position\(2))) # (!\xdir|target_position\(3)))) # (!\xdir|position\(3) & (\xdir|position\(2) & (!\xdir|target_position\(2) & !\xdir|target_position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|position\(3),
	datab => \xdir|position\(2),
	datac => \xdir|target_position\(2),
	datad => \xdir|target_position\(3),
	combout => \xdir|comp0|a_great_b~0_combout\);

\xdir|comp0|a_great_b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_great_b~2_combout\ = (\xdir|position\(1) & (((\xdir|position\(0) & !\xdir|target_position\(0))) # (!\xdir|target_position\(1)))) # (!\xdir|position\(1) & (\xdir|position\(0) & (!\xdir|target_position\(0) & !\xdir|target_position\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|position\(1),
	datab => \xdir|position\(0),
	datac => \xdir|target_position\(0),
	datad => \xdir|target_position\(1),
	combout => \xdir|comp0|a_great_b~2_combout\);

\xdir|comp0|a_great_b~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_great_b~3_combout\ = (\xdir|comp0|a_great_b~0_combout\) # ((\xdir|comp0|a_great_b~1_combout\ & \xdir|comp0|a_great_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|comp0|a_great_b~0_combout\,
	datab => \xdir|comp0|a_great_b~1_combout\,
	datac => \xdir|comp0|a_great_b~2_combout\,
	combout => \xdir|comp0|a_great_b~3_combout\);

\xdir|comp0|a_lesser_b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|comp0|a_lesser_b~2_combout\ = (\xdir|comp0|a_lesser_b~0_combout\) # ((\xdir|comp0|a_lesser_b~1_combout\ & \xdir|comp0|a_great_b~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|comp0|a_lesser_b~0_combout\,
	datab => \xdir|comp0|a_lesser_b~1_combout\,
	datac => \xdir|comp0|a_great_b~1_combout\,
	combout => \xdir|comp0|a_lesser_b~2_combout\);

\xdir|sm0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|Selector1~0_combout\ = (\xdir|comp0|a_great_b~3_combout\ & ((\xdir|sm0|current_state.S2~q\) # ((!\xdir|sm0|current_state.S0~q\ & !\xdir|comp0|a_lesser_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|comp0|a_great_b~3_combout\,
	datab => \xdir|sm0|current_state.S2~q\,
	datac => \xdir|sm0|current_state.S0~q\,
	datad => \xdir|comp0|a_lesser_b~2_combout\,
	combout => \xdir|sm0|Selector1~0_combout\);

\xdir|sm0|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|current_state.S2~q\);

\xdir|sm0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|sm0|Selector0~0_combout\ = (\xdir|sm0|current_state.S0~q\ & ((\xdir|sm0|current_state.S2~q\ & (\xdir|comp0|a_great_b~3_combout\)) # (!\xdir|sm0|current_state.S2~q\ & ((\xdir|comp0|a_lesser_b~2_combout\))))) # (!\xdir|sm0|current_state.S0~q\ & 
-- ((\xdir|comp0|a_great_b~3_combout\) # ((\xdir|comp0|a_lesser_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|comp0|a_great_b~3_combout\,
	datab => \xdir|comp0|a_lesser_b~2_combout\,
	datac => \xdir|sm0|current_state.S2~q\,
	datad => \xdir|sm0|current_state.S0~q\,
	combout => \xdir|sm0|Selector0~0_combout\);

\xdir|sm0|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|sm0|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|sm0|current_state.S0~q\);

\xdir|motion_flag_in~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|motion_flag_in~0_combout\ = (\xdir|motion_flag_in~q\ & (\xdir|sm0|current_state.S0~q\)) # (!\xdir|motion_flag_in~q\ & ((!\xdir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|sm0|current_state.S0~q\,
	datab => \xdir|motion_flag_in~q\,
	datad => \xdir|Equal0~0_combout\,
	combout => \xdir|motion_flag_in~0_combout\);

\xdir|motion_flag_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|motion_flag_in~0_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|motion_flag_in~q\);

\xdir|in_motion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|motion_flag_in~q\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|in_motion~q\);

\Extendo|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector2~0_combout\ = (\Extendo|current_state.retracted~q\ & (\pb[1]~input_o\ & (!\ydir|in_motion~q\ & !\xdir|in_motion~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.retracted~q\,
	datab => \pb[1]~input_o\,
	datac => \ydir|in_motion~q\,
	datad => \xdir|in_motion~q\,
	combout => \Extendo|Selector2~0_combout\);

\ShiftReg|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftReg|sreg~3_combout\ = (\ShiftReg|sreg\(2)) # (\Extendo|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(2),
	datab => \Extendo|current_state.extending~q\,
	combout => \ShiftReg|sreg~3_combout\);

\Extendo|clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|clk_en~combout\ = (\Extendo|current_state.extending~q\) # (\Extendo|current_state.retracting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.extending~q\,
	datab => \Extendo|current_state.retracting~q\,
	combout => \Extendo|clk_en~combout\);

\ShiftReg|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ShiftReg|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \Extendo|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|sreg\(3));

\ShiftReg|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftReg|sreg~2_combout\ = (\Extendo|current_state.extending~q\ & (\ShiftReg|sreg\(3))) # (!\Extendo|current_state.extending~q\ & ((\ShiftReg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(3),
	datab => \ShiftReg|sreg\(1),
	datad => \Extendo|current_state.extending~q\,
	combout => \ShiftReg|sreg~2_combout\);

\ShiftReg|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ShiftReg|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \Extendo|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|sreg\(2));

\ShiftReg|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftReg|sreg~1_combout\ = (\Extendo|current_state.extending~q\ & (\ShiftReg|sreg\(2))) # (!\Extendo|current_state.extending~q\ & ((\ShiftReg|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(2),
	datab => \ShiftReg|sreg\(0),
	datad => \Extendo|current_state.extending~q\,
	combout => \ShiftReg|sreg~1_combout\);

\ShiftReg|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ShiftReg|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \Extendo|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|sreg\(1));

\ShiftReg|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftReg|sreg~0_combout\ = (\ShiftReg|sreg\(1) & \Extendo|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(1),
	datab => \Extendo|current_state.extending~q\,
	combout => \ShiftReg|sreg~0_combout\);

\ShiftReg|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ShiftReg|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \Extendo|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|sreg\(0));

\Extendo|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector4~0_combout\ = (\ShiftReg|sreg\(0) & (\ShiftReg|sreg\(1) & (\ShiftReg|sreg\(2) & \ShiftReg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(0),
	datab => \ShiftReg|sreg\(1),
	datac => \ShiftReg|sreg\(2),
	datad => \ShiftReg|sreg\(3),
	combout => \Extendo|Selector4~0_combout\);

\Extendo|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector2~1_combout\ = (\Extendo|Selector2~0_combout\) # ((\Extendo|current_state.extending~q\ & !\Extendo|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|Selector2~0_combout\,
	datab => \Extendo|current_state.extending~q\,
	datad => \Extendo|Selector4~0_combout\,
	combout => \Extendo|Selector2~1_combout\);

\Extendo|current_state.extending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Extendo|Selector2~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extendo|current_state.extending~q\);

\Extendo|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector4~1_combout\ = (\Extendo|current_state.extending~q\ & ((\Extendo|Selector4~0_combout\) # ((\Extendo|current_state.extended~q\ & !\pb[1]~input_o\)))) # (!\Extendo|current_state.extending~q\ & (((\Extendo|current_state.extended~q\ & 
-- !\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.extending~q\,
	datab => \Extendo|Selector4~0_combout\,
	datac => \Extendo|current_state.extended~q\,
	datad => \pb[1]~input_o\,
	combout => \Extendo|Selector4~1_combout\);

\Extendo|current_state.extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Extendo|Selector4~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extendo|current_state.extended~q\);

\Extendo|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector1~0_combout\ = (!\ShiftReg|sreg\(0) & (!\ShiftReg|sreg\(1) & (!\ShiftReg|sreg\(2) & !\ShiftReg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|sreg\(0),
	datab => \ShiftReg|sreg\(1),
	datac => \ShiftReg|sreg\(2),
	datad => \ShiftReg|sreg\(3),
	combout => \Extendo|Selector1~0_combout\);

\Extendo|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector3~0_combout\ = (\Extendo|current_state.extended~q\ & ((\pb[1]~input_o\) # ((\Extendo|current_state.retracting~q\ & !\Extendo|Selector1~0_combout\)))) # (!\Extendo|current_state.extended~q\ & (((\Extendo|current_state.retracting~q\ & 
-- !\Extendo|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.extended~q\,
	datab => \pb[1]~input_o\,
	datac => \Extendo|current_state.retracting~q\,
	datad => \Extendo|Selector1~0_combout\,
	combout => \Extendo|Selector3~0_combout\);

\Extendo|current_state.retracting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Extendo|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extendo|current_state.retracting~q\);

\Extendo|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector1~1_combout\ = (\xdir|in_motion~q\) # ((\Extendo|current_state.disabled~q\ & ((\pb[1]~input_o\) # (!\Extendo|current_state.retracted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|in_motion~q\,
	datab => \Extendo|current_state.retracted~q\,
	datac => \pb[1]~input_o\,
	datad => \Extendo|current_state.disabled~q\,
	combout => \Extendo|Selector1~1_combout\);

\Extendo|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector1~2_combout\ = (\ydir|in_motion~q\ & (\Extendo|current_state.retracting~q\ & (\Extendo|Selector1~0_combout\))) # (!\ydir|in_motion~q\ & (((\Extendo|current_state.retracting~q\ & \Extendo|Selector1~0_combout\)) # 
-- (!\Extendo|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ydir|in_motion~q\,
	datab => \Extendo|current_state.retracting~q\,
	datac => \Extendo|Selector1~0_combout\,
	datad => \Extendo|Selector1~1_combout\,
	combout => \Extendo|Selector1~2_combout\);

\Extendo|current_state.retracted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Extendo|Selector1~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extendo|current_state.retracted~q\);

\Extendo|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extendo|Selector0~0_combout\ = (\Extendo|current_state.retracted~q\ & (!\ydir|in_motion~q\ & (!\xdir|in_motion~q\))) # (!\Extendo|current_state.retracted~q\ & ((\Extendo|current_state.disabled~q\) # ((!\ydir|in_motion~q\ & !\xdir|in_motion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.retracted~q\,
	datab => \ydir|in_motion~q\,
	datac => \xdir|in_motion~q\,
	datad => \Extendo|current_state.disabled~q\,
	combout => \Extendo|Selector0~0_combout\);

\Extendo|current_state.disabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Extendo|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extendo|current_state.disabled~q\);

\xdir|SYSTEM_FAULT_ERROR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|SYSTEM_FAULT_ERROR~0_combout\ = (\Extendo|current_state.disabled~q\ & !\Extendo|current_state.retracted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extendo|current_state.disabled~q\,
	datad => \Extendo|current_state.retracted~q\,
	combout => \xdir|SYSTEM_FAULT_ERROR~0_combout\);

\xdir|SYSTEM_FAULT_ERROR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xdir|SYSTEM_FAULT_ERROR~1_combout\ = (\rst_n~input_o\ & ((\pb[2]~input_o\ & (\xdir|SYSTEM_FAULT_ERROR~0_combout\)) # (!\pb[2]~input_o\ & ((\xdir|SYSTEM_FAULT_ERROR~q\))))) # (!\rst_n~input_o\ & (((\xdir|SYSTEM_FAULT_ERROR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xdir|SYSTEM_FAULT_ERROR~0_combout\,
	datab => \xdir|SYSTEM_FAULT_ERROR~q\,
	datac => \rst_n~input_o\,
	datad => \pb[2]~input_o\,
	combout => \xdir|SYSTEM_FAULT_ERROR~1_combout\);

\xdir|SYSTEM_FAULT_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|SYSTEM_FAULT_ERROR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|SYSTEM_FAULT_ERROR~q\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\Grap|current_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Grap|current_state~0_combout\ = \Grap|current_state~q\ $ (((\pb[0]~input_o\ & \Extendo|current_state.extended~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Grap|current_state~q\,
	datac => \pb[0]~input_o\,
	datad => \Extendo|current_state.extended~q\,
	combout => \Grap|current_state~0_combout\);

\Grap|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Grap|current_state~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Grap|current_state~q\);

\ydir|current_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|position\(0),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|current_position\(0));

\ydir|current_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|position\(1),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|current_position\(1));

\ydir|current_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|position\(2),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|current_position\(2));

\ydir|current_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \ydir|position\(3),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ydir|current_position\(3));

\xdir|current_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|position\(0),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|current_position\(0));

\xdir|current_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|position\(1),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|current_position\(1));

\xdir|current_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|position\(2),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|current_position\(2));

\xdir|current_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xdir|position\(3),
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xdir|current_position\(3));

\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;
END structure;


