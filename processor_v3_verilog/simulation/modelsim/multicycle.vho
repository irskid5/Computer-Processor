-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "11/29/2017 02:11:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multicycle IS
    PORT (
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END multicycle;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multicycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p_counter[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \add|Add0~17_sumout\ : std_logic;
SIGNAL \add|Add0~18\ : std_logic;
SIGNAL \add|Add0~25_sumout\ : std_logic;
SIGNAL \add|Add0~26\ : std_logic;
SIGNAL \add|Add0~21_sumout\ : std_logic;
SIGNAL \add|Add0~22\ : std_logic;
SIGNAL \add|Add0~29_sumout\ : std_logic;
SIGNAL \add|Add0~30\ : std_logic;
SIGNAL \add|Add0~13_sumout\ : std_logic;
SIGNAL \add|Add0~14\ : std_logic;
SIGNAL \add|Add0~5_sumout\ : std_logic;
SIGNAL \Control|Mux5~0_combout\ : std_logic;
SIGNAL \R1Sel_mux|result[1]~1_combout\ : std_logic;
SIGNAL \Control|ALU2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|Mux4~0_combout\ : std_logic;
SIGNAL \Control|ALU2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALU2_mux|Mux7~0_combout\ : std_logic;
SIGNAL \add|Add0~6\ : std_logic;
SIGNAL \add|Add0~9_sumout\ : std_logic;
SIGNAL \Control|Decoder1~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[0]~0_combout\ : std_logic;
SIGNAL \add|Add0~10\ : std_logic;
SIGNAL \add|Add0~1_sumout\ : std_logic;
SIGNAL \Control|ALUop~0_combout\ : std_logic;
SIGNAL \ALU|Equal0~0_combout\ : std_logic;
SIGNAL \ALU|N~0_combout\ : std_logic;
SIGNAL \Control|WideOr2~0_combout\ : std_logic;
SIGNAL \IR_reg3reg|q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \IR3_mux|result[1]~0_combout\ : std_logic;
SIGNAL \Control|Equal4~0_combout\ : std_logic;
SIGNAL \Control|RwSel~q\ : std_logic;
SIGNAL \IR_reg4reg|q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|WideOr3~0_combout\ : std_logic;
SIGNAL \Control|RFWrite~q\ : std_logic;
SIGNAL \RF_block|Decoder0~3_combout\ : std_logic;
SIGNAL \RF_block|Decoder0~2_combout\ : std_logic;
SIGNAL \RF_block|Decoder0~1_combout\ : std_logic;
SIGNAL \R2B_mux|result[7]~3_combout\ : std_logic;
SIGNAL \Control|Mux0~2_combout\ : std_logic;
SIGNAL \Control|Mux0~0_combout\ : std_logic;
SIGNAL \Control|Mux0~1_combout\ : std_logic;
SIGNAL \Control|Mux0~3_combout\ : std_logic;
SIGNAL \Control|R2B~q\ : std_logic;
SIGNAL \ALU2_mux|Mux0~0_combout\ : std_logic;
SIGNAL \Control|R1B~1_combout\ : std_logic;
SIGNAL \Control|R1B~0_combout\ : std_logic;
SIGNAL \Control|Mux1~0_combout\ : std_logic;
SIGNAL \Control|Mux1~2_combout\ : std_logic;
SIGNAL \Control|always0~0_combout\ : std_logic;
SIGNAL \Control|R1B~2_combout\ : std_logic;
SIGNAL \Control|Mux1~1_combout\ : std_logic;
SIGNAL \Control|Mux1~3_combout\ : std_logic;
SIGNAL \Control|Mux1~4_combout\ : std_logic;
SIGNAL \Control|R1B~q\ : std_logic;
SIGNAL \R1|q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|Decoder0~0_combout\ : std_logic;
SIGNAL \R1B_mux|result[2]~5_combout\ : std_logic;
SIGNAL \R1B_mux|result[3]~7_combout\ : std_logic;
SIGNAL \RF_block|k0[4]~feeder_combout\ : std_logic;
SIGNAL \RF_block|k1[4]~feeder_combout\ : std_logic;
SIGNAL \R1B_mux|result[4]~3_combout\ : std_logic;
SIGNAL \RF_block|k1[5]~feeder_combout\ : std_logic;
SIGNAL \RF_block|k1[5]~DUPLICATE_q\ : std_logic;
SIGNAL \R1B_mux|result[5]~1_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \Control|Decoder2~1_combout\ : std_logic;
SIGNAL \Control|ALUsel~q\ : std_logic;
SIGNAL \ALUOut_reg|q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|k0[6]~feeder_combout\ : std_logic;
SIGNAL \R1B_mux|result[6]~2_combout\ : std_logic;
SIGNAL \R1|q[6]~feeder_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \R2B_mux|result[4]~6_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux3~0_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux7~3_combout\ : std_logic;
SIGNAL \RF_block|k1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|k2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|k0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \R2B_mux|result[3]~7_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux4~0_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux4~1_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \RF_block|k2[1]~feeder_combout\ : std_logic;
SIGNAL \RF_block|k0[1]~feeder_combout\ : std_logic;
SIGNAL \RF_block|k0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \R2B_mux|result[1]~0_combout\ : std_logic;
SIGNAL \R2|q[1]~feeder_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux6~1_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux6~2_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|k3[7]~DUPLICATE_q\ : std_logic;
SIGNAL \R1B_mux|result[7]~0_combout\ : std_logic;
SIGNAL \R1|q[7]~feeder_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux0~0_combout\ : std_logic;
SIGNAL \Control|ALUop[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALU|N~1_combout\ : std_logic;
SIGNAL \ALU|N~2_combout\ : std_logic;
SIGNAL \ALU|N~3_combout\ : std_logic;
SIGNAL \PC2reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux1~0_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Control|ALUop[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALU|Equal0~1_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux3~1_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux4~0_combout\ : std_logic;
SIGNAL \PC2reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux5~0_combout\ : std_logic;
SIGNAL \R2B_mux|result[2]~2_combout\ : std_logic;
SIGNAL \R2|q[2]~feeder_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux5~3_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux6~3_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux7~0_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux7~4_combout\ : std_logic;
SIGNAL \ALU|Add0~34_cout\ : std_logic;
SIGNAL \ALU|Add0~6\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~22\ : std_logic;
SIGNAL \ALU|Add0~30\ : std_logic;
SIGNAL \ALU|Add0~26\ : std_logic;
SIGNAL \ALU|Add0~18\ : std_logic;
SIGNAL \ALU|Add0~14\ : std_logic;
SIGNAL \ALU|Add0~1_sumout\ : std_logic;
SIGNAL \ALU|N~4_combout\ : std_logic;
SIGNAL \IR2_mux|result[5]~5_combout\ : std_logic;
SIGNAL \R2B_mux|result[6]~4_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[6]~12_combout\ : std_logic;
SIGNAL \ALU|tmp_out[6]~13_combout\ : std_logic;
SIGNAL \ALU|tmp_out[6]~10_combout\ : std_logic;
SIGNAL \ALU|tmp_out[6]~11_combout\ : std_logic;
SIGNAL \ALU|Add0~13_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[6]~14_combout\ : std_logic;
SIGNAL \IR2_mux|result[4]~4_combout\ : std_logic;
SIGNAL \R2B_mux|result[0]~1_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux7~1_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux7~2_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \R1B_mux|result[0]~4_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \ALUOut_reg|q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|k2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \R2B_mux|result[5]~5_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[5]~15_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~1_combout\ : std_logic;
SIGNAL \ALU|Add0~17_sumout\ : std_logic;
SIGNAL \ALU2_mux|Mux5~1_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~3_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALU|tmp_out[5]~16_combout\ : std_logic;
SIGNAL \IR2_mux|result[6]~6_combout\ : std_logic;
SIGNAL \IR_reg2reg|q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|ALU2~0_combout\ : std_logic;
SIGNAL \Control|Mux3~0_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~29_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~26_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~27_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~25_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~28_combout\ : std_logic;
SIGNAL \ALU|Add0~25_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~38_combout\ : std_logic;
SIGNAL \ALU|tmp_out[4]~33_combout\ : std_logic;
SIGNAL \IR2_mux|result[7]~7_combout\ : std_logic;
SIGNAL \IR_reg2reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \Control|ALU1~1_combout\ : std_logic;
SIGNAL \Control|ALU1~0_combout\ : std_logic;
SIGNAL \Control|Mux6~0_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[3]~30_combout\ : std_logic;
SIGNAL \ALU|tmp_out[3]~31_combout\ : std_logic;
SIGNAL \ALU|Add0~29_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[3]~34_combout\ : std_logic;
SIGNAL \ALU|tmp_out[3]~32_combout\ : std_logic;
SIGNAL \IR1_mux|result[3]~1_combout\ : std_logic;
SIGNAL \IR2_mux|result[3]~3_combout\ : std_logic;
SIGNAL \Control|WideOr0~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[5]~1_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~18_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~17_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~19_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~20_combout\ : std_logic;
SIGNAL \ALU|Add0~21_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~22_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~21_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~23_combout\ : std_logic;
SIGNAL \ALU|tmp_out[2]~24_combout\ : std_logic;
SIGNAL \IR1_mux|result[1]~0_combout\ : std_logic;
SIGNAL \IR2_mux|result[1]~1_combout\ : std_logic;
SIGNAL \Control|R1Sel~0_combout\ : std_logic;
SIGNAL \Control|R1Sel~q\ : std_logic;
SIGNAL \R1Sel_mux|result[0]~0_combout\ : std_logic;
SIGNAL \R1B_mux|result[1]~6_combout\ : std_logic;
SIGNAL \ALU1_mux|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|tmp_out[1]~6_combout\ : std_logic;
SIGNAL \ALU|tmp_out[1]~7_combout\ : std_logic;
SIGNAL \ALU|tmp_out[1]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~9_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[1]~5_combout\ : std_logic;
SIGNAL \ALU|tmp_out[1]~9_combout\ : std_logic;
SIGNAL \IR2_mux|result[0]~0_combout\ : std_logic;
SIGNAL \Control|Decoder2~0_combout\ : std_logic;
SIGNAL \Control|MemWrite~q\ : std_logic;
SIGNAL \ALUOut_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux5~0_combout\ : std_logic;
SIGNAL \ALU2_mux|Mux5~2_combout\ : std_logic;
SIGNAL \ALU|ShiftRight0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~5_sumout\ : std_logic;
SIGNAL \ALU|tmp_out[0]~2_combout\ : std_logic;
SIGNAL \ALU|tmp_out[0]~3_combout\ : std_logic;
SIGNAL \ALU|tmp_out[0]~4_combout\ : std_logic;
SIGNAL \IR2_mux|result[2]~2_combout\ : std_logic;
SIGNAL \Control|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Equal5~1_combout\ : std_logic;
SIGNAL \ALU|Equal5~0_combout\ : std_logic;
SIGNAL \Control|Mux2~1_combout\ : std_logic;
SIGNAL \Control|PCSel~q\ : std_logic;
SIGNAL \IR3_mux|result[3]~1_combout\ : std_logic;
SIGNAL \IR_reg3reg|q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX_display|temp_in[0]~0_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[1]~1_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[3]~3_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[2]~2_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr6~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr5~0_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr4~0_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr3~0_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr2~0_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr1~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX_display|hex1|WideOr0~0_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \p_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \p_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \p_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \p_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \HEX_display|temp_in[5]~5_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[7]~7_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[6]~6_combout\ : std_logic;
SIGNAL \HEX_display|temp_in[4]~4_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr6~0_combout\ : std_logic;
SIGNAL \HEX1~6_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr5~0_combout\ : std_logic;
SIGNAL \HEX1~5_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr4~0_combout\ : std_logic;
SIGNAL \HEX1~4_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr3~0_combout\ : std_logic;
SIGNAL \HEX1~3_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr2~0_combout\ : std_logic;
SIGNAL \HEX1~2_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr1~0_combout\ : std_logic;
SIGNAL \HEX1~1_combout\ : std_logic;
SIGNAL \HEX_display|hex0|WideOr0~0_combout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \hex2|WideOr6~0_combout\ : std_logic;
SIGNAL \hex2|WideOr5~0_combout\ : std_logic;
SIGNAL \hex2|WideOr4~0_combout\ : std_logic;
SIGNAL \hex2|WideOr3~0_combout\ : std_logic;
SIGNAL \hex2|WideOr2~0_combout\ : std_logic;
SIGNAL \hex2|WideOr1~0_combout\ : std_logic;
SIGNAL \hex2|WideOr0~0_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \p_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \p_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \hex3|WideOr6~0_combout\ : std_logic;
SIGNAL \hex3|WideOr5~0_combout\ : std_logic;
SIGNAL \hex3|WideOr4~0_combout\ : std_logic;
SIGNAL \hex3|WideOr3~0_combout\ : std_logic;
SIGNAL \hex3|WideOr2~0_combout\ : std_logic;
SIGNAL \hex3|WideOr1~0_combout\ : std_logic;
SIGNAL \hex3|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Control|WideOr1~0_combout\ : std_logic;
SIGNAL \Control|FlagWrite~q\ : std_logic;
SIGNAL \N~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ALU|Equal5~2_combout\ : std_logic;
SIGNAL \Z~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \IR_reg3reg|q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \LEDR[8]$latch~combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \LEDR[9]$latch~combout\ : std_logic;
SIGNAL \RF_block|k2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg3reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RF_block|k3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALUOut_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg1reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC1reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RF_block|k1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL p_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF_block|k0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg4reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Control|ALUop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Control|ALU2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IR_reg2reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Control|ALU1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PC3reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC2reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg4reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_N~q\ : std_logic;
SIGNAL \Control|ALT_INV_MemWrite~q\ : std_logic;
SIGNAL \hex3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL ALT_INV_p_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \hex2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \HEX_display|hex0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[7]~7_combout\ : std_logic;
SIGNAL \RF_block|ALT_INV_k3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RF_block|ALT_INV_k1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RF_block|ALT_INV_k2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RF_block|ALT_INV_k0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX_display|ALT_INV_temp_in[6]~6_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[5]~5_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[4]~4_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \HEX_display|hex1|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[3]~3_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[2]~2_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[1]~1_combout\ : std_logic;
SIGNAL \HEX_display|ALT_INV_temp_in[0]~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~38_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[3]~34_combout\ : std_logic;
SIGNAL \PC1reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imDataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg1reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R2|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALUOut_reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg3reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR_reg2reg|ALT_INV_q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|ALT_INV_ALU2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|ALT_INV_ALU2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|ALT_INV_ALUop[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Control|ALT_INV_ALUop[1]~DUPLICATE_q\ : std_logic;
SIGNAL \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k3[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k1[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RF_block|ALT_INV_k0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALUOut_reg|ALT_INV_q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALUOut_reg|ALT_INV_q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALUOut_reg|ALT_INV_q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \IR_reg3reg|ALT_INV_q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_LEDR[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~0_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \R2B_mux|ALT_INV_result[2]~2_combout\ : std_logic;
SIGNAL \R2B_mux|ALT_INV_result[1]~0_combout\ : std_logic;
SIGNAL \R1B_mux|ALT_INV_result[6]~2_combout\ : std_logic;
SIGNAL \R1B_mux|ALT_INV_result[7]~0_combout\ : std_logic;
SIGNAL \R1Sel_mux|ALT_INV_result[1]~1_combout\ : std_logic;
SIGNAL \R1Sel_mux|ALT_INV_result[0]~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ALU1~1_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ALU1~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \IR_reg2reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Control|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ALU2~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \Control|ALT_INV_R1B~2_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_R1B~1_combout\ : std_logic;
SIGNAL \Control|ALT_INV_R1B~0_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[7]~7_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[6]~6_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[5]~5_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[4]~4_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[3]~3_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[2]~2_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[1]~1_combout\ : std_logic;
SIGNAL \IR2_mux|ALT_INV_result[0]~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[3]~31_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[3]~30_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~29_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~28_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~27_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~26_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[4]~25_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~24_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~23_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~22_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~21_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~20_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~19_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~18_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[2]~17_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[5]~16_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[5]~15_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[6]~14_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[6]~13_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[6]~12_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[6]~11_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[6]~10_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[1]~9_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[1]~8_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[1]~7_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[1]~6_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[1]~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[0]~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[0]~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[0]~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \PC3reg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU1_mux|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_N~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_N~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_N~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_N~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_N~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_tmp_out[5]~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALU2_mux|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ALU2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALU1_mux|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALU1_mux|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ALU1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALU|ALT_INV_tmp_out[0]~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_PCSel~q\ : std_logic;
SIGNAL \Control|ALT_INV_R1Sel~q\ : std_logic;
SIGNAL \Control|ALT_INV_ALUop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Control|ALT_INV_RwSel~q\ : std_logic;
SIGNAL \Control|ALT_INV_RFWrite~q\ : std_logic;
SIGNAL \Control|ALT_INV_R1B~q\ : std_logic;
SIGNAL \Control|ALT_INV_R2B~q\ : std_logic;
SIGNAL \ALT_INV_Z~q\ : std_logic;
SIGNAL \Control|ALT_INV_ALUsel~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \R1|q\(7) & \R1|q\(6) & \R1|q\(5) & \R1|q\(4) & \R1|q\(3) & \R1|q\(2) & 
\R1|q[1]~DUPLICATE_q\ & \R1|q\(0));

\DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\);

\DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ALU2_mux|Mux0~0_combout\ & \ALU2_mux|Mux1~0_combout\ & \ALU2_mux|Mux2~0_combout\ & \ALU2_mux|Mux3~0_combout\ & \ALU2_mux|Mux4~1_combout\ & \ALU2_mux|Mux5~2_combout\ & 
\ALU2_mux|Mux6~2_combout\ & \ALU2_mux|Mux7~2_combout\);

\DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DataMem|inst|altsyncram_component|auto_generated|q_a\(0) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(1) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(2) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(3) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(4) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(5) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(6) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\DataMem|inst|altsyncram_component|auto_generated|q_a\(7) <= \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\PC1reg|q\(7) & \PC1reg|q\(6) & \PC1reg|q\(5) & \PC1reg|q\(4) & \PC1reg|q\(3) & \PC1reg|q\(2) & \PC1reg|q\(1) & \PC1reg|q\(0));

\imDataMem|inst|altsyncram_component|auto_generated|q_a\(0) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(1) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(2) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(3) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(4) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(5) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(6) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\imDataMem|inst|altsyncram_component|auto_generated|q_a\(7) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\imDataMem|inst|altsyncram_component|auto_generated|q_b\(0) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(1) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(2) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(3) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(4) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(5) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(6) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\imDataMem|inst|altsyncram_component|auto_generated|q_b\(7) <= \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\IR_reg4reg|ALT_INV_q\(0) <= NOT \IR_reg4reg|q\(0);
\ALT_INV_N~q\ <= NOT \N~q\;
\Control|ALT_INV_MemWrite~q\ <= NOT \Control|MemWrite~q\;
\hex3|ALT_INV_WideOr0~0_combout\ <= NOT \hex3|WideOr0~0_combout\;
ALT_INV_p_counter(15) <= NOT p_counter(15);
ALT_INV_p_counter(14) <= NOT p_counter(14);
ALT_INV_p_counter(13) <= NOT p_counter(13);
ALT_INV_p_counter(12) <= NOT p_counter(12);
\hex2|ALT_INV_WideOr0~0_combout\ <= NOT \hex2|WideOr0~0_combout\;
ALT_INV_p_counter(11) <= NOT p_counter(11);
ALT_INV_p_counter(10) <= NOT p_counter(10);
ALT_INV_p_counter(9) <= NOT p_counter(9);
ALT_INV_p_counter(8) <= NOT p_counter(8);
\HEX_display|hex0|ALT_INV_WideOr0~0_combout\ <= NOT \HEX_display|hex0|WideOr0~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr1~0_combout\ <= NOT \HEX_display|hex0|WideOr1~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr2~0_combout\ <= NOT \HEX_display|hex0|WideOr2~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr3~0_combout\ <= NOT \HEX_display|hex0|WideOr3~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr4~0_combout\ <= NOT \HEX_display|hex0|WideOr4~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr5~0_combout\ <= NOT \HEX_display|hex0|WideOr5~0_combout\;
\HEX_display|hex0|ALT_INV_WideOr6~0_combout\ <= NOT \HEX_display|hex0|WideOr6~0_combout\;
\HEX_display|ALT_INV_temp_in[7]~7_combout\ <= NOT \HEX_display|temp_in[7]~7_combout\;
\RF_block|ALT_INV_k3\(7) <= NOT \RF_block|k3\(7);
\RF_block|ALT_INV_k1\(7) <= NOT \RF_block|k1\(7);
\RF_block|ALT_INV_k2\(7) <= NOT \RF_block|k2\(7);
\RF_block|ALT_INV_k0\(7) <= NOT \RF_block|k0\(7);
\HEX_display|ALT_INV_temp_in[6]~6_combout\ <= NOT \HEX_display|temp_in[6]~6_combout\;
\RF_block|ALT_INV_k3\(6) <= NOT \RF_block|k3\(6);
\RF_block|ALT_INV_k1\(6) <= NOT \RF_block|k1\(6);
\RF_block|ALT_INV_k2\(6) <= NOT \RF_block|k2\(6);
\RF_block|ALT_INV_k0\(6) <= NOT \RF_block|k0\(6);
\HEX_display|ALT_INV_temp_in[5]~5_combout\ <= NOT \HEX_display|temp_in[5]~5_combout\;
\RF_block|ALT_INV_k3\(5) <= NOT \RF_block|k3\(5);
\RF_block|ALT_INV_k1\(5) <= NOT \RF_block|k1\(5);
\RF_block|ALT_INV_k2\(5) <= NOT \RF_block|k2\(5);
\RF_block|ALT_INV_k0\(5) <= NOT \RF_block|k0\(5);
\HEX_display|ALT_INV_temp_in[4]~4_combout\ <= NOT \HEX_display|temp_in[4]~4_combout\;
\RF_block|ALT_INV_k3\(4) <= NOT \RF_block|k3\(4);
\RF_block|ALT_INV_k1\(4) <= NOT \RF_block|k1\(4);
\RF_block|ALT_INV_k2\(4) <= NOT \RF_block|k2\(4);
\RF_block|ALT_INV_k0\(4) <= NOT \RF_block|k0\(4);
ALT_INV_p_counter(7) <= NOT p_counter(7);
ALT_INV_p_counter(6) <= NOT p_counter(6);
ALT_INV_p_counter(5) <= NOT p_counter(5);
ALT_INV_p_counter(4) <= NOT p_counter(4);
\HEX_display|hex1|ALT_INV_WideOr0~0_combout\ <= NOT \HEX_display|hex1|WideOr0~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr1~0_combout\ <= NOT \HEX_display|hex1|WideOr1~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr2~0_combout\ <= NOT \HEX_display|hex1|WideOr2~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr3~0_combout\ <= NOT \HEX_display|hex1|WideOr3~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr4~0_combout\ <= NOT \HEX_display|hex1|WideOr4~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr5~0_combout\ <= NOT \HEX_display|hex1|WideOr5~0_combout\;
\HEX_display|hex1|ALT_INV_WideOr6~0_combout\ <= NOT \HEX_display|hex1|WideOr6~0_combout\;
\HEX_display|ALT_INV_temp_in[3]~3_combout\ <= NOT \HEX_display|temp_in[3]~3_combout\;
\RF_block|ALT_INV_k3\(3) <= NOT \RF_block|k3\(3);
\RF_block|ALT_INV_k1\(3) <= NOT \RF_block|k1\(3);
\RF_block|ALT_INV_k2\(3) <= NOT \RF_block|k2\(3);
\RF_block|ALT_INV_k0\(3) <= NOT \RF_block|k0\(3);
\HEX_display|ALT_INV_temp_in[2]~2_combout\ <= NOT \HEX_display|temp_in[2]~2_combout\;
\RF_block|ALT_INV_k3\(2) <= NOT \RF_block|k3\(2);
\RF_block|ALT_INV_k1\(2) <= NOT \RF_block|k1\(2);
\RF_block|ALT_INV_k2\(2) <= NOT \RF_block|k2\(2);
\RF_block|ALT_INV_k0\(2) <= NOT \RF_block|k0\(2);
\HEX_display|ALT_INV_temp_in[1]~1_combout\ <= NOT \HEX_display|temp_in[1]~1_combout\;
\RF_block|ALT_INV_k3\(1) <= NOT \RF_block|k3\(1);
\RF_block|ALT_INV_k1\(1) <= NOT \RF_block|k1\(1);
\RF_block|ALT_INV_k2\(1) <= NOT \RF_block|k2\(1);
\RF_block|ALT_INV_k0\(1) <= NOT \RF_block|k0\(1);
\HEX_display|ALT_INV_temp_in[0]~0_combout\ <= NOT \HEX_display|temp_in[0]~0_combout\;
\RF_block|ALT_INV_k3\(0) <= NOT \RF_block|k3\(0);
\RF_block|ALT_INV_k1\(0) <= NOT \RF_block|k1\(0);
\RF_block|ALT_INV_k2\(0) <= NOT \RF_block|k2\(0);
\RF_block|ALT_INV_k0\(0) <= NOT \RF_block|k0\(0);
ALT_INV_p_counter(3) <= NOT p_counter(3);
ALT_INV_p_counter(2) <= NOT p_counter(2);
ALT_INV_p_counter(1) <= NOT p_counter(1);
ALT_INV_p_counter(0) <= NOT p_counter(0);
\ALU|ALT_INV_tmp_out[4]~38_combout\ <= NOT \ALU|tmp_out[4]~38_combout\;
\ALU|ALT_INV_tmp_out[3]~34_combout\ <= NOT \ALU|tmp_out[3]~34_combout\;
\PC1reg|ALT_INV_q\(3) <= NOT \PC1reg|q\(3);
\PC1reg|ALT_INV_q\(1) <= NOT \PC1reg|q\(1);
\PC1reg|ALT_INV_q\(2) <= NOT \PC1reg|q\(2);
\PC1reg|ALT_INV_q\(0) <= NOT \PC1reg|q\(0);
\PC1reg|ALT_INV_q\(4) <= NOT \PC1reg|q\(4);
\PC1reg|ALT_INV_q\(6) <= NOT \PC1reg|q\(6);
\PC1reg|ALT_INV_q\(5) <= NOT \PC1reg|q\(5);
\PC1reg|ALT_INV_q\(7) <= NOT \PC1reg|q\(7);
\imDataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \imDataMem|inst|altsyncram_component|auto_generated|q_b\(1);
\imDataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \imDataMem|inst|altsyncram_component|auto_generated|q_b\(3);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(1);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(2);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(3);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(4);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(5);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(6);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(7);
\DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \DataMem|inst|altsyncram_component|auto_generated|q_a\(0);
\IR_reg1reg|ALT_INV_q\(7) <= NOT \IR_reg1reg|q\(7);
\IR_reg1reg|ALT_INV_q\(6) <= NOT \IR_reg1reg|q\(6);
\IR_reg1reg|ALT_INV_q\(5) <= NOT \IR_reg1reg|q\(5);
\IR_reg1reg|ALT_INV_q\(4) <= NOT \IR_reg1reg|q\(4);
\IR_reg1reg|ALT_INV_q\(2) <= NOT \IR_reg1reg|q\(2);
\IR_reg1reg|ALT_INV_q\(0) <= NOT \IR_reg1reg|q\(0);
\R2|ALT_INV_q\(3) <= NOT \R2|q\(3);
\ALU|ALT_INV_Add0~29_sumout\ <= NOT \ALU|Add0~29_sumout\;
\R2|ALT_INV_q\(4) <= NOT \R2|q\(4);
\ALU|ALT_INV_Add0~25_sumout\ <= NOT \ALU|Add0~25_sumout\;
\ALU|ALT_INV_Add0~21_sumout\ <= NOT \ALU|Add0~21_sumout\;
\R2|ALT_INV_q\(5) <= NOT \R2|q\(5);
\ALU|ALT_INV_Add0~17_sumout\ <= NOT \ALU|Add0~17_sumout\;
\R2|ALT_INV_q\(6) <= NOT \R2|q\(6);
\ALU|ALT_INV_Add0~13_sumout\ <= NOT \ALU|Add0~13_sumout\;
\ALU|ALT_INV_Add0~9_sumout\ <= NOT \ALU|Add0~9_sumout\;
\R1|ALT_INV_q\(3) <= NOT \R1|q\(3);
\R1|ALT_INV_q\(1) <= NOT \R1|q\(1);
\R1|ALT_INV_q\(2) <= NOT \R1|q\(2);
\R1|ALT_INV_q\(0) <= NOT \R1|q\(0);
\ALU|ALT_INV_Add0~5_sumout\ <= NOT \ALU|Add0~5_sumout\;
\R2|ALT_INV_q\(7) <= NOT \R2|q\(7);
\R2|ALT_INV_q\(2) <= NOT \R2|q\(2);
\R2|ALT_INV_q\(0) <= NOT \R2|q\(0);
\R2|ALT_INV_q\(1) <= NOT \R2|q\(1);
\R1|ALT_INV_q\(4) <= NOT \R1|q\(4);
\R1|ALT_INV_q\(6) <= NOT \R1|q\(6);
\R1|ALT_INV_q\(5) <= NOT \R1|q\(5);
\R1|ALT_INV_q\(7) <= NOT \R1|q\(7);
\ALU|ALT_INV_Add0~1_sumout\ <= NOT \ALU|Add0~1_sumout\;
\ALUOut_reg|ALT_INV_q\(7) <= NOT \ALUOut_reg|q\(7);
\ALUOut_reg|ALT_INV_q\(6) <= NOT \ALUOut_reg|q\(6);
\ALUOut_reg|ALT_INV_q\(5) <= NOT \ALUOut_reg|q\(5);
\ALUOut_reg|ALT_INV_q\(4) <= NOT \ALUOut_reg|q\(4);
\ALUOut_reg|ALT_INV_q\(3) <= NOT \ALUOut_reg|q\(3);
\ALUOut_reg|ALT_INV_q\(2) <= NOT \ALUOut_reg|q\(2);
\ALUOut_reg|ALT_INV_q\(1) <= NOT \ALUOut_reg|q\(1);
\ALUOut_reg|ALT_INV_q\(0) <= NOT \ALUOut_reg|q\(0);
\IR_reg3reg|ALT_INV_q\(7) <= NOT \IR_reg3reg|q\(7);
\IR_reg3reg|ALT_INV_q\(6) <= NOT \IR_reg3reg|q\(6);
\IR_reg3reg|ALT_INV_q\(5) <= NOT \IR_reg3reg|q\(5);
\IR_reg3reg|ALT_INV_q\(4) <= NOT \IR_reg3reg|q\(4);
\IR_reg3reg|ALT_INV_q\(2) <= NOT \IR_reg3reg|q\(2);
\IR_reg3reg|ALT_INV_q\(0) <= NOT \IR_reg3reg|q\(0);
\IR_reg2reg|ALT_INV_q[6]~DUPLICATE_q\ <= NOT \IR_reg2reg|q[6]~DUPLICATE_q\;
\Control|ALT_INV_ALU2[1]~DUPLICATE_q\ <= NOT \Control|ALU2[1]~DUPLICATE_q\;
\IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\ <= NOT \IR_reg4reg|q[6]~DUPLICATE_q\;
\Control|ALT_INV_ALU2[0]~DUPLICATE_q\ <= NOT \Control|ALU2[0]~DUPLICATE_q\;
\Control|ALT_INV_ALUop[2]~DUPLICATE_q\ <= NOT \Control|ALUop[2]~DUPLICATE_q\;
\Control|ALT_INV_ALUop[1]~DUPLICATE_q\ <= NOT \Control|ALUop[1]~DUPLICATE_q\;
\IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\ <= NOT \IR_reg3reg|q[3]~DUPLICATE_q\;
\ALT_INV_p_counter[14]~DUPLICATE_q\ <= NOT \p_counter[14]~DUPLICATE_q\;
\ALT_INV_p_counter[12]~DUPLICATE_q\ <= NOT \p_counter[12]~DUPLICATE_q\;
\RF_block|ALT_INV_k3[7]~DUPLICATE_q\ <= NOT \RF_block|k3[7]~DUPLICATE_q\;
\RF_block|ALT_INV_k1[5]~DUPLICATE_q\ <= NOT \RF_block|k1[5]~DUPLICATE_q\;
\RF_block|ALT_INV_k2[5]~DUPLICATE_q\ <= NOT \RF_block|k2[5]~DUPLICATE_q\;
\ALT_INV_p_counter[7]~DUPLICATE_q\ <= NOT \p_counter[7]~DUPLICATE_q\;
\ALT_INV_p_counter[6]~DUPLICATE_q\ <= NOT \p_counter[6]~DUPLICATE_q\;
\ALT_INV_p_counter[5]~DUPLICATE_q\ <= NOT \p_counter[5]~DUPLICATE_q\;
\ALT_INV_p_counter[4]~DUPLICATE_q\ <= NOT \p_counter[4]~DUPLICATE_q\;
\RF_block|ALT_INV_k1[3]~DUPLICATE_q\ <= NOT \RF_block|k1[3]~DUPLICATE_q\;
\RF_block|ALT_INV_k2[3]~DUPLICATE_q\ <= NOT \RF_block|k2[3]~DUPLICATE_q\;
\RF_block|ALT_INV_k0[3]~DUPLICATE_q\ <= NOT \RF_block|k0[3]~DUPLICATE_q\;
\RF_block|ALT_INV_k0[1]~DUPLICATE_q\ <= NOT \RF_block|k0[1]~DUPLICATE_q\;
\ALUOut_reg|ALT_INV_q[7]~DUPLICATE_q\ <= NOT \ALUOut_reg|q[7]~DUPLICATE_q\;
\ALUOut_reg|ALT_INV_q[6]~DUPLICATE_q\ <= NOT \ALUOut_reg|q[6]~DUPLICATE_q\;
\ALUOut_reg|ALT_INV_q[5]~DUPLICATE_q\ <= NOT \ALUOut_reg|q[5]~DUPLICATE_q\;
\IR_reg3reg|ALT_INV_q[5]~DUPLICATE_q\ <= NOT \IR_reg3reg|q[5]~DUPLICATE_q\;
\IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\ <= NOT \IR_reg3reg|q[0]~DUPLICATE_q\;
\ALT_INV_KEY[1]~inputCLKENA0_outclk\ <= NOT \KEY[1]~inputCLKENA0_outclk\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_LEDR[9]$latch~combout\ <= NOT \LEDR[9]$latch~combout\;
\ALT_INV_LEDR[8]$latch~combout\ <= NOT \LEDR[8]$latch~combout\;
\ALT_INV_HEX0~0_combout\ <= NOT \HEX0~0_combout\;
\ALT_INV_HEX1~0_combout\ <= NOT \HEX1~0_combout\;
\ALU2_mux|ALT_INV_Mux3~1_combout\ <= NOT \ALU2_mux|Mux3~1_combout\;
\ALU2_mux|ALT_INV_Mux5~3_combout\ <= NOT \ALU2_mux|Mux5~3_combout\;
\ALU2_mux|ALT_INV_Mux6~3_combout\ <= NOT \ALU2_mux|Mux6~3_combout\;
\ALU2_mux|ALT_INV_Mux7~4_combout\ <= NOT \ALU2_mux|Mux7~4_combout\;
\R2B_mux|ALT_INV_result[2]~2_combout\ <= NOT \R2B_mux|result[2]~2_combout\;
\R2B_mux|ALT_INV_result[1]~0_combout\ <= NOT \R2B_mux|result[1]~0_combout\;
\R1B_mux|ALT_INV_result[6]~2_combout\ <= NOT \R1B_mux|result[6]~2_combout\;
\R1B_mux|ALT_INV_result[7]~0_combout\ <= NOT \R1B_mux|result[7]~0_combout\;
\R1Sel_mux|ALT_INV_result[1]~1_combout\ <= NOT \R1Sel_mux|result[1]~1_combout\;
\R1Sel_mux|ALT_INV_result[0]~0_combout\ <= NOT \R1Sel_mux|result[0]~0_combout\;
\Control|ALT_INV_ALU1~1_combout\ <= NOT \Control|ALU1~1_combout\;
\Control|ALT_INV_ALU1~0_combout\ <= NOT \Control|ALU1~0_combout\;
\ALU|ALT_INV_Equal0~1_combout\ <= NOT \ALU|Equal0~1_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\IR_reg2reg|ALT_INV_q\(7) <= NOT \IR_reg2reg|q\(7);
\Control|ALT_INV_Mux2~0_combout\ <= NOT \Control|Mux2~0_combout\;
\IR_reg2reg|ALT_INV_q\(6) <= NOT \IR_reg2reg|q\(6);
\Control|ALT_INV_ALU2~0_combout\ <= NOT \Control|ALU2~0_combout\;
\IR_reg2reg|ALT_INV_q\(5) <= NOT \IR_reg2reg|q\(5);
\IR_reg2reg|ALT_INV_q\(4) <= NOT \IR_reg2reg|q\(4);
\Control|ALT_INV_Mux1~3_combout\ <= NOT \Control|Mux1~3_combout\;
\Control|ALT_INV_Mux1~2_combout\ <= NOT \Control|Mux1~2_combout\;
\Control|ALT_INV_Mux1~1_combout\ <= NOT \Control|Mux1~1_combout\;
\Control|ALT_INV_R1B~2_combout\ <= NOT \Control|R1B~2_combout\;
\Control|ALT_INV_Equal4~0_combout\ <= NOT \Control|Equal4~0_combout\;
\Control|ALT_INV_always0~0_combout\ <= NOT \Control|always0~0_combout\;
\Control|ALT_INV_Mux1~0_combout\ <= NOT \Control|Mux1~0_combout\;
\Control|ALT_INV_R1B~1_combout\ <= NOT \Control|R1B~1_combout\;
\Control|ALT_INV_R1B~0_combout\ <= NOT \Control|R1B~0_combout\;
\IR2_mux|ALT_INV_result[7]~7_combout\ <= NOT \IR2_mux|result[7]~7_combout\;
\IR2_mux|ALT_INV_result[6]~6_combout\ <= NOT \IR2_mux|result[6]~6_combout\;
\Control|ALT_INV_Mux0~2_combout\ <= NOT \Control|Mux0~2_combout\;
\Control|ALT_INV_Mux0~1_combout\ <= NOT \Control|Mux0~1_combout\;
\IR2_mux|ALT_INV_result[5]~5_combout\ <= NOT \IR2_mux|result[5]~5_combout\;
\IR2_mux|ALT_INV_result[4]~4_combout\ <= NOT \IR2_mux|result[4]~4_combout\;
\Control|ALT_INV_Mux0~0_combout\ <= NOT \Control|Mux0~0_combout\;
\IR2_mux|ALT_INV_result[3]~3_combout\ <= NOT \IR2_mux|result[3]~3_combout\;
\IR_reg1reg|ALT_INV_q\(3) <= NOT \IR_reg1reg|q\(3);
\IR2_mux|ALT_INV_result[2]~2_combout\ <= NOT \IR2_mux|result[2]~2_combout\;
\IR2_mux|ALT_INV_result[1]~1_combout\ <= NOT \IR2_mux|result[1]~1_combout\;
\IR_reg1reg|ALT_INV_q\(1) <= NOT \IR_reg1reg|q\(1);
\IR2_mux|ALT_INV_result[0]~0_combout\ <= NOT \IR2_mux|result[0]~0_combout\;
\ALU|ALT_INV_Equal5~1_combout\ <= NOT \ALU|Equal5~1_combout\;
\ALU2_mux|ALT_INV_Mux4~1_combout\ <= NOT \ALU2_mux|Mux4~1_combout\;
\ALU2_mux|ALT_INV_Mux4~0_combout\ <= NOT \ALU2_mux|Mux4~0_combout\;
\ALU2_mux|ALT_INV_Mux7~3_combout\ <= NOT \ALU2_mux|Mux7~3_combout\;
\ALU2_mux|ALT_INV_Mux3~0_combout\ <= NOT \ALU2_mux|Mux3~0_combout\;
\ALU|ALT_INV_tmp_out[3]~31_combout\ <= NOT \ALU|tmp_out[3]~31_combout\;
\ALU|ALT_INV_tmp_out[3]~30_combout\ <= NOT \ALU|tmp_out[3]~30_combout\;
\ALU|ALT_INV_tmp_out[4]~29_combout\ <= NOT \ALU|tmp_out[4]~29_combout\;
\ALU|ALT_INV_ShiftRight0~5_combout\ <= NOT \ALU|ShiftRight0~5_combout\;
\ALU|ALT_INV_tmp_out[4]~28_combout\ <= NOT \ALU|tmp_out[4]~28_combout\;
\ALU|ALT_INV_tmp_out[4]~27_combout\ <= NOT \ALU|tmp_out[4]~27_combout\;
\ALU|ALT_INV_tmp_out[4]~26_combout\ <= NOT \ALU|tmp_out[4]~26_combout\;
\ALU|ALT_INV_tmp_out[4]~25_combout\ <= NOT \ALU|tmp_out[4]~25_combout\;
\ALU|ALT_INV_Equal5~0_combout\ <= NOT \ALU|Equal5~0_combout\;
\ALU|ALT_INV_tmp_out[2]~24_combout\ <= NOT \ALU|tmp_out[2]~24_combout\;
\ALU|ALT_INV_tmp_out[2]~23_combout\ <= NOT \ALU|tmp_out[2]~23_combout\;
\ALU|ALT_INV_tmp_out[2]~22_combout\ <= NOT \ALU|tmp_out[2]~22_combout\;
\ALU|ALT_INV_tmp_out[2]~21_combout\ <= NOT \ALU|tmp_out[2]~21_combout\;
\ALU|ALT_INV_tmp_out[2]~20_combout\ <= NOT \ALU|tmp_out[2]~20_combout\;
\ALU|ALT_INV_tmp_out[2]~19_combout\ <= NOT \ALU|tmp_out[2]~19_combout\;
\ALU|ALT_INV_tmp_out[2]~18_combout\ <= NOT \ALU|tmp_out[2]~18_combout\;
\ALU|ALT_INV_tmp_out[2]~17_combout\ <= NOT \ALU|tmp_out[2]~17_combout\;
\ALU|ALT_INV_tmp_out[5]~16_combout\ <= NOT \ALU|tmp_out[5]~16_combout\;
\ALU|ALT_INV_tmp_out[5]~15_combout\ <= NOT \ALU|tmp_out[5]~15_combout\;
\ALU2_mux|ALT_INV_Mux2~0_combout\ <= NOT \ALU2_mux|Mux2~0_combout\;
\ALU|ALT_INV_ShiftRight0~4_combout\ <= NOT \ALU|ShiftRight0~4_combout\;
\ALU|ALT_INV_ShiftRight0~3_combout\ <= NOT \ALU|ShiftRight0~3_combout\;
\ALU|ALT_INV_ShiftRight0~2_combout\ <= NOT \ALU|ShiftRight0~2_combout\;
\ALU|ALT_INV_ShiftRight0~1_combout\ <= NOT \ALU|ShiftRight0~1_combout\;
\ALU|ALT_INV_tmp_out[6]~14_combout\ <= NOT \ALU|tmp_out[6]~14_combout\;
\ALU|ALT_INV_tmp_out[6]~13_combout\ <= NOT \ALU|tmp_out[6]~13_combout\;
\ALU|ALT_INV_tmp_out[6]~12_combout\ <= NOT \ALU|tmp_out[6]~12_combout\;
\ALU2_mux|ALT_INV_Mux1~0_combout\ <= NOT \ALU2_mux|Mux1~0_combout\;
\ALU|ALT_INV_tmp_out[6]~11_combout\ <= NOT \ALU|tmp_out[6]~11_combout\;
\ALU|ALT_INV_tmp_out[6]~10_combout\ <= NOT \ALU|tmp_out[6]~10_combout\;
\ALU|ALT_INV_tmp_out[1]~9_combout\ <= NOT \ALU|tmp_out[1]~9_combout\;
\ALU|ALT_INV_tmp_out[1]~8_combout\ <= NOT \ALU|tmp_out[1]~8_combout\;
\ALU|ALT_INV_tmp_out[1]~7_combout\ <= NOT \ALU|tmp_out[1]~7_combout\;
\ALU|ALT_INV_tmp_out[1]~6_combout\ <= NOT \ALU|tmp_out[1]~6_combout\;
\ALU|ALT_INV_tmp_out[1]~5_combout\ <= NOT \ALU|tmp_out[1]~5_combout\;
\ALU|ALT_INV_tmp_out[0]~4_combout\ <= NOT \ALU|tmp_out[0]~4_combout\;
\ALU|ALT_INV_tmp_out[0]~3_combout\ <= NOT \ALU|tmp_out[0]~3_combout\;
\ALU|ALT_INV_tmp_out[0]~2_combout\ <= NOT \ALU|tmp_out[0]~2_combout\;
\ALU|ALT_INV_ShiftRight0~0_combout\ <= NOT \ALU|ShiftRight0~0_combout\;
\ALU1_mux|ALT_INV_Mux4~0_combout\ <= NOT \ALU1_mux|Mux4~0_combout\;
\PC3reg|ALT_INV_q\(3) <= NOT \PC3reg|q\(3);
\ALU1_mux|ALT_INV_Mux6~0_combout\ <= NOT \ALU1_mux|Mux6~0_combout\;
\PC3reg|ALT_INV_q\(1) <= NOT \PC3reg|q\(1);
\ALU1_mux|ALT_INV_Mux5~0_combout\ <= NOT \ALU1_mux|Mux5~0_combout\;
\PC3reg|ALT_INV_q\(2) <= NOT \PC3reg|q\(2);
\ALU1_mux|ALT_INV_Mux7~0_combout\ <= NOT \ALU1_mux|Mux7~0_combout\;
\PC3reg|ALT_INV_q\(0) <= NOT \PC3reg|q\(0);
\ALU|ALT_INV_N~4_combout\ <= NOT \ALU|N~4_combout\;
\ALU|ALT_INV_N~3_combout\ <= NOT \ALU|N~3_combout\;
\ALU|ALT_INV_N~2_combout\ <= NOT \ALU|N~2_combout\;
\ALU|ALT_INV_N~1_combout\ <= NOT \ALU|N~1_combout\;
\ALU2_mux|ALT_INV_Mux0~0_combout\ <= NOT \ALU2_mux|Mux0~0_combout\;
\ALU|ALT_INV_N~0_combout\ <= NOT \ALU|N~0_combout\;
\ALU|ALT_INV_Equal0~0_combout\ <= NOT \ALU|Equal0~0_combout\;
\ALU|ALT_INV_tmp_out[5]~1_combout\ <= NOT \ALU|tmp_out[5]~1_combout\;
\ALU2_mux|ALT_INV_Mux5~2_combout\ <= NOT \ALU2_mux|Mux5~2_combout\;
\ALU2_mux|ALT_INV_Mux5~1_combout\ <= NOT \ALU2_mux|Mux5~1_combout\;
\ALU2_mux|ALT_INV_Mux5~0_combout\ <= NOT \ALU2_mux|Mux5~0_combout\;
\ALU|ALT_INV_ShiftLeft0~0_combout\ <= NOT \ALU|ShiftLeft0~0_combout\;
\ALU2_mux|ALT_INV_Mux7~2_combout\ <= NOT \ALU2_mux|Mux7~2_combout\;
\ALU2_mux|ALT_INV_Mux7~1_combout\ <= NOT \ALU2_mux|Mux7~1_combout\;
\ALU2_mux|ALT_INV_Mux7~0_combout\ <= NOT \ALU2_mux|Mux7~0_combout\;
\ALU2_mux|ALT_INV_Mux6~2_combout\ <= NOT \ALU2_mux|Mux6~2_combout\;
\ALU2_mux|ALT_INV_Mux6~1_combout\ <= NOT \ALU2_mux|Mux6~1_combout\;
\ALU2_mux|ALT_INV_Mux6~0_combout\ <= NOT \ALU2_mux|Mux6~0_combout\;
\Control|ALT_INV_ALU2\(2) <= NOT \Control|ALU2\(2);
\ALU1_mux|ALT_INV_Mux3~0_combout\ <= NOT \ALU1_mux|Mux3~0_combout\;
\PC3reg|ALT_INV_q\(4) <= NOT \PC3reg|q\(4);
\ALU1_mux|ALT_INV_Mux1~0_combout\ <= NOT \ALU1_mux|Mux1~0_combout\;
\PC3reg|ALT_INV_q\(6) <= NOT \PC3reg|q\(6);
\ALU1_mux|ALT_INV_Mux2~0_combout\ <= NOT \ALU1_mux|Mux2~0_combout\;
\PC3reg|ALT_INV_q\(5) <= NOT \PC3reg|q\(5);
\ALU1_mux|ALT_INV_Mux0~0_combout\ <= NOT \ALU1_mux|Mux0~0_combout\;
\PC3reg|ALT_INV_q\(7) <= NOT \PC3reg|q\(7);
\Control|ALT_INV_ALU1\(1) <= NOT \Control|ALU1\(1);
\Control|ALT_INV_ALU1\(0) <= NOT \Control|ALU1\(0);
\ALU|ALT_INV_tmp_out[0]~0_combout\ <= NOT \ALU|tmp_out[0]~0_combout\;
\IR_reg2reg|ALT_INV_q\(1) <= NOT \IR_reg2reg|q\(1);
\IR_reg2reg|ALT_INV_q\(2) <= NOT \IR_reg2reg|q\(2);
\IR_reg2reg|ALT_INV_q\(0) <= NOT \IR_reg2reg|q\(0);
\IR_reg2reg|ALT_INV_q\(3) <= NOT \IR_reg2reg|q\(3);
\IR_reg4reg|ALT_INV_q\(7) <= NOT \IR_reg4reg|q\(7);
\Control|ALT_INV_ALU2\(1) <= NOT \Control|ALU2\(1);
\Control|ALT_INV_PCSel~q\ <= NOT \Control|PCSel~q\;
\IR_reg4reg|ALT_INV_q\(6) <= NOT \IR_reg4reg|q\(6);
\Control|ALT_INV_ALU2\(0) <= NOT \Control|ALU2\(0);
\Control|ALT_INV_R1Sel~q\ <= NOT \Control|R1Sel~q\;
\IR_reg4reg|ALT_INV_q\(5) <= NOT \IR_reg4reg|q\(5);
\Control|ALT_INV_ALUop\(2) <= NOT \Control|ALUop\(2);
\Control|ALT_INV_RwSel~q\ <= NOT \Control|RwSel~q\;
\IR_reg4reg|ALT_INV_q\(4) <= NOT \IR_reg4reg|q\(4);
\Control|ALT_INV_ALUop\(1) <= NOT \Control|ALUop\(1);
\Control|ALT_INV_RFWrite~q\ <= NOT \Control|RFWrite~q\;
\IR_reg4reg|ALT_INV_q\(3) <= NOT \IR_reg4reg|q\(3);
\IR_reg3reg|ALT_INV_q\(3) <= NOT \IR_reg3reg|q\(3);
\Control|ALT_INV_ALUop\(0) <= NOT \Control|ALUop\(0);
\Control|ALT_INV_R1B~q\ <= NOT \Control|R1B~q\;
\IR_reg4reg|ALT_INV_q\(2) <= NOT \IR_reg4reg|q\(2);
\Control|ALT_INV_R2B~q\ <= NOT \Control|R2B~q\;
\IR_reg4reg|ALT_INV_q\(1) <= NOT \IR_reg4reg|q\(1);
\IR_reg3reg|ALT_INV_q\(1) <= NOT \IR_reg3reg|q\(1);
\ALT_INV_Z~q\ <= NOT \Z~q\;
\Control|ALT_INV_ALUsel~q\ <= NOT \Control|ALUsel~q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X86_Y0_N53
\LEDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X56_Y0_N19
\LEDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X68_Y0_N2
\LEDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X56_Y0_N53
\LEDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X12_Y81_N36
\LEDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X26_Y81_N93
\LEDR[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X36_Y81_N19
\LEDR[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G5
\KEY[1]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~input_o\,
	outclk => \KEY[1]~inputCLKENA0_outclk\);

-- Location: LABCELL_X83_Y8_N48
\p_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter[0]~0_combout\ = !p_counter(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_p_counter(0),
	combout => \p_counter[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X3_Y5_N24
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X6_Y3_N30
\add|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~17_sumout\ = SUM(( \PC1reg|q\(0) ) + ( VCC ) + ( !VCC ))
-- \add|Add0~18\ = CARRY(( \PC1reg|q\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(0),
	cin => GND,
	sumout => \add|Add0~17_sumout\,
	cout => \add|Add0~18\);

-- Location: MLABCELL_X6_Y3_N33
\add|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~25_sumout\ = SUM(( \PC1reg|q\(1) ) + ( GND ) + ( \add|Add0~18\ ))
-- \add|Add0~26\ = CARRY(( \PC1reg|q\(1) ) + ( GND ) + ( \add|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(1),
	cin => \add|Add0~18\,
	sumout => \add|Add0~25_sumout\,
	cout => \add|Add0~26\);

-- Location: FF_X6_Y3_N16
\PC2reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(1));

-- Location: FF_X6_Y3_N11
\PC3reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(1));

-- Location: MLABCELL_X6_Y3_N36
\add|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~21_sumout\ = SUM(( \PC1reg|q\(2) ) + ( GND ) + ( \add|Add0~26\ ))
-- \add|Add0~22\ = CARRY(( \PC1reg|q\(2) ) + ( GND ) + ( \add|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(2),
	cin => \add|Add0~26\,
	sumout => \add|Add0~21_sumout\,
	cout => \add|Add0~22\);

-- Location: MLABCELL_X6_Y3_N39
\add|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~29_sumout\ = SUM(( \PC1reg|q\(3) ) + ( GND ) + ( \add|Add0~22\ ))
-- \add|Add0~30\ = CARRY(( \PC1reg|q\(3) ) + ( GND ) + ( \add|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(3),
	cin => \add|Add0~22\,
	sumout => \add|Add0~29_sumout\,
	cout => \add|Add0~30\);

-- Location: FF_X6_Y2_N47
\IR_reg2reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \IR2_mux|result[1]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(1));

-- Location: MLABCELL_X6_Y3_N42
\add|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~13_sumout\ = SUM(( \PC1reg|q\(4) ) + ( GND ) + ( \add|Add0~30\ ))
-- \add|Add0~14\ = CARRY(( \PC1reg|q\(4) ) + ( GND ) + ( \add|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(4),
	cin => \add|Add0~30\,
	sumout => \add|Add0~13_sumout\,
	cout => \add|Add0~14\);

-- Location: MLABCELL_X6_Y3_N45
\add|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~5_sumout\ = SUM(( \PC1reg|q\(5) ) + ( GND ) + ( \add|Add0~14\ ))
-- \add|Add0~6\ = CARRY(( \PC1reg|q\(5) ) + ( GND ) + ( \add|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(5),
	cin => \add|Add0~14\,
	sumout => \add|Add0~5_sumout\,
	cout => \add|Add0~6\);

-- Location: LABCELL_X4_Y4_N27
\Control|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux5~0_combout\ = ( \IR_reg2reg|q\(0) & ( (!\IR_reg2reg|q\(2) & ((!\IR_reg2reg|q\(3)) # (!\IR_reg2reg|q\(1)))) # (\IR_reg2reg|q\(2) & ((\IR_reg2reg|q\(1)))) ) ) # ( !\IR_reg2reg|q\(0) & ( (\Control|ALU2~0_combout\ & (((!\IR_reg2reg|q\(2) & 
-- \IR_reg2reg|q\(1))) # (\IR_reg2reg|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001000100010101000111110000110011111111000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2~0_combout\,
	datab => \IR_reg2reg|ALT_INV_q\(3),
	datac => \IR_reg2reg|ALT_INV_q\(2),
	datad => \IR_reg2reg|ALT_INV_q\(1),
	dataf => \IR_reg2reg|ALT_INV_q\(0),
	combout => \Control|Mux5~0_combout\);

-- Location: FF_X4_Y4_N28
\Control|ALU2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU2\(0));

-- Location: LABCELL_X7_Y2_N9
\R1Sel_mux|result[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Sel_mux|result[1]~1_combout\ = ( !\Control|R1Sel~q\ & ( \IR_reg2reg|q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IR_reg2reg|ALT_INV_q\(7),
	dataf => \Control|ALT_INV_R1Sel~q\,
	combout => \R1Sel_mux|result[1]~1_combout\);

-- Location: FF_X4_Y4_N29
\Control|ALU2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU2[0]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y4_N18
\Control|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux4~0_combout\ = ( \IR_reg2reg|q\(0) & ( !\IR_reg2reg|q\(1) ) ) # ( !\IR_reg2reg|q\(0) & ( (\Control|ALU2~0_combout\ & (((!\IR_reg2reg|q\(2) & \IR_reg2reg|q\(1))) # (\IR_reg2reg|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010101000001000101010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2~0_combout\,
	datab => \IR_reg2reg|ALT_INV_q\(2),
	datac => \IR_reg2reg|ALT_INV_q\(1),
	datad => \IR_reg2reg|ALT_INV_q\(3),
	dataf => \IR_reg2reg|ALT_INV_q\(0),
	combout => \Control|Mux4~0_combout\);

-- Location: FF_X4_Y4_N19
\Control|ALU2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU2[1]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y4_N45
\ALU2_mux|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux7~0_combout\ = ( \Control|ALU2[1]~DUPLICATE_q\ & ( (\ALUOut_reg|q\(0) & (\Control|ALU2\(2) & \Control|ALU2[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALUOut_reg|ALT_INV_q\(0),
	datac => \Control|ALT_INV_ALU2\(2),
	datad => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux7~0_combout\);

-- Location: MLABCELL_X6_Y3_N48
\add|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~9_sumout\ = SUM(( \PC1reg|q\(6) ) + ( GND ) + ( \add|Add0~6\ ))
-- \add|Add0~10\ = CARRY(( \PC1reg|q\(6) ) + ( GND ) + ( \add|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(6),
	cin => \add|Add0~6\,
	sumout => \add|Add0~9_sumout\,
	cout => \add|Add0~10\);

-- Location: MLABCELL_X3_Y2_N57
\Control|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Decoder1~0_combout\ = ( !\IR_reg2reg|q\(1) & ( (!\IR_reg2reg|q\(2) & \IR_reg2reg|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(2),
	datad => \IR_reg2reg|ALT_INV_q\(0),
	dataf => \IR_reg2reg|ALT_INV_q\(1),
	combout => \Control|Decoder1~0_combout\);

-- Location: FF_X3_Y2_N58
\Control|ALUop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Decoder1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUop\(2));

-- Location: LABCELL_X2_Y3_N27
\ALU|tmp_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[0]~0_combout\ = ( !\Control|ALUop\(2) & ( !\Control|ALUop\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Control|ALT_INV_ALUop\(2),
	dataf => \Control|ALT_INV_ALUop\(1),
	combout => \ALU|tmp_out[0]~0_combout\);

-- Location: FF_X4_Y4_N20
\Control|ALU2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU2\(1));

-- Location: MLABCELL_X6_Y3_N51
\add|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|Add0~1_sumout\ = SUM(( \PC1reg|q\(7) ) + ( GND ) + ( \add|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1reg|ALT_INV_q\(7),
	cin => \add|Add0~10\,
	sumout => \add|Add0~1_sumout\);

-- Location: MLABCELL_X3_Y2_N48
\Control|ALUop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|ALUop~0_combout\ = ( \IR_reg2reg|q\(2) & ( (!\IR_reg2reg|q\(1) & (!\IR_reg2reg|q\(0) & \IR_reg2reg|q\(3))) ) ) # ( !\IR_reg2reg|q\(2) & ( (\IR_reg2reg|q\(1) & (!\IR_reg2reg|q\(0) & !\IR_reg2reg|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(1),
	datab => \IR_reg2reg|ALT_INV_q\(0),
	datac => \IR_reg2reg|ALT_INV_q\(3),
	dataf => \IR_reg2reg|ALT_INV_q\(2),
	combout => \Control|ALUop~0_combout\);

-- Location: FF_X3_Y2_N50
\Control|ALUop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|ALUop~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUop\(0));

-- Location: LABCELL_X2_Y3_N6
\ALU|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal0~0_combout\ = ( !\Control|ALUop\(2) & ( \Control|ALUop\(1) & ( \Control|ALUop\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_ALUop\(0),
	datae => \Control|ALT_INV_ALUop\(2),
	dataf => \Control|ALT_INV_ALUop\(1),
	combout => \ALU|Equal0~0_combout\);

-- Location: LABCELL_X2_Y3_N39
\ALU|N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|N~0_combout\ = ( !\ALU2_mux|Mux7~0_combout\ & ( !\ALU2_mux|Mux7~1_combout\ & ( (\ALU|tmp_out[5]~1_combout\ & !\ALU|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datac => \ALU|ALT_INV_Equal0~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	combout => \ALU|N~0_combout\);

-- Location: MLABCELL_X3_Y3_N45
\Control|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|WideOr2~0_combout\ = ( \IR_reg2reg|q\(1) & ( \IR_reg2reg|q\(2) & ( \IR_reg2reg|q\(0) ) ) ) # ( \IR_reg2reg|q\(1) & ( !\IR_reg2reg|q\(2) & ( (!\IR_reg2reg|q\(3) & \IR_reg2reg|q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(3),
	datac => \IR_reg2reg|ALT_INV_q\(0),
	datae => \IR_reg2reg|ALT_INV_q\(1),
	dataf => \IR_reg2reg|ALT_INV_q\(2),
	combout => \Control|WideOr2~0_combout\);

-- Location: FF_X3_Y3_N46
\Control|ALU1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|WideOr2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU1\(0));

-- Location: FF_X4_Y4_N5
\IR_reg3reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(4));

-- Location: FF_X6_Y2_N40
\IR_reg3reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(2));

-- Location: FF_X7_Y2_N40
\IR_reg3reg|q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q[0]~DUPLICATE_q\);

-- Location: MLABCELL_X6_Y2_N57
\IR3_mux|result[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR3_mux|result[1]~0_combout\ = ( \IR_reg2reg|q\(1) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg2reg|ALT_INV_q\(1),
	combout => \IR3_mux|result[1]~0_combout\);

-- Location: FF_X6_Y2_N58
\IR_reg3reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \IR3_mux|result[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(1));

-- Location: LABCELL_X7_Y2_N12
\Control|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Equal4~0_combout\ = (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[0]~DUPLICATE_q\ & !\IR_reg3reg|q\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(2),
	datab => \IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\,
	datad => \IR_reg3reg|ALT_INV_q\(1),
	combout => \Control|Equal4~0_combout\);

-- Location: FF_X4_Y2_N41
\Control|RwSel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \Control|Equal4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|RwSel~q\);

-- Location: FF_X6_Y4_N32
\IR_reg4reg|q[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q[6]~DUPLICATE_q\);

-- Location: FF_X7_Y2_N41
\IR_reg3reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(0));

-- Location: LABCELL_X7_Y2_N57
\Control|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|WideOr3~0_combout\ = ( \IR_reg3reg|q\(2) & ( (!\IR_reg3reg|q\(0) & (\IR_reg3reg|q[3]~DUPLICATE_q\)) # (\IR_reg3reg|q\(0) & ((!\IR_reg3reg|q\(1)))) ) ) # ( !\IR_reg3reg|q\(2) & ( !\IR_reg3reg|q\(0) $ (!\IR_reg3reg|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	datac => \IR_reg3reg|ALT_INV_q\(0),
	datad => \IR_reg3reg|ALT_INV_q\(1),
	dataf => \IR_reg3reg|ALT_INV_q\(2),
	combout => \Control|WideOr3~0_combout\);

-- Location: FF_X7_Y2_N58
\Control|RFWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|WideOr3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|RFWrite~q\);

-- Location: FF_X6_Y2_N35
\IR_reg3reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(7));

-- Location: FF_X6_Y4_N50
\IR_reg4reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(7));

-- Location: MLABCELL_X6_Y4_N15
\RF_block|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|Decoder0~3_combout\ = ( \IR_reg4reg|q\(7) & ( (!\Control|RwSel~q\ & (\IR_reg4reg|q[6]~DUPLICATE_q\ & \Control|RFWrite~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_RwSel~q\,
	datac => \IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\,
	datad => \Control|ALT_INV_RFWrite~q\,
	dataf => \IR_reg4reg|ALT_INV_q\(7),
	combout => \RF_block|Decoder0~3_combout\);

-- Location: FF_X8_Y4_N10
\RF_block|k3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(7));

-- Location: MLABCELL_X6_Y4_N33
\RF_block|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|Decoder0~2_combout\ = ( \Control|RFWrite~q\ & ( \IR_reg4reg|q\(7) & ( \Control|RwSel~q\ ) ) ) # ( \Control|RFWrite~q\ & ( !\IR_reg4reg|q\(7) & ( (\IR_reg4reg|q[6]~DUPLICATE_q\) # (\Control|RwSel~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_RwSel~q\,
	datac => \IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\,
	datae => \Control|ALT_INV_RFWrite~q\,
	dataf => \IR_reg4reg|ALT_INV_q\(7),
	combout => \RF_block|Decoder0~2_combout\);

-- Location: FF_X7_Y4_N10
\RF_block|k1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(7));

-- Location: MLABCELL_X6_Y4_N36
\RF_block|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|Decoder0~1_combout\ = ( \Control|RFWrite~q\ & ( !\IR_reg4reg|q[6]~DUPLICATE_q\ & ( (\IR_reg4reg|q\(7) & !\Control|RwSel~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg4reg|ALT_INV_q\(7),
	datac => \Control|ALT_INV_RwSel~q\,
	datae => \Control|ALT_INV_RFWrite~q\,
	dataf => \IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\,
	combout => \RF_block|Decoder0~1_combout\);

-- Location: FF_X10_Y4_N55
\RF_block|k2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(7));

-- Location: LABCELL_X7_Y4_N24
\R2B_mux|result[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[7]~3_combout\ = ( \RF_block|k1\(7) & ( \RF_block|k2\(7) & ( (!\IR_reg2reg|q\(5) & (((\RF_block|k0\(7)) # (\IR_reg2reg|q\(4))))) # (\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4))) # (\RF_block|k3\(7)))) ) ) ) # ( !\RF_block|k1\(7) & ( 
-- \RF_block|k2\(7) & ( (!\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4) & \RF_block|k0\(7))))) # (\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4))) # (\RF_block|k3\(7)))) ) ) ) # ( \RF_block|k1\(7) & ( !\RF_block|k2\(7) & ( (!\IR_reg2reg|q\(5) & (((\RF_block|k0\(7)) # 
-- (\IR_reg2reg|q\(4))))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(7) & (\IR_reg2reg|q\(4)))) ) ) ) # ( !\RF_block|k1\(7) & ( !\RF_block|k2\(7) & ( (!\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4) & \RF_block|k0\(7))))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(7) & 
-- (\IR_reg2reg|q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(5),
	datab => \RF_block|ALT_INV_k3\(7),
	datac => \IR_reg2reg|ALT_INV_q\(4),
	datad => \RF_block|ALT_INV_k0\(7),
	datae => \RF_block|ALT_INV_k1\(7),
	dataf => \RF_block|ALT_INV_k2\(7),
	combout => \R2B_mux|result[7]~3_combout\);

-- Location: LABCELL_X7_Y2_N0
\Control|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux0~2_combout\ = ( \IR2_mux|result[4]~4_combout\ & ( \IR2_mux|result[5]~5_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) ) # 
-- ( !\IR2_mux|result[4]~4_combout\ & ( \IR2_mux|result[5]~5_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) ) # ( 
-- \IR2_mux|result[4]~4_combout\ & ( !\IR2_mux|result[5]~5_combout\ & ( (!\IR_reg3reg|q\(0) & ((!\IR_reg3reg|q\(2) & ((\IR_reg3reg|q\(1)))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\)))) # (\IR_reg3reg|q\(0) & (((!\IR_reg3reg|q\(1))))) ) ) ) # ( 
-- !\IR2_mux|result[4]~4_combout\ & ( !\IR2_mux|result[5]~5_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111000000001101011100110000110101110000000011010111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	datab => \IR_reg3reg|ALT_INV_q\(1),
	datac => \IR_reg3reg|ALT_INV_q\(2),
	datad => \IR_reg3reg|ALT_INV_q\(0),
	datae => \IR2_mux|ALT_INV_result[4]~4_combout\,
	dataf => \IR2_mux|ALT_INV_result[5]~5_combout\,
	combout => \Control|Mux0~2_combout\);

-- Location: MLABCELL_X6_Y2_N21
\Control|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux0~0_combout\ = ( !\IR2_mux|result[2]~2_combout\ & ( \IR2_mux|result[0]~0_combout\ & ( !\IR2_mux|result[1]~1_combout\ ) ) ) # ( \IR2_mux|result[2]~2_combout\ & ( !\IR2_mux|result[0]~0_combout\ & ( \IR2_mux|result[3]~3_combout\ ) ) ) # ( 
-- !\IR2_mux|result[2]~2_combout\ & ( !\IR2_mux|result[0]~0_combout\ & ( (\IR2_mux|result[1]~1_combout\) # (\IR2_mux|result[3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR2_mux|ALT_INV_result[3]~3_combout\,
	datac => \IR2_mux|ALT_INV_result[1]~1_combout\,
	datae => \IR2_mux|ALT_INV_result[2]~2_combout\,
	dataf => \IR2_mux|ALT_INV_result[0]~0_combout\,
	combout => \Control|Mux0~0_combout\);

-- Location: LABCELL_X7_Y2_N54
\Control|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux0~1_combout\ = ( \IR_reg3reg|q\(6) & ( (\IR2_mux|result[4]~4_combout\ & (!\IR_reg3reg|q\(7) $ (\IR2_mux|result[5]~5_combout\))) ) ) # ( !\IR_reg3reg|q\(6) & ( (!\IR2_mux|result[4]~4_combout\ & (!\IR_reg3reg|q\(7) $ 
-- (\IR2_mux|result[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR2_mux|ALT_INV_result[4]~4_combout\,
	datac => \IR_reg3reg|ALT_INV_q\(7),
	datad => \IR2_mux|ALT_INV_result[5]~5_combout\,
	dataf => \IR_reg3reg|ALT_INV_q\(6),
	combout => \Control|Mux0~1_combout\);

-- Location: LABCELL_X7_Y2_N18
\Control|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux0~3_combout\ = ( \IR_reg3reg|q\(2) & ( (\Control|Mux0~2_combout\ & (\Control|Mux0~0_combout\ & ((\Control|Mux0~1_combout\) # (\IR_reg3reg|q\(0))))) ) ) # ( !\IR_reg3reg|q\(2) & ( (\Control|Mux0~2_combout\ & (\Control|Mux0~0_combout\ & 
-- \Control|Mux0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_Mux0~2_combout\,
	datab => \IR_reg3reg|ALT_INV_q\(0),
	datac => \Control|ALT_INV_Mux0~0_combout\,
	datad => \Control|ALT_INV_Mux0~1_combout\,
	dataf => \IR_reg3reg|ALT_INV_q\(2),
	combout => \Control|Mux0~3_combout\);

-- Location: FF_X7_Y2_N20
\Control|R2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux0~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|R2B~q\);

-- Location: FF_X7_Y4_N26
\R2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[7]~3_combout\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(7));

-- Location: MLABCELL_X6_Y4_N18
\ALU2_mux|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux0~0_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2\(2) & ( (\ALUOut_reg|q[7]~DUPLICATE_q\ & \Control|ALU2\(1)) ) ) ) # ( \Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(1) & \IR_reg3reg|q\(7)) ) ) ) # ( 
-- !\Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2\(2) & ( (\R2|q\(7) & !\Control|ALU2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000001111000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut_reg|ALT_INV_q[7]~DUPLICATE_q\,
	datab => \R2|ALT_INV_q\(7),
	datac => \Control|ALT_INV_ALU2\(1),
	datad => \IR_reg3reg|ALT_INV_q\(7),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \ALU2_mux|Mux0~0_combout\);

-- Location: LABCELL_X7_Y2_N3
\Control|R1B~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|R1B~1_combout\ = ( \IR2_mux|result[6]~6_combout\ & ( \IR2_mux|result[7]~7_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) ) # ( 
-- !\IR2_mux|result[6]~6_combout\ & ( \IR2_mux|result[7]~7_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) ) # ( 
-- \IR2_mux|result[6]~6_combout\ & ( !\IR2_mux|result[7]~7_combout\ & ( (!\IR_reg3reg|q\(0) & ((!\IR_reg3reg|q\(2) & ((\IR_reg3reg|q\(1)))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\)))) # (\IR_reg3reg|q\(0) & (((!\IR_reg3reg|q\(1))))) ) ) ) # ( 
-- !\IR2_mux|result[6]~6_combout\ & ( !\IR2_mux|result[7]~7_combout\ & ( (!\IR_reg3reg|q\(2) & ((!\IR_reg3reg|q\(1) $ (!\IR_reg3reg|q\(0))))) # (\IR_reg3reg|q\(2) & (\IR_reg3reg|q[3]~DUPLICATE_q\ & ((!\IR_reg3reg|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001010000001111000101110000111100010100000011110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	datab => \IR_reg3reg|ALT_INV_q\(1),
	datac => \IR_reg3reg|ALT_INV_q\(0),
	datad => \IR_reg3reg|ALT_INV_q\(2),
	datae => \IR2_mux|ALT_INV_result[6]~6_combout\,
	dataf => \IR2_mux|ALT_INV_result[7]~7_combout\,
	combout => \Control|R1B~1_combout\);

-- Location: LABCELL_X7_Y2_N30
\Control|R1B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|R1B~0_combout\ = ( \IR_reg3reg|q[0]~DUPLICATE_q\ & ( \IR_reg3reg|q\(2) ) ) # ( !\IR_reg3reg|q[0]~DUPLICATE_q\ & ( \IR_reg3reg|q\(2) & ( (!\IR2_mux|result[6]~6_combout\ & (!\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ 
-- (\IR_reg3reg|q\(7))))) # (\IR2_mux|result[6]~6_combout\ & (\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ (\IR_reg3reg|q\(7))))) ) ) ) # ( \IR_reg3reg|q[0]~DUPLICATE_q\ & ( !\IR_reg3reg|q\(2) & ( (!\IR2_mux|result[6]~6_combout\ & 
-- (!\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ (\IR_reg3reg|q\(7))))) # (\IR2_mux|result[6]~6_combout\ & (\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ (\IR_reg3reg|q\(7))))) ) ) ) # ( !\IR_reg3reg|q[0]~DUPLICATE_q\ & ( !\IR_reg3reg|q\(2) 
-- & ( (!\IR2_mux|result[6]~6_combout\ & (!\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ (\IR_reg3reg|q\(7))))) # (\IR2_mux|result[6]~6_combout\ & (\IR_reg3reg|q\(6) & (!\IR2_mux|result[7]~7_combout\ $ (\IR_reg3reg|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001100000100100000110000010010000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR2_mux|ALT_INV_result[6]~6_combout\,
	datab => \IR2_mux|ALT_INV_result[7]~7_combout\,
	datac => \IR_reg3reg|ALT_INV_q\(7),
	datad => \IR_reg3reg|ALT_INV_q\(6),
	datae => \IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\,
	dataf => \IR_reg3reg|ALT_INV_q\(2),
	combout => \Control|R1B~0_combout\);

-- Location: MLABCELL_X6_Y2_N33
\Control|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux1~0_combout\ = ( \Control|R1B~0_combout\ & ( (\Control|R1B~1_combout\ & ((!\IR2_mux|result[0]~0_combout\) # (!\IR_reg1reg|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR2_mux|ALT_INV_result[0]~0_combout\,
	datac => \IR_reg1reg|ALT_INV_q\(1),
	datad => \Control|ALT_INV_R1B~1_combout\,
	dataf => \Control|ALT_INV_R1B~0_combout\,
	combout => \Control|Mux1~0_combout\);

-- Location: MLABCELL_X6_Y2_N12
\Control|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux1~2_combout\ = ( \Control|R1B~0_combout\ & ( (\Control|R1B~1_combout\ & (!\IR2_mux|result[1]~1_combout\ $ (!\IR2_mux|result[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_R1B~1_combout\,
	datab => \IR2_mux|ALT_INV_result[1]~1_combout\,
	datac => \IR2_mux|ALT_INV_result[0]~0_combout\,
	dataf => \Control|ALT_INV_R1B~0_combout\,
	combout => \Control|Mux1~2_combout\);

-- Location: LABCELL_X7_Y2_N15
\Control|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|always0~0_combout\ = ( \IR_reg3reg|q[3]~DUPLICATE_q\ & ( !\IR_reg3reg|q[0]~DUPLICATE_q\ $ (((!\IR_reg3reg|q\(2) & !\IR_reg3reg|q\(1)))) ) ) # ( !\IR_reg3reg|q[3]~DUPLICATE_q\ & ( (!\IR_reg3reg|q\(2) & (!\IR_reg3reg|q[0]~DUPLICATE_q\ $ 
-- (!\IR_reg3reg|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001101100011011000110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(2),
	datab => \IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\,
	datac => \IR_reg3reg|ALT_INV_q\(1),
	dataf => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	combout => \Control|always0~0_combout\);

-- Location: LABCELL_X4_Y2_N0
\Control|R1B~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|R1B~2_combout\ = ( !\Control|Equal4~0_combout\ & ( \IR_reg3reg|q\(7) ) ) # ( !\Control|Equal4~0_combout\ & ( !\IR_reg3reg|q\(7) & ( (!\Control|always0~0_combout\) # (!\IR_reg3reg|q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_always0~0_combout\,
	datab => \IR_reg3reg|ALT_INV_q\(6),
	datae => \Control|ALT_INV_Equal4~0_combout\,
	dataf => \IR_reg3reg|ALT_INV_q\(7),
	combout => \Control|R1B~2_combout\);

-- Location: MLABCELL_X6_Y2_N15
\Control|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux1~1_combout\ = ( \Control|R1B~0_combout\ & ( (!\IR2_mux|result[0]~0_combout\ & (\Control|R1B~1_combout\)) # (\IR2_mux|result[0]~0_combout\ & (((!\IR2_mux|result[1]~1_combout\ & !\Control|R1B~2_combout\)))) ) ) # ( !\Control|R1B~0_combout\ & ( 
-- (!\IR2_mux|result[1]~1_combout\ & (\IR2_mux|result[0]~0_combout\ & !\Control|R1B~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000001011100010100000101110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_R1B~1_combout\,
	datab => \IR2_mux|ALT_INV_result[1]~1_combout\,
	datac => \IR2_mux|ALT_INV_result[0]~0_combout\,
	datad => \Control|ALT_INV_R1B~2_combout\,
	dataf => \Control|ALT_INV_R1B~0_combout\,
	combout => \Control|Mux1~1_combout\);

-- Location: MLABCELL_X6_Y2_N30
\Control|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux1~3_combout\ = (\IR2_mux|result[0]~0_combout\ & (!\IR_reg1reg|q\(1) & !\Control|R1B~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR2_mux|ALT_INV_result[0]~0_combout\,
	datab => \IR_reg1reg|ALT_INV_q\(1),
	datac => \Control|ALT_INV_R1B~2_combout\,
	combout => \Control|Mux1~3_combout\);

-- Location: MLABCELL_X6_Y2_N36
\Control|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux1~4_combout\ = ( \IR2_mux|result[3]~3_combout\ & ( \Control|Mux1~3_combout\ & ( (!\IR2_mux|result[2]~2_combout\ & (\Control|Mux1~0_combout\)) # (\IR2_mux|result[2]~2_combout\ & ((\Control|Mux1~1_combout\))) ) ) ) # ( 
-- !\IR2_mux|result[3]~3_combout\ & ( \Control|Mux1~3_combout\ & ( (\IR2_mux|result[2]~2_combout\) # (\Control|Mux1~2_combout\) ) ) ) # ( \IR2_mux|result[3]~3_combout\ & ( !\Control|Mux1~3_combout\ & ( (!\IR2_mux|result[2]~2_combout\ & 
-- (\Control|Mux1~0_combout\)) # (\IR2_mux|result[2]~2_combout\ & ((\Control|Mux1~1_combout\))) ) ) ) # ( !\IR2_mux|result[3]~3_combout\ & ( !\Control|Mux1~3_combout\ & ( (\Control|Mux1~2_combout\ & !\IR2_mux|result[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_Mux1~0_combout\,
	datab => \Control|ALT_INV_Mux1~2_combout\,
	datac => \IR2_mux|ALT_INV_result[2]~2_combout\,
	datad => \Control|ALT_INV_Mux1~1_combout\,
	datae => \IR2_mux|ALT_INV_result[3]~3_combout\,
	dataf => \Control|ALT_INV_Mux1~3_combout\,
	combout => \Control|Mux1~4_combout\);

-- Location: FF_X6_Y2_N38
\Control|R1B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux1~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|R1B~q\);

-- Location: FF_X7_Y5_N55
\R1|q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[1]~6_combout\,
	asdata => \ALUOut_reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q[1]~DUPLICATE_q\);

-- Location: FF_X8_Y5_N2
\RF_block|k2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(2));

-- Location: FF_X7_Y5_N38
\RF_block|k1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(2));

-- Location: MLABCELL_X6_Y4_N9
\RF_block|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|Decoder0~0_combout\ = ( \Control|RFWrite~q\ & ( !\IR_reg4reg|q\(7) & ( (!\Control|RwSel~q\ & !\IR_reg4reg|q[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_RwSel~q\,
	datac => \IR_reg4reg|ALT_INV_q[6]~DUPLICATE_q\,
	datae => \Control|ALT_INV_RFWrite~q\,
	dataf => \IR_reg4reg|ALT_INV_q\(7),
	combout => \RF_block|Decoder0~0_combout\);

-- Location: FF_X8_Y5_N31
\RF_block|k0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(2));

-- Location: FF_X7_Y5_N22
\RF_block|k3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(2));

-- Location: LABCELL_X7_Y5_N48
\R1B_mux|result[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[2]~5_combout\ = ( \RF_block|k0\(2) & ( \RF_block|k3\(2) & ( (!\R1Sel_mux|result[1]~1_combout\ & (((\R1Sel_mux|result[0]~0_combout\) # (\RF_block|k1\(2))))) # (\R1Sel_mux|result[1]~1_combout\ & (((!\R1Sel_mux|result[0]~0_combout\)) # 
-- (\RF_block|k2\(2)))) ) ) ) # ( !\RF_block|k0\(2) & ( \RF_block|k3\(2) & ( (!\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k1\(2) & !\R1Sel_mux|result[0]~0_combout\)))) # (\R1Sel_mux|result[1]~1_combout\ & (((!\R1Sel_mux|result[0]~0_combout\)) # 
-- (\RF_block|k2\(2)))) ) ) ) # ( \RF_block|k0\(2) & ( !\RF_block|k3\(2) & ( (!\R1Sel_mux|result[1]~1_combout\ & (((\R1Sel_mux|result[0]~0_combout\) # (\RF_block|k1\(2))))) # (\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k2\(2) & 
-- ((\R1Sel_mux|result[0]~0_combout\)))) ) ) ) # ( !\RF_block|k0\(2) & ( !\RF_block|k3\(2) & ( (!\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k1\(2) & !\R1Sel_mux|result[0]~0_combout\)))) # (\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k2\(2) & 
-- ((\R1Sel_mux|result[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k2\(2),
	datab => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datac => \RF_block|ALT_INV_k1\(2),
	datad => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datae => \RF_block|ALT_INV_k0\(2),
	dataf => \RF_block|ALT_INV_k3\(2),
	combout => \R1B_mux|result[2]~5_combout\);

-- Location: FF_X7_Y5_N50
\R1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[2]~5_combout\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(2));

-- Location: FF_X8_Y5_N28
\RF_block|k2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(3));

-- Location: FF_X7_Y5_N5
\RF_block|k1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(3));

-- Location: FF_X8_Y5_N59
\RF_block|k0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(3));

-- Location: FF_X7_Y5_N34
\RF_block|k3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(3));

-- Location: LABCELL_X7_Y5_N12
\R1B_mux|result[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[3]~7_combout\ = ( \RF_block|k0\(3) & ( \RF_block|k3\(3) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\R1Sel_mux|result[1]~1_combout\) # (\RF_block|k1\(3))))) # (\R1Sel_mux|result[0]~0_combout\ & (((!\R1Sel_mux|result[1]~1_combout\)) # 
-- (\RF_block|k2\(3)))) ) ) ) # ( !\RF_block|k0\(3) & ( \RF_block|k3\(3) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\R1Sel_mux|result[1]~1_combout\) # (\RF_block|k1\(3))))) # (\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k2\(3) & 
-- ((\R1Sel_mux|result[1]~1_combout\)))) ) ) ) # ( \RF_block|k0\(3) & ( !\RF_block|k3\(3) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\RF_block|k1\(3) & !\R1Sel_mux|result[1]~1_combout\)))) # (\R1Sel_mux|result[0]~0_combout\ & 
-- (((!\R1Sel_mux|result[1]~1_combout\)) # (\RF_block|k2\(3)))) ) ) ) # ( !\RF_block|k0\(3) & ( !\RF_block|k3\(3) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\RF_block|k1\(3) & !\R1Sel_mux|result[1]~1_combout\)))) # (\R1Sel_mux|result[0]~0_combout\ & 
-- (\RF_block|k2\(3) & ((\R1Sel_mux|result[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datab => \RF_block|ALT_INV_k2\(3),
	datac => \RF_block|ALT_INV_k1\(3),
	datad => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datae => \RF_block|ALT_INV_k0\(3),
	dataf => \RF_block|ALT_INV_k3\(3),
	combout => \R1B_mux|result[3]~7_combout\);

-- Location: FF_X7_Y5_N14
\R1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[3]~7_combout\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(3));

-- Location: LABCELL_X7_Y4_N39
\RF_block|k0[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k0[4]~feeder_combout\ = ( \ALUOut_reg|q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q\(4),
	combout => \RF_block|k0[4]~feeder_combout\);

-- Location: FF_X7_Y4_N41
\RF_block|k0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k0[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(4));

-- Location: FF_X8_Y4_N1
\RF_block|k2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(4));

-- Location: LABCELL_X7_Y4_N48
\RF_block|k1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k1[4]~feeder_combout\ = ( \ALUOut_reg|q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q\(4),
	combout => \RF_block|k1[4]~feeder_combout\);

-- Location: FF_X7_Y4_N49
\RF_block|k1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k1[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(4));

-- Location: MLABCELL_X8_Y4_N54
\R1B_mux|result[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[4]~3_combout\ = ( \RF_block|k2\(4) & ( \RF_block|k1\(4) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\) # ((\RF_block|k0\(4))))) # (\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k3\(4))) # 
-- (\R1Sel_mux|result[0]~0_combout\))) ) ) ) # ( !\RF_block|k2\(4) & ( \RF_block|k1\(4) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\) # ((\RF_block|k0\(4))))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k3\(4)))) ) ) ) # ( \RF_block|k2\(4) & ( !\RF_block|k1\(4) & ( (!\R1Sel_mux|result[1]~1_combout\ & (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(4))))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (((\RF_block|k3\(4))) # (\R1Sel_mux|result[0]~0_combout\))) ) ) ) # ( !\RF_block|k2\(4) & ( !\RF_block|k1\(4) & ( (!\R1Sel_mux|result[1]~1_combout\ & (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(4))))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k3\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datab => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datac => \RF_block|ALT_INV_k3\(4),
	datad => \RF_block|ALT_INV_k0\(4),
	datae => \RF_block|ALT_INV_k2\(4),
	dataf => \RF_block|ALT_INV_k1\(4),
	combout => \R1B_mux|result[4]~3_combout\);

-- Location: FF_X8_Y4_N55
\R1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[4]~3_combout\,
	asdata => \ALUOut_reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(4));

-- Location: LABCELL_X7_Y4_N51
\RF_block|k1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k1[5]~feeder_combout\ = ( \ALUOut_reg|q[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q[5]~DUPLICATE_q\,
	combout => \RF_block|k1[5]~feeder_combout\);

-- Location: FF_X7_Y4_N52
\RF_block|k1[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k1[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1[5]~DUPLICATE_q\);

-- Location: FF_X9_Y4_N50
\RF_block|k0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(5));

-- Location: FF_X9_Y4_N23
\RF_block|k2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(5));

-- Location: FF_X8_Y4_N28
\RF_block|k3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(5));

-- Location: MLABCELL_X8_Y4_N36
\R1B_mux|result[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[5]~1_combout\ = ( \RF_block|k2\(5) & ( \RF_block|k3\(5) & ( ((!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k1[5]~DUPLICATE_q\)) # (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(5))))) # (\R1Sel_mux|result[1]~1_combout\) ) ) ) # ( 
-- !\RF_block|k2\(5) & ( \RF_block|k3\(5) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k1[5]~DUPLICATE_q\)) # (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(5)))))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (!\R1Sel_mux|result[0]~0_combout\)) ) ) ) # ( \RF_block|k2\(5) & ( !\RF_block|k3\(5) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k1[5]~DUPLICATE_q\)) # (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(5)))))) 
-- # (\R1Sel_mux|result[1]~1_combout\ & (\R1Sel_mux|result[0]~0_combout\)) ) ) ) # ( !\RF_block|k2\(5) & ( !\RF_block|k3\(5) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k1[5]~DUPLICATE_q\)) # 
-- (\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k0\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datab => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datac => \RF_block|ALT_INV_k1[5]~DUPLICATE_q\,
	datad => \RF_block|ALT_INV_k0\(5),
	datae => \RF_block|ALT_INV_k2\(5),
	dataf => \RF_block|ALT_INV_k3\(5),
	combout => \R1B_mux|result[5]~1_combout\);

-- Location: FF_X8_Y4_N37
\R1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[5]~1_combout\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(5));

-- Location: M10K_X5_Y5_N0
\DataMem|inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000A0000A0000A0000A000010000A0000A0000A000A5000C60006B000D8000F8000C4000580000F00056000140007F000F60000600056",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory:DataMem|DualMem:inst|altsyncram:altsyncram_component|altsyncram_cve2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \Control|MemWrite~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	portadatain => \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X6_Y5_N3
\ALUOut_reg|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[6]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \ALUOut_reg|q[6]~feeder_combout\);

-- Location: LABCELL_X4_Y2_N51
\Control|Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Decoder2~1_combout\ = ( \IR_reg2reg|q\(3) & ( (!\IR_reg2reg|q\(0) & (!\IR_reg2reg|q\(2) & \IR_reg2reg|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(0),
	datab => \IR_reg2reg|ALT_INV_q\(2),
	datac => \IR_reg2reg|ALT_INV_q\(1),
	dataf => \IR_reg2reg|ALT_INV_q\(3),
	combout => \Control|Decoder2~1_combout\);

-- Location: FF_X4_Y2_N53
\Control|ALUsel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Decoder2~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUsel~q\);

-- Location: FF_X6_Y5_N4
\ALUOut_reg|q[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[6]~feeder_combout\,
	asdata => \ALU|tmp_out[6]~14_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q[6]~DUPLICATE_q\);

-- Location: LABCELL_X9_Y4_N3
\RF_block|k0[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k0[6]~feeder_combout\ = ( \ALUOut_reg|q[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q[6]~DUPLICATE_q\,
	combout => \RF_block|k0[6]~feeder_combout\);

-- Location: FF_X9_Y4_N4
\RF_block|k0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k0[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(6));

-- Location: FF_X8_Y4_N44
\RF_block|k2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(6));

-- Location: FF_X6_Y4_N4
\RF_block|k1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(6));

-- Location: FF_X8_Y4_N34
\RF_block|k3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(6));

-- Location: MLABCELL_X8_Y4_N3
\R1B_mux|result[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[6]~2_combout\ = ( \RF_block|k3\(6) & ( \R1Sel_mux|result[0]~0_combout\ & ( (!\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k0\(6))) # (\R1Sel_mux|result[1]~1_combout\ & ((\RF_block|k2\(6)))) ) ) ) # ( !\RF_block|k3\(6) & ( 
-- \R1Sel_mux|result[0]~0_combout\ & ( (!\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k0\(6))) # (\R1Sel_mux|result[1]~1_combout\ & ((\RF_block|k2\(6)))) ) ) ) # ( \RF_block|k3\(6) & ( !\R1Sel_mux|result[0]~0_combout\ & ( (\RF_block|k1\(6)) # 
-- (\R1Sel_mux|result[1]~1_combout\) ) ) ) # ( !\RF_block|k3\(6) & ( !\R1Sel_mux|result[0]~0_combout\ & ( (!\R1Sel_mux|result[1]~1_combout\ & \RF_block|k1\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datab => \RF_block|ALT_INV_k0\(6),
	datac => \RF_block|ALT_INV_k2\(6),
	datad => \RF_block|ALT_INV_k1\(6),
	datae => \RF_block|ALT_INV_k3\(6),
	dataf => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	combout => \R1B_mux|result[6]~2_combout\);

-- Location: MLABCELL_X6_Y4_N45
\R1|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|q[6]~feeder_combout\ = ( \R1B_mux|result[6]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1B_mux|ALT_INV_result[6]~2_combout\,
	combout => \R1|q[6]~feeder_combout\);

-- Location: FF_X6_Y4_N46
\R1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1|q[6]~feeder_combout\,
	asdata => \ALUOut_reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(6));

-- Location: LABCELL_X4_Y5_N6
\ALUOut_reg|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[4]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \ALUOut_reg|q[4]~feeder_combout\);

-- Location: FF_X4_Y5_N7
\ALUOut_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[4]~feeder_combout\,
	asdata => \ALU|tmp_out[4]~33_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(4));

-- Location: FF_X8_Y4_N23
\RF_block|k3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(4));

-- Location: LABCELL_X7_Y4_N18
\R2B_mux|result[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[4]~6_combout\ = ( \RF_block|k1\(4) & ( \RF_block|k0\(4) & ( (!\IR_reg2reg|q\(5)) # ((!\IR_reg2reg|q\(4) & ((\RF_block|k2\(4)))) # (\IR_reg2reg|q\(4) & (\RF_block|k3\(4)))) ) ) ) # ( !\RF_block|k1\(4) & ( \RF_block|k0\(4) & ( 
-- (!\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5)) # (\RF_block|k2\(4))))) # (\IR_reg2reg|q\(4) & (\RF_block|k3\(4) & (\IR_reg2reg|q\(5)))) ) ) ) # ( \RF_block|k1\(4) & ( !\RF_block|k0\(4) & ( (!\IR_reg2reg|q\(4) & (((\IR_reg2reg|q\(5) & \RF_block|k2\(4))))) # 
-- (\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5))) # (\RF_block|k3\(4)))) ) ) ) # ( !\RF_block|k1\(4) & ( !\RF_block|k0\(4) & ( (\IR_reg2reg|q\(5) & ((!\IR_reg2reg|q\(4) & ((\RF_block|k2\(4)))) # (\IR_reg2reg|q\(4) & (\RF_block|k3\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k3\(4),
	datab => \IR_reg2reg|ALT_INV_q\(4),
	datac => \IR_reg2reg|ALT_INV_q\(5),
	datad => \RF_block|ALT_INV_k2\(4),
	datae => \RF_block|ALT_INV_k1\(4),
	dataf => \RF_block|ALT_INV_k0\(4),
	combout => \R2B_mux|result[4]~6_combout\);

-- Location: FF_X7_Y4_N20
\R2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[4]~6_combout\,
	asdata => \ALUOut_reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(4));

-- Location: MLABCELL_X6_Y4_N54
\ALU2_mux|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux3~0_combout\ = ( \ALUOut_reg|q\(4) & ( \Control|ALU2\(2) & ( (\Control|ALU2\(0) & \Control|ALU2\(1)) ) ) ) # ( \ALUOut_reg|q\(4) & ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(0) & ((!\Control|ALU2\(1) & (\R2|q\(4))) # (\Control|ALU2\(1) & 
-- ((\IR_reg3reg|q\(7)))))) # (\Control|ALU2\(0) & (((!\Control|ALU2\(1) & \IR_reg3reg|q\(7))))) ) ) ) # ( !\ALUOut_reg|q\(4) & ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(0) & ((!\Control|ALU2\(1) & (\R2|q\(4))) # (\Control|ALU2\(1) & ((\IR_reg3reg|q\(7)))))) 
-- # (\Control|ALU2\(0) & (((!\Control|ALU2\(1) & \IR_reg3reg|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001111010001000000111101000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2\(0),
	datab => \R2|ALT_INV_q\(4),
	datac => \Control|ALT_INV_ALU2\(1),
	datad => \IR_reg3reg|ALT_INV_q\(7),
	datae => \ALUOut_reg|ALT_INV_q\(4),
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \ALU2_mux|Mux3~0_combout\);

-- Location: MLABCELL_X6_Y5_N27
\ALUOut_reg|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[3]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \ALUOut_reg|q[3]~feeder_combout\);

-- Location: FF_X6_Y5_N28
\ALUOut_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[3]~feeder_combout\,
	asdata => \ALU|tmp_out[3]~32_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(3));

-- Location: LABCELL_X4_Y5_N36
\ALU2_mux|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux7~3_combout\ = ( \Control|ALU2\(2) & ( (\Control|ALU2[1]~DUPLICATE_q\ & \Control|ALU2\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	datad => \Control|ALT_INV_ALU2\(0),
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \ALU2_mux|Mux7~3_combout\);

-- Location: FF_X7_Y5_N4
\RF_block|k1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1[3]~DUPLICATE_q\);

-- Location: FF_X8_Y5_N29
\RF_block|k2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2[3]~DUPLICATE_q\);

-- Location: FF_X8_Y5_N58
\RF_block|k0[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0[3]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y5_N15
\R2B_mux|result[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[3]~7_combout\ = ( \RF_block|k3\(3) & ( \RF_block|k0[3]~DUPLICATE_q\ & ( (!\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5)) # ((\RF_block|k2[3]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (((\RF_block|k1[3]~DUPLICATE_q\)) # (\IR_reg2reg|q\(5)))) ) ) ) 
-- # ( !\RF_block|k3\(3) & ( \RF_block|k0[3]~DUPLICATE_q\ & ( (!\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5)) # ((\RF_block|k2[3]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (!\IR_reg2reg|q\(5) & (\RF_block|k1[3]~DUPLICATE_q\))) ) ) ) # ( \RF_block|k3\(3) & ( 
-- !\RF_block|k0[3]~DUPLICATE_q\ & ( (!\IR_reg2reg|q\(4) & (\IR_reg2reg|q\(5) & ((\RF_block|k2[3]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (((\RF_block|k1[3]~DUPLICATE_q\)) # (\IR_reg2reg|q\(5)))) ) ) ) # ( !\RF_block|k3\(3) & ( !\RF_block|k0[3]~DUPLICATE_q\ 
-- & ( (!\IR_reg2reg|q\(4) & (\IR_reg2reg|q\(5) & ((\RF_block|k2[3]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (!\IR_reg2reg|q\(5) & (\RF_block|k1[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(4),
	datab => \IR_reg2reg|ALT_INV_q\(5),
	datac => \RF_block|ALT_INV_k1[3]~DUPLICATE_q\,
	datad => \RF_block|ALT_INV_k2[3]~DUPLICATE_q\,
	datae => \RF_block|ALT_INV_k3\(3),
	dataf => \RF_block|ALT_INV_k0[3]~DUPLICATE_q\,
	combout => \R2B_mux|result[3]~7_combout\);

-- Location: FF_X8_Y5_N17
\R2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[3]~7_combout\,
	asdata => \ALUOut_reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(3));

-- Location: LABCELL_X4_Y5_N42
\ALU2_mux|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux4~0_combout\ = ( !\Control|ALU2\(2) & ( \IR_reg3reg|q\(7) & ( (!\Control|ALU2\(0) & ((!\Control|ALU2[1]~DUPLICATE_q\ & ((\R2|q\(3)))) # (\Control|ALU2[1]~DUPLICATE_q\ & (\IR_reg3reg|q\(6))))) # (\Control|ALU2\(0) & 
-- (((!\Control|ALU2[1]~DUPLICATE_q\)))) ) ) ) # ( !\Control|ALU2\(2) & ( !\IR_reg3reg|q\(7) & ( (!\Control|ALU2\(0) & ((!\Control|ALU2[1]~DUPLICATE_q\ & ((\R2|q\(3)))) # (\Control|ALU2[1]~DUPLICATE_q\ & (\IR_reg3reg|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000000000000000000110100111101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(6),
	datab => \Control|ALT_INV_ALU2\(0),
	datac => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	datad => \R2|ALT_INV_q\(3),
	datae => \Control|ALT_INV_ALU2\(2),
	dataf => \IR_reg3reg|ALT_INV_q\(7),
	combout => \ALU2_mux|Mux4~0_combout\);

-- Location: LABCELL_X4_Y5_N3
\ALU2_mux|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux4~1_combout\ = ( \ALU2_mux|Mux7~3_combout\ & ( \ALU2_mux|Mux4~0_combout\ & ( \ALUOut_reg|q\(3) ) ) ) # ( !\ALU2_mux|Mux7~3_combout\ & ( \ALU2_mux|Mux4~0_combout\ ) ) # ( \ALU2_mux|Mux7~3_combout\ & ( !\ALU2_mux|Mux4~0_combout\ & ( 
-- \ALUOut_reg|q\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut_reg|ALT_INV_q\(3),
	datae => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux4~0_combout\,
	combout => \ALU2_mux|Mux4~1_combout\);

-- Location: LABCELL_X4_Y5_N21
\ALUOut_reg|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[1]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \ALUOut_reg|q[1]~feeder_combout\);

-- Location: FF_X4_Y5_N22
\ALUOut_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[1]~feeder_combout\,
	asdata => \ALU|tmp_out[1]~9_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(1));

-- Location: FF_X7_Y5_N8
\RF_block|k1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(1));

-- Location: FF_X7_Y5_N25
\RF_block|k3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(1));

-- Location: MLABCELL_X8_Y5_N36
\RF_block|k2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k2[1]~feeder_combout\ = ( \ALUOut_reg|q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q\(1),
	combout => \RF_block|k2[1]~feeder_combout\);

-- Location: FF_X8_Y5_N38
\RF_block|k2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k2[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(1));

-- Location: MLABCELL_X8_Y5_N6
\RF_block|k0[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RF_block|k0[1]~feeder_combout\ = ( \ALUOut_reg|q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALUOut_reg|ALT_INV_q\(1),
	combout => \RF_block|k0[1]~feeder_combout\);

-- Location: FF_X8_Y5_N7
\RF_block|k0[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k0[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0[1]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y5_N18
\R2B_mux|result[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[1]~0_combout\ = ( \RF_block|k2\(1) & ( \RF_block|k0[1]~DUPLICATE_q\ & ( (!\IR_reg2reg|q\(4)) # ((!\IR_reg2reg|q\(5) & (\RF_block|k1\(1))) # (\IR_reg2reg|q\(5) & ((\RF_block|k3\(1))))) ) ) ) # ( !\RF_block|k2\(1) & ( 
-- \RF_block|k0[1]~DUPLICATE_q\ & ( (!\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5))))) # (\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5) & (\RF_block|k1\(1))) # (\IR_reg2reg|q\(5) & ((\RF_block|k3\(1)))))) ) ) ) # ( \RF_block|k2\(1) & ( !\RF_block|k0[1]~DUPLICATE_q\ 
-- & ( (!\IR_reg2reg|q\(4) & (((\IR_reg2reg|q\(5))))) # (\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5) & (\RF_block|k1\(1))) # (\IR_reg2reg|q\(5) & ((\RF_block|k3\(1)))))) ) ) ) # ( !\RF_block|k2\(1) & ( !\RF_block|k0[1]~DUPLICATE_q\ & ( (\IR_reg2reg|q\(4) & 
-- ((!\IR_reg2reg|q\(5) & (\RF_block|k1\(1))) # (\IR_reg2reg|q\(5) & ((\RF_block|k3\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k1\(1),
	datab => \RF_block|ALT_INV_k3\(1),
	datac => \IR_reg2reg|ALT_INV_q\(4),
	datad => \IR_reg2reg|ALT_INV_q\(5),
	datae => \RF_block|ALT_INV_k2\(1),
	dataf => \RF_block|ALT_INV_k0[1]~DUPLICATE_q\,
	combout => \R2B_mux|result[1]~0_combout\);

-- Location: MLABCELL_X3_Y4_N3
\R2|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|q[1]~feeder_combout\ = \R2B_mux|result[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2B_mux|ALT_INV_result[1]~0_combout\,
	combout => \R2|q[1]~feeder_combout\);

-- Location: FF_X3_Y4_N4
\R2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2|q[1]~feeder_combout\,
	asdata => \ALUOut_reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(1));

-- Location: FF_X4_Y4_N35
\IR_reg3reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(5));

-- Location: LABCELL_X4_Y4_N48
\ALU2_mux|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux6~1_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (\IR_reg3reg|q\(4) & !\Control|ALU2\(2)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (\IR_reg3reg|q\(4) & 
-- !\Control|ALU2\(2)) ) ) ) # ( \Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (\IR_reg3reg|q\(5) & !\Control|ALU2\(2)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (\R2|q\(1) & !\Control|ALU2\(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(4),
	datab => \R2|ALT_INV_q\(1),
	datac => \IR_reg3reg|ALT_INV_q\(5),
	datad => \Control|ALT_INV_ALU2\(2),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux6~1_combout\);

-- Location: LABCELL_X4_Y4_N24
\ALU2_mux|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux6~2_combout\ = ( \ALU2_mux|Mux6~1_combout\ ) # ( !\ALU2_mux|Mux6~1_combout\ & ( \ALU2_mux|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU2_mux|ALT_INV_Mux6~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux6~1_combout\,
	combout => \ALU2_mux|Mux6~2_combout\);

-- Location: MLABCELL_X6_Y5_N18
\ALUOut_reg|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[7]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \ALUOut_reg|q[7]~feeder_combout\);

-- Location: FF_X6_Y5_N19
\ALUOut_reg|q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[7]~feeder_combout\,
	asdata => \ALU|N~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q[7]~DUPLICATE_q\);

-- Location: FF_X10_Y4_N13
\RF_block|k0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(7));

-- Location: FF_X8_Y4_N11
\RF_block|k3[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3[7]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y4_N42
\R1B_mux|result[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[7]~0_combout\ = ( \RF_block|k2\(7) & ( \RF_block|k1\(7) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\) # ((\RF_block|k0\(7))))) # (\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k3[7]~DUPLICATE_q\)) # 
-- (\R1Sel_mux|result[0]~0_combout\))) ) ) ) # ( !\RF_block|k2\(7) & ( \RF_block|k1\(7) & ( (!\R1Sel_mux|result[1]~1_combout\ & ((!\R1Sel_mux|result[0]~0_combout\) # ((\RF_block|k0\(7))))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (!\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k3[7]~DUPLICATE_q\)))) ) ) ) # ( \RF_block|k2\(7) & ( !\RF_block|k1\(7) & ( (!\R1Sel_mux|result[1]~1_combout\ & (\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k0\(7)))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (((\RF_block|k3[7]~DUPLICATE_q\)) # (\R1Sel_mux|result[0]~0_combout\))) ) ) ) # ( !\RF_block|k2\(7) & ( !\RF_block|k1\(7) & ( (!\R1Sel_mux|result[1]~1_combout\ & (\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k0\(7)))) # (\R1Sel_mux|result[1]~1_combout\ & 
-- (!\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k3[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datab => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datac => \RF_block|ALT_INV_k0\(7),
	datad => \RF_block|ALT_INV_k3[7]~DUPLICATE_q\,
	datae => \RF_block|ALT_INV_k2\(7),
	dataf => \RF_block|ALT_INV_k1\(7),
	combout => \R1B_mux|result[7]~0_combout\);

-- Location: MLABCELL_X6_Y4_N12
\R1|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|q[7]~feeder_combout\ = ( \R1B_mux|result[7]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1B_mux|ALT_INV_result[7]~0_combout\,
	combout => \R1|q[7]~feeder_combout\);

-- Location: FF_X6_Y4_N13
\R1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1|q[7]~feeder_combout\,
	asdata => \ALUOut_reg|q[7]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(7));

-- Location: FF_X6_Y3_N22
\PC2reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(7));

-- Location: FF_X6_Y5_N53
\PC3reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(7));

-- Location: FF_X6_Y5_N20
\ALUOut_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[7]~feeder_combout\,
	asdata => \ALU|N~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(7));

-- Location: MLABCELL_X6_Y5_N51
\ALU1_mux|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux0~0_combout\ = ( \ALUOut_reg|q\(7) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & (\R1|q\(7)))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0)) # ((\PC3reg|q\(7))))) ) ) # ( !\ALUOut_reg|q\(7) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & 
-- (\R1|q\(7)))) # (\Control|ALU1\(1) & (\Control|ALU1\(0) & ((\PC3reg|q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \R1|ALT_INV_q\(7),
	datad => \PC3reg|ALT_INV_q\(7),
	dataf => \ALUOut_reg|ALT_INV_q\(7),
	combout => \ALU1_mux|Mux0~0_combout\);

-- Location: FF_X3_Y2_N59
\Control|ALUop[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Decoder1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUop[2]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y3_N15
\ALU|N~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|N~1_combout\ = ( !\Control|ALUop[2]~DUPLICATE_q\ & ( (!\Control|ALUop\(0) & \Control|ALUop\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALUop\(0),
	datab => \Control|ALT_INV_ALUop\(1),
	dataf => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	combout => \ALU|N~1_combout\);

-- Location: LABCELL_X7_Y3_N42
\ALU|N~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|N~2_combout\ = ( \ALU1_mux|Mux0~0_combout\ & ( (!\ALU|N~1_combout\ & ((!\ALU|Equal0~0_combout\) # (\ALU2_mux|Mux0~0_combout\))) ) ) # ( !\ALU1_mux|Mux0~0_combout\ & ( (!\ALU|Equal0~0_combout\ & ((!\ALU|N~1_combout\) # (!\ALU2_mux|Mux0~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000100011001000110010101000101010001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Equal0~0_combout\,
	datab => \ALU|ALT_INV_N~1_combout\,
	datac => \ALU2_mux|ALT_INV_Mux0~0_combout\,
	datae => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	combout => \ALU|N~2_combout\);

-- Location: LABCELL_X7_Y3_N51
\ALU|N~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|N~3_combout\ = ( \ALU|N~2_combout\ & ( (!\ALU|N~0_combout\) # (((!\ALU1_mux|Mux0~0_combout\) # (\ALU2_mux|Mux6~2_combout\)) # (\ALU2_mux|Mux5~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_N~0_combout\,
	datab => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datac => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	datad => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU|ALT_INV_N~2_combout\,
	combout => \ALU|N~3_combout\);

-- Location: FF_X6_Y5_N5
\ALUOut_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[6]~feeder_combout\,
	asdata => \ALU|tmp_out[6]~14_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(6));

-- Location: MLABCELL_X6_Y5_N21
\PC2reg|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC2reg|q[6]~feeder_combout\ = \PC1reg|q\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC1reg|ALT_INV_q\(6),
	combout => \PC2reg|q[6]~feeder_combout\);

-- Location: FF_X6_Y5_N23
\PC2reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \PC2reg|q[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(6));

-- Location: FF_X6_Y5_N50
\PC3reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(6));

-- Location: MLABCELL_X6_Y5_N48
\ALU1_mux|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux1~0_combout\ = ( \R1|q\(6) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0) & (\ALUOut_reg|q\(6))) # (\Control|ALU1\(0) & ((\PC3reg|q\(6)))))) ) ) # ( !\R1|q\(6) & ( (\Control|ALU1\(1) & 
-- ((!\Control|ALU1\(0) & (\ALUOut_reg|q\(6))) # (\Control|ALU1\(0) & ((\PC3reg|q\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \ALUOut_reg|ALT_INV_q\(6),
	datad => \PC3reg|ALT_INV_q\(6),
	dataf => \R1|ALT_INV_q\(6),
	combout => \ALU1_mux|Mux1~0_combout\);

-- Location: FF_X6_Y5_N44
\ALUOut_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[5]~feeder_combout\,
	asdata => \ALU|tmp_out[5]~16_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(5));

-- Location: FF_X6_Y3_N28
\PC2reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(5));

-- Location: FF_X6_Y5_N32
\PC3reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(5));

-- Location: MLABCELL_X6_Y5_N30
\ALU1_mux|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux2~0_combout\ = ( \PC3reg|q\(5) & ( \Control|ALU1\(0) & ( \Control|ALU1\(1) ) ) ) # ( \PC3reg|q\(5) & ( !\Control|ALU1\(0) & ( (!\Control|ALU1\(1) & (\R1|q\(5))) # (\Control|ALU1\(1) & ((\ALUOut_reg|q\(5)))) ) ) ) # ( !\PC3reg|q\(5) & ( 
-- !\Control|ALU1\(0) & ( (!\Control|ALU1\(1) & (\R1|q\(5))) # (\Control|ALU1\(1) & ((\ALUOut_reg|q\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_q\(5),
	datab => \ALUOut_reg|ALT_INV_q\(5),
	datac => \Control|ALT_INV_ALU1\(1),
	datae => \PC3reg|ALT_INV_q\(5),
	dataf => \Control|ALT_INV_ALU1\(0),
	combout => \ALU1_mux|Mux2~0_combout\);

-- Location: LABCELL_X7_Y3_N36
\ALU|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftLeft0~0_combout\ = ( \ALU1_mux|Mux0~0_combout\ & ( \ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux6~2_combout\ & (((!\ALU2_mux|Mux7~2_combout\)) # (\ALU1_mux|Mux1~0_combout\))) # (\ALU2_mux|Mux6~2_combout\ & (((\ALU2_mux|Mux7~2_combout\) # 
-- (\ALU1_mux|Mux2~0_combout\)))) ) ) ) # ( !\ALU1_mux|Mux0~0_combout\ & ( \ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux6~2_combout\ & (\ALU1_mux|Mux1~0_combout\ & ((\ALU2_mux|Mux7~2_combout\)))) # (\ALU2_mux|Mux6~2_combout\ & (((\ALU2_mux|Mux7~2_combout\) # 
-- (\ALU1_mux|Mux2~0_combout\)))) ) ) ) # ( \ALU1_mux|Mux0~0_combout\ & ( !\ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux6~2_combout\ & (((!\ALU2_mux|Mux7~2_combout\)) # (\ALU1_mux|Mux1~0_combout\))) # (\ALU2_mux|Mux6~2_combout\ & (((\ALU1_mux|Mux2~0_combout\ 
-- & !\ALU2_mux|Mux7~2_combout\)))) ) ) ) # ( !\ALU1_mux|Mux0~0_combout\ & ( !\ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux6~2_combout\ & (\ALU1_mux|Mux1~0_combout\ & ((\ALU2_mux|Mux7~2_combout\)))) # (\ALU2_mux|Mux6~2_combout\ & (((\ALU1_mux|Mux2~0_combout\ 
-- & !\ALU2_mux|Mux7~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	datad => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datae => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|ShiftLeft0~0_combout\);

-- Location: FF_X3_Y2_N23
\Control|ALUop[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|WideOr0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUop[1]~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y2_N18
\ALU|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal0~1_combout\ = ( !\Control|ALUop\(0) & ( (!\Control|ALUop[2]~DUPLICATE_q\ & !\Control|ALUop[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	datac => \Control|ALT_INV_ALUop[1]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALUop\(0),
	combout => \ALU|Equal0~1_combout\);

-- Location: MLABCELL_X6_Y4_N42
\ALU2_mux|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux3~1_combout\ = ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(1) & ((!\Control|ALU2\(0) & (\R2|q\(4))) # (\Control|ALU2\(0) & ((\IR_reg3reg|q\(7)))))) # (\Control|ALU2\(1) & (((!\Control|ALU2\(0) & \IR_reg3reg|q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001111010001000000111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2\(1),
	datab => \R2|ALT_INV_q\(4),
	datac => \Control|ALT_INV_ALU2\(0),
	datad => \IR_reg3reg|ALT_INV_q\(7),
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \ALU2_mux|Mux3~1_combout\);

-- Location: FF_X6_Y3_N59
\PC2reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(3));

-- Location: FF_X6_Y5_N11
\PC3reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(3));

-- Location: MLABCELL_X6_Y5_N9
\ALU1_mux|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux4~0_combout\ = ( \ALUOut_reg|q\(3) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & (\R1|q\(3)))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0)) # ((\PC3reg|q\(3))))) ) ) # ( !\ALUOut_reg|q\(3) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & 
-- (\R1|q\(3)))) # (\Control|ALU1\(1) & (\Control|ALU1\(0) & ((\PC3reg|q\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \R1|ALT_INV_q\(3),
	datad => \PC3reg|ALT_INV_q\(3),
	dataf => \ALUOut_reg|ALT_INV_q\(3),
	combout => \ALU1_mux|Mux4~0_combout\);

-- Location: MLABCELL_X6_Y5_N24
\PC2reg|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC2reg|q[2]~feeder_combout\ = ( \PC1reg|q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PC1reg|ALT_INV_q\(2),
	combout => \PC2reg|q[2]~feeder_combout\);

-- Location: FF_X6_Y5_N25
\PC2reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \PC2reg|q[2]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(2));

-- Location: FF_X6_Y5_N17
\PC3reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(2));

-- Location: MLABCELL_X6_Y5_N15
\ALU1_mux|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux5~0_combout\ = ( \ALUOut_reg|q\(2) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & (\R1|q\(2)))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0)) # ((\PC3reg|q\(2))))) ) ) # ( !\ALUOut_reg|q\(2) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & 
-- (\R1|q\(2)))) # (\Control|ALU1\(1) & (\Control|ALU1\(0) & ((\PC3reg|q\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \R1|ALT_INV_q\(2),
	datad => \PC3reg|ALT_INV_q\(2),
	dataf => \ALUOut_reg|ALT_INV_q\(2),
	combout => \ALU1_mux|Mux5~0_combout\);

-- Location: MLABCELL_X8_Y5_N51
\R2B_mux|result[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[2]~2_combout\ = ( \RF_block|k2\(2) & ( \RF_block|k0\(2) & ( (!\IR_reg2reg|q\(4)) # ((!\IR_reg2reg|q\(5) & ((\RF_block|k1\(2)))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(2)))) ) ) ) # ( !\RF_block|k2\(2) & ( \RF_block|k0\(2) & ( 
-- (!\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4)) # (\RF_block|k1\(2))))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(2) & ((\IR_reg2reg|q\(4))))) ) ) ) # ( \RF_block|k2\(2) & ( !\RF_block|k0\(2) & ( (!\IR_reg2reg|q\(5) & (((\RF_block|k1\(2) & \IR_reg2reg|q\(4))))) 
-- # (\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4))) # (\RF_block|k3\(2)))) ) ) ) # ( !\RF_block|k2\(2) & ( !\RF_block|k0\(2) & ( (\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5) & ((\RF_block|k1\(2)))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k3\(2),
	datab => \IR_reg2reg|ALT_INV_q\(5),
	datac => \RF_block|ALT_INV_k1\(2),
	datad => \IR_reg2reg|ALT_INV_q\(4),
	datae => \RF_block|ALT_INV_k2\(2),
	dataf => \RF_block|ALT_INV_k0\(2),
	combout => \R2B_mux|result[2]~2_combout\);

-- Location: LABCELL_X7_Y4_N33
\R2|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|q[2]~feeder_combout\ = \R2B_mux|result[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \R2B_mux|ALT_INV_result[2]~2_combout\,
	combout => \R2|q[2]~feeder_combout\);

-- Location: FF_X7_Y4_N35
\R2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2|q[2]~feeder_combout\,
	asdata => \ALUOut_reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(2));

-- Location: LABCELL_X4_Y4_N30
\ALU2_mux|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux5~3_combout\ = ( \Control|ALU2\(2) & ( \IR_reg3reg|q\(5) & ( (\Control|ALU2\(1) & \Control|ALU2\(0)) ) ) ) # ( !\Control|ALU2\(2) & ( \IR_reg3reg|q\(5) & ( ((!\Control|ALU2\(0) & ((\R2|q\(2)))) # (\Control|ALU2\(0) & (\IR_reg3reg|q\(6)))) # 
-- (\Control|ALU2\(1)) ) ) ) # ( !\Control|ALU2\(2) & ( !\IR_reg3reg|q\(5) & ( (!\Control|ALU2\(1) & ((!\Control|ALU2\(0) & ((\R2|q\(2)))) # (\Control|ALU2\(0) & (\IR_reg3reg|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000000000000000001011111011101110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2\(1),
	datab => \IR_reg3reg|ALT_INV_q\(6),
	datac => \R2|ALT_INV_q\(2),
	datad => \Control|ALT_INV_ALU2\(0),
	datae => \Control|ALT_INV_ALU2\(2),
	dataf => \IR_reg3reg|ALT_INV_q\(5),
	combout => \ALU2_mux|Mux5~3_combout\);

-- Location: LABCELL_X4_Y4_N36
\ALU2_mux|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux6~3_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \R2|q\(1) & ( (!\Control|ALU2[1]~DUPLICATE_q\ & (((\IR_reg3reg|q\(5) & !\Control|ALU2\(2))))) # (\Control|ALU2[1]~DUPLICATE_q\ & (\IR_reg3reg|q\(4))) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ 
-- & ( \R2|q\(1) & ( (!\Control|ALU2\(2) & ((!\Control|ALU2[1]~DUPLICATE_q\) # (\IR_reg3reg|q\(4)))) ) ) ) # ( \Control|ALU2[0]~DUPLICATE_q\ & ( !\R2|q\(1) & ( (!\Control|ALU2[1]~DUPLICATE_q\ & (((\IR_reg3reg|q\(5) & !\Control|ALU2\(2))))) # 
-- (\Control|ALU2[1]~DUPLICATE_q\ & (\IR_reg3reg|q\(4))) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( !\R2|q\(1) & ( (\IR_reg3reg|q\(4) & (\Control|ALU2[1]~DUPLICATE_q\ & !\Control|ALU2\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000111010001000111011101000000000001110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(4),
	datab => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	datac => \IR_reg3reg|ALT_INV_q\(5),
	datad => \Control|ALT_INV_ALU2\(2),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \R2|ALT_INV_q\(1),
	combout => \ALU2_mux|Mux6~3_combout\);

-- Location: FF_X6_Y3_N55
\PC2reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(0));

-- Location: FF_X6_Y5_N8
\PC3reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(0));

-- Location: MLABCELL_X6_Y5_N6
\ALU1_mux|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux7~0_combout\ = ( \ALUOut_reg|q\(0) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & (\R1|q\(0)))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0)) # ((\PC3reg|q\(0))))) ) ) # ( !\ALUOut_reg|q\(0) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0) & 
-- (\R1|q\(0)))) # (\Control|ALU1\(1) & (\Control|ALU1\(0) & ((\PC3reg|q\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \R1|ALT_INV_q\(0),
	datad => \PC3reg|ALT_INV_q\(0),
	dataf => \ALUOut_reg|ALT_INV_q\(0),
	combout => \ALU1_mux|Mux7~0_combout\);

-- Location: FF_X4_Y4_N11
\IR_reg3reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR3_mux|result[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(3));

-- Location: LABCELL_X4_Y4_N0
\ALU2_mux|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux7~4_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( !\IR_reg3reg|q\(3) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & !\IR_reg3reg|q\(3)) ) ) ) # ( 
-- \Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (\IR_reg3reg|q\(4) & !\Control|ALU2\(2)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & \R2|q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000100010011001100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(4),
	datab => \Control|ALT_INV_ALU2\(2),
	datac => \R2|ALT_INV_q\(0),
	datad => \IR_reg3reg|ALT_INV_q\(3),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux7~4_combout\);

-- Location: MLABCELL_X3_Y4_N30
\ALU|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~34_cout\ = CARRY(( !\ALU|Equal0~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU|ALT_INV_Equal0~1_combout\,
	cin => GND,
	cout => \ALU|Add0~34_cout\);

-- Location: MLABCELL_X3_Y4_N33
\ALU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_sumout\ = SUM(( \ALU1_mux|Mux7~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux7~4_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(0))))) ) + ( \ALU|Add0~34_cout\ ))
-- \ALU|Add0~6\ = CARRY(( \ALU1_mux|Mux7~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux7~4_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(0))))) ) + ( \ALU|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101100011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut_reg|ALT_INV_q\(0),
	datab => \ALU|ALT_INV_Equal0~1_combout\,
	datac => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	datad => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~4_combout\,
	cin => \ALU|Add0~34_cout\,
	sumout => \ALU|Add0~5_sumout\,
	cout => \ALU|Add0~6\);

-- Location: MLABCELL_X3_Y4_N36
\ALU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_sumout\ = SUM(( \ALU1_mux|Mux6~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux6~3_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(1))))) ) + ( \ALU|Add0~6\ ))
-- \ALU|Add0~10\ = CARRY(( \ALU1_mux|Mux6~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux6~3_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(1))))) ) + ( \ALU|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Equal0~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	datac => \ALUOut_reg|ALT_INV_q\(1),
	datad => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux6~3_combout\,
	cin => \ALU|Add0~6\,
	sumout => \ALU|Add0~9_sumout\,
	cout => \ALU|Add0~10\);

-- Location: MLABCELL_X3_Y4_N39
\ALU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~21_sumout\ = SUM(( \ALU1_mux|Mux5~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux5~3_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(2))))) ) + ( \ALU|Add0~10\ ))
-- \ALU|Add0~22\ = CARRY(( \ALU1_mux|Mux5~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux5~3_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(2))))) ) + ( \ALU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Equal0~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	datac => \ALUOut_reg|ALT_INV_q\(2),
	datad => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux5~3_combout\,
	cin => \ALU|Add0~10\,
	sumout => \ALU|Add0~21_sumout\,
	cout => \ALU|Add0~22\);

-- Location: MLABCELL_X3_Y4_N42
\ALU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~29_sumout\ = SUM(( \ALU1_mux|Mux4~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux4~0_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(3))))) ) + ( \ALU|Add0~22\ ))
-- \ALU|Add0~30\ = CARRY(( \ALU1_mux|Mux4~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux4~0_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(3))))) ) + ( \ALU|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Equal0~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	datac => \ALUOut_reg|ALT_INV_q\(3),
	datad => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux4~0_combout\,
	cin => \ALU|Add0~22\,
	sumout => \ALU|Add0~29_sumout\,
	cout => \ALU|Add0~30\);

-- Location: MLABCELL_X3_Y4_N45
\ALU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~25_sumout\ = SUM(( \ALU1_mux|Mux3~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux3~1_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(4))))) ) + ( \ALU|Add0~30\ ))
-- \ALU|Add0~26\ = CARRY(( \ALU1_mux|Mux3~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (((!\ALU2_mux|Mux7~3_combout\ & ((\ALU2_mux|Mux3~1_combout\))) # (\ALU2_mux|Mux7~3_combout\ & (\ALUOut_reg|q\(4))))) ) + ( \ALU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Equal0~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~3_combout\,
	datac => \ALUOut_reg|ALT_INV_q\(4),
	datad => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux3~1_combout\,
	cin => \ALU|Add0~30\,
	sumout => \ALU|Add0~25_sumout\,
	cout => \ALU|Add0~26\);

-- Location: MLABCELL_X3_Y4_N48
\ALU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~17_sumout\ = SUM(( !\ALU|Equal0~1_combout\ $ (\ALU2_mux|Mux2~0_combout\) ) + ( \ALU1_mux|Mux2~0_combout\ ) + ( \ALU|Add0~26\ ))
-- \ALU|Add0~18\ = CARRY(( !\ALU|Equal0~1_combout\ $ (\ALU2_mux|Mux2~0_combout\) ) + ( \ALU1_mux|Mux2~0_combout\ ) + ( \ALU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU|ALT_INV_Equal0~1_combout\,
	datac => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	datad => \ALU2_mux|ALT_INV_Mux2~0_combout\,
	cin => \ALU|Add0~26\,
	sumout => \ALU|Add0~17_sumout\,
	cout => \ALU|Add0~18\);

-- Location: MLABCELL_X3_Y4_N51
\ALU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~13_sumout\ = SUM(( !\ALU|Equal0~1_combout\ $ (\ALU2_mux|Mux1~0_combout\) ) + ( \ALU1_mux|Mux1~0_combout\ ) + ( \ALU|Add0~18\ ))
-- \ALU|Add0~14\ = CARRY(( !\ALU|Equal0~1_combout\ $ (\ALU2_mux|Mux1~0_combout\) ) + ( \ALU1_mux|Mux1~0_combout\ ) + ( \ALU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU|ALT_INV_Equal0~1_combout\,
	datac => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datad => \ALU2_mux|ALT_INV_Mux1~0_combout\,
	cin => \ALU|Add0~18\,
	sumout => \ALU|Add0~13_sumout\,
	cout => \ALU|Add0~14\);

-- Location: MLABCELL_X3_Y4_N54
\ALU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~1_sumout\ = SUM(( \ALU1_mux|Mux0~0_combout\ ) + ( !\ALU|Equal0~1_combout\ $ (\ALU2_mux|Mux0~0_combout\) ) + ( \ALU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU|ALT_INV_Equal0~1_combout\,
	datac => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux0~0_combout\,
	cin => \ALU|Add0~14\,
	sumout => \ALU|Add0~1_sumout\);

-- Location: MLABCELL_X6_Y3_N24
\ALU|N~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|N~4_combout\ = ( \ALU|ShiftLeft0~0_combout\ & ( \ALU|Add0~1_sumout\ & ( ((!\ALU|N~3_combout\) # ((\ALU2_mux|Mux5~2_combout\ & \ALU|tmp_out[5]~1_combout\))) # (\ALU|tmp_out[0]~0_combout\) ) ) ) # ( !\ALU|ShiftLeft0~0_combout\ & ( \ALU|Add0~1_sumout\ & 
-- ( (!\ALU|N~3_combout\) # (\ALU|tmp_out[0]~0_combout\) ) ) ) # ( \ALU|ShiftLeft0~0_combout\ & ( !\ALU|Add0~1_sumout\ & ( (!\ALU|N~3_combout\) # ((\ALU2_mux|Mux5~2_combout\ & \ALU|tmp_out[5]~1_combout\)) ) ) ) # ( !\ALU|ShiftLeft0~0_combout\ & ( 
-- !\ALU|Add0~1_sumout\ & ( !\ALU|N~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111001111110101111101011111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datab => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datac => \ALU|ALT_INV_N~3_combout\,
	datad => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datae => \ALU|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALU|ALT_INV_Add0~1_sumout\,
	combout => \ALU|N~4_combout\);

-- Location: FF_X6_Y3_N52
\PC1reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~1_sumout\,
	asdata => \ALU|N~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(7));

-- Location: M10K_X5_Y2_N0
\imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000A0000A0000A0000A000010000A0000A0000A000A5000C60006B000D8000F8000C4000580000F00056000140007F000F60000600056",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory:imDataMem|DualMem:inst|altsyncram:altsyncram_component|altsyncram_cve2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	portadatain => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \imDataMem|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X4_Y2_N22
\IR_reg1reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(5));

-- Location: LABCELL_X4_Y2_N57
\IR2_mux|result[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[5]~5_combout\ = ( \IR_reg1reg|q\(5) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg1reg|ALT_INV_q\(5),
	combout => \IR2_mux|result[5]~5_combout\);

-- Location: FF_X7_Y2_N34
\IR_reg2reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[5]~5_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(5));

-- Location: LABCELL_X7_Y4_N42
\R2B_mux|result[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[6]~4_combout\ = ( \RF_block|k2\(6) & ( \RF_block|k1\(6) & ( (!\IR_reg2reg|q\(5) & (((\RF_block|k0\(6)) # (\IR_reg2reg|q\(4))))) # (\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4))) # (\RF_block|k3\(6)))) ) ) ) # ( !\RF_block|k2\(6) & ( 
-- \RF_block|k1\(6) & ( (!\IR_reg2reg|q\(5) & (((\RF_block|k0\(6)) # (\IR_reg2reg|q\(4))))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(6) & (\IR_reg2reg|q\(4)))) ) ) ) # ( \RF_block|k2\(6) & ( !\RF_block|k1\(6) & ( (!\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4) & 
-- \RF_block|k0\(6))))) # (\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4))) # (\RF_block|k3\(6)))) ) ) ) # ( !\RF_block|k2\(6) & ( !\RF_block|k1\(6) & ( (!\IR_reg2reg|q\(5) & (((!\IR_reg2reg|q\(4) & \RF_block|k0\(6))))) # (\IR_reg2reg|q\(5) & (\RF_block|k3\(6) & 
-- (\IR_reg2reg|q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(5),
	datab => \RF_block|ALT_INV_k3\(6),
	datac => \IR_reg2reg|ALT_INV_q\(4),
	datad => \RF_block|ALT_INV_k0\(6),
	datae => \RF_block|ALT_INV_k2\(6),
	dataf => \RF_block|ALT_INV_k1\(6),
	combout => \R2B_mux|result[6]~4_combout\);

-- Location: FF_X7_Y4_N44
\R2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[6]~4_combout\,
	asdata => \ALUOut_reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(6));

-- Location: MLABCELL_X6_Y4_N51
\ALU2_mux|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux1~0_combout\ = ( \Control|ALU2\(2) & ( \IR_reg3reg|q\(7) & ( (\Control|ALU2\(1) & (\Control|ALU2[0]~DUPLICATE_q\ & \ALUOut_reg|q[6]~DUPLICATE_q\)) ) ) ) # ( !\Control|ALU2\(2) & ( \IR_reg3reg|q\(7) & ( (!\Control|ALU2\(1) & ((\R2|q\(6)) # 
-- (\Control|ALU2[0]~DUPLICATE_q\))) ) ) ) # ( \Control|ALU2\(2) & ( !\IR_reg3reg|q\(7) & ( (\Control|ALU2\(1) & (\Control|ALU2[0]~DUPLICATE_q\ & \ALUOut_reg|q[6]~DUPLICATE_q\)) ) ) ) # ( !\Control|ALU2\(2) & ( !\IR_reg3reg|q\(7) & ( (!\Control|ALU2\(1) & 
-- (!\Control|ALU2[0]~DUPLICATE_q\ & \R2|q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000001000100101010001010100000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2\(1),
	datab => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	datac => \R2|ALT_INV_q\(6),
	datad => \ALUOut_reg|ALT_INV_q[6]~DUPLICATE_q\,
	datae => \Control|ALT_INV_ALU2\(2),
	dataf => \IR_reg3reg|ALT_INV_q\(7),
	combout => \ALU2_mux|Mux1~0_combout\);

-- Location: MLABCELL_X6_Y3_N12
\ALU|tmp_out[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[6]~12_combout\ = ( \ALU|Equal0~0_combout\ & ( (\ALU2_mux|Mux1~0_combout\ & (\ALU1_mux|Mux1~0_combout\ & !\ALU|N~1_combout\)) ) ) # ( !\ALU|Equal0~0_combout\ & ( (!\ALU|N~1_combout\) # ((!\ALU2_mux|Mux1~0_combout\ & 
-- !\ALU1_mux|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000000001010000000011111111101000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux1~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datad => \ALU|ALT_INV_N~1_combout\,
	datae => \ALU|ALT_INV_Equal0~0_combout\,
	combout => \ALU|tmp_out[6]~12_combout\);

-- Location: LABCELL_X7_Y3_N33
\ALU|tmp_out[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[6]~13_combout\ = ( \ALU1_mux|Mux0~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ & ( (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & !\ALU2_mux|Mux6~2_combout\)) ) ) ) # ( !\ALU1_mux|Mux0~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ & ( 
-- (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & (!\ALU2_mux|Mux6~2_combout\ & \ALU2_mux|Mux5~2_combout\))) ) ) ) # ( \ALU1_mux|Mux0~0_combout\ & ( !\ALU1_mux|Mux2~0_combout\ & ( (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & 
-- (!\ALU2_mux|Mux6~2_combout\ & !\ALU2_mux|Mux5~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datac => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datad => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datae => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	combout => \ALU|tmp_out[6]~13_combout\);

-- Location: LABCELL_X7_Y3_N24
\ALU|tmp_out[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[6]~10_combout\ = ( \ALU2_mux|Mux6~2_combout\ & ( \ALU1_mux|Mux3~0_combout\ & ( (\ALU2_mux|Mux5~2_combout\ & (!\ALU2_mux|Mux7~2_combout\ & \ALU|tmp_out[5]~1_combout\)) ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( \ALU1_mux|Mux3~0_combout\ & ( 
-- (!\ALU2_mux|Mux7~2_combout\ & (\ALU1_mux|Mux1~0_combout\ & \ALU|tmp_out[5]~1_combout\)) ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( !\ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & (\ALU1_mux|Mux1~0_combout\ & \ALU|tmp_out[5]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000011000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datac => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datad => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datae => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|tmp_out[6]~10_combout\);

-- Location: LABCELL_X7_Y3_N21
\ALU|tmp_out[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[6]~11_combout\ = ( \ALU2_mux|Mux5~2_combout\ & ( (\ALU2_mux|Mux7~2_combout\ & (\ALU2_mux|Mux6~2_combout\ & (\ALU|tmp_out[5]~1_combout\ & \ALU1_mux|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datad => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	combout => \ALU|tmp_out[6]~11_combout\);

-- Location: MLABCELL_X6_Y3_N18
\ALU|tmp_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[6]~14_combout\ = ( \ALU|tmp_out[6]~11_combout\ & ( \ALU|Add0~13_sumout\ ) ) # ( !\ALU|tmp_out[6]~11_combout\ & ( \ALU|Add0~13_sumout\ & ( ((!\ALU|tmp_out[6]~12_combout\) # ((\ALU|tmp_out[6]~10_combout\) # (\ALU|tmp_out[6]~13_combout\))) # 
-- (\ALU|tmp_out[0]~0_combout\) ) ) ) # ( \ALU|tmp_out[6]~11_combout\ & ( !\ALU|Add0~13_sumout\ ) ) # ( !\ALU|tmp_out[6]~11_combout\ & ( !\ALU|Add0~13_sumout\ & ( (!\ALU|tmp_out[6]~12_combout\) # ((\ALU|tmp_out[6]~10_combout\) # 
-- (\ALU|tmp_out[6]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datab => \ALU|ALT_INV_tmp_out[6]~12_combout\,
	datac => \ALU|ALT_INV_tmp_out[6]~13_combout\,
	datad => \ALU|ALT_INV_tmp_out[6]~10_combout\,
	datae => \ALU|ALT_INV_tmp_out[6]~11_combout\,
	dataf => \ALU|ALT_INV_Add0~13_sumout\,
	combout => \ALU|tmp_out[6]~14_combout\);

-- Location: FF_X6_Y3_N49
\PC1reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~9_sumout\,
	asdata => \ALU|tmp_out[6]~14_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(6));

-- Location: FF_X4_Y2_N16
\IR_reg1reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(4));

-- Location: LABCELL_X4_Y2_N48
\IR2_mux|result[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[4]~4_combout\ = ( !\Control|PCSel~q\ & ( \IR_reg1reg|q\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IR_reg1reg|ALT_INV_q\(4),
	dataf => \Control|ALT_INV_PCSel~q\,
	combout => \IR2_mux|result[4]~4_combout\);

-- Location: FF_X7_Y2_N46
\IR_reg2reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[4]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(4));

-- Location: FF_X8_Y4_N46
\RF_block|k2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2\(0));

-- Location: FF_X8_Y4_N14
\RF_block|k3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k3\(0));

-- Location: FF_X7_Y4_N37
\RF_block|k0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(0));

-- Location: LABCELL_X7_Y4_N0
\R2B_mux|result[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[0]~1_combout\ = ( \RF_block|k0\(0) & ( \RF_block|k1\(0) & ( (!\IR_reg2reg|q\(5)) # ((!\IR_reg2reg|q\(4) & (\RF_block|k2\(0))) # (\IR_reg2reg|q\(4) & ((\RF_block|k3\(0))))) ) ) ) # ( !\RF_block|k0\(0) & ( \RF_block|k1\(0) & ( 
-- (!\IR_reg2reg|q\(4) & (\RF_block|k2\(0) & (\IR_reg2reg|q\(5)))) # (\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5)) # (\RF_block|k3\(0))))) ) ) ) # ( \RF_block|k0\(0) & ( !\RF_block|k1\(0) & ( (!\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5))) # (\RF_block|k2\(0)))) 
-- # (\IR_reg2reg|q\(4) & (((\IR_reg2reg|q\(5) & \RF_block|k3\(0))))) ) ) ) # ( !\RF_block|k0\(0) & ( !\RF_block|k1\(0) & ( (\IR_reg2reg|q\(5) & ((!\IR_reg2reg|q\(4) & (\RF_block|k2\(0))) # (\IR_reg2reg|q\(4) & ((\RF_block|k3\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(4),
	datab => \RF_block|ALT_INV_k2\(0),
	datac => \IR_reg2reg|ALT_INV_q\(5),
	datad => \RF_block|ALT_INV_k3\(0),
	datae => \RF_block|ALT_INV_k0\(0),
	dataf => \RF_block|ALT_INV_k1\(0),
	combout => \R2B_mux|result[0]~1_combout\);

-- Location: FF_X7_Y4_N1
\R2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[0]~1_combout\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(0));

-- Location: LABCELL_X4_Y4_N12
\ALU2_mux|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux7~1_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & !\IR_reg3reg|q\(3)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & 
-- !\IR_reg3reg|q\(3)) ) ) ) # ( \Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & \IR_reg3reg|q\(4)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (\R2|q\(0) & !\Control|ALU2\(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000000110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_q\(0),
	datab => \Control|ALT_INV_ALU2\(2),
	datac => \IR_reg3reg|ALT_INV_q\(4),
	datad => \IR_reg3reg|ALT_INV_q\(3),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux7~1_combout\);

-- Location: LABCELL_X4_Y4_N54
\ALU2_mux|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux7~2_combout\ = ( \ALU2_mux|Mux7~1_combout\ ) # ( !\ALU2_mux|Mux7~1_combout\ & ( \ALU2_mux|Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	combout => \ALU2_mux|Mux7~2_combout\);

-- Location: LABCELL_X4_Y5_N24
\ALUOut_reg|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[0]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \ALUOut_reg|q[0]~feeder_combout\);

-- Location: FF_X4_Y5_N26
\ALUOut_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[0]~feeder_combout\,
	asdata => \ALU|tmp_out[0]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(0));

-- Location: FF_X7_Y4_N58
\RF_block|k1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(0));

-- Location: MLABCELL_X8_Y4_N48
\R1B_mux|result[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[0]~4_combout\ = ( \RF_block|k2\(0) & ( \RF_block|k0\(0) & ( ((!\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k1\(0))) # (\R1Sel_mux|result[1]~1_combout\ & ((\RF_block|k3\(0))))) # (\R1Sel_mux|result[0]~0_combout\) ) ) ) # ( 
-- !\RF_block|k2\(0) & ( \RF_block|k0\(0) & ( (!\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k1\(0))) # (\R1Sel_mux|result[0]~0_combout\))) # (\R1Sel_mux|result[1]~1_combout\ & (!\R1Sel_mux|result[0]~0_combout\ & ((\RF_block|k3\(0))))) ) ) ) # ( 
-- \RF_block|k2\(0) & ( !\RF_block|k0\(0) & ( (!\R1Sel_mux|result[1]~1_combout\ & (!\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k1\(0)))) # (\R1Sel_mux|result[1]~1_combout\ & (((\RF_block|k3\(0))) # (\R1Sel_mux|result[0]~0_combout\))) ) ) ) # ( 
-- !\RF_block|k2\(0) & ( !\RF_block|k0\(0) & ( (!\R1Sel_mux|result[0]~0_combout\ & ((!\R1Sel_mux|result[1]~1_combout\ & (\RF_block|k1\(0))) # (\R1Sel_mux|result[1]~1_combout\ & ((\RF_block|k3\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datab => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datac => \RF_block|ALT_INV_k1\(0),
	datad => \RF_block|ALT_INV_k3\(0),
	datae => \RF_block|ALT_INV_k2\(0),
	dataf => \RF_block|ALT_INV_k0\(0),
	combout => \R1B_mux|result[0]~4_combout\);

-- Location: FF_X8_Y4_N49
\R1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[0]~4_combout\,
	asdata => \ALUOut_reg|q\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(0));

-- Location: MLABCELL_X6_Y5_N42
\ALUOut_reg|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[5]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \ALUOut_reg|q[5]~feeder_combout\);

-- Location: FF_X6_Y5_N43
\ALUOut_reg|q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[5]~feeder_combout\,
	asdata => \ALU|tmp_out[5]~16_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q[5]~DUPLICATE_q\);

-- Location: FF_X9_Y4_N22
\RF_block|k2[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \RF_block|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k2[5]~DUPLICATE_q\);

-- Location: FF_X7_Y4_N53
\RF_block|k1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k1[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k1\(5));

-- Location: LABCELL_X7_Y4_N12
\R2B_mux|result[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2B_mux|result[5]~5_combout\ = ( \RF_block|k3\(5) & ( \RF_block|k1\(5) & ( ((!\IR_reg2reg|q\(5) & ((\RF_block|k0\(5)))) # (\IR_reg2reg|q\(5) & (\RF_block|k2[5]~DUPLICATE_q\))) # (\IR_reg2reg|q\(4)) ) ) ) # ( !\RF_block|k3\(5) & ( \RF_block|k1\(5) & ( 
-- (!\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5) & ((\RF_block|k0\(5)))) # (\IR_reg2reg|q\(5) & (\RF_block|k2[5]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (((!\IR_reg2reg|q\(5))))) ) ) ) # ( \RF_block|k3\(5) & ( !\RF_block|k1\(5) & ( (!\IR_reg2reg|q\(4) & 
-- ((!\IR_reg2reg|q\(5) & ((\RF_block|k0\(5)))) # (\IR_reg2reg|q\(5) & (\RF_block|k2[5]~DUPLICATE_q\)))) # (\IR_reg2reg|q\(4) & (((\IR_reg2reg|q\(5))))) ) ) ) # ( !\RF_block|k3\(5) & ( !\RF_block|k1\(5) & ( (!\IR_reg2reg|q\(4) & ((!\IR_reg2reg|q\(5) & 
-- ((\RF_block|k0\(5)))) # (\IR_reg2reg|q\(5) & (\RF_block|k2[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k2[5]~DUPLICATE_q\,
	datab => \IR_reg2reg|ALT_INV_q\(4),
	datac => \IR_reg2reg|ALT_INV_q\(5),
	datad => \RF_block|ALT_INV_k0\(5),
	datae => \RF_block|ALT_INV_k3\(5),
	dataf => \RF_block|ALT_INV_k1\(5),
	combout => \R2B_mux|result[5]~5_combout\);

-- Location: FF_X7_Y4_N14
\R2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R2B_mux|result[5]~5_combout\,
	asdata => \ALUOut_reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R2B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(5));

-- Location: MLABCELL_X6_Y4_N24
\ALU2_mux|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux2~0_combout\ = ( \ALUOut_reg|q[5]~DUPLICATE_q\ & ( \Control|ALU2\(2) & ( (\Control|ALU2\(0) & \Control|ALU2\(1)) ) ) ) # ( \ALUOut_reg|q[5]~DUPLICATE_q\ & ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(1) & ((!\Control|ALU2\(0) & (\R2|q\(5))) # 
-- (\Control|ALU2\(0) & ((\IR_reg3reg|q\(7)))))) ) ) ) # ( !\ALUOut_reg|q[5]~DUPLICATE_q\ & ( !\Control|ALU2\(2) & ( (!\Control|ALU2\(1) & ((!\Control|ALU2\(0) & (\R2|q\(5))) # (\Control|ALU2\(0) & ((\IR_reg3reg|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU2\(0),
	datab => \R2|ALT_INV_q\(5),
	datac => \Control|ALT_INV_ALU2\(1),
	datad => \IR_reg3reg|ALT_INV_q\(7),
	datae => \ALUOut_reg|ALT_INV_q[5]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \ALU2_mux|Mux2~0_combout\);

-- Location: LABCELL_X7_Y3_N0
\ALU|tmp_out[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[5]~15_combout\ = ( \ALU|Equal0~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ & ( (\ALU2_mux|Mux2~0_combout\ & !\ALU|N~1_combout\) ) ) ) # ( !\ALU|Equal0~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ & ( !\ALU|N~1_combout\ ) ) ) # ( 
-- !\ALU|Equal0~0_combout\ & ( !\ALU1_mux|Mux2~0_combout\ & ( (!\ALU2_mux|Mux2~0_combout\) # (!\ALU|N~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110000000000000000011001100110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux2~0_combout\,
	datab => \ALU|ALT_INV_N~1_combout\,
	datae => \ALU|ALT_INV_Equal0~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	combout => \ALU|tmp_out[5]~15_combout\);

-- Location: LABCELL_X7_Y3_N15
\ALU|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~1_combout\ = ( \ALU2_mux|Mux5~2_combout\ & ( (\ALU2_mux|Mux6~2_combout\ & (\ALU2_mux|Mux7~2_combout\ & \ALU1_mux|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datad => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	combout => \ALU|ShiftRight0~1_combout\);

-- Location: LABCELL_X4_Y4_N6
\ALU2_mux|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux5~1_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & \IR_reg3reg|q\(5)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & 
-- \IR_reg3reg|q\(5)) ) ) ) # ( \Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (!\Control|ALU2\(2) & \IR_reg3reg|q\(6)) ) ) ) # ( !\Control|ALU2[0]~DUPLICATE_q\ & ( !\Control|ALU2[1]~DUPLICATE_q\ & ( (\R2|q\(2) & !\Control|ALU2\(2)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_q\(2),
	datab => \Control|ALT_INV_ALU2\(2),
	datac => \IR_reg3reg|ALT_INV_q\(5),
	datad => \IR_reg3reg|ALT_INV_q\(6),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux5~1_combout\);

-- Location: LABCELL_X7_Y3_N54
\ALU|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~3_combout\ = ( \ALU1_mux|Mux3~0_combout\ & ( ((\ALU1_mux|Mux1~0_combout\) # (\ALU2_mux|Mux5~0_combout\)) # (\ALU2_mux|Mux5~1_combout\) ) ) # ( !\ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux5~1_combout\ & (!\ALU2_mux|Mux5~0_combout\ & 
-- \ALU1_mux|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|ShiftRight0~3_combout\);

-- Location: LABCELL_X7_Y3_N57
\ALU|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~2_combout\ = (!\ALU2_mux|Mux5~1_combout\ & ((!\ALU2_mux|Mux5~0_combout\ & (\ALU1_mux|Mux0~0_combout\)) # (\ALU2_mux|Mux5~0_combout\ & ((\ALU1_mux|Mux4~0_combout\))))) # (\ALU2_mux|Mux5~1_combout\ & (((\ALU1_mux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	datad => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	combout => \ALU|ShiftRight0~2_combout\);

-- Location: LABCELL_X7_Y3_N12
\ALU|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~4_combout\ = ( \ALU1_mux|Mux2~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & ((!\ALU2_mux|Mux6~2_combout\) # ((\ALU|ShiftRight0~2_combout\)))) # (\ALU2_mux|Mux7~2_combout\ & (!\ALU2_mux|Mux6~2_combout\ & (\ALU|ShiftRight0~3_combout\))) ) ) 
-- # ( !\ALU1_mux|Mux2~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & (\ALU2_mux|Mux6~2_combout\ & ((\ALU|ShiftRight0~2_combout\)))) # (\ALU2_mux|Mux7~2_combout\ & (!\ALU2_mux|Mux6~2_combout\ & (\ALU|ShiftRight0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU|ALT_INV_ShiftRight0~3_combout\,
	datad => \ALU|ALT_INV_ShiftRight0~2_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	combout => \ALU|ShiftRight0~4_combout\);

-- Location: MLABCELL_X6_Y3_N0
\ALU|tmp_out[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[5]~16_combout\ = ( \ALU|Add0~17_sumout\ & ( \ALU|ShiftRight0~4_combout\ & ( (!\ALU|tmp_out[5]~15_combout\) # ((\ALU|tmp_out[0]~0_combout\) # (\ALU|tmp_out[5]~1_combout\)) ) ) ) # ( !\ALU|Add0~17_sumout\ & ( \ALU|ShiftRight0~4_combout\ & ( 
-- (!\ALU|tmp_out[5]~15_combout\) # (\ALU|tmp_out[5]~1_combout\) ) ) ) # ( \ALU|Add0~17_sumout\ & ( !\ALU|ShiftRight0~4_combout\ & ( (!\ALU|tmp_out[5]~15_combout\) # (((\ALU|tmp_out[5]~1_combout\ & \ALU|ShiftRight0~1_combout\)) # 
-- (\ALU|tmp_out[0]~0_combout\)) ) ) ) # ( !\ALU|Add0~17_sumout\ & ( !\ALU|ShiftRight0~4_combout\ & ( (!\ALU|tmp_out[5]~15_combout\) # ((\ALU|tmp_out[5]~1_combout\ & \ALU|ShiftRight0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111111111110111011101110111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[5]~15_combout\,
	datab => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datac => \ALU|ALT_INV_ShiftRight0~1_combout\,
	datad => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datae => \ALU|ALT_INV_Add0~17_sumout\,
	dataf => \ALU|ALT_INV_ShiftRight0~4_combout\,
	combout => \ALU|tmp_out[5]~16_combout\);

-- Location: FF_X6_Y3_N46
\PC1reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~5_sumout\,
	asdata => \ALU|tmp_out[5]~16_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(5));

-- Location: FF_X6_Y2_N10
\IR_reg1reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(6));

-- Location: LABCELL_X7_Y2_N21
\IR2_mux|result[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[6]~6_combout\ = ( \IR_reg1reg|q\(6) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg1reg|ALT_INV_q\(6),
	combout => \IR2_mux|result[6]~6_combout\);

-- Location: FF_X8_Y2_N35
\IR_reg2reg|q[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[6]~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q[6]~DUPLICATE_q\);

-- Location: FF_X4_Y4_N41
\IR_reg3reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q[6]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q\(6));

-- Location: LABCELL_X4_Y2_N39
\Control|ALU2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|ALU2~0_combout\ = ( \Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(4) & ( (!\IR_reg2reg|q\(5)) # ((\IR_reg3reg|q\(6) & (\IR_reg3reg|q\(7) & \Control|always0~0_combout\))) ) ) ) # ( !\Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(4) & ( 
-- (\IR_reg3reg|q\(6) & (\Control|always0~0_combout\ & (!\IR_reg2reg|q\(5) $ (\IR_reg3reg|q\(7))))) ) ) ) # ( \Control|Equal4~0_combout\ & ( !\IR_reg2reg|q\(4) & ( (!\IR_reg3reg|q\(6) & (\Control|always0~0_combout\ & (!\IR_reg2reg|q\(5) $ 
-- (\IR_reg3reg|q\(7))))) ) ) ) # ( !\Control|Equal4~0_combout\ & ( !\IR_reg2reg|q\(4) & ( (!\IR_reg3reg|q\(6) & (\Control|always0~0_combout\ & (!\IR_reg2reg|q\(5) $ (\IR_reg3reg|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000001000001000000000010000011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(6),
	datab => \IR_reg2reg|ALT_INV_q\(5),
	datac => \IR_reg3reg|ALT_INV_q\(7),
	datad => \Control|ALT_INV_always0~0_combout\,
	datae => \Control|ALT_INV_Equal4~0_combout\,
	dataf => \IR_reg2reg|ALT_INV_q\(4),
	combout => \Control|ALU2~0_combout\);

-- Location: LABCELL_X4_Y2_N6
\Control|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux3~0_combout\ = ( \IR_reg2reg|q\(2) & ( \Control|ALU2~0_combout\ & ( (!\IR_reg2reg|q\(0) & \IR_reg2reg|q\(3)) ) ) ) # ( !\IR_reg2reg|q\(2) & ( \Control|ALU2~0_combout\ & ( (!\IR_reg2reg|q\(0) & ((\IR_reg2reg|q\(3)) # (\IR_reg2reg|q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010001010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(0),
	datab => \IR_reg2reg|ALT_INV_q\(1),
	datac => \IR_reg2reg|ALT_INV_q\(3),
	datae => \IR_reg2reg|ALT_INV_q\(2),
	dataf => \Control|ALT_INV_ALU2~0_combout\,
	combout => \Control|Mux3~0_combout\);

-- Location: FF_X3_Y2_N53
\Control|ALU2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \Control|Mux3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU2\(2));

-- Location: MLABCELL_X3_Y4_N27
\ALU2_mux|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux6~0_combout\ = ( \Control|ALU2[0]~DUPLICATE_q\ & ( \Control|ALU2\(1) & ( (\Control|ALU2\(2) & \ALUOut_reg|q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_ALU2\(2),
	datad => \ALUOut_reg|ALT_INV_q\(1),
	datae => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2\(1),
	combout => \ALU2_mux|Mux6~0_combout\);

-- Location: LABCELL_X4_Y4_N42
\ALU|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~5_combout\ = ( !\ALU2_mux|Mux7~1_combout\ & ( (!\ALU2_mux|Mux6~0_combout\ & (!\ALU2_mux|Mux6~1_combout\ & !\ALU2_mux|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux6~0_combout\,
	datac => \ALU2_mux|ALT_INV_Mux6~1_combout\,
	datad => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	combout => \ALU|ShiftRight0~5_combout\);

-- Location: MLABCELL_X3_Y4_N6
\ALU|tmp_out[4]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~29_combout\ = ( \Control|ALUop\(2) & ( !\Control|ALUop\(0) & ( (!\Control|ALUop\(1) & !\ALU|ShiftRight0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALUop\(1),
	datab => \ALU|ALT_INV_ShiftRight0~5_combout\,
	datae => \Control|ALT_INV_ALUop\(2),
	dataf => \Control|ALT_INV_ALUop\(0),
	combout => \ALU|tmp_out[4]~29_combout\);

-- Location: LABCELL_X2_Y4_N15
\ALU|tmp_out[4]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~26_combout\ = ( \ALU2_mux|Mux7~0_combout\ & ( !\ALU2_mux|Mux5~0_combout\ & ( (!\ALU2_mux|Mux5~1_combout\ & ((\ALU2_mux|Mux6~0_combout\) # (\ALU2_mux|Mux6~1_combout\))) ) ) ) # ( !\ALU2_mux|Mux7~0_combout\ & ( !\ALU2_mux|Mux5~0_combout\ & ( 
-- (!\ALU2_mux|Mux5~1_combout\ & ((!\ALU2_mux|Mux7~1_combout\) # ((\ALU2_mux|Mux6~0_combout\) # (\ALU2_mux|Mux6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010000010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	datac => \ALU2_mux|ALT_INV_Mux6~1_combout\,
	datad => \ALU2_mux|ALT_INV_Mux6~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	combout => \ALU|tmp_out[4]~26_combout\);

-- Location: MLABCELL_X3_Y3_N18
\ALU|tmp_out[4]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~27_combout\ = ( !\ALU2_mux|Mux5~1_combout\ & ( \ALU2_mux|Mux7~1_combout\ & ( !\ALU2_mux|Mux5~0_combout\ ) ) ) # ( !\ALU2_mux|Mux5~1_combout\ & ( !\ALU2_mux|Mux7~1_combout\ & ( (\ALU2_mux|Mux7~0_combout\ & !\ALU2_mux|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	datac => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	combout => \ALU|tmp_out[4]~27_combout\);

-- Location: MLABCELL_X6_Y5_N57
\ALU|tmp_out[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~25_combout\ = ( \ALU1_mux|Mux4~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & (((\ALU1_mux|Mux5~0_combout\)))) # (\ALU2_mux|Mux7~2_combout\ & (((!\ALU2_mux|Mux6~2_combout\)) # (\ALU1_mux|Mux6~0_combout\))) ) ) # ( !\ALU1_mux|Mux4~0_combout\ 
-- & ( (!\ALU2_mux|Mux7~2_combout\ & (((\ALU1_mux|Mux5~0_combout\)))) # (\ALU2_mux|Mux7~2_combout\ & (\ALU1_mux|Mux6~0_combout\ & ((\ALU2_mux|Mux6~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	datab => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	datac => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datad => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	combout => \ALU|tmp_out[4]~25_combout\);

-- Location: LABCELL_X4_Y5_N15
\ALU|tmp_out[4]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~28_combout\ = ( \ALU|tmp_out[4]~27_combout\ & ( \ALU|tmp_out[4]~25_combout\ & ( (!\ALU|tmp_out[4]~26_combout\ & ((\ALU1_mux|Mux2~0_combout\))) # (\ALU|tmp_out[4]~26_combout\ & (\ALU1_mux|Mux0~0_combout\)) ) ) ) # ( 
-- !\ALU|tmp_out[4]~27_combout\ & ( \ALU|tmp_out[4]~25_combout\ & ( (!\ALU|tmp_out[4]~26_combout\) # (\ALU1_mux|Mux1~0_combout\) ) ) ) # ( \ALU|tmp_out[4]~27_combout\ & ( !\ALU|tmp_out[4]~25_combout\ & ( (!\ALU|tmp_out[4]~26_combout\ & 
-- ((\ALU1_mux|Mux2~0_combout\))) # (\ALU|tmp_out[4]~26_combout\ & (\ALU1_mux|Mux0~0_combout\)) ) ) ) # ( !\ALU|tmp_out[4]~27_combout\ & ( !\ALU|tmp_out[4]~25_combout\ & ( (\ALU1_mux|Mux1~0_combout\ & \ALU|tmp_out[4]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datab => \ALU|ALT_INV_tmp_out[4]~26_combout\,
	datac => \ALU1_mux|ALT_INV_Mux0~0_combout\,
	datad => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	datae => \ALU|ALT_INV_tmp_out[4]~27_combout\,
	dataf => \ALU|ALT_INV_tmp_out[4]~25_combout\,
	combout => \ALU|tmp_out[4]~28_combout\);

-- Location: MLABCELL_X3_Y4_N21
\ALU|tmp_out[4]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~38_combout\ = ( !\Control|ALUop\(2) & ( (!\Control|ALUop\(1) & ((((\ALU|Add0~25_sumout\))))) # (\Control|ALUop\(1) & ((!\Control|ALUop\(0) & (((\ALU1_mux|Mux3~0_combout\)) # (\ALU2_mux|Mux3~0_combout\))) # (\Control|ALUop\(0) & 
-- ((!\ALU2_mux|Mux3~0_combout\) # ((!\ALU1_mux|Mux3~0_combout\)))))) ) ) # ( \Control|ALUop\(2) & ( (!\Control|ALUop\(1) & (!\Control|ALUop\(0) & (\ALU|ShiftRight0~5_combout\ & (\ALU1_mux|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001010101010100000000000000100010111111111111100000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALUop\(1),
	datab => \Control|ALT_INV_ALUop\(0),
	datac => \ALU|ALT_INV_ShiftRight0~5_combout\,
	datad => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	datae => \Control|ALT_INV_ALUop\(2),
	dataf => \ALU|ALT_INV_Add0~25_sumout\,
	datag => \ALU2_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|tmp_out[4]~38_combout\);

-- Location: LABCELL_X4_Y5_N39
\ALU|tmp_out[4]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[4]~33_combout\ = ( \ALU|tmp_out[4]~38_combout\ ) # ( !\ALU|tmp_out[4]~38_combout\ & ( (\ALU|tmp_out[4]~29_combout\ & \ALU|tmp_out[4]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU|ALT_INV_tmp_out[4]~29_combout\,
	datac => \ALU|ALT_INV_tmp_out[4]~28_combout\,
	dataf => \ALU|ALT_INV_tmp_out[4]~38_combout\,
	combout => \ALU|tmp_out[4]~33_combout\);

-- Location: FF_X6_Y3_N43
\PC1reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~13_sumout\,
	asdata => \ALU|tmp_out[4]~33_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(4));

-- Location: FF_X6_Y2_N13
\IR_reg1reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(7));

-- Location: MLABCELL_X6_Y2_N0
\IR2_mux|result[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[7]~7_combout\ = ( \IR_reg1reg|q\(7) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg1reg|ALT_INV_q\(7),
	combout => \IR2_mux|result[7]~7_combout\);

-- Location: LABCELL_X7_Y2_N42
\IR_reg2reg|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR_reg2reg|q[7]~feeder_combout\ = ( \IR2_mux|result[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \IR2_mux|ALT_INV_result[7]~7_combout\,
	combout => \IR_reg2reg|q[7]~feeder_combout\);

-- Location: FF_X7_Y2_N43
\IR_reg2reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \IR_reg2reg|q[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(7));

-- Location: FF_X8_Y2_N34
\IR_reg2reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[6]~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(6));

-- Location: LABCELL_X4_Y2_N24
\Control|ALU1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|ALU1~1_combout\ = ( \Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(6) & ( !\IR_reg2reg|q\(7) ) ) ) # ( !\Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(6) & ( (\Control|always0~0_combout\ & (\IR_reg3reg|q\(6) & (!\IR_reg2reg|q\(7) $ 
-- (\IR_reg3reg|q\(7))))) ) ) ) # ( !\Control|Equal4~0_combout\ & ( !\IR_reg2reg|q\(6) & ( (\Control|always0~0_combout\ & (!\IR_reg3reg|q\(6) & (!\IR_reg2reg|q\(7) $ (\IR_reg3reg|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000000000000000000000000010000000011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(7),
	datab => \Control|ALT_INV_always0~0_combout\,
	datac => \IR_reg3reg|ALT_INV_q\(6),
	datad => \IR_reg3reg|ALT_INV_q\(7),
	datae => \Control|ALT_INV_Equal4~0_combout\,
	dataf => \IR_reg2reg|ALT_INV_q\(6),
	combout => \Control|ALU1~1_combout\);

-- Location: LABCELL_X4_Y2_N45
\Control|ALU1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|ALU1~0_combout\ = ( \Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(6) & ( (!\Control|R1B~2_combout\ & !\IR_reg2reg|q\(7)) ) ) ) # ( !\Control|Equal4~0_combout\ & ( \IR_reg2reg|q\(6) & ( !\Control|R1B~2_combout\ ) ) ) # ( 
-- !\Control|Equal4~0_combout\ & ( !\IR_reg2reg|q\(6) & ( !\Control|R1B~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_R1B~2_combout\,
	datad => \IR_reg2reg|ALT_INV_q\(7),
	datae => \Control|ALT_INV_Equal4~0_combout\,
	dataf => \IR_reg2reg|ALT_INV_q\(6),
	combout => \Control|ALU1~0_combout\);

-- Location: LABCELL_X4_Y2_N12
\Control|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux6~0_combout\ = ( \IR_reg2reg|q\(0) & ( \IR_reg2reg|q\(3) & ( (!\IR_reg2reg|q\(2) & (!\IR_reg2reg|q\(1) & (\Control|ALU1~1_combout\))) # (\IR_reg2reg|q\(2) & (((\Control|ALU1~0_combout\)) # (\IR_reg2reg|q\(1)))) ) ) ) # ( !\IR_reg2reg|q\(0) & ( 
-- \IR_reg2reg|q\(3) & ( (\Control|ALU1~1_combout\ & ((!\IR_reg2reg|q\(1)) # (\IR_reg2reg|q\(2)))) ) ) ) # ( \IR_reg2reg|q\(0) & ( !\IR_reg2reg|q\(3) & ( ((!\IR_reg2reg|q\(2) & (\Control|ALU1~1_combout\)) # (\IR_reg2reg|q\(2) & ((\Control|ALU1~0_combout\)))) 
-- # (\IR_reg2reg|q\(1)) ) ) ) # ( !\IR_reg2reg|q\(0) & ( !\IR_reg2reg|q\(3) & ( (!\IR_reg2reg|q\(2) & (\IR_reg2reg|q\(1) & \Control|ALU1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010001110110111111100001101000011010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(2),
	datab => \IR_reg2reg|ALT_INV_q\(1),
	datac => \Control|ALT_INV_ALU1~1_combout\,
	datad => \Control|ALT_INV_ALU1~0_combout\,
	datae => \IR_reg2reg|ALT_INV_q\(0),
	dataf => \IR_reg2reg|ALT_INV_q\(3),
	combout => \Control|Mux6~0_combout\);

-- Location: FF_X4_Y2_N13
\Control|ALU1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux6~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALU1\(1));

-- Location: FF_X6_Y5_N38
\PC2reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC1reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC2reg|q\(4));

-- Location: FF_X6_Y5_N14
\PC3reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \PC2reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC3reg|q\(4));

-- Location: MLABCELL_X6_Y5_N12
\ALU1_mux|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux3~0_combout\ = ( \R1|q\(4) & ( (!\Control|ALU1\(1) & (!\Control|ALU1\(0))) # (\Control|ALU1\(1) & ((!\Control|ALU1\(0) & (\ALUOut_reg|q\(4))) # (\Control|ALU1\(0) & ((\PC3reg|q\(4)))))) ) ) # ( !\R1|q\(4) & ( (\Control|ALU1\(1) & 
-- ((!\Control|ALU1\(0) & (\ALUOut_reg|q\(4))) # (\Control|ALU1\(0) & ((\PC3reg|q\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALU1\(1),
	datab => \Control|ALT_INV_ALU1\(0),
	datac => \ALUOut_reg|ALT_INV_q\(4),
	datad => \PC3reg|ALT_INV_q\(4),
	dataf => \R1|ALT_INV_q\(4),
	combout => \ALU1_mux|Mux3~0_combout\);

-- Location: MLABCELL_X6_Y5_N54
\ALU|tmp_out[3]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[3]~30_combout\ = ( \ALU1_mux|Mux7~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & (\ALU1_mux|Mux6~0_combout\)) # (\ALU2_mux|Mux7~2_combout\ & (((\ALU2_mux|Mux6~2_combout\) # (\ALU1_mux|Mux5~0_combout\)))) ) ) # ( !\ALU1_mux|Mux7~0_combout\ & ( 
-- (!\ALU2_mux|Mux7~2_combout\ & (\ALU1_mux|Mux6~0_combout\)) # (\ALU2_mux|Mux7~2_combout\ & (((\ALU1_mux|Mux5~0_combout\ & !\ALU2_mux|Mux6~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101000001010011010111110101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	datab => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	datac => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datad => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	combout => \ALU|tmp_out[3]~30_combout\);

-- Location: LABCELL_X4_Y5_N54
\ALU|tmp_out[3]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[3]~31_combout\ = ( \ALU|tmp_out[4]~27_combout\ & ( \ALU|tmp_out[3]~30_combout\ & ( (!\ALU|tmp_out[4]~26_combout\ & (\ALU1_mux|Mux3~0_combout\)) # (\ALU|tmp_out[4]~26_combout\ & ((\ALU1_mux|Mux1~0_combout\))) ) ) ) # ( 
-- !\ALU|tmp_out[4]~27_combout\ & ( \ALU|tmp_out[3]~30_combout\ & ( (!\ALU|tmp_out[4]~26_combout\) # (\ALU1_mux|Mux2~0_combout\) ) ) ) # ( \ALU|tmp_out[4]~27_combout\ & ( !\ALU|tmp_out[3]~30_combout\ & ( (!\ALU|tmp_out[4]~26_combout\ & 
-- (\ALU1_mux|Mux3~0_combout\)) # (\ALU|tmp_out[4]~26_combout\ & ((\ALU1_mux|Mux1~0_combout\))) ) ) ) # ( !\ALU|tmp_out[4]~27_combout\ & ( !\ALU|tmp_out[3]~30_combout\ & ( (\ALU1_mux|Mux2~0_combout\ & \ALU|tmp_out[4]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	datab => \ALU1_mux|ALT_INV_Mux1~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	datad => \ALU|ALT_INV_tmp_out[4]~26_combout\,
	datae => \ALU|ALT_INV_tmp_out[4]~27_combout\,
	dataf => \ALU|ALT_INV_tmp_out[3]~30_combout\,
	combout => \ALU|tmp_out[3]~31_combout\);

-- Location: LABCELL_X2_Y4_N36
\ALU|tmp_out[3]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[3]~34_combout\ = ( !\Control|ALUop[2]~DUPLICATE_q\ & ( (!\Control|ALUop\(1) & ((((\ALU|Add0~29_sumout\))))) # (\Control|ALUop\(1) & ((!\ALU1_mux|Mux4~0_combout\ & (((\ALU2_mux|Mux4~1_combout\)) # (\Control|ALUop\(0)))) # 
-- (\ALU1_mux|Mux4~0_combout\ & ((!\Control|ALUop\(0)) # ((!\ALU2_mux|Mux4~1_combout\)))))) ) ) # ( \Control|ALUop[2]~DUPLICATE_q\ & ( (\ALU1_mux|Mux4~0_combout\ & (!\Control|ALUop\(0) & (\ALU|ShiftRight0~5_combout\ & (!\Control|ALUop\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001111110000001000000000011111111011111100000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	datab => \Control|ALT_INV_ALUop\(0),
	datac => \ALU|ALT_INV_ShiftRight0~5_combout\,
	datad => \Control|ALT_INV_ALUop\(1),
	datae => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	dataf => \ALU|ALT_INV_Add0~29_sumout\,
	datag => \ALU2_mux|ALT_INV_Mux4~1_combout\,
	combout => \ALU|tmp_out[3]~34_combout\);

-- Location: LABCELL_X4_Y5_N33
\ALU|tmp_out[3]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[3]~32_combout\ = ( \ALU|tmp_out[3]~34_combout\ ) # ( !\ALU|tmp_out[3]~34_combout\ & ( (\ALU|tmp_out[3]~31_combout\ & \ALU|tmp_out[4]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[3]~31_combout\,
	datac => \ALU|ALT_INV_tmp_out[4]~29_combout\,
	dataf => \ALU|ALT_INV_tmp_out[3]~34_combout\,
	combout => \ALU|tmp_out[3]~32_combout\);

-- Location: FF_X6_Y3_N40
\PC1reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~29_sumout\,
	asdata => \ALU|tmp_out[3]~32_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(3));

-- Location: MLABCELL_X6_Y2_N54
\IR1_mux|result[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR1_mux|result[3]~1_combout\ = ( !\imDataMem|inst|altsyncram_component|auto_generated|q_b\(3) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_PCSel~q\,
	dataf => \imDataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \IR1_mux|result[3]~1_combout\);

-- Location: FF_X6_Y2_N55
\IR_reg1reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \IR1_mux|result[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(3));

-- Location: MLABCELL_X6_Y2_N48
\IR2_mux|result[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[3]~3_combout\ = ( \IR_reg1reg|q\(3) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_PCSel~q\,
	datae => \IR_reg1reg|ALT_INV_q\(3),
	combout => \IR2_mux|result[3]~3_combout\);

-- Location: FF_X4_Y2_N31
\IR_reg2reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[3]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(3));

-- Location: MLABCELL_X3_Y2_N21
\Control|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|WideOr0~0_combout\ = ( \IR_reg2reg|q\(1) & ( (!\IR_reg2reg|q\(3) & (!\IR_reg2reg|q\(2) & !\IR_reg2reg|q\(0))) ) ) # ( !\IR_reg2reg|q\(1) & ( (\IR_reg2reg|q\(2) & \IR_reg2reg|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(3),
	datac => \IR_reg2reg|ALT_INV_q\(2),
	datad => \IR_reg2reg|ALT_INV_q\(0),
	dataf => \IR_reg2reg|ALT_INV_q\(1),
	combout => \Control|WideOr0~0_combout\);

-- Location: FF_X3_Y2_N22
\Control|ALUop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|WideOr0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|ALUop\(1));

-- Location: LABCELL_X4_Y3_N12
\ALU|tmp_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[5]~1_combout\ = ( \Control|ALUop[2]~DUPLICATE_q\ & ( (!\Control|ALUop\(1) & !\Control|ALUop\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_ALUop\(1),
	datac => \Control|ALT_INV_ALUop\(0),
	dataf => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	combout => \ALU|tmp_out[5]~1_combout\);

-- Location: LABCELL_X4_Y3_N54
\ALU|tmp_out[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~18_combout\ = ( \ALU1_mux|Mux6~0_combout\ & ( (!\ALU|Equal0~0_combout\ & ((\ALU2_mux|Mux5~0_combout\) # (\ALU2_mux|Mux5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	datac => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	datad => \ALU|ALT_INV_Equal0~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	combout => \ALU|tmp_out[2]~18_combout\);

-- Location: LABCELL_X4_Y3_N57
\ALU|tmp_out[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~17_combout\ = ( \Control|ALUop\(0) & ( (!\ALU2_mux|Mux5~1_combout\ & !\ALU2_mux|Mux5~0_combout\) ) ) # ( !\Control|ALUop\(0) & ( (!\ALU2_mux|Mux5~1_combout\ & (!\ALU2_mux|Mux5~0_combout\ & ((!\Control|ALUop\(1)) # 
-- (\Control|ALUop[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	datab => \Control|ALT_INV_ALUop\(1),
	datac => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	datad => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	dataf => \Control|ALT_INV_ALUop\(0),
	combout => \ALU|tmp_out[2]~17_combout\);

-- Location: LABCELL_X7_Y3_N18
\ALU|tmp_out[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~19_combout\ = ( \ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux7~2_combout\ & (\ALU2_mux|Mux6~2_combout\ & ((\ALU|tmp_out[2]~17_combout\)))) # (\ALU2_mux|Mux7~2_combout\ & (!\ALU2_mux|Mux6~2_combout\ & (\ALU|tmp_out[2]~18_combout\))) ) ) # ( 
-- !\ALU1_mux|Mux3~0_combout\ & ( (\ALU2_mux|Mux7~2_combout\ & (!\ALU2_mux|Mux6~2_combout\ & \ALU|tmp_out[2]~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100001001100000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU|ALT_INV_tmp_out[2]~18_combout\,
	datad => \ALU|ALT_INV_tmp_out[2]~17_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|tmp_out[2]~19_combout\);

-- Location: LABCELL_X7_Y3_N48
\ALU|tmp_out[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~20_combout\ = ( \ALU1_mux|Mux7~0_combout\ & ( (\ALU|N~0_combout\ & ((!\ALU2_mux|Mux6~2_combout\ & ((\ALU1_mux|Mux5~0_combout\))) # (\ALU2_mux|Mux6~2_combout\ & (\ALU2_mux|Mux5~2_combout\)))) ) ) # ( !\ALU1_mux|Mux7~0_combout\ & ( 
-- (\ALU|N~0_combout\ & (\ALU1_mux|Mux5~0_combout\ & !\ALU2_mux|Mux6~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000100010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_N~0_combout\,
	datab => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datac => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	datad => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	combout => \ALU|tmp_out[2]~20_combout\);

-- Location: LABCELL_X4_Y3_N48
\ALU|tmp_out[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~22_combout\ = ( \ALU2_mux|Mux5~1_combout\ & ( \ALU1_mux|Mux5~0_combout\ & ( (\Control|ALUop\(1) & (!\Control|ALUop\(0) & !\Control|ALUop[2]~DUPLICATE_q\)) ) ) ) # ( !\ALU2_mux|Mux5~1_combout\ & ( \ALU1_mux|Mux5~0_combout\ & ( 
-- (\Control|ALUop\(1) & (!\Control|ALUop[2]~DUPLICATE_q\ & ((!\ALU2_mux|Mux5~0_combout\) # (!\Control|ALUop\(0))))) ) ) ) # ( \ALU2_mux|Mux5~1_combout\ & ( !\ALU1_mux|Mux5~0_combout\ & ( (\Control|ALUop\(1) & !\Control|ALUop[2]~DUPLICATE_q\) ) ) ) # ( 
-- !\ALU2_mux|Mux5~1_combout\ & ( !\ALU1_mux|Mux5~0_combout\ & ( (\Control|ALUop\(1) & (!\Control|ALUop[2]~DUPLICATE_q\ & ((\Control|ALUop\(0)) # (\ALU2_mux|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000001100110000000000110010000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	datab => \Control|ALT_INV_ALUop\(1),
	datac => \Control|ALT_INV_ALUop\(0),
	datad => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	datae => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	combout => \ALU|tmp_out[2]~22_combout\);

-- Location: LABCELL_X2_Y4_N18
\ALU|tmp_out[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~21_combout\ = ( \ALU2_mux|Mux6~1_combout\ & ( \ALU1_mux|Mux4~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ ) ) ) # ( !\ALU2_mux|Mux6~1_combout\ & ( \ALU1_mux|Mux4~0_combout\ & ( (!\ALU2_mux|Mux6~0_combout\) # (\ALU1_mux|Mux2~0_combout\) ) ) ) # 
-- ( \ALU2_mux|Mux6~1_combout\ & ( !\ALU1_mux|Mux4~0_combout\ & ( \ALU1_mux|Mux2~0_combout\ ) ) ) # ( !\ALU2_mux|Mux6~1_combout\ & ( !\ALU1_mux|Mux4~0_combout\ & ( (\ALU2_mux|Mux6~0_combout\ & \ALU1_mux|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011110000111110101111101011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux6~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux2~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux6~1_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	combout => \ALU|tmp_out[2]~21_combout\);

-- Location: LABCELL_X4_Y3_N42
\ALU|tmp_out[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~23_combout\ = ( \ALU|tmp_out[2]~21_combout\ & ( \ALU2_mux|Mux7~2_combout\ & ( (!\ALU|tmp_out[2]~22_combout\ & ((!\ALU|tmp_out[5]~1_combout\) # (\ALU2_mux|Mux5~2_combout\))) ) ) ) # ( !\ALU|tmp_out[2]~21_combout\ & ( 
-- \ALU2_mux|Mux7~2_combout\ & ( !\ALU|tmp_out[2]~22_combout\ ) ) ) # ( \ALU|tmp_out[2]~21_combout\ & ( !\ALU2_mux|Mux7~2_combout\ & ( !\ALU|tmp_out[2]~22_combout\ ) ) ) # ( !\ALU|tmp_out[2]~21_combout\ & ( !\ALU2_mux|Mux7~2_combout\ & ( 
-- !\ALU|tmp_out[2]~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datab => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datac => \ALU|ALT_INV_tmp_out[2]~22_combout\,
	datae => \ALU|ALT_INV_tmp_out[2]~21_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	combout => \ALU|tmp_out[2]~23_combout\);

-- Location: MLABCELL_X6_Y3_N6
\ALU|tmp_out[2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[2]~24_combout\ = ( \ALU|Add0~21_sumout\ & ( \ALU|tmp_out[2]~23_combout\ & ( (((\ALU|tmp_out[5]~1_combout\ & \ALU|tmp_out[2]~19_combout\)) # (\ALU|tmp_out[2]~20_combout\)) # (\ALU|tmp_out[0]~0_combout\) ) ) ) # ( !\ALU|Add0~21_sumout\ & ( 
-- \ALU|tmp_out[2]~23_combout\ & ( ((\ALU|tmp_out[5]~1_combout\ & \ALU|tmp_out[2]~19_combout\)) # (\ALU|tmp_out[2]~20_combout\) ) ) ) # ( \ALU|Add0~21_sumout\ & ( !\ALU|tmp_out[2]~23_combout\ ) ) # ( !\ALU|Add0~21_sumout\ & ( !\ALU|tmp_out[2]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datab => \ALU|ALT_INV_tmp_out[2]~19_combout\,
	datac => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datad => \ALU|ALT_INV_tmp_out[2]~20_combout\,
	datae => \ALU|ALT_INV_Add0~21_sumout\,
	dataf => \ALU|ALT_INV_tmp_out[2]~23_combout\,
	combout => \ALU|tmp_out[2]~24_combout\);

-- Location: FF_X6_Y3_N37
\PC1reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~21_sumout\,
	asdata => \ALU|tmp_out[2]~24_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(2));

-- Location: MLABCELL_X6_Y2_N42
\IR1_mux|result[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR1_mux|result[1]~0_combout\ = ( !\imDataMem|inst|altsyncram_component|auto_generated|q_b\(1) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_PCSel~q\,
	dataf => \imDataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \IR1_mux|result[1]~0_combout\);

-- Location: FF_X6_Y2_N43
\IR_reg1reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \IR1_mux|result[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(1));

-- Location: MLABCELL_X6_Y2_N45
\IR2_mux|result[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[1]~1_combout\ = ( !\Control|PCSel~q\ & ( \IR_reg1reg|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_reg1reg|ALT_INV_q\(1),
	dataf => \Control|ALT_INV_PCSel~q\,
	combout => \IR2_mux|result[1]~1_combout\);

-- Location: MLABCELL_X6_Y2_N24
\Control|R1Sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|R1Sel~0_combout\ = ( !\IR2_mux|result[1]~1_combout\ & ( (\IR2_mux|result[0]~0_combout\ & \IR2_mux|result[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR2_mux|ALT_INV_result[0]~0_combout\,
	datac => \IR2_mux|ALT_INV_result[2]~2_combout\,
	datae => \IR2_mux|ALT_INV_result[1]~1_combout\,
	combout => \Control|R1Sel~0_combout\);

-- Location: FF_X6_Y2_N25
\Control|R1Sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|R1Sel~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|R1Sel~q\);

-- Location: MLABCELL_X8_Y2_N3
\R1Sel_mux|result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Sel_mux|result[0]~0_combout\ = ( !\IR_reg2reg|q[6]~DUPLICATE_q\ & ( !\Control|R1Sel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_R1Sel~q\,
	dataf => \IR_reg2reg|ALT_INV_q[6]~DUPLICATE_q\,
	combout => \R1Sel_mux|result[0]~0_combout\);

-- Location: FF_X8_Y5_N8
\RF_block|k0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \RF_block|k0[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \RF_block|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RF_block|k0\(1));

-- Location: LABCELL_X7_Y5_N54
\R1B_mux|result[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1B_mux|result[1]~6_combout\ = ( \RF_block|k0\(1) & ( \RF_block|k3\(1) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\RF_block|k1\(1)) # (\R1Sel_mux|result[1]~1_combout\)))) # (\R1Sel_mux|result[0]~0_combout\ & (((!\R1Sel_mux|result[1]~1_combout\)) # 
-- (\RF_block|k2\(1)))) ) ) ) # ( !\RF_block|k0\(1) & ( \RF_block|k3\(1) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((\RF_block|k1\(1)) # (\R1Sel_mux|result[1]~1_combout\)))) # (\R1Sel_mux|result[0]~0_combout\ & (\RF_block|k2\(1) & 
-- (\R1Sel_mux|result[1]~1_combout\))) ) ) ) # ( \RF_block|k0\(1) & ( !\RF_block|k3\(1) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((!\R1Sel_mux|result[1]~1_combout\ & \RF_block|k1\(1))))) # (\R1Sel_mux|result[0]~0_combout\ & 
-- (((!\R1Sel_mux|result[1]~1_combout\)) # (\RF_block|k2\(1)))) ) ) ) # ( !\RF_block|k0\(1) & ( !\RF_block|k3\(1) & ( (!\R1Sel_mux|result[0]~0_combout\ & (((!\R1Sel_mux|result[1]~1_combout\ & \RF_block|k1\(1))))) # (\R1Sel_mux|result[0]~0_combout\ & 
-- (\RF_block|k2\(1) & (\R1Sel_mux|result[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1Sel_mux|ALT_INV_result[0]~0_combout\,
	datab => \RF_block|ALT_INV_k2\(1),
	datac => \R1Sel_mux|ALT_INV_result[1]~1_combout\,
	datad => \RF_block|ALT_INV_k1\(1),
	datae => \RF_block|ALT_INV_k0\(1),
	dataf => \RF_block|ALT_INV_k3\(1),
	combout => \R1B_mux|result[1]~6_combout\);

-- Location: FF_X7_Y5_N56
\R1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \R1B_mux|result[1]~6_combout\,
	asdata => \ALUOut_reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|R1B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(1));

-- Location: MLABCELL_X6_Y5_N39
\ALU1_mux|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU1_mux|Mux6~0_combout\ = ( \Control|ALU1\(1) & ( \Control|ALU1\(0) & ( \PC3reg|q\(1) ) ) ) # ( \Control|ALU1\(1) & ( !\Control|ALU1\(0) & ( \ALUOut_reg|q\(1) ) ) ) # ( !\Control|ALU1\(1) & ( !\Control|ALU1\(0) & ( \R1|q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC3reg|ALT_INV_q\(1),
	datab => \R1|ALT_INV_q\(1),
	datac => \ALUOut_reg|ALT_INV_q\(1),
	datae => \Control|ALT_INV_ALU1\(1),
	dataf => \Control|ALT_INV_ALU1\(0),
	combout => \ALU1_mux|Mux6~0_combout\);

-- Location: LABCELL_X4_Y3_N18
\ALU|tmp_out[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[1]~6_combout\ = ( \Control|ALUop\(1) & ( \ALU2_mux|Mux7~2_combout\ & ( (!\Control|ALUop[2]~DUPLICATE_q\ & ((!\Control|ALUop\(0) & (\ALU1_mux|Mux6~0_combout\)) # (\Control|ALUop\(0) & ((!\ALU2_mux|Mux6~2_combout\))))) ) ) ) # ( 
-- \Control|ALUop\(1) & ( !\ALU2_mux|Mux7~2_combout\ & ( (!\Control|ALUop[2]~DUPLICATE_q\ & ((!\Control|ALUop\(0) & (\ALU1_mux|Mux6~0_combout\)) # (\Control|ALUop\(0) & ((!\ALU2_mux|Mux6~2_combout\))))) ) ) ) # ( !\Control|ALUop\(1) & ( 
-- !\ALU2_mux|Mux7~2_combout\ & ( (\ALU1_mux|Mux6~0_combout\ & (!\ALU2_mux|Mux6~2_combout\ & (!\Control|ALUop\(0) & \Control|ALUop[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010111000000000000000000000000000101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \Control|ALT_INV_ALUop\(0),
	datad => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	datae => \Control|ALT_INV_ALUop\(1),
	dataf => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	combout => \ALU|tmp_out[1]~6_combout\);

-- Location: LABCELL_X4_Y3_N39
\ALU|tmp_out[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[1]~7_combout\ = ( \ALU1_mux|Mux3~0_combout\ & ( ((\ALU1_mux|Mux4~0_combout\) # (\ALU2_mux|Mux7~0_combout\)) # (\ALU2_mux|Mux7~1_combout\) ) ) # ( !\ALU1_mux|Mux3~0_combout\ & ( (!\ALU2_mux|Mux7~1_combout\ & (!\ALU2_mux|Mux7~0_combout\ & 
-- \ALU1_mux|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	datad => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux3~0_combout\,
	combout => \ALU|tmp_out[1]~7_combout\);

-- Location: LABCELL_X4_Y3_N24
\ALU|tmp_out[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[1]~8_combout\ = ( \Control|ALUop\(2) & ( \ALU1_mux|Mux6~0_combout\ & ( (!\ALU2_mux|Mux5~2_combout\ & (!\Control|ALUop\(1) & (!\Control|ALUop\(0) & \ALU|tmp_out[1]~7_combout\))) ) ) ) # ( !\Control|ALUop\(2) & ( \ALU1_mux|Mux6~0_combout\ & ( 
-- (\Control|ALUop\(1) & !\Control|ALUop\(0)) ) ) ) # ( \Control|ALUop\(2) & ( !\ALU1_mux|Mux6~0_combout\ & ( (!\ALU2_mux|Mux5~2_combout\ & (!\Control|ALUop\(1) & (!\Control|ALUop\(0) & \ALU|tmp_out[1]~7_combout\))) ) ) ) # ( !\Control|ALUop\(2) & ( 
-- !\ALU1_mux|Mux6~0_combout\ & ( \Control|ALUop\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001000000000110000001100000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datab => \Control|ALT_INV_ALUop\(1),
	datac => \Control|ALT_INV_ALUop\(0),
	datad => \ALU|ALT_INV_tmp_out[1]~7_combout\,
	datae => \Control|ALT_INV_ALUop\(2),
	dataf => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	combout => \ALU|tmp_out[1]~8_combout\);

-- Location: LABCELL_X7_Y3_N30
\ALU|tmp_out[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[1]~5_combout\ = ( \ALU1_mux|Mux5~0_combout\ & ( \ALU1_mux|Mux7~0_combout\ & ( (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & !\ALU2_mux|Mux6~2_combout\)) ) ) ) # ( !\ALU1_mux|Mux5~0_combout\ & ( \ALU1_mux|Mux7~0_combout\ & ( 
-- (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & (\ALU2_mux|Mux5~2_combout\ & !\ALU2_mux|Mux6~2_combout\))) ) ) ) # ( \ALU1_mux|Mux5~0_combout\ & ( !\ALU1_mux|Mux7~0_combout\ & ( (\ALU|tmp_out[5]~1_combout\ & (\ALU2_mux|Mux7~2_combout\ & 
-- (!\ALU2_mux|Mux5~2_combout\ & !\ALU2_mux|Mux6~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	datac => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datad => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datae => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	combout => \ALU|tmp_out[1]~5_combout\);

-- Location: MLABCELL_X3_Y3_N24
\ALU|tmp_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[1]~9_combout\ = ( \ALU|Add0~9_sumout\ & ( \ALU|tmp_out[1]~5_combout\ ) ) # ( !\ALU|Add0~9_sumout\ & ( \ALU|tmp_out[1]~5_combout\ ) ) # ( \ALU|Add0~9_sumout\ & ( !\ALU|tmp_out[1]~5_combout\ & ( (((\ALU2_mux|Mux6~2_combout\ & 
-- \ALU|tmp_out[1]~8_combout\)) # (\ALU|tmp_out[0]~0_combout\)) # (\ALU|tmp_out[1]~6_combout\) ) ) ) # ( !\ALU|Add0~9_sumout\ & ( !\ALU|tmp_out[1]~5_combout\ & ( ((\ALU2_mux|Mux6~2_combout\ & (!\ALU|tmp_out[0]~0_combout\ & \ALU|tmp_out[1]~8_combout\))) # 
-- (\ALU|tmp_out[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110101010111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[1]~6_combout\,
	datab => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	datac => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datad => \ALU|ALT_INV_tmp_out[1]~8_combout\,
	datae => \ALU|ALT_INV_Add0~9_sumout\,
	dataf => \ALU|ALT_INV_tmp_out[1]~5_combout\,
	combout => \ALU|tmp_out[1]~9_combout\);

-- Location: FF_X6_Y3_N34
\PC1reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~25_sumout\,
	asdata => \ALU|tmp_out[1]~9_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(1));

-- Location: FF_X6_Y2_N52
\IR_reg1reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(0));

-- Location: MLABCELL_X6_Y2_N9
\IR2_mux|result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[0]~0_combout\ = ( \IR_reg1reg|q\(0) & ( !\Control|PCSel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg1reg|ALT_INV_q\(0),
	combout => \IR2_mux|result[0]~0_combout\);

-- Location: FF_X7_Y2_N52
\IR_reg2reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(0));

-- Location: MLABCELL_X3_Y3_N36
\Control|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Decoder2~0_combout\ = ( !\IR_reg2reg|q\(1) & ( !\IR_reg2reg|q\(2) & ( (!\IR_reg2reg|q\(0) & \IR_reg2reg|q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_reg2reg|ALT_INV_q\(0),
	datac => \IR_reg2reg|ALT_INV_q\(3),
	datae => \IR_reg2reg|ALT_INV_q\(1),
	dataf => \IR_reg2reg|ALT_INV_q\(2),
	combout => \Control|Decoder2~0_combout\);

-- Location: FF_X3_Y3_N37
\Control|MemWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Decoder2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|MemWrite~q\);

-- Location: LABCELL_X4_Y5_N48
\ALUOut_reg|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUOut_reg|q[2]~feeder_combout\ = ( \DataMem|inst|altsyncram_component|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DataMem|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \ALUOut_reg|q[2]~feeder_combout\);

-- Location: FF_X4_Y5_N49
\ALUOut_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALUOut_reg|q[2]~feeder_combout\,
	asdata => \ALU|tmp_out[2]~24_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|ALT_INV_ALUsel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut_reg|q\(2));

-- Location: LABCELL_X4_Y4_N57
\ALU2_mux|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux5~0_combout\ = ( \Control|ALU2[1]~DUPLICATE_q\ & ( (\ALUOut_reg|q\(2) & (\Control|ALU2\(2) & \Control|ALU2[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALUOut_reg|ALT_INV_q\(2),
	datac => \Control|ALT_INV_ALU2\(2),
	datad => \Control|ALT_INV_ALU2[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	combout => \ALU2_mux|Mux5~0_combout\);

-- Location: LABCELL_X4_Y4_N21
\ALU2_mux|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU2_mux|Mux5~2_combout\ = ( \ALU2_mux|Mux5~1_combout\ ) # ( !\ALU2_mux|Mux5~1_combout\ & ( \ALU2_mux|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU2_mux|ALT_INV_Mux5~0_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux5~1_combout\,
	combout => \ALU2_mux|Mux5~2_combout\);

-- Location: LABCELL_X4_Y3_N30
\ALU|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|ShiftRight0~0_combout\ = ( \ALU2_mux|Mux6~2_combout\ & ( \ALU2_mux|Mux7~2_combout\ & ( \ALU1_mux|Mux4~0_combout\ ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( \ALU2_mux|Mux7~2_combout\ & ( \ALU1_mux|Mux6~0_combout\ ) ) ) # ( \ALU2_mux|Mux6~2_combout\ & ( 
-- !\ALU2_mux|Mux7~2_combout\ & ( \ALU1_mux|Mux5~0_combout\ ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( !\ALU2_mux|Mux7~2_combout\ & ( \ALU1_mux|Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1_mux|ALT_INV_Mux4~0_combout\,
	datab => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	datac => \ALU1_mux|ALT_INV_Mux6~0_combout\,
	datad => \ALU1_mux|ALT_INV_Mux5~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	combout => \ALU|ShiftRight0~0_combout\);

-- Location: LABCELL_X4_Y3_N36
\ALU|tmp_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[0]~2_combout\ = ( \ALU1_mux|Mux7~0_combout\ & ( (!\ALU|N~1_combout\ & (((!\ALU|Equal0~0_combout\) # (\ALU2_mux|Mux7~0_combout\)) # (\ALU2_mux|Mux7~1_combout\))) ) ) # ( !\ALU1_mux|Mux7~0_combout\ & ( (!\ALU|Equal0~0_combout\ & 
-- ((!\ALU|N~1_combout\) # ((!\ALU2_mux|Mux7~1_combout\ & !\ALU2_mux|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011110000011100001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux7~1_combout\,
	datab => \ALU2_mux|ALT_INV_Mux7~0_combout\,
	datac => \ALU|ALT_INV_N~1_combout\,
	datad => \ALU|ALT_INV_Equal0~0_combout\,
	dataf => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	combout => \ALU|tmp_out[0]~2_combout\);

-- Location: LABCELL_X4_Y3_N6
\ALU|tmp_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[0]~3_combout\ = ( \ALU2_mux|Mux6~2_combout\ & ( \ALU2_mux|Mux7~2_combout\ & ( \ALU|tmp_out[0]~2_combout\ ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( \ALU2_mux|Mux7~2_combout\ & ( \ALU|tmp_out[0]~2_combout\ ) ) ) # ( \ALU2_mux|Mux6~2_combout\ & ( 
-- !\ALU2_mux|Mux7~2_combout\ & ( \ALU|tmp_out[0]~2_combout\ ) ) ) # ( !\ALU2_mux|Mux6~2_combout\ & ( !\ALU2_mux|Mux7~2_combout\ & ( (\ALU|tmp_out[0]~2_combout\ & ((!\ALU2_mux|Mux5~2_combout\) # ((!\ALU|tmp_out[5]~1_combout\) # 
-- (!\ALU1_mux|Mux7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datab => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datac => \ALU|ALT_INV_tmp_out[0]~2_combout\,
	datad => \ALU1_mux|ALT_INV_Mux7~0_combout\,
	datae => \ALU2_mux|ALT_INV_Mux6~2_combout\,
	dataf => \ALU2_mux|ALT_INV_Mux7~2_combout\,
	combout => \ALU|tmp_out[0]~3_combout\);

-- Location: LABCELL_X4_Y3_N0
\ALU|tmp_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|tmp_out[0]~4_combout\ = ( \ALU|Add0~5_sumout\ & ( \ALU|tmp_out[0]~3_combout\ & ( ((!\ALU2_mux|Mux5~2_combout\ & (\ALU|ShiftRight0~0_combout\ & \ALU|tmp_out[5]~1_combout\))) # (\ALU|tmp_out[0]~0_combout\) ) ) ) # ( !\ALU|Add0~5_sumout\ & ( 
-- \ALU|tmp_out[0]~3_combout\ & ( (!\ALU2_mux|Mux5~2_combout\ & (\ALU|ShiftRight0~0_combout\ & \ALU|tmp_out[5]~1_combout\)) ) ) ) # ( \ALU|Add0~5_sumout\ & ( !\ALU|tmp_out[0]~3_combout\ ) ) # ( !\ALU|Add0~5_sumout\ & ( !\ALU|tmp_out[0]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001000100000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2_mux|ALT_INV_Mux5~2_combout\,
	datab => \ALU|ALT_INV_ShiftRight0~0_combout\,
	datac => \ALU|ALT_INV_tmp_out[0]~0_combout\,
	datad => \ALU|ALT_INV_tmp_out[5]~1_combout\,
	datae => \ALU|ALT_INV_Add0~5_sumout\,
	dataf => \ALU|ALT_INV_tmp_out[0]~3_combout\,
	combout => \ALU|tmp_out[0]~4_combout\);

-- Location: FF_X6_Y3_N31
\PC1reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \add|Add0~17_sumout\,
	asdata => \ALU|tmp_out[0]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \Control|PCSel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1reg|q\(0));

-- Location: FF_X6_Y2_N32
\IR_reg1reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \imDataMem|inst|altsyncram_component|auto_generated|q_b\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg1reg|q\(2));

-- Location: MLABCELL_X6_Y2_N3
\IR2_mux|result[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR2_mux|result[2]~2_combout\ = (!\Control|PCSel~q\ & \IR_reg1reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALT_INV_PCSel~q\,
	datac => \IR_reg1reg|ALT_INV_q\(2),
	combout => \IR2_mux|result[2]~2_combout\);

-- Location: FF_X6_Y2_N28
\IR_reg2reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR2_mux|result[2]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg2reg|q\(2));

-- Location: MLABCELL_X3_Y2_N51
\Control|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux2~0_combout\ = (\IR_reg2reg|q\(1) & \IR_reg2reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(1),
	datab => \IR_reg2reg|ALT_INV_q\(0),
	combout => \Control|Mux2~0_combout\);

-- Location: LABCELL_X4_Y5_N30
\ALU|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal5~1_combout\ = ( !\ALU|tmp_out[4]~38_combout\ & ( (!\ALU|tmp_out[3]~34_combout\ & ((!\ALU|tmp_out[4]~29_combout\) # ((!\ALU|tmp_out[3]~31_combout\ & !\ALU|tmp_out[4]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[3]~31_combout\,
	datab => \ALU|ALT_INV_tmp_out[4]~29_combout\,
	datac => \ALU|ALT_INV_tmp_out[4]~28_combout\,
	datad => \ALU|ALT_INV_tmp_out[3]~34_combout\,
	dataf => \ALU|ALT_INV_tmp_out[4]~38_combout\,
	combout => \ALU|Equal5~1_combout\);

-- Location: MLABCELL_X6_Y3_N54
\ALU|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal5~0_combout\ = ( !\ALU|tmp_out[5]~16_combout\ & ( !\ALU|N~4_combout\ & ( (!\ALU|tmp_out[0]~4_combout\ & (!\ALU|tmp_out[1]~9_combout\ & (!\ALU|tmp_out[6]~14_combout\ & !\ALU|tmp_out[2]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_tmp_out[0]~4_combout\,
	datab => \ALU|ALT_INV_tmp_out[1]~9_combout\,
	datac => \ALU|ALT_INV_tmp_out[6]~14_combout\,
	datad => \ALU|ALT_INV_tmp_out[2]~24_combout\,
	datae => \ALU|ALT_INV_tmp_out[5]~16_combout\,
	dataf => \ALU|ALT_INV_N~4_combout\,
	combout => \ALU|Equal5~0_combout\);

-- Location: MLABCELL_X3_Y2_N6
\Control|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|Mux2~1_combout\ = ( \ALU|Equal5~0_combout\ & ( \IR_reg2reg|q\(3) & ( (\IR_reg2reg|q\(2) & (\Control|Mux2~0_combout\ & \ALU|Equal5~1_combout\)) ) ) ) # ( \ALU|Equal5~0_combout\ & ( !\IR_reg2reg|q\(3) & ( (\Control|Mux2~0_combout\ & 
-- ((!\IR_reg2reg|q\(2) & ((!\ALU|Equal5~1_combout\))) # (\IR_reg2reg|q\(2) & (!\ALU|N~4_combout\)))) ) ) ) # ( !\ALU|Equal5~0_combout\ & ( !\IR_reg2reg|q\(3) & ( (\Control|Mux2~0_combout\ & ((!\IR_reg2reg|q\(2)) # (!\ALU|N~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100001000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(2),
	datab => \Control|ALT_INV_Mux2~0_combout\,
	datac => \ALU|ALT_INV_N~4_combout\,
	datad => \ALU|ALT_INV_Equal5~1_combout\,
	datae => \ALU|ALT_INV_Equal5~0_combout\,
	dataf => \IR_reg2reg|ALT_INV_q\(3),
	combout => \Control|Mux2~1_combout\);

-- Location: FF_X3_Y2_N8
\Control|PCSel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|Mux2~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|PCSel~q\);

-- Location: MLABCELL_X3_Y4_N15
\IR3_mux|result[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR3_mux|result[3]~1_combout\ = ( !\Control|PCSel~q\ & ( \IR_reg2reg|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Control|ALT_INV_PCSel~q\,
	dataf => \IR_reg2reg|ALT_INV_q\(3),
	combout => \IR3_mux|result[3]~1_combout\);

-- Location: FF_X4_Y4_N10
\IR_reg3reg|q[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR3_mux|result[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q[3]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y2_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \IR_reg3reg|q\(0) & ( (!\IR_reg3reg|q[3]~DUPLICATE_q\) # ((!\IR_reg3reg|q\(1)) # (\IR_reg3reg|q\(2))) ) ) # ( !\IR_reg3reg|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	datac => \IR_reg3reg|ALT_INV_q\(2),
	datad => \IR_reg3reg|ALT_INV_q\(1),
	dataf => \IR_reg3reg|ALT_INV_q\(0),
	combout => \Equal0~0_combout\);

-- Location: FF_X83_Y8_N50
\p_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \p_counter[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(0));

-- Location: LABCELL_X83_Y8_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( p_counter(1) ) + ( p_counter(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( p_counter(1) ) + ( p_counter(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p_counter(0),
	datad => ALT_INV_p_counter(1),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X83_Y8_N1
\p_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(1));

-- Location: LABCELL_X83_Y8_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( p_counter(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( p_counter(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X83_Y8_N5
\p_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(2));

-- Location: LABCELL_X83_Y8_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( p_counter(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( p_counter(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X83_Y8_N8
\p_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(3));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X8_Y4_N6
\HEX_display|temp_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[0]~0_combout\ = ( \RF_block|k1\(0) & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\) # (\RF_block|k3\(0)) ) ) ) # ( !\RF_block|k1\(0) & ( \SW[0]~input_o\ & ( (\SW[1]~input_o\ & \RF_block|k3\(0)) ) ) ) # ( \RF_block|k1\(0) & ( 
-- !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\RF_block|k0\(0))) # (\SW[1]~input_o\ & ((\RF_block|k2\(0)))) ) ) ) # ( !\RF_block|k1\(0) & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\RF_block|k0\(0))) # (\SW[1]~input_o\ & ((\RF_block|k2\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k0\(0),
	datab => \RF_block|ALT_INV_k2\(0),
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RF_block|ALT_INV_k3\(0),
	datae => \RF_block|ALT_INV_k1\(0),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_display|temp_in[0]~0_combout\);

-- Location: LABCELL_X7_Y5_N30
\HEX_display|temp_in[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[1]~1_combout\ = ( \RF_block|k0\(1) & ( \RF_block|k1\(1) & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\ & ((\RF_block|k2\(1)))) # (\SW[0]~input_o\ & (\RF_block|k3\(1)))) ) ) ) # ( !\RF_block|k0\(1) & ( \RF_block|k1\(1) & ( 
-- (!\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & ((\RF_block|k2\(1)))) # (\SW[0]~input_o\ & (\RF_block|k3\(1))))) ) ) ) # ( \RF_block|k0\(1) & ( !\RF_block|k1\(1) & ( (!\SW[1]~input_o\ & (((!\SW[0]~input_o\)))) # 
-- (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & ((\RF_block|k2\(1)))) # (\SW[0]~input_o\ & (\RF_block|k3\(1))))) ) ) ) # ( !\RF_block|k0\(1) & ( !\RF_block|k1\(1) & ( (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & ((\RF_block|k2\(1)))) # (\SW[0]~input_o\ & 
-- (\RF_block|k3\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \RF_block|ALT_INV_k3\(1),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \RF_block|ALT_INV_k2\(1),
	datae => \RF_block|ALT_INV_k0\(1),
	dataf => \RF_block|ALT_INV_k1\(1),
	combout => \HEX_display|temp_in[1]~1_combout\);

-- Location: LABCELL_X7_Y5_N18
\HEX_display|temp_in[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[3]~3_combout\ = ( \RF_block|k1\(3) & ( \RF_block|k3\(3) & ( ((!\SW[1]~input_o\ & ((\RF_block|k0[3]~DUPLICATE_q\))) # (\SW[1]~input_o\ & (\RF_block|k2\(3)))) # (\SW[0]~input_o\) ) ) ) # ( !\RF_block|k1\(3) & ( \RF_block|k3\(3) & ( 
-- (!\SW[0]~input_o\ & ((!\SW[1]~input_o\ & ((\RF_block|k0[3]~DUPLICATE_q\))) # (\SW[1]~input_o\ & (\RF_block|k2\(3))))) # (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) ) ) ) # ( \RF_block|k1\(3) & ( !\RF_block|k3\(3) & ( (!\SW[0]~input_o\ & ((!\SW[1]~input_o\ & 
-- ((\RF_block|k0[3]~DUPLICATE_q\))) # (\SW[1]~input_o\ & (\RF_block|k2\(3))))) # (\SW[0]~input_o\ & (((!\SW[1]~input_o\)))) ) ) ) # ( !\RF_block|k1\(3) & ( !\RF_block|k3\(3) & ( (!\SW[0]~input_o\ & ((!\SW[1]~input_o\ & ((\RF_block|k0[3]~DUPLICATE_q\))) # 
-- (\SW[1]~input_o\ & (\RF_block|k2\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \RF_block|ALT_INV_k2\(3),
	datac => \RF_block|ALT_INV_k0[3]~DUPLICATE_q\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \RF_block|ALT_INV_k1\(3),
	dataf => \RF_block|ALT_INV_k3\(3),
	combout => \HEX_display|temp_in[3]~3_combout\);

-- Location: LABCELL_X7_Y5_N27
\HEX_display|temp_in[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[2]~2_combout\ = ( \RF_block|k2\(2) & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\RF_block|k1\(2))) # (\SW[1]~input_o\ & ((\RF_block|k3\(2)))) ) ) ) # ( !\RF_block|k2\(2) & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\RF_block|k1\(2))) 
-- # (\SW[1]~input_o\ & ((\RF_block|k3\(2)))) ) ) ) # ( \RF_block|k2\(2) & ( !\SW[0]~input_o\ & ( (\RF_block|k0\(2)) # (\SW[1]~input_o\) ) ) ) # ( !\RF_block|k2\(2) & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & \RF_block|k0\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k1\(2),
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \RF_block|ALT_INV_k3\(2),
	datad => \RF_block|ALT_INV_k0\(2),
	datae => \RF_block|ALT_INV_k2\(2),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_display|temp_in[2]~2_combout\);

-- Location: LABCELL_X7_Y5_N42
\HEX_display|hex1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr6~0_combout\ = (!\HEX_display|temp_in[3]~3_combout\ & (!\HEX_display|temp_in[1]~1_combout\ & (!\HEX_display|temp_in[0]~0_combout\ $ (!\HEX_display|temp_in[2]~2_combout\)))) # (\HEX_display|temp_in[3]~3_combout\ & 
-- (\HEX_display|temp_in[0]~0_combout\ & (!\HEX_display|temp_in[1]~1_combout\ $ (!\HEX_display|temp_in[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000100010000011000010001000001100001000100000110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	datab => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datac => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	datad => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	combout => \HEX_display|hex1|WideOr6~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X82_Y8_N6
\HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = ( p_counter(2) & ( p_counter(1) & ( (\HEX_display|hex1|WideOr6~0_combout\ & !\SW[2]~input_o\) ) ) ) # ( !p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & 
-- (p_counter(3) & (p_counter(0)))) ) ) ) # ( p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(3) $ ((p_counter(0))))) ) ) ) # ( !p_counter(2) & ( !p_counter(1) & ( 
-- (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(3) & (p_counter(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011111001100100001111000100010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(3),
	datab => ALT_INV_p_counter(0),
	datac => \HEX_display|hex1|ALT_INV_WideOr6~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(2),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~6_combout\);

-- Location: LABCELL_X7_Y5_N45
\HEX_display|hex1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr5~0_combout\ = ( \HEX_display|temp_in[3]~3_combout\ & ( (!\HEX_display|temp_in[0]~0_combout\ & ((\HEX_display|temp_in[2]~2_combout\))) # (\HEX_display|temp_in[0]~0_combout\ & (\HEX_display|temp_in[1]~1_combout\)) ) ) # ( 
-- !\HEX_display|temp_in[3]~3_combout\ & ( (\HEX_display|temp_in[2]~2_combout\ & (!\HEX_display|temp_in[0]~0_combout\ $ (!\HEX_display|temp_in[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	datab => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datad => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	combout => \HEX_display|hex1|WideOr5~0_combout\);

-- Location: MLABCELL_X82_Y8_N12
\HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = ( p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr5~0_combout\)) # (\SW[2]~input_o\ & (((!p_counter(0)) # (p_counter(3))))) ) ) ) # ( !p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & 
-- (\HEX_display|hex1|WideOr5~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & p_counter(3))))) ) ) ) # ( p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr5~0_combout\)) # (\SW[2]~input_o\ & ((!p_counter(0) $ 
-- (!p_counter(3))))) ) ) ) # ( !p_counter(2) & ( !p_counter(1) & ( (\HEX_display|hex1|WideOr5~0_combout\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010011110001010101000000110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|hex1|ALT_INV_WideOr5~0_combout\,
	datab => ALT_INV_p_counter(0),
	datac => ALT_INV_p_counter(3),
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(2),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~5_combout\);

-- Location: LABCELL_X7_Y5_N36
\HEX_display|hex1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr4~0_combout\ = ( \HEX_display|temp_in[3]~3_combout\ & ( (\HEX_display|temp_in[2]~2_combout\ & ((!\HEX_display|temp_in[0]~0_combout\) # (\HEX_display|temp_in[1]~1_combout\))) ) ) # ( !\HEX_display|temp_in[3]~3_combout\ & ( 
-- (!\HEX_display|temp_in[2]~2_combout\ & (\HEX_display|temp_in[1]~1_combout\ & !\HEX_display|temp_in[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	datab => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datac => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	combout => \HEX_display|hex1|WideOr4~0_combout\);

-- Location: MLABCELL_X82_Y8_N18
\HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = ( p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & ((\HEX_display|hex1|WideOr4~0_combout\))) # (\SW[2]~input_o\ & (p_counter(3))) ) ) ) # ( !p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & 
-- (((\HEX_display|hex1|WideOr4~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(3) & (!p_counter(0)))) ) ) ) # ( p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr4~0_combout\)))) # (\SW[2]~input_o\ & (p_counter(3) & 
-- (!p_counter(0)))) ) ) ) # ( !p_counter(2) & ( !p_counter(1) & ( (\HEX_display|hex1|WideOr4~0_combout\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110100010000001111100010000000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(3),
	datab => ALT_INV_p_counter(0),
	datac => \HEX_display|hex1|ALT_INV_WideOr4~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(2),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~4_combout\);

-- Location: LABCELL_X7_Y5_N39
\HEX_display|hex1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr3~0_combout\ = ( \HEX_display|temp_in[3]~3_combout\ & ( (\HEX_display|temp_in[1]~1_combout\ & (!\HEX_display|temp_in[2]~2_combout\ $ (\HEX_display|temp_in[0]~0_combout\))) ) ) # ( !\HEX_display|temp_in[3]~3_combout\ & ( 
-- (!\HEX_display|temp_in[2]~2_combout\ & (!\HEX_display|temp_in[1]~1_combout\ & \HEX_display|temp_in[0]~0_combout\)) # (\HEX_display|temp_in[2]~2_combout\ & (!\HEX_display|temp_in[1]~1_combout\ $ (\HEX_display|temp_in[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	datab => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datad => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	combout => \HEX_display|hex1|WideOr3~0_combout\);

-- Location: MLABCELL_X82_Y8_N0
\HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = ( p_counter(0) & ( p_counter(1) & ( (!\SW[2]~input_o\ & ((\HEX_display|hex1|WideOr3~0_combout\))) # (\SW[2]~input_o\ & (p_counter(2))) ) ) ) # ( !p_counter(0) & ( p_counter(1) & ( (!\SW[2]~input_o\ & 
-- (((\HEX_display|hex1|WideOr3~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(2) & (p_counter(3)))) ) ) ) # ( p_counter(0) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr3~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(2) & 
-- (!p_counter(3)))) ) ) ) # ( !p_counter(0) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex1|WideOr3~0_combout\)))) # (\SW[2]~input_o\ & (p_counter(2) & (!p_counter(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100001000001110110000000010110011100001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(2),
	datab => \ALT_INV_SW[2]~input_o\,
	datac => ALT_INV_p_counter(3),
	datad => \HEX_display|hex1|ALT_INV_WideOr3~0_combout\,
	datae => ALT_INV_p_counter(0),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~3_combout\);

-- Location: LABCELL_X7_Y5_N6
\HEX_display|hex1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr2~0_combout\ = ( \HEX_display|temp_in[3]~3_combout\ & ( (\HEX_display|temp_in[0]~0_combout\ & (!\HEX_display|temp_in[1]~1_combout\ & !\HEX_display|temp_in[2]~2_combout\)) ) ) # ( !\HEX_display|temp_in[3]~3_combout\ & ( 
-- ((!\HEX_display|temp_in[1]~1_combout\ & \HEX_display|temp_in[2]~2_combout\)) # (\HEX_display|temp_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	datab => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datac => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	combout => \HEX_display|hex1|WideOr2~0_combout\);

-- Location: MLABCELL_X82_Y8_N30
\HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = ( p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr2~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & !p_counter(3))))) ) ) ) # ( !p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & 
-- (\HEX_display|hex1|WideOr2~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & !p_counter(3))))) ) ) ) # ( p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr2~0_combout\)) # (\SW[2]~input_o\ & ((!p_counter(3)))) ) ) ) # ( 
-- !p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr2~0_combout\)) # (\SW[2]~input_o\ & ((p_counter(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101011111000001010101001100000101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|hex1|ALT_INV_WideOr2~0_combout\,
	datab => ALT_INV_p_counter(0),
	datac => ALT_INV_p_counter(3),
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(2),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~2_combout\);

-- Location: LABCELL_X7_Y5_N9
\HEX_display|hex1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr1~0_combout\ = ( \HEX_display|temp_in[3]~3_combout\ & ( (\HEX_display|temp_in[0]~0_combout\ & (!\HEX_display|temp_in[1]~1_combout\ & \HEX_display|temp_in[2]~2_combout\)) ) ) # ( !\HEX_display|temp_in[3]~3_combout\ & ( 
-- (!\HEX_display|temp_in[0]~0_combout\ & (\HEX_display|temp_in[1]~1_combout\ & !\HEX_display|temp_in[2]~2_combout\)) # (\HEX_display|temp_in[0]~0_combout\ & ((!\HEX_display|temp_in[2]~2_combout\) # (\HEX_display|temp_in[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	datac => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	datad => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	combout => \HEX_display|hex1|WideOr1~0_combout\);

-- Location: MLABCELL_X82_Y8_N24
\HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ( p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr1~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & !p_counter(3))))) ) ) ) # ( !p_counter(2) & ( p_counter(1) & ( (!\SW[2]~input_o\ & 
-- (\HEX_display|hex1|WideOr1~0_combout\)) # (\SW[2]~input_o\ & ((!p_counter(3)))) ) ) ) # ( p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr1~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & p_counter(3))))) ) ) ) # ( 
-- !p_counter(2) & ( !p_counter(1) & ( (!\SW[2]~input_o\ & (\HEX_display|hex1|WideOr1~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(0) & !p_counter(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010000001101010101111100000101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|hex1|ALT_INV_WideOr1~0_combout\,
	datab => ALT_INV_p_counter(0),
	datac => ALT_INV_p_counter(3),
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(2),
	dataf => ALT_INV_p_counter(1),
	combout => \HEX0~1_combout\);

-- Location: LABCELL_X7_Y5_N0
\HEX_display|hex1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex1|WideOr0~0_combout\ = ( \HEX_display|temp_in[0]~0_combout\ & ( \HEX_display|temp_in[1]~1_combout\ & ( (!\HEX_display|temp_in[3]~3_combout\ & \HEX_display|temp_in[2]~2_combout\) ) ) ) # ( \HEX_display|temp_in[0]~0_combout\ & ( 
-- !\HEX_display|temp_in[1]~1_combout\ & ( (!\HEX_display|temp_in[3]~3_combout\ & !\HEX_display|temp_in[2]~2_combout\) ) ) ) # ( !\HEX_display|temp_in[0]~0_combout\ & ( !\HEX_display|temp_in[1]~1_combout\ & ( !\HEX_display|temp_in[3]~3_combout\ $ 
-- (\HEX_display|temp_in[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101000001010000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[3]~3_combout\,
	datac => \HEX_display|ALT_INV_temp_in[2]~2_combout\,
	datae => \HEX_display|ALT_INV_temp_in[0]~0_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[1]~1_combout\,
	combout => \HEX_display|hex1|WideOr0~0_combout\);

-- Location: MLABCELL_X82_Y8_N54
\HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = ( p_counter(0) & ( \HEX_display|hex1|WideOr0~0_combout\ & ( (\SW[2]~input_o\ & ((!p_counter(1) $ (!p_counter(2))) # (p_counter(3)))) ) ) ) # ( !p_counter(0) & ( \HEX_display|hex1|WideOr0~0_combout\ & ( (\SW[2]~input_o\ & ((!p_counter(3) 
-- $ (!p_counter(2))) # (p_counter(1)))) ) ) ) # ( p_counter(0) & ( !\HEX_display|hex1|WideOr0~0_combout\ & ( ((!\SW[2]~input_o\) # (!p_counter(1) $ (!p_counter(2)))) # (p_counter(3)) ) ) ) # ( !p_counter(0) & ( !\HEX_display|hex1|WideOr0~0_combout\ & ( 
-- ((!\SW[2]~input_o\) # (!p_counter(3) $ (!p_counter(2)))) # (p_counter(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111011111111110111110100000000011110110000000001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(3),
	datab => ALT_INV_p_counter(1),
	datac => ALT_INV_p_counter(2),
	datad => \ALT_INV_SW[2]~input_o\,
	datae => ALT_INV_p_counter(0),
	dataf => \HEX_display|hex1|ALT_INV_WideOr0~0_combout\,
	combout => \HEX0~0_combout\);

-- Location: FF_X83_Y8_N20
\p_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \p_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \p_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p_counter[4]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X83_Y8_N11
\p_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \p_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \p_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p_counter[5]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X83_Y8_N14
\p_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \p_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \p_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p_counter[6]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X83_Y8_N17
\p_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \p_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \p_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p_counter[7]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X83_Y8_N19
\p_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(7));

-- Location: MLABCELL_X8_Y4_N18
\HEX_display|temp_in[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[5]~5_combout\ = ( \RF_block|k0\(5) & ( \RF_block|k1[5]~DUPLICATE_q\ & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\ & (\RF_block|k2[5]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((\RF_block|k3\(5))))) ) ) ) # ( !\RF_block|k0\(5) & ( 
-- \RF_block|k1[5]~DUPLICATE_q\ & ( (!\SW[0]~input_o\ & (\RF_block|k2[5]~DUPLICATE_q\ & (\SW[1]~input_o\))) # (\SW[0]~input_o\ & (((!\SW[1]~input_o\) # (\RF_block|k3\(5))))) ) ) ) # ( \RF_block|k0\(5) & ( !\RF_block|k1[5]~DUPLICATE_q\ & ( (!\SW[0]~input_o\ & 
-- (((!\SW[1]~input_o\)) # (\RF_block|k2[5]~DUPLICATE_q\))) # (\SW[0]~input_o\ & (((\SW[1]~input_o\ & \RF_block|k3\(5))))) ) ) ) # ( !\RF_block|k0\(5) & ( !\RF_block|k1[5]~DUPLICATE_q\ & ( (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & 
-- (\RF_block|k2[5]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((\RF_block|k3\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k2[5]~DUPLICATE_q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RF_block|ALT_INV_k3\(5),
	datae => \RF_block|ALT_INV_k0\(5),
	dataf => \RF_block|ALT_INV_k1[5]~DUPLICATE_q\,
	combout => \HEX_display|temp_in[5]~5_combout\);

-- Location: MLABCELL_X8_Y4_N30
\HEX_display|temp_in[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[7]~7_combout\ = ( \RF_block|k2\(7) & ( \RF_block|k1\(7) & ( (!\SW[0]~input_o\ & (((\SW[1]~input_o\)) # (\RF_block|k0\(7)))) # (\SW[0]~input_o\ & (((!\SW[1]~input_o\) # (\RF_block|k3[7]~DUPLICATE_q\)))) ) ) ) # ( !\RF_block|k2\(7) & ( 
-- \RF_block|k1\(7) & ( (!\SW[0]~input_o\ & (\RF_block|k0\(7) & (!\SW[1]~input_o\))) # (\SW[0]~input_o\ & (((!\SW[1]~input_o\) # (\RF_block|k3[7]~DUPLICATE_q\)))) ) ) ) # ( \RF_block|k2\(7) & ( !\RF_block|k1\(7) & ( (!\SW[0]~input_o\ & (((\SW[1]~input_o\)) # 
-- (\RF_block|k0\(7)))) # (\SW[0]~input_o\ & (((\SW[1]~input_o\ & \RF_block|k3[7]~DUPLICATE_q\)))) ) ) ) # ( !\RF_block|k2\(7) & ( !\RF_block|k1\(7) & ( (!\SW[0]~input_o\ & (\RF_block|k0\(7) & (!\SW[1]~input_o\))) # (\SW[0]~input_o\ & (((\SW[1]~input_o\ & 
-- \RF_block|k3[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k0\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RF_block|ALT_INV_k3[7]~DUPLICATE_q\,
	datae => \RF_block|ALT_INV_k2\(7),
	dataf => \RF_block|ALT_INV_k1\(7),
	combout => \HEX_display|temp_in[7]~7_combout\);

-- Location: MLABCELL_X8_Y4_N24
\HEX_display|temp_in[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[6]~6_combout\ = ( \RF_block|k3\(6) & ( \SW[1]~input_o\ & ( (\RF_block|k2\(6)) # (\SW[0]~input_o\) ) ) ) # ( !\RF_block|k3\(6) & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & \RF_block|k2\(6)) ) ) ) # ( \RF_block|k3\(6) & ( 
-- !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & ((\RF_block|k0\(6)))) # (\SW[0]~input_o\ & (\RF_block|k1\(6))) ) ) ) # ( !\RF_block|k3\(6) & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & ((\RF_block|k0\(6)))) # (\SW[0]~input_o\ & (\RF_block|k1\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k1\(6),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \RF_block|ALT_INV_k0\(6),
	datad => \RF_block|ALT_INV_k2\(6),
	datae => \RF_block|ALT_INV_k3\(6),
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \HEX_display|temp_in[6]~6_combout\);

-- Location: MLABCELL_X8_Y4_N15
\HEX_display|temp_in[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|temp_in[4]~4_combout\ = ( \RF_block|k0\(4) & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & ((\RF_block|k2\(4)))) # (\SW[0]~input_o\ & (\RF_block|k3\(4))) ) ) ) # ( !\RF_block|k0\(4) & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & 
-- ((\RF_block|k2\(4)))) # (\SW[0]~input_o\ & (\RF_block|k3\(4))) ) ) ) # ( \RF_block|k0\(4) & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\RF_block|k1\(4)) ) ) ) # ( !\RF_block|k0\(4) & ( !\SW[1]~input_o\ & ( (\RF_block|k1\(4) & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_block|ALT_INV_k3\(4),
	datab => \RF_block|ALT_INV_k1\(4),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \RF_block|ALT_INV_k2\(4),
	datae => \RF_block|ALT_INV_k0\(4),
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \HEX_display|temp_in[4]~4_combout\);

-- Location: LABCELL_X9_Y4_N42
\HEX_display|hex0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr6~0_combout\ = ( \HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[5]~5_combout\ & (!\HEX_display|temp_in[7]~7_combout\ $ (\HEX_display|temp_in[6]~6_combout\))) # (\HEX_display|temp_in[5]~5_combout\ & 
-- (\HEX_display|temp_in[7]~7_combout\ & !\HEX_display|temp_in[6]~6_combout\)) ) ) # ( !\HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[5]~5_combout\ & (!\HEX_display|temp_in[7]~7_combout\ & \HEX_display|temp_in[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	datac => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datad => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	combout => \HEX_display|hex0|WideOr6~0_combout\);

-- Location: FF_X83_Y8_N16
\p_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(6));

-- Location: FF_X83_Y8_N13
\p_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(5));

-- Location: FF_X83_Y8_N10
\p_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(4));

-- Location: MLABCELL_X84_Y8_N18
\HEX1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~6_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & (p_counter(7) & ((!p_counter(6))))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- (((\HEX_display|hex0|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(7) $ (((p_counter(6)))))) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & \HEX_display|hex0|WideOr6~0_combout\) ) ) ) # ( !p_counter(5) & ( !p_counter(4) & ( 
-- (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr6~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(7) & ((p_counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100000101001001110000110110001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => ALT_INV_p_counter(7),
	datac => \HEX_display|hex0|ALT_INV_WideOr6~0_combout\,
	datad => ALT_INV_p_counter(6),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~6_combout\);

-- Location: LABCELL_X9_Y4_N36
\HEX_display|hex0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr5~0_combout\ = ( \HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[5]~5_combout\ & (!\HEX_display|temp_in[7]~7_combout\ & \HEX_display|temp_in[6]~6_combout\)) # (\HEX_display|temp_in[5]~5_combout\ & 
-- (\HEX_display|temp_in[7]~7_combout\)) ) ) # ( !\HEX_display|temp_in[4]~4_combout\ & ( (\HEX_display|temp_in[6]~6_combout\ & ((\HEX_display|temp_in[7]~7_combout\) # (\HEX_display|temp_in[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	datac => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datad => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	combout => \HEX_display|hex0|WideOr5~0_combout\);

-- Location: MLABCELL_X84_Y8_N0
\HEX1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~5_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr5~0_combout\)) # (\SW[2]~input_o\ & ((p_counter(7)))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- (\HEX_display|hex0|WideOr5~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(6) & !p_counter(7))))) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr5~0_combout\)) # (\SW[2]~input_o\ & ((p_counter(6)))) ) ) ) # ( 
-- !p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr5~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(6) & p_counter(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100110101001101010011010100000101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|hex0|ALT_INV_WideOr5~0_combout\,
	datab => ALT_INV_p_counter(6),
	datac => \ALT_INV_SW[2]~input_o\,
	datad => ALT_INV_p_counter(7),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~5_combout\);

-- Location: LABCELL_X9_Y4_N33
\HEX_display|hex0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr4~0_combout\ = ( \HEX_display|temp_in[5]~5_combout\ & ( (!\HEX_display|temp_in[7]~7_combout\ & (!\HEX_display|temp_in[4]~4_combout\ & !\HEX_display|temp_in[6]~6_combout\)) # (\HEX_display|temp_in[7]~7_combout\ & 
-- ((\HEX_display|temp_in[6]~6_combout\))) ) ) # ( !\HEX_display|temp_in[5]~5_combout\ & ( (\HEX_display|temp_in[7]~7_combout\ & (!\HEX_display|temp_in[4]~4_combout\ & \HEX_display|temp_in[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datab => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	datac => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	combout => \HEX_display|hex0|WideOr4~0_combout\);

-- Location: MLABCELL_X84_Y8_N30
\HEX1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~4_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr4~0_combout\)))) # (\SW[2]~input_o\ & (p_counter(7) & ((p_counter(6))))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- \HEX_display|hex0|WideOr4~0_combout\) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr4~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(7) $ (((p_counter(6)))))) ) ) ) # ( !p_counter(5) & ( !p_counter(4) & ( 
-- (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr4~0_combout\)))) # (\SW[2]~input_o\ & (p_counter(7) & ((p_counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100001101100001010000010100000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => ALT_INV_p_counter(7),
	datac => \HEX_display|hex0|ALT_INV_WideOr4~0_combout\,
	datad => ALT_INV_p_counter(6),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~4_combout\);

-- Location: LABCELL_X9_Y4_N27
\HEX_display|hex0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr3~0_combout\ = ( \HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[6]~6_combout\ & (!\HEX_display|temp_in[7]~7_combout\ & !\HEX_display|temp_in[5]~5_combout\)) # (\HEX_display|temp_in[6]~6_combout\ & 
-- ((\HEX_display|temp_in[5]~5_combout\))) ) ) # ( !\HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[7]~7_combout\ & (\HEX_display|temp_in[6]~6_combout\ & !\HEX_display|temp_in[5]~5_combout\)) # (\HEX_display|temp_in[7]~7_combout\ & 
-- (!\HEX_display|temp_in[6]~6_combout\ & \HEX_display|temp_in[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datab => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	datac => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	combout => \HEX_display|hex0|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y8_N36
\HEX1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~3_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr3~0_combout\)) # (\SW[2]~input_o\ & ((p_counter(6)))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- (\HEX_display|hex0|WideOr3~0_combout\)) # (\SW[2]~input_o\ & (((!p_counter(6) & !p_counter(7))))) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr3~0_combout\)) # (\SW[2]~input_o\ & (((!p_counter(6) & 
-- p_counter(7))))) ) ) ) # ( !p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & (\HEX_display|hex0|WideOr3~0_combout\)) # (\SW[2]~input_o\ & (((p_counter(6) & !p_counter(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100000101110001011100010100000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|hex0|ALT_INV_WideOr3~0_combout\,
	datab => ALT_INV_p_counter(6),
	datac => \ALT_INV_SW[2]~input_o\,
	datad => ALT_INV_p_counter(7),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~3_combout\);

-- Location: LABCELL_X9_Y4_N30
\HEX_display|hex0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr2~0_combout\ = ( \HEX_display|temp_in[5]~5_combout\ & ( (!\HEX_display|temp_in[7]~7_combout\ & \HEX_display|temp_in[4]~4_combout\) ) ) # ( !\HEX_display|temp_in[5]~5_combout\ & ( (!\HEX_display|temp_in[6]~6_combout\ & 
-- ((\HEX_display|temp_in[4]~4_combout\))) # (\HEX_display|temp_in[6]~6_combout\ & (!\HEX_display|temp_in[7]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datab => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	datac => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	combout => \HEX_display|hex0|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y8_N42
\HEX1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~2_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & ((\HEX_display|hex0|WideOr2~0_combout\))) # (\SW[2]~input_o\ & (!p_counter(7))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- (((\HEX_display|hex0|WideOr2~0_combout\)))) # (\SW[2]~input_o\ & ((!p_counter(7)) # ((!p_counter(6))))) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\SW[2]~input_o\ & \HEX_display|hex0|WideOr2~0_combout\) ) ) ) # ( !p_counter(5) & ( !p_counter(4) & ( 
-- (!\SW[2]~input_o\ & (((\HEX_display|hex0|WideOr2~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(7) & ((p_counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100000101001011111010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => ALT_INV_p_counter(7),
	datac => \HEX_display|hex0|ALT_INV_WideOr2~0_combout\,
	datad => ALT_INV_p_counter(6),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~2_combout\);

-- Location: LABCELL_X9_Y4_N54
\HEX_display|hex0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr1~0_combout\ = ( \HEX_display|temp_in[4]~4_combout\ & ( !\HEX_display|temp_in[7]~7_combout\ $ (((!\HEX_display|temp_in[5]~5_combout\ & \HEX_display|temp_in[6]~6_combout\))) ) ) # ( !\HEX_display|temp_in[4]~4_combout\ & ( 
-- (\HEX_display|temp_in[5]~5_combout\ & (!\HEX_display|temp_in[7]~7_combout\ & !\HEX_display|temp_in[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	datac => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datad => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	combout => \HEX_display|hex0|WideOr1~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\HEX1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~1_combout\ = ( \HEX_display|hex0|WideOr1~0_combout\ & ( p_counter(4) & ( (!\SW[2]~input_o\) # (!p_counter(7) $ (((!p_counter(5) & p_counter(6))))) ) ) ) # ( !\HEX_display|hex0|WideOr1~0_combout\ & ( p_counter(4) & ( (\SW[2]~input_o\ & (!p_counter(7) 
-- $ (((!p_counter(5) & p_counter(6)))))) ) ) ) # ( \HEX_display|hex0|WideOr1~0_combout\ & ( !p_counter(4) & ( (!\SW[2]~input_o\) # ((!p_counter(7) & (p_counter(5) & !p_counter(6)))) ) ) ) # ( !\HEX_display|hex0|WideOr1~0_combout\ & ( !p_counter(4) & ( 
-- (\SW[2]~input_o\ & (!p_counter(7) & (p_counter(5) & !p_counter(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000101011101010101001000100000101001110111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => ALT_INV_p_counter(7),
	datac => ALT_INV_p_counter(5),
	datad => ALT_INV_p_counter(6),
	datae => \HEX_display|hex0|ALT_INV_WideOr1~0_combout\,
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~1_combout\);

-- Location: LABCELL_X9_Y4_N15
\HEX_display|hex0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_display|hex0|WideOr0~0_combout\ = ( \HEX_display|temp_in[4]~4_combout\ & ( (!\HEX_display|temp_in[7]~7_combout\ & (!\HEX_display|temp_in[6]~6_combout\ $ (\HEX_display|temp_in[5]~5_combout\))) ) ) # ( !\HEX_display|temp_in[4]~4_combout\ & ( 
-- (!\HEX_display|temp_in[5]~5_combout\ & (!\HEX_display|temp_in[7]~7_combout\ $ (\HEX_display|temp_in[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_display|ALT_INV_temp_in[7]~7_combout\,
	datab => \HEX_display|ALT_INV_temp_in[6]~6_combout\,
	datac => \HEX_display|ALT_INV_temp_in[5]~5_combout\,
	dataf => \HEX_display|ALT_INV_temp_in[4]~4_combout\,
	combout => \HEX_display|hex0|WideOr0~0_combout\);

-- Location: MLABCELL_X84_Y8_N6
\HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = ( p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & (((!\HEX_display|hex0|WideOr0~0_combout\)))) # (\SW[2]~input_o\ & (((!p_counter(6))) # (p_counter(7)))) ) ) ) # ( !p_counter(5) & ( p_counter(4) & ( (!\SW[2]~input_o\ & 
-- (((!\HEX_display|hex0|WideOr0~0_combout\)))) # (\SW[2]~input_o\ & (((p_counter(6))) # (p_counter(7)))) ) ) ) # ( p_counter(5) & ( !p_counter(4) & ( (!\HEX_display|hex0|WideOr0~0_combout\) # (\SW[2]~input_o\) ) ) ) # ( !p_counter(5) & ( !p_counter(4) & ( 
-- (!\SW[2]~input_o\ & (((!\HEX_display|hex0|WideOr0~0_combout\)))) # (\SW[2]~input_o\ & (!p_counter(7) $ (((!p_counter(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000111100100111101011111010110110001111101011111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => ALT_INV_p_counter(7),
	datac => \HEX_display|hex0|ALT_INV_WideOr0~0_combout\,
	datad => ALT_INV_p_counter(6),
	datae => ALT_INV_p_counter(5),
	dataf => ALT_INV_p_counter(4),
	combout => \HEX1~0_combout\);

-- Location: LABCELL_X83_Y8_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( p_counter(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( p_counter(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X83_Y8_N23
\p_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(8));

-- Location: LABCELL_X83_Y8_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( p_counter(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( p_counter(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p_counter(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X83_Y8_N26
\p_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(9));

-- Location: LABCELL_X83_Y8_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( p_counter(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( p_counter(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X83_Y8_N29
\p_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(10));

-- Location: LABCELL_X83_Y8_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( p_counter(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( p_counter(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(11),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X83_Y8_N32
\p_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(11));

-- Location: MLABCELL_X82_Y8_N48
\hex2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr6~0_combout\ = ( p_counter(11) & ( (p_counter(8) & (!p_counter(9) $ (!p_counter(10)))) ) ) # ( !p_counter(11) & ( (!p_counter(9) & (!p_counter(8) $ (!p_counter(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(9),
	datac => ALT_INV_p_counter(8),
	datad => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr6~0_combout\);

-- Location: MLABCELL_X82_Y8_N51
\hex2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr5~0_combout\ = ( p_counter(11) & ( (!p_counter(8) & ((p_counter(10)))) # (p_counter(8) & (p_counter(9))) ) ) # ( !p_counter(11) & ( (p_counter(10) & (!p_counter(8) $ (!p_counter(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	datab => ALT_INV_p_counter(9),
	datad => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr5~0_combout\);

-- Location: MLABCELL_X82_Y8_N42
\hex2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr4~0_combout\ = ( p_counter(11) & ( (p_counter(10) & ((!p_counter(8)) # (p_counter(9)))) ) ) # ( !p_counter(11) & ( (!p_counter(8) & (p_counter(9) & !p_counter(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	datab => ALT_INV_p_counter(9),
	datac => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr4~0_combout\);

-- Location: LABCELL_X83_Y8_N54
\hex2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr3~0_combout\ = ( p_counter(10) & ( p_counter(11) & ( (p_counter(8) & p_counter(9)) ) ) ) # ( !p_counter(10) & ( p_counter(11) & ( (!p_counter(8) & p_counter(9)) ) ) ) # ( p_counter(10) & ( !p_counter(11) & ( !p_counter(8) $ (p_counter(9)) ) ) 
-- ) # ( !p_counter(10) & ( !p_counter(11) & ( (p_counter(8) & !p_counter(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	datac => ALT_INV_p_counter(9),
	datae => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr3~0_combout\);

-- Location: MLABCELL_X82_Y8_N36
\hex2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr2~0_combout\ = ( p_counter(11) & ( (!p_counter(9) & (p_counter(8) & !p_counter(10))) ) ) # ( !p_counter(11) & ( ((!p_counter(9) & p_counter(10))) # (p_counter(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(9),
	datac => ALT_INV_p_counter(8),
	datad => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr2~0_combout\);

-- Location: MLABCELL_X82_Y8_N45
\hex2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr1~0_combout\ = ( p_counter(11) & ( (p_counter(8) & (!p_counter(9) & p_counter(10))) ) ) # ( !p_counter(11) & ( (!p_counter(8) & (p_counter(9) & !p_counter(10))) # (p_counter(8) & ((!p_counter(10)) # (p_counter(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	datab => ALT_INV_p_counter(9),
	datad => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr1~0_combout\);

-- Location: MLABCELL_X82_Y8_N39
\hex2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr0~0_combout\ = ( p_counter(11) & ( ((!p_counter(10)) # (p_counter(9))) # (p_counter(8)) ) ) # ( !p_counter(11) & ( (!p_counter(9) & ((p_counter(10)))) # (p_counter(9) & ((!p_counter(8)) # (!p_counter(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(8),
	datab => ALT_INV_p_counter(9),
	datad => ALT_INV_p_counter(10),
	dataf => ALT_INV_p_counter(11),
	combout => \hex2|WideOr0~0_combout\);

-- Location: LABCELL_X83_Y8_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \p_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \p_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p_counter[12]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X83_Y8_N35
\p_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( p_counter(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( p_counter(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(13),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X83_Y8_N37
\p_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(13));

-- Location: FF_X83_Y8_N34
\p_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(12));

-- Location: LABCELL_X83_Y8_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \p_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \p_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p_counter[14]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X83_Y8_N41
\p_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( p_counter(15) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p_counter(15),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\);

-- Location: FF_X83_Y8_N43
\p_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(15));

-- Location: FF_X83_Y8_N40
\p_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p_counter(14));

-- Location: MLABCELL_X84_Y8_N12
\hex3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr6~0_combout\ = ( p_counter(14) & ( (!p_counter(13) & (!p_counter(12) $ (p_counter(15)))) ) ) # ( !p_counter(14) & ( (p_counter(12) & (!p_counter(13) $ (p_counter(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datab => ALT_INV_p_counter(12),
	datad => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr6~0_combout\);

-- Location: MLABCELL_X84_Y8_N57
\hex3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr5~0_combout\ = ( p_counter(14) & ( (!p_counter(13) & (!p_counter(12) $ (!p_counter(15)))) # (p_counter(13) & ((!p_counter(12)) # (p_counter(15)))) ) ) # ( !p_counter(14) & ( (p_counter(13) & (p_counter(12) & p_counter(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datac => ALT_INV_p_counter(12),
	datad => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr5~0_combout\);

-- Location: MLABCELL_X84_Y8_N54
\hex3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr4~0_combout\ = ( p_counter(14) & ( (p_counter(15) & ((!p_counter(12)) # (p_counter(13)))) ) ) # ( !p_counter(14) & ( (p_counter(13) & (!p_counter(12) & !p_counter(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datab => ALT_INV_p_counter(12),
	datad => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr4~0_combout\);

-- Location: MLABCELL_X84_Y8_N24
\hex3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr3~0_combout\ = ( p_counter(14) & ( (!p_counter(13) & (!p_counter(12) & !p_counter(15))) # (p_counter(13) & (p_counter(12))) ) ) # ( !p_counter(14) & ( (!p_counter(13) & (p_counter(12) & !p_counter(15))) # (p_counter(13) & (!p_counter(12) & 
-- p_counter(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datab => ALT_INV_p_counter(12),
	datad => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y8_N27
\hex3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr2~0_combout\ = ( p_counter(14) & ( (!p_counter(15) & ((!p_counter(13)) # (p_counter(12)))) ) ) # ( !p_counter(14) & ( (p_counter(12) & ((!p_counter(13)) # (!p_counter(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datab => ALT_INV_p_counter(12),
	datac => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y8_N15
\hex3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr1~0_combout\ = ( p_counter(14) & ( (p_counter(12) & (!p_counter(13) $ (!p_counter(15)))) ) ) # ( !p_counter(14) & ( (!p_counter(15) & ((p_counter(12)) # (p_counter(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p_counter(13),
	datab => ALT_INV_p_counter(12),
	datac => ALT_INV_p_counter(15),
	dataf => ALT_INV_p_counter(14),
	combout => \hex3|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y8_N51
\hex3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr0~0_combout\ = ( \p_counter[12]~DUPLICATE_q\ & ( (!\p_counter[14]~DUPLICATE_q\ $ (!p_counter(13))) # (p_counter(15)) ) ) # ( !\p_counter[12]~DUPLICATE_q\ & ( (!\p_counter[14]~DUPLICATE_q\ $ (!p_counter(15))) # (p_counter(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011111111001111001111111100111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p_counter[14]~DUPLICATE_q\,
	datac => ALT_INV_p_counter(15),
	datad => ALT_INV_p_counter(13),
	dataf => \ALT_INV_p_counter[12]~DUPLICATE_q\,
	combout => \hex3|WideOr0~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X4_Y2_N18
\Control|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control|WideOr1~0_combout\ = ( \IR_reg2reg|q\(1) & ( \IR_reg2reg|q\(3) & ( !\IR_reg2reg|q\(0) ) ) ) # ( !\IR_reg2reg|q\(1) & ( \IR_reg2reg|q\(3) & ( (\IR_reg2reg|q\(0)) # (\IR_reg2reg|q\(2)) ) ) ) # ( \IR_reg2reg|q\(1) & ( !\IR_reg2reg|q\(3) & ( 
-- (!\IR_reg2reg|q\(2) & !\IR_reg2reg|q\(0)) ) ) ) # ( !\IR_reg2reg|q\(1) & ( !\IR_reg2reg|q\(3) & ( \IR_reg2reg|q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101000001010000001011111010111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg2reg|ALT_INV_q\(2),
	datac => \IR_reg2reg|ALT_INV_q\(0),
	datae => \IR_reg2reg|ALT_INV_q\(1),
	dataf => \IR_reg2reg|ALT_INV_q\(3),
	combout => \Control|WideOr1~0_combout\);

-- Location: FF_X4_Y2_N20
\Control|FlagWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \Control|WideOr1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|FlagWrite~q\);

-- Location: FF_X7_Y2_N11
N : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \ALU|N~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Control|FlagWrite~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N~q\);

-- Location: FF_X7_Y2_N38
\IR_reg4reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q[0]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(0));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X7_Y2_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \IR_reg3reg|q[0]~DUPLICATE_q\ & ( \Control|MemWrite~q\ & ( (!\SW[3]~input_o\) # ((!\SW[4]~input_o\ & (\N~q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(0))))) ) ) ) # ( !\IR_reg3reg|q[0]~DUPLICATE_q\ & ( \Control|MemWrite~q\ & ( 
-- (!\SW[3]~input_o\ & (((!\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & (\N~q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(0)))))) ) ) ) # ( \IR_reg3reg|q[0]~DUPLICATE_q\ & ( !\Control|MemWrite~q\ & ( (!\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # 
-- (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & (\N~q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(0)))))) ) ) ) # ( !\IR_reg3reg|q[0]~DUPLICATE_q\ & ( !\Control|MemWrite~q\ & ( (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & (\N~q\)) # (\SW[4]~input_o\ & 
-- ((\IR_reg4reg|q\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_N~q\,
	datac => \IR_reg4reg|ALT_INV_q\(0),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \IR_reg3reg|ALT_INV_q[0]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_MemWrite~q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X7_Y2_N26
\IR_reg4reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(1));

-- Location: LABCELL_X4_Y2_N54
\ALU|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal5~2_combout\ = ( \ALU|Equal5~1_combout\ & ( \ALU|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU|ALT_INV_Equal5~0_combout\,
	dataf => \ALU|ALT_INV_Equal5~1_combout\,
	combout => \ALU|Equal5~2_combout\);

-- Location: FF_X4_Y2_N55
Z : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	d => \ALU|Equal5~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \Control|FlagWrite~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Z~q\);

-- Location: LABCELL_X7_Y2_N24
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \IR_reg3reg|q\(1) & ( \Z~q\ & ( (!\SW[3]~input_o\ & (((\Control|ALUsel~q\ & !\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\IR_reg4reg|q\(1)) # ((!\SW[4]~input_o\)))) ) ) ) # ( !\IR_reg3reg|q\(1) & ( \Z~q\ & ( (!\SW[3]~input_o\ & 
-- (((\SW[4]~input_o\) # (\Control|ALUsel~q\)))) # (\SW[3]~input_o\ & ((!\IR_reg4reg|q\(1)) # ((!\SW[4]~input_o\)))) ) ) ) # ( \IR_reg3reg|q\(1) & ( !\Z~q\ & ( (!\SW[3]~input_o\ & (((\Control|ALUsel~q\ & !\SW[4]~input_o\)))) # (\SW[3]~input_o\ & 
-- (!\IR_reg4reg|q\(1) & ((\SW[4]~input_o\)))) ) ) ) # ( !\IR_reg3reg|q\(1) & ( !\Z~q\ & ( (!\SW[3]~input_o\ & (((\SW[4]~input_o\) # (\Control|ALUsel~q\)))) # (\SW[3]~input_o\ & (!\IR_reg4reg|q\(1) & ((\SW[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111010001100000000101000111111111110100011111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg4reg|ALT_INV_q\(1),
	datab => \Control|ALT_INV_ALUsel~q\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \IR_reg3reg|ALT_INV_q\(1),
	dataf => \ALT_INV_Z~q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X7_Y2_N50
\IR_reg4reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(2));

-- Location: LABCELL_X7_Y2_N48
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Control|ALUsel~q\ & ( \IR_reg3reg|q\(2) & ( (!\SW[3]~input_o\ & (((!\Control|R2B~q\) # (\SW[4]~input_o\)))) # (\SW[3]~input_o\ & (((!\SW[4]~input_o\)) # (\IR_reg4reg|q\(2)))) ) ) ) # ( !\Control|ALUsel~q\ & ( \IR_reg3reg|q\(2) & ( 
-- (!\SW[3]~input_o\ & (((!\Control|R2B~q\) # (\SW[4]~input_o\)))) # (\SW[3]~input_o\ & (\IR_reg4reg|q\(2) & ((\SW[4]~input_o\)))) ) ) ) # ( \Control|ALUsel~q\ & ( !\IR_reg3reg|q\(2) & ( (!\SW[3]~input_o\ & (((!\Control|R2B~q\ & !\SW[4]~input_o\)))) # 
-- (\SW[3]~input_o\ & (((!\SW[4]~input_o\)) # (\IR_reg4reg|q\(2)))) ) ) ) # ( !\Control|ALUsel~q\ & ( !\IR_reg3reg|q\(2) & ( (!\SW[3]~input_o\ & (((!\Control|R2B~q\ & !\SW[4]~input_o\)))) # (\SW[3]~input_o\ & (\IR_reg4reg|q\(2) & ((\SW[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000101110011110000010111000000111101011100111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg4reg|ALT_INV_q\(2),
	datab => \Control|ALT_INV_R2B~q\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \Control|ALT_INV_ALUsel~q\,
	dataf => \IR_reg3reg|ALT_INV_q\(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X3_Y2_N14
\IR_reg4reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q[3]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(3));

-- Location: MLABCELL_X3_Y2_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \IR_reg3reg|q[3]~DUPLICATE_q\ & ( \Control|R1B~q\ & ( (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & ((\Control|ALUop\(0)))) # (\SW[4]~input_o\ & (!\IR_reg4reg|q\(3))))) ) ) ) # ( !\IR_reg3reg|q[3]~DUPLICATE_q\ & ( \Control|R1B~q\ & ( 
-- (!\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & ((\Control|ALUop\(0)))) # (\SW[4]~input_o\ & (!\IR_reg4reg|q\(3))))) ) ) ) # ( \IR_reg3reg|q[3]~DUPLICATE_q\ & ( !\Control|R1B~q\ & ( (!\SW[3]~input_o\ & 
-- (((!\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & ((\Control|ALUop\(0)))) # (\SW[4]~input_o\ & (!\IR_reg4reg|q\(3))))) ) ) ) # ( !\IR_reg3reg|q[3]~DUPLICATE_q\ & ( !\Control|R1B~q\ & ( (!\SW[3]~input_o\) # ((!\SW[4]~input_o\ & 
-- ((\Control|ALUop\(0)))) # (\SW[4]~input_o\ & (!\IR_reg4reg|q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111101110101011110100010000000101111011100000010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \IR_reg4reg|ALT_INV_q\(3),
	datac => \Control|ALT_INV_ALUop\(0),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \IR_reg3reg|ALT_INV_q[3]~DUPLICATE_q\,
	dataf => \Control|ALT_INV_R1B~q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X3_Y2_N37
\IR_reg4reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(4));

-- Location: MLABCELL_X3_Y2_N36
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \IR_reg3reg|q\(4) & ( \Control|RFWrite~q\ & ( (!\SW[3]~input_o\) # ((!\SW[4]~input_o\ & (\Control|ALUop[1]~DUPLICATE_q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(4))))) ) ) ) # ( !\IR_reg3reg|q\(4) & ( \Control|RFWrite~q\ & ( 
-- (!\SW[3]~input_o\ & (((!\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & (\Control|ALUop[1]~DUPLICATE_q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(4)))))) ) ) ) # ( \IR_reg3reg|q\(4) & ( !\Control|RFWrite~q\ & ( (!\SW[3]~input_o\ & 
-- (((\SW[4]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & (\Control|ALUop[1]~DUPLICATE_q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(4)))))) ) ) ) # ( !\IR_reg3reg|q\(4) & ( !\Control|RFWrite~q\ & ( (\SW[3]~input_o\ & ((!\SW[4]~input_o\ & 
-- (\Control|ALUop[1]~DUPLICATE_q\)) # (\SW[4]~input_o\ & ((\IR_reg4reg|q\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALT_INV_ALUop[1]~DUPLICATE_q\,
	datab => \IR_reg4reg|ALT_INV_q\(4),
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \IR_reg3reg|ALT_INV_q\(4),
	dataf => \Control|ALT_INV_RFWrite~q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X4_Y4_N34
\IR_reg3reg|q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg2reg|q\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Control|PCSel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg3reg|q[5]~DUPLICATE_q\);

-- Location: FF_X3_Y2_N31
\IR_reg4reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q[5]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(5));

-- Location: MLABCELL_X3_Y2_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \IR_reg3reg|q[5]~DUPLICATE_q\ & ( \SW[3]~input_o\ & ( (!\SW[4]~input_o\ & ((\Control|ALUop[2]~DUPLICATE_q\))) # (\SW[4]~input_o\ & (\IR_reg4reg|q\(5))) ) ) ) # ( !\IR_reg3reg|q[5]~DUPLICATE_q\ & ( \SW[3]~input_o\ & ( (!\SW[4]~input_o\ 
-- & ((\Control|ALUop[2]~DUPLICATE_q\))) # (\SW[4]~input_o\ & (\IR_reg4reg|q\(5))) ) ) ) # ( \IR_reg3reg|q[5]~DUPLICATE_q\ & ( !\SW[3]~input_o\ & ( (!\Control|RwSel~q\) # (\SW[4]~input_o\) ) ) ) # ( !\IR_reg3reg|q[5]~DUPLICATE_q\ & ( !\SW[3]~input_o\ & ( 
-- (!\SW[4]~input_o\ & !\Control|RwSel~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111111110000111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg4reg|ALT_INV_q\(5),
	datab => \Control|ALT_INV_ALUop[2]~DUPLICATE_q\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \Control|ALT_INV_RwSel~q\,
	datae => \IR_reg3reg|ALT_INV_q[5]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X6_Y4_N31
\IR_reg4reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~inputCLKENA0_outclk\,
	asdata => \IR_reg3reg|q\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR_reg4reg|q\(6));

-- Location: MLABCELL_X8_Y2_N48
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \SW[4]~input_o\ & ( \IR_reg4reg|q\(6) & ( (\SW[3]~input_o\) # (\IR_reg3reg|q\(6)) ) ) ) # ( !\SW[4]~input_o\ & ( \IR_reg4reg|q\(6) & ( (!\SW[3]~input_o\ & (\Control|R1Sel~q\)) # (\SW[3]~input_o\ & ((\Control|ALU2\(0)))) ) ) ) # ( 
-- \SW[4]~input_o\ & ( !\IR_reg4reg|q\(6) & ( (\IR_reg3reg|q\(6) & !\SW[3]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( !\IR_reg4reg|q\(6) & ( (!\SW[3]~input_o\ & (\Control|R1Sel~q\)) # (\SW[3]~input_o\ & ((\Control|ALU2\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg3reg|ALT_INV_q\(6),
	datab => \Control|ALT_INV_R1Sel~q\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \Control|ALT_INV_ALU2\(0),
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \IR_reg4reg|ALT_INV_q\(6),
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X6_Y4_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \IR_reg3reg|q\(7) & ( \SW[3]~input_o\ & ( (!\SW[4]~input_o\ & ((\Control|ALU2[1]~DUPLICATE_q\))) # (\SW[4]~input_o\ & (\IR_reg4reg|q\(7))) ) ) ) # ( !\IR_reg3reg|q\(7) & ( \SW[3]~input_o\ & ( (!\SW[4]~input_o\ & 
-- ((\Control|ALU2[1]~DUPLICATE_q\))) # (\SW[4]~input_o\ & (\IR_reg4reg|q\(7))) ) ) ) # ( \IR_reg3reg|q\(7) & ( !\SW[3]~input_o\ & ( (!\Control|PCSel~q\) # (\SW[4]~input_o\) ) ) ) # ( !\IR_reg3reg|q\(7) & ( !\SW[3]~input_o\ & ( (!\SW[4]~input_o\ & 
-- !\Control|PCSel~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111111110000111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_reg4reg|ALT_INV_q\(7),
	datab => \Control|ALT_INV_ALU2[1]~DUPLICATE_q\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \Control|ALT_INV_PCSel~q\,
	datae => \IR_reg3reg|ALT_INV_q\(7),
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X3_Y2_N24
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \SW[3]~input_o\ & ( \Control|ALU2\(2) ) ) # ( !\SW[3]~input_o\ & ( \Control|ALU2\(2) ) ) # ( !\SW[3]~input_o\ & ( !\Control|ALU2\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \Control|ALT_INV_ALU2\(2),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X3_Y2_N0
\LEDR[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[8]$latch~combout\ = ( \LEDR[8]$latch~combout\ & ( \Mux8~0_combout\ ) ) # ( !\LEDR[8]$latch~combout\ & ( \Mux8~0_combout\ & ( !\SW[4]~input_o\ ) ) ) # ( \LEDR[8]$latch~combout\ & ( !\Mux8~0_combout\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_LEDR[8]$latch~combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \LEDR[8]$latch~combout\);

-- Location: MLABCELL_X3_Y2_N45
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( \SW[4]~input_o\ & ( \SW[3]~input_o\ ) ) # ( !\SW[4]~input_o\ & ( \SW[3]~input_o\ ) ) # ( \SW[4]~input_o\ & ( !\SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: MLABCELL_X3_Y2_N54
\LEDR[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[9]$latch~combout\ = ( \Control|PCSel~q\ & ( (\LEDR[9]$latch~combout\ & \Decoder0~0_combout\) ) ) # ( !\Control|PCSel~q\ & ( (!\Decoder0~0_combout\) # (\LEDR[9]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LEDR[9]$latch~combout\,
	datad => \ALT_INV_Decoder0~0_combout\,
	dataf => \Control|ALT_INV_PCSel~q\,
	combout => \LEDR[9]$latch~combout\);
END structure;


