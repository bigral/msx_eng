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

-- DATE "05/06/2023 19:43:59"

-- 
-- Device: Altera EPM3128ATC100-10 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	msx_eng IS
    PORT (
	reset_n_i : IN std_logic;
	addr_i : IN std_logic_vector(15 DOWNTO 0);
	ppi_port_a_i : IN std_logic_vector(7 DOWNTO 0);
	iorq_n_i : IN std_logic;
	m1_n_i : IN std_logic;
	mreq_n_i : IN std_logic;
	rfsh_n_i : IN std_logic;
	rd_n_i : IN std_logic;
	wr_n_i : IN std_logic;
	en_ascii16_n_i : IN std_logic;
	ram_cs_n_o : OUT std_logic;
	rom_cs_n_o : OUT std_logic;
	rom_addr_o : OUT std_logic_vector(17 DOWNTO 14);
	ppi_cs_n_o : OUT std_logic;
	vdp_cswr_n_o : OUT std_logic;
	vdp_csrd_n_o : OUT std_logic;
	psg_bdir_o : OUT std_logic;
	psg_bc1_o : OUT std_logic;
	data_io : INOUT std_logic_vector(7 DOWNTO 0)
	);
END msx_eng;

-- Design Ports Information
-- reset_n_i	=>  Location: PIN_89
-- addr_i[0]	=>  Location: PIN_64
-- addr_i[1]	=>  Location: PIN_79
-- addr_i[2]	=>  Location: PIN_68
-- addr_i[3]	=>  Location: PIN_45
-- addr_i[4]	=>  Location: PIN_84
-- addr_i[5]	=>  Location: PIN_7
-- addr_i[6]	=>  Location: PIN_96
-- addr_i[7]	=>  Location: PIN_94
-- addr_i[8]	=>  Location: PIN_67
-- addr_i[9]	=>  Location: PIN_55
-- addr_i[10]	=>  Location: PIN_44
-- addr_i[11]	=>  Location: PIN_93
-- addr_i[12]	=>  Location: PIN_98
-- addr_i[13]	=>  Location: PIN_21
-- addr_i[14]	=>  Location: PIN_50
-- addr_i[15]	=>  Location: PIN_92
-- ppi_port_a_i[0]	=>  Location: PIN_48
-- ppi_port_a_i[1]	=>  Location: PIN_58
-- ppi_port_a_i[2]	=>  Location: PIN_8
-- ppi_port_a_i[3]	=>  Location: PIN_56
-- ppi_port_a_i[4]	=>  Location: PIN_49
-- ppi_port_a_i[5]	=>  Location: PIN_9
-- ppi_port_a_i[6]	=>  Location: PIN_54
-- ppi_port_a_i[7]	=>  Location: PIN_77
-- iorq_n_i	=>  Location: PIN_23
-- m1_n_i	=>  Location: PIN_42
-- mreq_n_i	=>  Location: PIN_16
-- rfsh_n_i	=>  Location: PIN_76
-- rd_n_i	=>  Location: PIN_85
-- wr_n_i	=>  Location: PIN_5
-- en_ascii16_n_i	=>  Location: PIN_61
-- rom_addr_o[17]	=>  Location: PIN_99
-- psg_bdir_o	=>  Location: PIN_35
-- vdp_cswr_n_o	=>  Location: PIN_32
-- vdp_csrd_n_o	=>  Location: PIN_31
-- psg_bc1_o	=>  Location: PIN_30
-- ppi_cs_n_o	=>  Location: PIN_29
-- data_io[0]	=>  Location: PIN_37
-- data_io[1]	=>  Location: PIN_14
-- data_io[2]	=>  Location: PIN_36
-- data_io[3]	=>  Location: PIN_28
-- data_io[4]	=>  Location: PIN_27
-- data_io[5]	=>  Location: PIN_13
-- data_io[6]	=>  Location: PIN_12
-- data_io[7]	=>  Location: PIN_10
-- ram_cs_n_o	=>  Location: PIN_100
-- rom_cs_n_o	=>  Location: PIN_2
-- rom_addr_o[16]	=>  Location: PIN_25
-- rom_addr_o[14]	=>  Location: PIN_24
-- rom_addr_o[15]	=>  Location: PIN_1


ARCHITECTURE structure OF msx_eng IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_reset_n_i : std_logic;
SIGNAL ww_addr_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ppi_port_a_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_iorq_n_i : std_logic;
SIGNAL ww_m1_n_i : std_logic;
SIGNAL ww_mreq_n_i : std_logic;
SIGNAL ww_rfsh_n_i : std_logic;
SIGNAL ww_rd_n_i : std_logic;
SIGNAL ww_wr_n_i : std_logic;
SIGNAL ww_en_ascii16_n_i : std_logic;
SIGNAL ww_ram_cs_n_o : std_logic;
SIGNAL ww_rom_cs_n_o : std_logic;
SIGNAL ww_rom_addr_o : std_logic_vector(17 DOWNTO 14);
SIGNAL ww_ppi_cs_n_o : std_logic;
SIGNAL ww_vdp_cswr_n_o : std_logic;
SIGNAL ww_vdp_csrd_n_o : std_logic;
SIGNAL ww_psg_bdir_o : std_logic;
SIGNAL ww_psg_bc1_o : std_logic;
SIGNAL \iio_wr~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iio_wr~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_cswr_n_o~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \vdp_csrd_n_o~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \psg_bc1_o~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ippi_s~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \islot_en~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \hibyte_ppi_a|y_o~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|y_o~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[0]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[1]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[2]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[3]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[4]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[5]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[6]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \data_io[7]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[0]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[0]~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[1]~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[1]~41_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[5]~45_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[7]~49_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[3]~53_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~57_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[4]~61_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[6]~65_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[2]~69_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[0]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[0]~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~25_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[1]~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[1]~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_cs_n_o~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]_632~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~56_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~64_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~72_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[14]~74_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[15]~77_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_wr_s~8_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ram_cs_n_o~2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank1_s[0]~6sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank3_s[0]~6sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank0_s[1]~6sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \imap_bank2_s[1]~7sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1~5sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|process_0~6sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \lobyte_ppi_a|process_0~8sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_rd_s~1sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal4~3sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[1]~4sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg1[2]~5sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~10sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~12sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]~47sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[16]~47sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \rom_addr_o[17]~48sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux0~13sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux0~13sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux0~13sexpand2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux0~13sexpand3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|WideAnd0~5sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_5~14sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux1~10sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux1~10sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux1~13sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|Mux1~13sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_rd_s~4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \idata_exp3_i[0]~95_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \slot3_exp|exp_wr_s~16_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \iascii_mapper_reg0[2]~26_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg1[2]~27_dataout\ : std_logic;
SIGNAL \~VCC~0~dataout\ : std_logic;
SIGNAL \wr_n_i~dataout\ : std_logic;
SIGNAL \iorq_n_i~dataout\ : std_logic;
SIGNAL \m1_n_i~dataout\ : std_logic;
SIGNAL \iio_wr~3_dataout\ : std_logic;
SIGNAL \vdp_cswr_n_o~4_dataout\ : std_logic;
SIGNAL \rd_n_i~dataout\ : std_logic;
SIGNAL \vdp_csrd_n_o~4_dataout\ : std_logic;
SIGNAL \psg_bc1_o~3_dataout\ : std_logic;
SIGNAL \ippi_s~4_dataout\ : std_logic;
SIGNAL \reset_n_i~dataout\ : std_logic;
SIGNAL \islot_en~9_dataout\ : std_logic;
SIGNAL \lobyte_ppi_a|process_0~8sexpand0_dataout\ : std_logic;
SIGNAL \lobyte_ppi_a|process_0~6sexpand0_dataout\ : std_logic;
SIGNAL \process_1~5sexpand0_dataout\ : std_logic;
SIGNAL \lobyte_ppi_a|y_o~24_dataout\ : std_logic;
SIGNAL \mreq_n_i~dataout\ : std_logic;
SIGNAL \hibyte_ppi_a|y_o~24_dataout\ : std_logic;
SIGNAL \rfsh_n_i~dataout\ : std_logic;
SIGNAL \slot3_exp|exp_rd_s~4_dataout\ : std_logic;
SIGNAL \idata_exp3_i[0]~10sexpand1_dataout\ : std_logic;
SIGNAL \idata_exp3_i[0]~57_dataout\ : std_logic;
SIGNAL \slot3_exp|exp_wr_s~8_dataout\ : std_logic;
SIGNAL \slot3_exp|exp_rd_s~1sexpand1_dataout\ : std_logic;
SIGNAL \data_io[0]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[1]~41_dataout\ : std_logic;
SIGNAL \data_io[1]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[0]~95_dataout\ : std_logic;
SIGNAL \idata_exp3_i[2]~69_dataout\ : std_logic;
SIGNAL \slot3_exp|exp_wr_s~16_dataout\ : std_logic;
SIGNAL \data_io[2]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[3]~53_dataout\ : std_logic;
SIGNAL \data_io[3]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[4]~61_dataout\ : std_logic;
SIGNAL \data_io[4]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[5]~45_dataout\ : std_logic;
SIGNAL \data_io[5]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[6]~65_dataout\ : std_logic;
SIGNAL \data_io[6]$latch~6_dataout\ : std_logic;
SIGNAL \idata_exp3_i[7]~49_dataout\ : std_logic;
SIGNAL \data_io[7]$latch~6_dataout\ : std_logic;
SIGNAL \ram_cs_n_o~2_dataout\ : std_logic;
SIGNAL \ram_cs_n_o~7_dataout\ : std_logic;
SIGNAL \en_ascii16_n_i~dataout\ : std_logic;
SIGNAL \rom_cs_n_o~7_dataout\ : std_logic;
SIGNAL \rom_addr_o[16]~47sexpand0_dataout\ : std_logic;
SIGNAL \process_5~14sexp_dataout\ : std_logic;
SIGNAL \rom_addr_o[16]~47sexpand1_dataout\ : std_logic;
SIGNAL \rom_addr_o[17]~48sexpand1_dataout\ : std_logic;
SIGNAL \rom_addr_o[16]_632~6_dataout\ : std_logic;
SIGNAL \imap_bank0_s[1]~6sexpand0_dataout\ : std_logic;
SIGNAL \imap_bank0_s[0]~20_dataout\ : std_logic;
SIGNAL \slot3_exp|WideAnd0~5sexp_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux1~10sexp1_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux1~10sexp2_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux1~13sexp1_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux1~13sexp2_dataout\ : std_logic;
SIGNAL \process_5~16_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux0~13sexpand0_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux0~13sexpand1_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux0~13sexpand2_dataout\ : std_logic;
SIGNAL \slot3_exp|Mux0~13sexpand3_dataout\ : std_logic;
SIGNAL \rom_addr_o[14]~56_dataout\ : std_logic;
SIGNAL \imap_bank1_s[0]~6sexpand0_dataout\ : std_logic;
SIGNAL \imap_bank1_s[0]~20_dataout\ : std_logic;
SIGNAL \process_5~18_dataout\ : std_logic;
SIGNAL \rom_addr_o[14]~74_pexpout\ : std_logic;
SIGNAL \imap_bank2_s[1]~7sexpand0_dataout\ : std_logic;
SIGNAL \imap_bank2_s[0]~21_dataout\ : std_logic;
SIGNAL \process_5~20_dataout\ : std_logic;
SIGNAL \imap_bank3_s[0]~6sexpand0_dataout\ : std_logic;
SIGNAL \imap_bank3_s[0]~20_dataout\ : std_logic;
SIGNAL \process_5~22_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg0[1]~4sexpand1_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg0[0]~18_dataout\ : std_logic;
SIGNAL \Equal4~3sexpand0_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg1[2]~5sexpand1_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg1[0]~19_dataout\ : std_logic;
SIGNAL \process_5~12sexpand0_dataout\ : std_logic;
SIGNAL \rom_addr_o[14]~64_dataout\ : std_logic;
SIGNAL \imap_bank1_s[1]~24_dataout\ : std_logic;
SIGNAL \rom_addr_o[15]~77_pexpout\ : std_logic;
SIGNAL \imap_bank2_s[1]~26_dataout\ : std_logic;
SIGNAL \imap_bank0_s[1]~25_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg0[1]~22_dataout\ : std_logic;
SIGNAL \iascii_mapper_reg1[1]~23_dataout\ : std_logic;
SIGNAL \imap_bank3_s[1]~24_dataout\ : std_logic;
SIGNAL \rom_addr_o[15]~72_dataout\ : std_logic;
SIGNAL \ppi_port_a_i~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \addr_i~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \slot3_exp|exp_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_en_ascii16_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_rd_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_wr_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_iorq_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_mreq_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_addr_i~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset_n_i~dataout\ : std_logic;
SIGNAL \ALT_INV_process_5~22_dataout\ : std_logic;
SIGNAL \ALT_INV_process_5~20_dataout\ : std_logic;
SIGNAL \ALT_INV_process_5~18_dataout\ : std_logic;
SIGNAL \ALT_INV_rom_addr_o[14]~56_dataout\ : std_logic;
SIGNAL \ALT_INV_process_5~16_dataout\ : std_logic;
SIGNAL \ALT_INV_rom_addr_o[16]_632~6_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank3_s[1]~24_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank2_s[1]~26_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank1_s[1]~24_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank0_s[1]~25_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank3_s[0]~20_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank2_s[0]~21_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank1_s[0]~20_dataout\ : std_logic;
SIGNAL \ALT_INV_imap_bank0_s[0]~20_dataout\ : std_logic;
SIGNAL \slot3_exp|ALT_INV_exp_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_iascii_mapper_reg1[1]~23_dataout\ : std_logic;
SIGNAL \ALT_INV_iascii_mapper_reg0[1]~22_dataout\ : std_logic;
SIGNAL \ALT_INV_iascii_mapper_reg1[0]~19_dataout\ : std_logic;
SIGNAL \ALT_INV_iascii_mapper_reg0[0]~18_dataout\ : std_logic;
SIGNAL \lobyte_ppi_a|ALT_INV_y_o~24_dataout\ : std_logic;
SIGNAL \hibyte_ppi_a|ALT_INV_y_o~24_dataout\ : std_logic;

BEGIN

ww_reset_n_i <= reset_n_i;
ww_addr_i <= addr_i;
ww_ppi_port_a_i <= ppi_port_a_i;
ww_iorq_n_i <= iorq_n_i;
ww_m1_n_i <= m1_n_i;
ww_mreq_n_i <= mreq_n_i;
ww_rfsh_n_i <= rfsh_n_i;
ww_rd_n_i <= rd_n_i;
ww_wr_n_i <= wr_n_i;
ww_en_ascii16_n_i <= en_ascii16_n_i;
ram_cs_n_o <= ww_ram_cs_n_o;
rom_cs_n_o <= ww_rom_cs_n_o;
rom_addr_o <= ww_rom_addr_o;
ppi_cs_n_o <= ww_ppi_cs_n_o;
vdp_cswr_n_o <= ww_vdp_cswr_n_o;
vdp_csrd_n_o <= ww_vdp_csrd_n_o;
psg_bdir_o <= ww_psg_bdir_o;
psg_bc1_o <= ww_psg_bc1_o;

\iio_wr~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & NOT \wr_n_i~dataout\);

\iio_wr~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iio_wr~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iio_wr~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(7) & NOT \addr_i~dataout\(6) & NOT \addr_i~dataout\(2) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(5) & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & NOT 
\wr_n_i~dataout\);

\vdp_cswr_n_o~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\vdp_cswr_n_o~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_cswr_n_o~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(4) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(5) & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & NOT \addr_i~dataout\(6) & NOT \addr_i~dataout\(2) & NOT 
\rd_n_i~dataout\);

\vdp_csrd_n_o~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\vdp_csrd_n_o~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\vdp_csrd_n_o~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & NOT \addr_i~dataout\(6) & NOT \addr_i~dataout\(2) & \addr_i~dataout\(5) & NOT \addr_i~dataout\(4) & NOT \addr_i~dataout\(3) & NOT 
\addr_i~dataout\(0));

\psg_bc1_o~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\psg_bc1_o~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\psg_bc1_o~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & NOT \addr_i~dataout\(6) & NOT \addr_i~dataout\(2) & \addr_i~dataout\(5) & NOT \addr_i~dataout\(4) & \addr_i~dataout\(3));

\ippi_s~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ippi_s~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ippi_s~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \islot_en~9_dataout\ & \reset_n_i~dataout\);

\islot_en~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & NOT \addr_i~dataout\(6) & NOT \addr_i~dataout\(2) & \addr_i~dataout\(5) & NOT \addr_i~dataout\(4) & \addr_i~dataout\(3) & \reset_n_i~dataout\);

\islot_en~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\islot_en~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\islot_en~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1~5sexpand0_dataout\ & \ppi_port_a_i~dataout\(7) & \lobyte_ppi_a|process_0~6sexpand0_dataout\ & \lobyte_ppi_a|process_0~8sexpand0_dataout\ & \islot_en~9_dataout\);

\hibyte_ppi_a|y_o~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(14) & \ppi_port_a_i~dataout\(1) & NOT \addr_i~dataout\(15) & \islot_en~9_dataout\);

\hibyte_ppi_a|y_o~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ppi_port_a_i~dataout\(3) & NOT \addr_i~dataout\(14) & \addr_i~dataout\(15) & \process_1~5sexpand0_dataout\ & \islot_en~9_dataout\);

\hibyte_ppi_a|y_o~24_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ppi_port_a_i~dataout\(5) & \addr_i~dataout\(14) & NOT \addr_i~dataout\(15) & \process_1~5sexpand0_dataout\ & \lobyte_ppi_a|process_0~6sexpand0_dataout\ & \islot_en~9_dataout\);

\hibyte_ppi_a|y_o~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\hibyte_ppi_a|y_o~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\hibyte_ppi_a|y_o~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1~5sexpand0_dataout\ & \lobyte_ppi_a|process_0~6sexpand0_dataout\ & \ppi_port_a_i~dataout\(6) & \lobyte_ppi_a|process_0~8sexpand0_dataout\ & \islot_en~9_dataout\);

\lobyte_ppi_a|y_o~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ppi_port_a_i~dataout\(0) & NOT \addr_i~dataout\(14) & NOT \addr_i~dataout\(15) & \islot_en~9_dataout\);

\lobyte_ppi_a|y_o~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ppi_port_a_i~dataout\(2) & NOT \addr_i~dataout\(14) & \addr_i~dataout\(15) & \process_1~5sexpand0_dataout\ & \islot_en~9_dataout\);

\lobyte_ppi_a|y_o~24_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ppi_port_a_i~dataout\(4) & \addr_i~dataout\(14) & NOT \addr_i~dataout\(15) & \process_1~5sexpand0_dataout\ & \lobyte_ppi_a|process_0~6sexpand0_dataout\ & \islot_en~9_dataout\);

\lobyte_ppi_a|y_o~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\lobyte_ppi_a|y_o~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lobyte_ppi_a|y_o~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \data_io[0]$latch~6_dataout\);

\data_io[0]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[0]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(0));

\data_io[0]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(0));

\data_io[0]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[0]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[0]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~4_dataout\ & \data_io[1]$latch~6_dataout\);

\data_io[1]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[1]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(1));

\data_io[1]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(1));

\data_io[1]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[1]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[1]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \data_io[2]$latch~6_dataout\);

\data_io[2]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[2]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(2));

\data_io[2]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(2));

\data_io[2]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[2]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[2]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \data_io[3]$latch~6_dataout\);

\data_io[3]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[3]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(3));

\data_io[3]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(3));

\data_io[3]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[3]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[3]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \data_io[4]$latch~6_dataout\);

\data_io[4]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[4]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(4));

\data_io[4]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(4));

\data_io[4]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[4]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[4]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~4_dataout\ & \data_io[5]$latch~6_dataout\);

\data_io[5]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[5]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(5));

\data_io[5]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(5));

\data_io[5]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[5]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[5]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~4_dataout\ & \data_io[6]$latch~6_dataout\);

\data_io[6]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[6]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(6));

\data_io[6]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(6));

\data_io[6]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[6]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[6]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_rd_s~4_dataout\ & \data_io[7]$latch~6_dataout\);

\data_io[7]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \data_io[7]$latch~6_dataout\ & NOT \slot3_exp|exp_reg_s\(7));

\data_io[7]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\ & 
NOT \slot3_exp|exp_reg_s\(7));

\data_io[7]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\data_io[7]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\data_io[7]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[1]~4sexpand1_dataout\ & \iascii_mapper_reg0[0]~18_dataout\);

\iascii_mapper_reg0[0]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[0]~18_dataout\ & \data_io[0]$latch~6_dataout\);

\iascii_mapper_reg0[0]~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & NOT \addr_i~dataout\(12) & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[0]$latch~6_dataout\);

\iascii_mapper_reg0[0]~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg0[0]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[0]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[2]~5sexpand1_dataout\ & \iascii_mapper_reg1[0]~19_dataout\);

\iascii_mapper_reg1[0]~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[0]~19_dataout\ & \data_io[0]$latch~6_dataout\);

\iascii_mapper_reg1[0]~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & \Equal4~3sexpand0_dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[0]$latch~6_dataout\);

\iascii_mapper_reg1[0]~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg1[0]~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[0]~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[1]~4sexpand1_dataout\ & \iascii_mapper_reg0[1]~22_dataout\);

\iascii_mapper_reg0[1]~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[1]~22_dataout\ & \data_io[1]$latch~6_dataout\);

\iascii_mapper_reg0[1]~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & NOT \addr_i~dataout\(12) & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[1]$latch~6_dataout\);

\iascii_mapper_reg0[1]~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg0[1]~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[1]~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[2]~5sexpand1_dataout\ & \iascii_mapper_reg1[1]~23_dataout\);

\iascii_mapper_reg1[1]~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[1]~23_dataout\ & \data_io[1]$latch~6_dataout\);

\iascii_mapper_reg1[1]~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & \Equal4~3sexpand0_dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[1]$latch~6_dataout\);

\iascii_mapper_reg1[1]~23_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg1[1]~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[1]~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~10sexpand1_dataout\ & \idata_exp3_i[1]~41_dataout\);

\idata_exp3_i[1]~41_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[1]~41_dataout\ & \data_io[1]$latch~6_dataout\);

\idata_exp3_i[1]~41_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[1]$latch~6_dataout\);

\idata_exp3_i[1]~41_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[1]~41_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[1]~41_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~10sexpand1_dataout\ & \idata_exp3_i[5]~45_dataout\);

\idata_exp3_i[5]~45_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[5]~45_dataout\ & \data_io[5]$latch~6_dataout\);

\idata_exp3_i[5]~45_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[5]$latch~6_dataout\);

\idata_exp3_i[5]~45_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[5]~45_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[5]~45_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~10sexpand1_dataout\ & \idata_exp3_i[7]~49_dataout\);

\idata_exp3_i[7]~49_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[7]~49_dataout\ & \data_io[7]$latch~6_dataout\);

\idata_exp3_i[7]~49_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[7]$latch~6_dataout\);

\idata_exp3_i[7]~49_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[7]~49_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[7]~49_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~95_dataout\ & \idata_exp3_i[3]~53_dataout\);

\idata_exp3_i[3]~53_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[3]~53_dataout\ & \data_io[3]$latch~6_dataout\);

\idata_exp3_i[3]~53_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[3]$latch~6_dataout\);

\idata_exp3_i[3]~53_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[3]~53_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[3]~53_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~10sexpand1_dataout\ & \idata_exp3_i[0]~57_dataout\);

\idata_exp3_i[0]~57_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~57_dataout\ & \data_io[0]$latch~6_dataout\);

\idata_exp3_i[0]~57_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[0]$latch~6_dataout\);

\idata_exp3_i[0]~57_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[0]~57_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[0]~57_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~95_dataout\ & \idata_exp3_i[4]~61_dataout\);

\idata_exp3_i[4]~61_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[4]~61_dataout\ & \data_io[4]$latch~6_dataout\);

\idata_exp3_i[4]~61_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[4]$latch~6_dataout\);

\idata_exp3_i[4]~61_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[4]~61_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[4]~61_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~10sexpand1_dataout\ & \idata_exp3_i[6]~65_dataout\);

\idata_exp3_i[6]~65_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[6]~65_dataout\ & \data_io[6]$latch~6_dataout\);

\idata_exp3_i[6]~65_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[6]$latch~6_dataout\);

\idata_exp3_i[6]~65_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[6]~65_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[6]~65_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~95_dataout\ & \idata_exp3_i[2]~69_dataout\);

\idata_exp3_i[2]~69_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[2]~69_dataout\ & \data_io[2]$latch~6_dataout\);

\idata_exp3_i[2]~69_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \data_io[2]$latch~6_dataout\);

\idata_exp3_i[2]~69_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\idata_exp3_i[2]~69_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\idata_exp3_i[2]~69_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[1]~4sexpand1_dataout\ & \iascii_mapper_reg0[2]~26_dataout\);

\iascii_mapper_reg0[2]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg0[2]~26_dataout\ & \data_io[2]$latch~6_dataout\);

\iascii_mapper_reg0[2]~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & NOT \addr_i~dataout\(12) & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[2]$latch~6_dataout\);

\iascii_mapper_reg0[2]~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg0[2]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg0[2]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[2]~5sexpand1_dataout\ & \iascii_mapper_reg1[2]~27_dataout\);

\iascii_mapper_reg1[2]~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \iascii_mapper_reg1[2]~27_dataout\ & \data_io[2]$latch~6_dataout\);

\iascii_mapper_reg1[2]~27_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & \Equal4~3sexpand0_dataout\ & 
\lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & \data_io[2]$latch~6_dataout\);

\iascii_mapper_reg1[2]~27_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\iascii_mapper_reg1[2]~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\iascii_mapper_reg1[2]~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[0]~57_dataout\);

\slot3_exp|exp_reg_s[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~8_dataout\);

\slot3_exp|exp_reg_s[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[7]~49_dataout\);

\slot3_exp|exp_reg_s[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~8_dataout\);

\slot3_exp|exp_reg_s[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[7]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[6]~65_dataout\);

\slot3_exp|exp_reg_s[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~8_dataout\);

\slot3_exp|exp_reg_s[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[5]~45_dataout\);

\slot3_exp|exp_reg_s[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~8_dataout\);

\slot3_exp|exp_reg_s[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[4]~61_dataout\);

\slot3_exp|exp_reg_s[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~16_dataout\);

\slot3_exp|exp_reg_s[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[3]~53_dataout\);

\slot3_exp|exp_reg_s[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~16_dataout\);

\slot3_exp|exp_reg_s[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[2]~69_dataout\);

\slot3_exp|exp_reg_s[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~16_dataout\);

\slot3_exp|exp_reg_s[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \idata_exp3_i[1]~41_dataout\);

\slot3_exp|exp_reg_s[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_wr_s~8_dataout\);

\slot3_exp|exp_reg_s[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\slot3_exp|exp_reg_s[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_reg_s[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank0_s[1]~6sexpand0_dataout\ & \imap_bank0_s[0]~20_dataout\);

\imap_bank0_s[0]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \reset_n_i~dataout\);

\imap_bank0_s[0]~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank0_s[0]~20_dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank0_s[0]~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & NOT \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & 
\addr_i~dataout\(6) & \addr_i~dataout\(4) & \data_io[0]$latch~6_dataout\);

\imap_bank0_s[0]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank0_s[0]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[0]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank1_s[0]~6sexpand0_dataout\ & \imap_bank1_s[0]~20_dataout\ & \reset_n_i~dataout\);

\imap_bank1_s[0]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank1_s[0]~20_dataout\ & \reset_n_i~dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank1_s[0]~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & \addr_i~dataout\(6) & 
\addr_i~dataout\(4) & \reset_n_i~dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank1_s[0]~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank1_s[0]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[0]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank2_s[1]~7sexpand0_dataout\ & \imap_bank2_s[0]~21_dataout\);

\imap_bank2_s[0]~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \reset_n_i~dataout\);

\imap_bank2_s[0]~21_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank2_s[0]~21_dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank2_s[0]~21_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & NOT \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & 
\addr_i~dataout\(6) & \addr_i~dataout\(4) & \data_io[0]$latch~6_dataout\);

\imap_bank2_s[0]~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank2_s[0]~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[0]~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank3_s[0]~6sexpand0_dataout\ & \imap_bank3_s[0]~20_dataout\ & \reset_n_i~dataout\);

\imap_bank3_s[0]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank3_s[0]~20_dataout\ & \reset_n_i~dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank3_s[0]~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & \addr_i~dataout\(6) & 
\addr_i~dataout\(4) & \reset_n_i~dataout\ & \data_io[0]$latch~6_dataout\);

\imap_bank3_s[0]~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank3_s[0]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[0]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank0_s[1]~6sexpand0_dataout\ & \imap_bank0_s[1]~25_dataout\);

\imap_bank0_s[1]~25_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \reset_n_i~dataout\);

\imap_bank0_s[1]~25_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank0_s[1]~25_dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank0_s[1]~25_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & NOT \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & 
\addr_i~dataout\(6) & \addr_i~dataout\(4) & \data_io[1]$latch~6_dataout\);

\imap_bank0_s[1]~25_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank0_s[1]~25_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank0_s[1]~25_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank1_s[0]~6sexpand0_dataout\ & \imap_bank1_s[1]~24_dataout\);

\imap_bank1_s[1]~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \reset_n_i~dataout\);

\imap_bank1_s[1]~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank1_s[1]~24_dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank1_s[1]~24_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & NOT \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & 
\addr_i~dataout\(6) & \addr_i~dataout\(4) & \data_io[1]$latch~6_dataout\);

\imap_bank1_s[1]~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank1_s[1]~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank1_s[1]~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank2_s[1]~7sexpand0_dataout\ & \imap_bank2_s[1]~26_dataout\ & \reset_n_i~dataout\);

\imap_bank2_s[1]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank2_s[1]~26_dataout\ & \reset_n_i~dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank2_s[1]~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & NOT \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & \addr_i~dataout\(6) & 
\addr_i~dataout\(4) & \reset_n_i~dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank2_s[1]~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank2_s[1]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank2_s[1]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank3_s[0]~6sexpand0_dataout\ & \imap_bank3_s[1]~24_dataout\ & \reset_n_i~dataout\);

\imap_bank3_s[1]~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \imap_bank3_s[1]~24_dataout\ & \reset_n_i~dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank3_s[1]~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \addr_i~dataout\(5) & \addr_i~dataout\(3) & \addr_i~dataout\(1) & NOT \wr_n_i~dataout\ & \m1_n_i~dataout\ & \addr_i~dataout\(2) & \addr_i~dataout\(0) & NOT \iorq_n_i~dataout\ & \addr_i~dataout\(7) & \addr_i~dataout\(6) & 
\addr_i~dataout\(4) & \reset_n_i~dataout\ & \data_io[1]$latch~6_dataout\);

\imap_bank3_s[1]~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\imap_bank3_s[1]~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\imap_bank3_s[1]~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \slot3_exp|exp_reg_s\(0) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & NOT \addr_i~dataout\(14) & 
\slot3_exp|exp_reg_s\(1));

\ram_cs_n_o~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \slot3_exp|exp_reg_s\(2) & \slot3_exp|exp_reg_s\(3) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15) & 
\addr_i~dataout\(14));

\ram_cs_n_o~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \slot3_exp|exp_reg_s\(4) & \slot3_exp|exp_reg_s\(5) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(15) & NOT 
\addr_i~dataout\(14));

\ram_cs_n_o~7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \slot3_exp|exp_reg_s\(6) & \slot3_exp|exp_reg_s\(7) & \ram_cs_n_o~2_dataout\ & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(15) & 
\addr_i~dataout\(14));

\ram_cs_n_o~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ram_cs_n_o~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ram_cs_n_o~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & NOT \addr_i~dataout\(15) & NOT \addr_i~dataout\(14) & NOT \slot3_exp|exp_reg_s\(0) & NOT 
\slot3_exp|exp_reg_s\(1));

\rom_cs_n_o~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT \lobyte_ppi_a|y_o~24_dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & NOT \addr_i~dataout\(15));

\rom_cs_n_o~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\);

\rom_cs_n_o~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_cs_n_o~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_cs_n_o~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rom_addr_o[17]~48sexpand1_dataout\ & NOT \rom_addr_o[16]_632~6_dataout\);

\rom_addr_o[16]_632~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rom_addr_o[16]~47sexpand1_dataout\ & \rom_addr_o[16]~47sexpand0_dataout\ & NOT \rom_addr_o[16]_632~6_dataout\);

\rom_addr_o[16]_632~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & \rom_addr_o[16]~47sexpand1_dataout\ & 
\rom_addr_o[16]~47sexpand0_dataout\);

\rom_addr_o[16]_632~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[16]_632~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[16]_632~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \slot3_exp|Mux1~13sexp2_dataout\ & \slot3_exp|Mux1~13sexp1_dataout\ & \slot3_exp|Mux1~10sexp2_dataout\ & \slot3_exp|Mux1~10sexp1_dataout\ & \slot3_exp|WideAnd0~5sexp_dataout\ & \slot3_exp|exp_reg_s\(1) & NOT \addr_i~dataout\(14) & NOT 
\addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\);

\process_5~16_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_5~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \slot3_exp|Mux1~13sexp2_dataout\ & \slot3_exp|Mux1~13sexp1_dataout\ & \slot3_exp|Mux1~10sexp2_dataout\ & \slot3_exp|Mux1~10sexp1_dataout\ & \slot3_exp|WideAnd0~5sexp_dataout\ & \slot3_exp|Mux0~13sexpand3_dataout\ & \slot3_exp|Mux0~13sexpand2_dataout\ & 
\slot3_exp|Mux0~13sexpand1_dataout\ & \slot3_exp|Mux0~13sexpand0_dataout\ & NOT \addr_i~dataout\(14) & NOT \addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & \lobyte_ppi_a|y_o~24_dataout\);

\rom_addr_o[14]~56_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \lobyte_ppi_a|y_o~24_dataout\);

\rom_addr_o[14]~56_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[14]~56_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~56_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \slot3_exp|Mux1~13sexp2_dataout\ & \slot3_exp|Mux1~13sexp1_dataout\ & \slot3_exp|Mux1~10sexp2_dataout\ & \slot3_exp|Mux1~10sexp1_dataout\ & \slot3_exp|WideAnd0~5sexp_dataout\ & \slot3_exp|exp_reg_s\(3) & \addr_i~dataout\(14) & NOT 
\addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\);

\process_5~18_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_5~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \slot3_exp|Mux1~13sexp2_dataout\ & \slot3_exp|Mux1~13sexp1_dataout\ & \slot3_exp|Mux1~10sexp2_dataout\ & \slot3_exp|Mux1~10sexp1_dataout\ & \slot3_exp|WideAnd0~5sexp_dataout\ & \slot3_exp|exp_reg_s\(5) & NOT \addr_i~dataout\(14) & 
\addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\);

\process_5~20_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_5~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \slot3_exp|Mux1~13sexp2_dataout\ & \slot3_exp|Mux1~13sexp1_dataout\ & \slot3_exp|Mux1~10sexp2_dataout\ & \slot3_exp|Mux1~10sexp1_dataout\ & \slot3_exp|WideAnd0~5sexp_dataout\ & \slot3_exp|exp_reg_s\(7) & \addr_i~dataout\(14) & 
\addr_i~dataout\(15) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\);

\process_5~22_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_5~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_5~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~64_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(14) & \rom_addr_o[14]~56_dataout\);

\rom_addr_o[14]~64_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \rom_addr_o[14]~56_dataout\ & \process_5~20_dataout\ & NOT \process_5~18_dataout\ & NOT \process_5~16_dataout\ & NOT \imap_bank2_s[0]~21_dataout\);

\rom_addr_o[14]~64_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_5~22_dataout\ & NOT \imap_bank3_s[0]~20_dataout\ & NOT \rom_addr_o[14]~56_dataout\ & NOT \process_5~20_dataout\ & NOT \process_5~18_dataout\ & NOT \process_5~16_dataout\);

\rom_addr_o[14]~64_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & \addr_i~dataout\(14) & NOT \iascii_mapper_reg0[0]~18_dataout\ & NOT 
\process_5~22_dataout\ & NOT \rom_addr_o[14]~56_dataout\ & NOT \process_5~20_dataout\ & NOT \process_5~18_dataout\ & NOT \process_5~16_dataout\);

\rom_addr_o[14]~64_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \process_5~12sexpand0_dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & NOT \addr_i~dataout\(14) & NOT 
\iascii_mapper_reg1[0]~19_dataout\ & NOT \process_5~22_dataout\ & NOT \process_5~20_dataout\ & NOT \process_5~18_dataout\ & NOT \process_5~16_dataout\);

\rom_addr_o[14]~64_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~64_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~64_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~64_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[14]~64_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~64_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~72_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \imap_bank3_s[1]~24_dataout\ & NOT \slot3_exp|exp_reg_s\(6) & \slot3_exp|exp_reg_s\(7) & \ram_cs_n_o~2_dataout\ & \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & 
\hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \addr_i~dataout\(15));

\rom_addr_o[15]~72_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \addr_i~dataout\(15) & NOT \imap_bank2_s[1]~26_dataout\ & NOT 
\slot3_exp|exp_reg_s\(4) & \slot3_exp|exp_reg_s\(5));

\rom_addr_o[15]~72_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \slot3_exp|exp_reg_s\(0) & \slot3_exp|exp_reg_s\(1) & NOT \imap_bank0_s[1]~25_dataout\ & NOT \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT 
\mreq_n_i~dataout\ & NOT \addr_i~dataout\(15));

\rom_addr_o[15]~72_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & NOT \iascii_mapper_reg0[1]~22_dataout\ & \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & 
NOT \mreq_n_i~dataout\);

\rom_addr_o[15]~72_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \iascii_mapper_reg1[1]~23_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & NOT \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\
& NOT \mreq_n_i~dataout\);

\rom_addr_o[15]~72_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~72_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~72_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~72_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[15]~72_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~72_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \rom_addr_o[14]~56_dataout\ & \process_5~16_dataout\ & NOT \imap_bank0_s[0]~20_dataout\);

\rom_addr_o[14]~74_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_5~18_dataout\ & NOT \imap_bank1_s[0]~20_dataout\ & NOT \rom_addr_o[14]~56_dataout\ & NOT \process_5~16_dataout\);

\rom_addr_o[14]~74_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[14]~74_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[14]~74_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT \lobyte_ppi_a|y_o~24_dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & NOT \addr_i~dataout\(15));

\rom_addr_o[15]~77_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \imap_bank1_s[1]~24_dataout\ & NOT \slot3_exp|exp_reg_s\(2) & \slot3_exp|exp_reg_s\(3) & \rfsh_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT 
\mreq_n_i~dataout\ & NOT \addr_i~dataout\(15));

\rom_addr_o[15]~77_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\rom_addr_o[15]~77_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\rom_addr_o[15]~77_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~VCC~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\slot3_exp|exp_wr_s~8_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT 
\mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \wr_n_i~dataout\ & \addr_i~dataout\(15) & \addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & 
\addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & \addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8));

\ram_cs_n_o~2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & \addr_i~dataout\(12) & 
\addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8));

\imap_bank1_s[0]~6sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & NOT \wr_n_i~dataout\ & NOT 
\addr_i~dataout\(1) & \addr_i~dataout\(0));

\imap_bank3_s[0]~6sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \m1_n_i~dataout\ & NOT 
\iorq_n_i~dataout\ & NOT \wr_n_i~dataout\);

\imap_bank0_s[1]~6sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & NOT \wr_n_i~dataout\ & NOT 
\addr_i~dataout\(0) & NOT \addr_i~dataout\(1));

\imap_bank2_s[1]~7sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \m1_n_i~dataout\ & NOT \iorq_n_i~dataout\ & NOT \wr_n_i~dataout\ & NOT 
\addr_i~dataout\(0) & \addr_i~dataout\(1));

\process_1~5sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(15) & NOT \addr_i~dataout\(14));

\lobyte_ppi_a|process_0~6sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & NOT \addr_i~dataout\(14));

\lobyte_ppi_a|process_0~8sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(15) & \addr_i~dataout\(14));

\slot3_exp|exp_rd_s~1sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15)
& \addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\);

\Equal4~3sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \addr_i~dataout\(12));

\iascii_mapper_reg0[1]~4sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \addr_i~dataout\(12) & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\
& \lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15));

\iascii_mapper_reg1[2]~5sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & \addr_i~dataout\(13) & NOT \addr_i~dataout\(11) & NOT \mreq_n_i~dataout\ & \Equal4~3sexpand0_dataout\
& \lobyte_ppi_a|y_o~24_dataout\ & NOT \addr_i~dataout\(15));

\idata_exp3_i[0]~10sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~4_dataout\ & \lobyte_ppi_a|y_o~24_dataout\);

\process_5~12sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & NOT \mreq_n_i~dataout\);

\rom_addr_o[16]~47sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\ & 
\iascii_mapper_reg0[2]~26_dataout\);

\rom_addr_o[16]~47sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_5~14sexp_dataout\ & \iascii_mapper_reg1[2]~27_dataout\);

\rom_addr_o[17]~48sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\);

\slot3_exp|Mux0~13sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \addr_i~dataout\(15) & NOT \addr_i~dataout\(14) & \slot3_exp|exp_reg_s\(1));

\slot3_exp|Mux0~13sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & NOT \addr_i~dataout\(14) & \slot3_exp|exp_reg_s\(5));

\slot3_exp|Mux0~13sexpand2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & \addr_i~dataout\(14) & \slot3_exp|exp_reg_s\(7));

\slot3_exp|Mux0~13sexpand3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_reg_s\(3) & NOT \addr_i~dataout\(15) & \addr_i~dataout\(14));

\slot3_exp|WideAnd0~5sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \addr_i~dataout\(15) & \addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & 
\addr_i~dataout\(13) & \addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8));

\process_5~14sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(14) & \rfsh_n_i~dataout\ & NOT \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \en_ascii16_n_i~dataout\ & NOT \rd_n_i~dataout\);

\slot3_exp|Mux1~10sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_reg_s\(0) & NOT \addr_i~dataout\(15) & NOT \addr_i~dataout\(14));

\slot3_exp|Mux1~10sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_reg_s\(4) & \addr_i~dataout\(15) & NOT \addr_i~dataout\(14));

\slot3_exp|Mux1~13sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_reg_s\(6) & \addr_i~dataout\(15) & \addr_i~dataout\(14));

\slot3_exp|Mux1~13sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \slot3_exp|exp_reg_s\(2) & NOT \addr_i~dataout\(15) & \addr_i~dataout\(14));

\slot3_exp|exp_rd_s~4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \addr_i~dataout\(15) & 
\addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & \addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & 
\addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8) & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & NOT \rd_n_i~dataout\);

\idata_exp3_i[0]~95_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \wr_n_i~dataout\ & \rfsh_n_i~dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \mreq_n_i~dataout\ & \slot3_exp|exp_rd_s~1sexpand1_dataout\ & \lobyte_ppi_a|y_o~24_dataout\);

\slot3_exp|exp_wr_s~16_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \rfsh_n_i~dataout\ & NOT 
\mreq_n_i~dataout\ & \lobyte_ppi_a|y_o~24_dataout\ & \hibyte_ppi_a|y_o~24_dataout\ & NOT \wr_n_i~dataout\ & \addr_i~dataout\(15) & \addr_i~dataout\(14) & \addr_i~dataout\(1) & \addr_i~dataout\(0) & \addr_i~dataout\(4) & \addr_i~dataout\(3) & 
\addr_i~dataout\(7) & \addr_i~dataout\(6) & \addr_i~dataout\(5) & \addr_i~dataout\(2) & \addr_i~dataout\(13) & \addr_i~dataout\(12) & \addr_i~dataout\(11) & \addr_i~dataout\(10) & \addr_i~dataout\(9) & \addr_i~dataout\(8));
\ALT_INV_en_ascii16_n_i~dataout\ <= NOT \en_ascii16_n_i~dataout\;
\ALT_INV_rd_n_i~dataout\ <= NOT \rd_n_i~dataout\;
\ALT_INV_wr_n_i~dataout\ <= NOT \wr_n_i~dataout\;
\ALT_INV_iorq_n_i~dataout\ <= NOT \iorq_n_i~dataout\;
\ALT_INV_mreq_n_i~dataout\ <= NOT \mreq_n_i~dataout\;
\ALT_INV_addr_i~dataout\(15) <= NOT \addr_i~dataout\(15);
\ALT_INV_addr_i~dataout\(14) <= NOT \addr_i~dataout\(14);
\ALT_INV_addr_i~dataout\(12) <= NOT \addr_i~dataout\(12);
\ALT_INV_addr_i~dataout\(11) <= NOT \addr_i~dataout\(11);
\ALT_INV_addr_i~dataout\(6) <= NOT \addr_i~dataout\(6);
\ALT_INV_addr_i~dataout\(5) <= NOT \addr_i~dataout\(5);
\ALT_INV_addr_i~dataout\(4) <= NOT \addr_i~dataout\(4);
\ALT_INV_addr_i~dataout\(3) <= NOT \addr_i~dataout\(3);
\ALT_INV_addr_i~dataout\(2) <= NOT \addr_i~dataout\(2);
\ALT_INV_addr_i~dataout\(1) <= NOT \addr_i~dataout\(1);
\ALT_INV_reset_n_i~dataout\ <= NOT \reset_n_i~dataout\;
\ALT_INV_addr_i~dataout\(0) <= NOT \addr_i~dataout\(0);
\ALT_INV_process_5~22_dataout\ <= NOT \process_5~22_dataout\;
\ALT_INV_process_5~20_dataout\ <= NOT \process_5~20_dataout\;
\ALT_INV_process_5~18_dataout\ <= NOT \process_5~18_dataout\;
\ALT_INV_rom_addr_o[14]~56_dataout\ <= NOT \rom_addr_o[14]~56_dataout\;
\ALT_INV_process_5~16_dataout\ <= NOT \process_5~16_dataout\;
\ALT_INV_rom_addr_o[16]_632~6_dataout\ <= NOT \rom_addr_o[16]_632~6_dataout\;
\ALT_INV_imap_bank3_s[1]~24_dataout\ <= NOT \imap_bank3_s[1]~24_dataout\;
\ALT_INV_imap_bank2_s[1]~26_dataout\ <= NOT \imap_bank2_s[1]~26_dataout\;
\ALT_INV_imap_bank1_s[1]~24_dataout\ <= NOT \imap_bank1_s[1]~24_dataout\;
\ALT_INV_imap_bank0_s[1]~25_dataout\ <= NOT \imap_bank0_s[1]~25_dataout\;
\ALT_INV_imap_bank3_s[0]~20_dataout\ <= NOT \imap_bank3_s[0]~20_dataout\;
\ALT_INV_imap_bank2_s[0]~21_dataout\ <= NOT \imap_bank2_s[0]~21_dataout\;
\ALT_INV_imap_bank1_s[0]~20_dataout\ <= NOT \imap_bank1_s[0]~20_dataout\;
\ALT_INV_imap_bank0_s[0]~20_dataout\ <= NOT \imap_bank0_s[0]~20_dataout\;
\slot3_exp|ALT_INV_exp_reg_s\(1) <= NOT \slot3_exp|exp_reg_s\(1);
\slot3_exp|ALT_INV_exp_reg_s\(2) <= NOT \slot3_exp|exp_reg_s\(2);
\slot3_exp|ALT_INV_exp_reg_s\(3) <= NOT \slot3_exp|exp_reg_s\(3);
\slot3_exp|ALT_INV_exp_reg_s\(4) <= NOT \slot3_exp|exp_reg_s\(4);
\slot3_exp|ALT_INV_exp_reg_s\(5) <= NOT \slot3_exp|exp_reg_s\(5);
\slot3_exp|ALT_INV_exp_reg_s\(6) <= NOT \slot3_exp|exp_reg_s\(6);
\slot3_exp|ALT_INV_exp_reg_s\(7) <= NOT \slot3_exp|exp_reg_s\(7);
\slot3_exp|ALT_INV_exp_reg_s\(0) <= NOT \slot3_exp|exp_reg_s\(0);
\ALT_INV_iascii_mapper_reg1[1]~23_dataout\ <= NOT \iascii_mapper_reg1[1]~23_dataout\;
\ALT_INV_iascii_mapper_reg0[1]~22_dataout\ <= NOT \iascii_mapper_reg0[1]~22_dataout\;
\ALT_INV_iascii_mapper_reg1[0]~19_dataout\ <= NOT \iascii_mapper_reg1[0]~19_dataout\;
\ALT_INV_iascii_mapper_reg0[0]~18_dataout\ <= NOT \iascii_mapper_reg0[0]~18_dataout\;
\lobyte_ppi_a|ALT_INV_y_o~24_dataout\ <= NOT \lobyte_ppi_a|y_o~24_dataout\;
\hibyte_ppi_a|ALT_INV_y_o~24_dataout\ <= NOT \hibyte_ppi_a|y_o~24_dataout\;

-- Location: LC38
\iascii_mapper_reg0[2]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg0[2]~26_pterm0_bus\,
	pterm1 => \iascii_mapper_reg0[2]~26_pterm1_bus\,
	pterm2 => \iascii_mapper_reg0[2]~26_pterm2_bus\,
	pterm3 => \iascii_mapper_reg0[2]~26_pterm3_bus\,
	pterm4 => \iascii_mapper_reg0[2]~26_pterm4_bus\,
	pterm5 => \iascii_mapper_reg0[2]~26_pterm5_bus\,
	pxor => \iascii_mapper_reg0[2]~26_pxor_bus\,
	pclk => \iascii_mapper_reg0[2]~26_pclk_bus\,
	papre => \iascii_mapper_reg0[2]~26_papre_bus\,
	paclr => \iascii_mapper_reg0[2]~26_paclr_bus\,
	pena => \iascii_mapper_reg0[2]~26_pena_bus\,
	dataout => \iascii_mapper_reg0[2]~26_dataout\);

-- Location: LC41
\iascii_mapper_reg1[2]~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg1[2]~27_pterm0_bus\,
	pterm1 => \iascii_mapper_reg1[2]~27_pterm1_bus\,
	pterm2 => \iascii_mapper_reg1[2]~27_pterm2_bus\,
	pterm3 => \iascii_mapper_reg1[2]~27_pterm3_bus\,
	pterm4 => \iascii_mapper_reg1[2]~27_pterm4_bus\,
	pterm5 => \iascii_mapper_reg1[2]~27_pterm5_bus\,
	pxor => \iascii_mapper_reg1[2]~27_pxor_bus\,
	pclk => \iascii_mapper_reg1[2]~27_pclk_bus\,
	papre => \iascii_mapper_reg1[2]~27_papre_bus\,
	paclr => \iascii_mapper_reg1[2]~27_paclr_bus\,
	pena => \iascii_mapper_reg1[2]~27_pena_bus\,
	dataout => \iascii_mapper_reg1[2]~27_dataout\);

-- Location: LC6
\~VCC~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~VCC~0_pterm0_bus\,
	pterm1 => \~VCC~0_pterm1_bus\,
	pterm2 => \~VCC~0_pterm2_bus\,
	pterm3 => \~VCC~0_pterm3_bus\,
	pterm4 => \~VCC~0_pterm4_bus\,
	pterm5 => \~VCC~0_pterm5_bus\,
	pxor => \~VCC~0_pxor_bus\,
	pclk => \~VCC~0_pclk_bus\,
	papre => \~VCC~0_papre_bus\,
	paclr => \~VCC~0_paclr_bus\,
	pena => \~VCC~0_pena_bus\,
	dataout => \~VCC~0~dataout\);

-- Location: PIN_5
\wr_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_n_i,
	dataout => \wr_n_i~dataout\);

-- Location: PIN_23
\iorq_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iorq_n_i,
	dataout => \iorq_n_i~dataout\);

-- Location: PIN_42
\m1_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_m1_n_i,
	dataout => \m1_n_i~dataout\);

-- Location: LC53
\iio_wr~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iio_wr~3_pterm0_bus\,
	pterm1 => \iio_wr~3_pterm1_bus\,
	pterm2 => \iio_wr~3_pterm2_bus\,
	pterm3 => \iio_wr~3_pterm3_bus\,
	pterm4 => \iio_wr~3_pterm4_bus\,
	pterm5 => \iio_wr~3_pterm5_bus\,
	pxor => \iio_wr~3_pxor_bus\,
	pclk => \iio_wr~3_pclk_bus\,
	papre => \iio_wr~3_papre_bus\,
	paclr => \iio_wr~3_paclr_bus\,
	pena => \iio_wr~3_pena_bus\,
	dataout => \iio_wr~3_dataout\);

-- Location: PIN_7
\addr_i[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(5),
	dataout => \addr_i~dataout\(5));

-- Location: PIN_45
\addr_i[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(3),
	dataout => \addr_i~dataout\(3));

-- Location: PIN_84
\addr_i[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(4),
	dataout => \addr_i~dataout\(4));

-- Location: PIN_68
\addr_i[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(2),
	dataout => \addr_i~dataout\(2));

-- Location: PIN_96
\addr_i[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(6),
	dataout => \addr_i~dataout\(6));

-- Location: PIN_94
\addr_i[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(7),
	dataout => \addr_i~dataout\(7));

-- Location: LC56
\vdp_cswr_n_o~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \vdp_cswr_n_o~4_pterm0_bus\,
	pterm1 => \vdp_cswr_n_o~4_pterm1_bus\,
	pterm2 => \vdp_cswr_n_o~4_pterm2_bus\,
	pterm3 => \vdp_cswr_n_o~4_pterm3_bus\,
	pterm4 => \vdp_cswr_n_o~4_pterm4_bus\,
	pterm5 => \vdp_cswr_n_o~4_pterm5_bus\,
	pxor => \vdp_cswr_n_o~4_pxor_bus\,
	pclk => \vdp_cswr_n_o~4_pclk_bus\,
	papre => \vdp_cswr_n_o~4_papre_bus\,
	paclr => \vdp_cswr_n_o~4_paclr_bus\,
	pena => \vdp_cswr_n_o~4_pena_bus\,
	dataout => \vdp_cswr_n_o~4_dataout\);

-- Location: PIN_85
\rd_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rd_n_i,
	dataout => \rd_n_i~dataout\);

-- Location: LC57
\vdp_csrd_n_o~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \vdp_csrd_n_o~4_pterm0_bus\,
	pterm1 => \vdp_csrd_n_o~4_pterm1_bus\,
	pterm2 => \vdp_csrd_n_o~4_pterm2_bus\,
	pterm3 => \vdp_csrd_n_o~4_pterm3_bus\,
	pterm4 => \vdp_csrd_n_o~4_pterm4_bus\,
	pterm5 => \vdp_csrd_n_o~4_pterm5_bus\,
	pxor => \vdp_csrd_n_o~4_pxor_bus\,
	pclk => \vdp_csrd_n_o~4_pclk_bus\,
	papre => \vdp_csrd_n_o~4_papre_bus\,
	paclr => \vdp_csrd_n_o~4_paclr_bus\,
	pena => \vdp_csrd_n_o~4_pena_bus\,
	dataout => \vdp_csrd_n_o~4_dataout\);

-- Location: PIN_64
\addr_i[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(0),
	dataout => \addr_i~dataout\(0));

-- Location: LC59
\psg_bc1_o~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \psg_bc1_o~3_pterm0_bus\,
	pterm1 => \psg_bc1_o~3_pterm1_bus\,
	pterm2 => \psg_bc1_o~3_pterm2_bus\,
	pterm3 => \psg_bc1_o~3_pterm3_bus\,
	pterm4 => \psg_bc1_o~3_pterm4_bus\,
	pterm5 => \psg_bc1_o~3_pterm5_bus\,
	pxor => \psg_bc1_o~3_pxor_bus\,
	pclk => \psg_bc1_o~3_pclk_bus\,
	papre => \psg_bc1_o~3_papre_bus\,
	paclr => \psg_bc1_o~3_paclr_bus\,
	pena => \psg_bc1_o~3_pena_bus\,
	dataout => \psg_bc1_o~3_dataout\);

-- Location: LC61
\ippi_s~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ippi_s~4_pterm0_bus\,
	pterm1 => \ippi_s~4_pterm1_bus\,
	pterm2 => \ippi_s~4_pterm2_bus\,
	pterm3 => \ippi_s~4_pterm3_bus\,
	pterm4 => \ippi_s~4_pterm4_bus\,
	pterm5 => \ippi_s~4_pterm5_bus\,
	pxor => \ippi_s~4_pxor_bus\,
	pclk => \ippi_s~4_pclk_bus\,
	papre => \ippi_s~4_papre_bus\,
	paclr => \ippi_s~4_paclr_bus\,
	pena => \ippi_s~4_pena_bus\,
	dataout => \ippi_s~4_dataout\);

-- Location: PIN_89
\reset_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset_n_i,
	dataout => \reset_n_i~dataout\);

-- Location: LC76
\islot_en~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \islot_en~9_pterm0_bus\,
	pterm1 => \islot_en~9_pterm1_bus\,
	pterm2 => \islot_en~9_pterm2_bus\,
	pterm3 => \islot_en~9_pterm3_bus\,
	pterm4 => \islot_en~9_pterm4_bus\,
	pterm5 => \islot_en~9_pterm5_bus\,
	pxor => \islot_en~9_pxor_bus\,
	pclk => \islot_en~9_pclk_bus\,
	papre => \islot_en~9_papre_bus\,
	paclr => \islot_en~9_paclr_bus\,
	pena => \islot_en~9_pena_bus\,
	dataout => \islot_en~9_dataout\);

-- Location: PIN_92
\addr_i[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(15),
	dataout => \addr_i~dataout\(15));

-- Location: SEXP65
\lobyte_ppi_a|process_0~8sexpand0\ : max_sexp
PORT MAP (
	datain => \lobyte_ppi_a|process_0~8sexpand0_datain_bus\,
	dataout => \lobyte_ppi_a|process_0~8sexpand0_dataout\);

-- Location: PIN_54
\ppi_port_a_i[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(6),
	dataout => \ppi_port_a_i~dataout\(6));

-- Location: SEXP66
\lobyte_ppi_a|process_0~6sexpand0\ : max_sexp
PORT MAP (
	datain => \lobyte_ppi_a|process_0~6sexpand0_datain_bus\,
	dataout => \lobyte_ppi_a|process_0~6sexpand0_dataout\);

-- Location: SEXP67
\process_1~5sexpand0\ : max_sexp
PORT MAP (
	datain => \process_1~5sexpand0_datain_bus\,
	dataout => \process_1~5sexpand0_dataout\);

-- Location: PIN_50
\addr_i[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(14),
	dataout => \addr_i~dataout\(14));

-- Location: PIN_48
\ppi_port_a_i[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(0),
	dataout => \ppi_port_a_i~dataout\(0));

-- Location: PIN_8
\ppi_port_a_i[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(2),
	dataout => \ppi_port_a_i~dataout\(2));

-- Location: PIN_49
\ppi_port_a_i[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(4),
	dataout => \ppi_port_a_i~dataout\(4));

-- Location: LC66
\lobyte_ppi_a|y_o~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \lobyte_ppi_a|y_o~24_pterm0_bus\,
	pterm1 => \lobyte_ppi_a|y_o~24_pterm1_bus\,
	pterm2 => \lobyte_ppi_a|y_o~24_pterm2_bus\,
	pterm3 => \lobyte_ppi_a|y_o~24_pterm3_bus\,
	pterm4 => \lobyte_ppi_a|y_o~24_pterm4_bus\,
	pterm5 => \lobyte_ppi_a|y_o~24_pterm5_bus\,
	pxor => \lobyte_ppi_a|y_o~24_pxor_bus\,
	pclk => \lobyte_ppi_a|y_o~24_pclk_bus\,
	papre => \lobyte_ppi_a|y_o~24_papre_bus\,
	paclr => \lobyte_ppi_a|y_o~24_paclr_bus\,
	pena => \lobyte_ppi_a|y_o~24_pena_bus\,
	dataout => \lobyte_ppi_a|y_o~24_dataout\);

-- Location: PIN_16
\mreq_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mreq_n_i,
	dataout => \mreq_n_i~dataout\);

-- Location: PIN_77
\ppi_port_a_i[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(7),
	dataout => \ppi_port_a_i~dataout\(7));

-- Location: PIN_58
\ppi_port_a_i[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(1),
	dataout => \ppi_port_a_i~dataout\(1));

-- Location: PIN_56
\ppi_port_a_i[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(3),
	dataout => \ppi_port_a_i~dataout\(3));

-- Location: PIN_9
\ppi_port_a_i[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ppi_port_a_i(5),
	dataout => \ppi_port_a_i~dataout\(5));

-- Location: LC65
\hibyte_ppi_a|y_o~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \hibyte_ppi_a|y_o~24_pterm0_bus\,
	pterm1 => \hibyte_ppi_a|y_o~24_pterm1_bus\,
	pterm2 => \hibyte_ppi_a|y_o~24_pterm2_bus\,
	pterm3 => \hibyte_ppi_a|y_o~24_pterm3_bus\,
	pterm4 => \hibyte_ppi_a|y_o~24_pterm4_bus\,
	pterm5 => \hibyte_ppi_a|y_o~24_pterm5_bus\,
	pxor => \hibyte_ppi_a|y_o~24_pxor_bus\,
	pclk => \hibyte_ppi_a|y_o~24_pclk_bus\,
	papre => \hibyte_ppi_a|y_o~24_papre_bus\,
	paclr => \hibyte_ppi_a|y_o~24_paclr_bus\,
	pena => \hibyte_ppi_a|y_o~24_pena_bus\,
	dataout => \hibyte_ppi_a|y_o~24_dataout\);

-- Location: PIN_76
\rfsh_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rfsh_n_i,
	dataout => \rfsh_n_i~dataout\);

-- Location: PIN_67
\addr_i[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(8),
	dataout => \addr_i~dataout\(8));

-- Location: PIN_55
\addr_i[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(9),
	dataout => \addr_i~dataout\(9));

-- Location: PIN_44
\addr_i[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(10),
	dataout => \addr_i~dataout\(10));

-- Location: PIN_93
\addr_i[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(11),
	dataout => \addr_i~dataout\(11));

-- Location: PIN_98
\addr_i[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(12),
	dataout => \addr_i~dataout\(12));

-- Location: PIN_21
\addr_i[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(13),
	dataout => \addr_i~dataout\(13));

-- Location: PIN_79
\addr_i[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_i(1),
	dataout => \addr_i~dataout\(1));

-- Location: SEXP20
\slot3_exp|exp_rd_s~4\ : max_sexp
PORT MAP (
	datain => \slot3_exp|exp_rd_s~4_datain_bus\,
	dataout => \slot3_exp|exp_rd_s~4_dataout\);

-- Location: SEXP17
\idata_exp3_i[0]~10sexpand1\ : max_sexp
PORT MAP (
	datain => \idata_exp3_i[0]~10sexpand1_datain_bus\,
	dataout => \idata_exp3_i[0]~10sexpand1_dataout\);

-- Location: LC31
\idata_exp3_i[0]~57\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[0]~57_pterm0_bus\,
	pterm1 => \idata_exp3_i[0]~57_pterm1_bus\,
	pterm2 => \idata_exp3_i[0]~57_pterm2_bus\,
	pterm3 => \idata_exp3_i[0]~57_pterm3_bus\,
	pterm4 => \idata_exp3_i[0]~57_pterm4_bus\,
	pterm5 => \idata_exp3_i[0]~57_pterm5_bus\,
	pxor => \idata_exp3_i[0]~57_pxor_bus\,
	pclk => \idata_exp3_i[0]~57_pclk_bus\,
	papre => \idata_exp3_i[0]~57_papre_bus\,
	paclr => \idata_exp3_i[0]~57_paclr_bus\,
	pena => \idata_exp3_i[0]~57_pena_bus\,
	dataout => \idata_exp3_i[0]~57_dataout\);

-- Location: SEXP19
\slot3_exp|exp_wr_s~8\ : max_sexp
PORT MAP (
	datain => \slot3_exp|exp_wr_s~8_datain_bus\,
	dataout => \slot3_exp|exp_wr_s~8_dataout\);

-- Location: LC24
\slot3_exp|exp_reg_s[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[0]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[0]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[0]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[0]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[0]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[0]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[0]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[0]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[0]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[0]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[0]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(0));

-- Location: SEXP49
\slot3_exp|exp_rd_s~1sexpand1\ : max_sexp
PORT MAP (
	datain => \slot3_exp|exp_rd_s~1sexpand1_datain_bus\,
	dataout => \slot3_exp|exp_rd_s~1sexpand1_dataout\);

-- Location: LC49
\data_io[0]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[0]$latch~6_pterm0_bus\,
	pterm1 => \data_io[0]$latch~6_pterm1_bus\,
	pterm2 => \data_io[0]$latch~6_pterm2_bus\,
	pterm3 => \data_io[0]$latch~6_pterm3_bus\,
	pterm4 => \data_io[0]$latch~6_pterm4_bus\,
	pterm5 => \data_io[0]$latch~6_pterm5_bus\,
	pxor => \data_io[0]$latch~6_pxor_bus\,
	pclk => \data_io[0]$latch~6_pclk_bus\,
	papre => \data_io[0]$latch~6_papre_bus\,
	paclr => \data_io[0]$latch~6_paclr_bus\,
	pena => \data_io[0]$latch~6_pena_bus\,
	dataout => \data_io[0]$latch~6_dataout\);

-- Location: LC29
\idata_exp3_i[1]~41\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[1]~41_pterm0_bus\,
	pterm1 => \idata_exp3_i[1]~41_pterm1_bus\,
	pterm2 => \idata_exp3_i[1]~41_pterm2_bus\,
	pterm3 => \idata_exp3_i[1]~41_pterm3_bus\,
	pterm4 => \idata_exp3_i[1]~41_pterm4_bus\,
	pterm5 => \idata_exp3_i[1]~41_pterm5_bus\,
	pxor => \idata_exp3_i[1]~41_pxor_bus\,
	pclk => \idata_exp3_i[1]~41_pclk_bus\,
	papre => \idata_exp3_i[1]~41_papre_bus\,
	paclr => \idata_exp3_i[1]~41_paclr_bus\,
	pena => \idata_exp3_i[1]~41_pena_bus\,
	dataout => \idata_exp3_i[1]~41_dataout\);

-- Location: LC28
\slot3_exp|exp_reg_s[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[1]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[1]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[1]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[1]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[1]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[1]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[1]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[1]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[1]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[1]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[1]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(1));

-- Location: LC17
\data_io[1]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[1]$latch~6_pterm0_bus\,
	pterm1 => \data_io[1]$latch~6_pterm1_bus\,
	pterm2 => \data_io[1]$latch~6_pterm2_bus\,
	pterm3 => \data_io[1]$latch~6_pterm3_bus\,
	pterm4 => \data_io[1]$latch~6_pterm4_bus\,
	pterm5 => \data_io[1]$latch~6_pterm5_bus\,
	pxor => \data_io[1]$latch~6_pxor_bus\,
	pclk => \data_io[1]$latch~6_pclk_bus\,
	papre => \data_io[1]$latch~6_papre_bus\,
	paclr => \data_io[1]$latch~6_paclr_bus\,
	pena => \data_io[1]$latch~6_pena_bus\,
	dataout => \data_io[1]$latch~6_dataout\);

-- Location: SEXP51
\idata_exp3_i[0]~95\ : max_sexp
PORT MAP (
	datain => \idata_exp3_i[0]~95_datain_bus\,
	dataout => \idata_exp3_i[0]~95_dataout\);

-- Location: LC55
\idata_exp3_i[2]~69\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[2]~69_pterm0_bus\,
	pterm1 => \idata_exp3_i[2]~69_pterm1_bus\,
	pterm2 => \idata_exp3_i[2]~69_pterm2_bus\,
	pterm3 => \idata_exp3_i[2]~69_pterm3_bus\,
	pterm4 => \idata_exp3_i[2]~69_pterm4_bus\,
	pterm5 => \idata_exp3_i[2]~69_pterm5_bus\,
	pxor => \idata_exp3_i[2]~69_pxor_bus\,
	pclk => \idata_exp3_i[2]~69_pclk_bus\,
	papre => \idata_exp3_i[2]~69_papre_bus\,
	paclr => \idata_exp3_i[2]~69_paclr_bus\,
	pena => \idata_exp3_i[2]~69_pena_bus\,
	dataout => \idata_exp3_i[2]~69_dataout\);

-- Location: SEXP52
\slot3_exp|exp_wr_s~16\ : max_sexp
PORT MAP (
	datain => \slot3_exp|exp_wr_s~16_datain_bus\,
	dataout => \slot3_exp|exp_wr_s~16_dataout\);

-- Location: LC60
\slot3_exp|exp_reg_s[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[2]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[2]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[2]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[2]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[2]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[2]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[2]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[2]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[2]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[2]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[2]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(2));

-- Location: LC51
\data_io[2]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[2]$latch~6_pterm0_bus\,
	pterm1 => \data_io[2]$latch~6_pterm1_bus\,
	pterm2 => \data_io[2]$latch~6_pterm2_bus\,
	pterm3 => \data_io[2]$latch~6_pterm3_bus\,
	pterm4 => \data_io[2]$latch~6_pterm4_bus\,
	pterm5 => \data_io[2]$latch~6_pterm5_bus\,
	pxor => \data_io[2]$latch~6_pxor_bus\,
	pclk => \data_io[2]$latch~6_pclk_bus\,
	papre => \data_io[2]$latch~6_papre_bus\,
	paclr => \data_io[2]$latch~6_paclr_bus\,
	pena => \data_io[2]$latch~6_pena_bus\,
	dataout => \data_io[2]$latch~6_dataout\);

-- Location: LC52
\idata_exp3_i[3]~53\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[3]~53_pterm0_bus\,
	pterm1 => \idata_exp3_i[3]~53_pterm1_bus\,
	pterm2 => \idata_exp3_i[3]~53_pterm2_bus\,
	pterm3 => \idata_exp3_i[3]~53_pterm3_bus\,
	pterm4 => \idata_exp3_i[3]~53_pterm4_bus\,
	pterm5 => \idata_exp3_i[3]~53_pterm5_bus\,
	pxor => \idata_exp3_i[3]~53_pxor_bus\,
	pclk => \idata_exp3_i[3]~53_pclk_bus\,
	papre => \idata_exp3_i[3]~53_papre_bus\,
	paclr => \idata_exp3_i[3]~53_paclr_bus\,
	pena => \idata_exp3_i[3]~53_pena_bus\,
	dataout => \idata_exp3_i[3]~53_dataout\);

-- Location: LC58
\slot3_exp|exp_reg_s[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[3]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[3]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[3]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[3]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[3]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[3]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[3]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[3]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[3]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[3]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[3]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(3));

-- Location: LC62
\data_io[3]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[3]$latch~6_pterm0_bus\,
	pterm1 => \data_io[3]$latch~6_pterm1_bus\,
	pterm2 => \data_io[3]$latch~6_pterm2_bus\,
	pterm3 => \data_io[3]$latch~6_pterm3_bus\,
	pterm4 => \data_io[3]$latch~6_pterm4_bus\,
	pterm5 => \data_io[3]$latch~6_pterm5_bus\,
	pxor => \data_io[3]$latch~6_pxor_bus\,
	pclk => \data_io[3]$latch~6_pclk_bus\,
	papre => \data_io[3]$latch~6_papre_bus\,
	paclr => \data_io[3]$latch~6_paclr_bus\,
	pena => \data_io[3]$latch~6_pena_bus\,
	dataout => \data_io[3]$latch~6_dataout\);

-- Location: LC54
\idata_exp3_i[4]~61\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[4]~61_pterm0_bus\,
	pterm1 => \idata_exp3_i[4]~61_pterm1_bus\,
	pterm2 => \idata_exp3_i[4]~61_pterm2_bus\,
	pterm3 => \idata_exp3_i[4]~61_pterm3_bus\,
	pterm4 => \idata_exp3_i[4]~61_pterm4_bus\,
	pterm5 => \idata_exp3_i[4]~61_pterm5_bus\,
	pxor => \idata_exp3_i[4]~61_pxor_bus\,
	pclk => \idata_exp3_i[4]~61_pclk_bus\,
	papre => \idata_exp3_i[4]~61_papre_bus\,
	paclr => \idata_exp3_i[4]~61_paclr_bus\,
	pena => \idata_exp3_i[4]~61_pena_bus\,
	dataout => \idata_exp3_i[4]~61_dataout\);

-- Location: LC63
\slot3_exp|exp_reg_s[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[4]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[4]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[4]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[4]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[4]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[4]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[4]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[4]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[4]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[4]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[4]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(4));

-- Location: LC64
\data_io[4]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[4]$latch~6_pterm0_bus\,
	pterm1 => \data_io[4]$latch~6_pterm1_bus\,
	pterm2 => \data_io[4]$latch~6_pterm2_bus\,
	pterm3 => \data_io[4]$latch~6_pterm3_bus\,
	pterm4 => \data_io[4]$latch~6_pterm4_bus\,
	pterm5 => \data_io[4]$latch~6_pterm5_bus\,
	pxor => \data_io[4]$latch~6_pxor_bus\,
	pclk => \data_io[4]$latch~6_pclk_bus\,
	papre => \data_io[4]$latch~6_papre_bus\,
	paclr => \data_io[4]$latch~6_paclr_bus\,
	pena => \data_io[4]$latch~6_pena_bus\,
	dataout => \data_io[4]$latch~6_dataout\);

-- Location: LC30
\idata_exp3_i[5]~45\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[5]~45_pterm0_bus\,
	pterm1 => \idata_exp3_i[5]~45_pterm1_bus\,
	pterm2 => \idata_exp3_i[5]~45_pterm2_bus\,
	pterm3 => \idata_exp3_i[5]~45_pterm3_bus\,
	pterm4 => \idata_exp3_i[5]~45_pterm4_bus\,
	pterm5 => \idata_exp3_i[5]~45_pterm5_bus\,
	pxor => \idata_exp3_i[5]~45_pxor_bus\,
	pclk => \idata_exp3_i[5]~45_pclk_bus\,
	papre => \idata_exp3_i[5]~45_papre_bus\,
	paclr => \idata_exp3_i[5]~45_paclr_bus\,
	pena => \idata_exp3_i[5]~45_pena_bus\,
	dataout => \idata_exp3_i[5]~45_dataout\);

-- Location: LC26
\slot3_exp|exp_reg_s[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[5]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[5]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[5]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[5]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[5]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[5]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[5]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[5]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[5]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[5]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[5]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(5));

-- Location: LC19
\data_io[5]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[5]$latch~6_pterm0_bus\,
	pterm1 => \data_io[5]$latch~6_pterm1_bus\,
	pterm2 => \data_io[5]$latch~6_pterm2_bus\,
	pterm3 => \data_io[5]$latch~6_pterm3_bus\,
	pterm4 => \data_io[5]$latch~6_pterm4_bus\,
	pterm5 => \data_io[5]$latch~6_pterm5_bus\,
	pxor => \data_io[5]$latch~6_pxor_bus\,
	pclk => \data_io[5]$latch~6_pclk_bus\,
	papre => \data_io[5]$latch~6_papre_bus\,
	paclr => \data_io[5]$latch~6_paclr_bus\,
	pena => \data_io[5]$latch~6_pena_bus\,
	dataout => \data_io[5]$latch~6_dataout\);

-- Location: LC25
\idata_exp3_i[6]~65\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[6]~65_pterm0_bus\,
	pterm1 => \idata_exp3_i[6]~65_pterm1_bus\,
	pterm2 => \idata_exp3_i[6]~65_pterm2_bus\,
	pterm3 => \idata_exp3_i[6]~65_pterm3_bus\,
	pterm4 => \idata_exp3_i[6]~65_pterm4_bus\,
	pterm5 => \idata_exp3_i[6]~65_pterm5_bus\,
	pxor => \idata_exp3_i[6]~65_pxor_bus\,
	pclk => \idata_exp3_i[6]~65_pclk_bus\,
	papre => \idata_exp3_i[6]~65_papre_bus\,
	paclr => \idata_exp3_i[6]~65_paclr_bus\,
	pena => \idata_exp3_i[6]~65_pena_bus\,
	dataout => \idata_exp3_i[6]~65_dataout\);

-- Location: LC27
\slot3_exp|exp_reg_s[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[6]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[6]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[6]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[6]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[6]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[6]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[6]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[6]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[6]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[6]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[6]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(6));

-- Location: LC21
\data_io[6]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[6]$latch~6_pterm0_bus\,
	pterm1 => \data_io[6]$latch~6_pterm1_bus\,
	pterm2 => \data_io[6]$latch~6_pterm2_bus\,
	pterm3 => \data_io[6]$latch~6_pterm3_bus\,
	pterm4 => \data_io[6]$latch~6_pterm4_bus\,
	pterm5 => \data_io[6]$latch~6_pterm5_bus\,
	pxor => \data_io[6]$latch~6_pxor_bus\,
	pclk => \data_io[6]$latch~6_pclk_bus\,
	papre => \data_io[6]$latch~6_papre_bus\,
	paclr => \data_io[6]$latch~6_paclr_bus\,
	pena => \data_io[6]$latch~6_pena_bus\,
	dataout => \data_io[6]$latch~6_dataout\);

-- Location: LC32
\idata_exp3_i[7]~49\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \idata_exp3_i[7]~49_pterm0_bus\,
	pterm1 => \idata_exp3_i[7]~49_pterm1_bus\,
	pterm2 => \idata_exp3_i[7]~49_pterm2_bus\,
	pterm3 => \idata_exp3_i[7]~49_pterm3_bus\,
	pterm4 => \idata_exp3_i[7]~49_pterm4_bus\,
	pterm5 => \idata_exp3_i[7]~49_pterm5_bus\,
	pxor => \idata_exp3_i[7]~49_pxor_bus\,
	pclk => \idata_exp3_i[7]~49_pclk_bus\,
	papre => \idata_exp3_i[7]~49_papre_bus\,
	paclr => \idata_exp3_i[7]~49_paclr_bus\,
	pena => \idata_exp3_i[7]~49_pena_bus\,
	dataout => \idata_exp3_i[7]~49_dataout\);

-- Location: LC20
\slot3_exp|exp_reg_s[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_reset_n_i~dataout\,
	pterm0 => \slot3_exp|exp_reg_s[7]_pterm0_bus\,
	pterm1 => \slot3_exp|exp_reg_s[7]_pterm1_bus\,
	pterm2 => \slot3_exp|exp_reg_s[7]_pterm2_bus\,
	pterm3 => \slot3_exp|exp_reg_s[7]_pterm3_bus\,
	pterm4 => \slot3_exp|exp_reg_s[7]_pterm4_bus\,
	pterm5 => \slot3_exp|exp_reg_s[7]_pterm5_bus\,
	pxor => \slot3_exp|exp_reg_s[7]_pxor_bus\,
	pclk => \slot3_exp|exp_reg_s[7]_pclk_bus\,
	papre => \slot3_exp|exp_reg_s[7]_papre_bus\,
	paclr => \slot3_exp|exp_reg_s[7]_paclr_bus\,
	pena => \slot3_exp|exp_reg_s[7]_pena_bus\,
	dataout => \slot3_exp|exp_reg_s\(7));

-- Location: LC22
\data_io[7]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \data_io[7]$latch~6_pterm0_bus\,
	pterm1 => \data_io[7]$latch~6_pterm1_bus\,
	pterm2 => \data_io[7]$latch~6_pterm2_bus\,
	pterm3 => \data_io[7]$latch~6_pterm3_bus\,
	pterm4 => \data_io[7]$latch~6_pterm4_bus\,
	pterm5 => \data_io[7]$latch~6_pterm5_bus\,
	pxor => \data_io[7]$latch~6_pxor_bus\,
	pclk => \data_io[7]$latch~6_pclk_bus\,
	papre => \data_io[7]$latch~6_papre_bus\,
	paclr => \data_io[7]$latch~6_paclr_bus\,
	pena => \data_io[7]$latch~6_pena_bus\,
	dataout => \data_io[7]$latch~6_dataout\);

-- Location: SEXP2
\ram_cs_n_o~2\ : max_sexp
PORT MAP (
	datain => \ram_cs_n_o~2_datain_bus\,
	dataout => \ram_cs_n_o~2_dataout\);

-- Location: LC5
\ram_cs_n_o~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ram_cs_n_o~7_pterm0_bus\,
	pterm1 => \ram_cs_n_o~7_pterm1_bus\,
	pterm2 => \ram_cs_n_o~7_pterm2_bus\,
	pterm3 => \ram_cs_n_o~7_pterm3_bus\,
	pterm4 => \ram_cs_n_o~7_pterm4_bus\,
	pterm5 => \ram_cs_n_o~7_pterm5_bus\,
	pxor => \ram_cs_n_o~7_pxor_bus\,
	pclk => \ram_cs_n_o~7_pclk_bus\,
	papre => \ram_cs_n_o~7_papre_bus\,
	paclr => \ram_cs_n_o~7_paclr_bus\,
	pena => \ram_cs_n_o~7_pena_bus\,
	dataout => \ram_cs_n_o~7_dataout\);

-- Location: PIN_61
\en_ascii16_n_i~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_en_ascii16_n_i,
	dataout => \en_ascii16_n_i~dataout\);

-- Location: LC1
\rom_cs_n_o~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \rom_cs_n_o~7_pterm0_bus\,
	pterm1 => \rom_cs_n_o~7_pterm1_bus\,
	pterm2 => \rom_cs_n_o~7_pterm2_bus\,
	pterm3 => \rom_cs_n_o~7_pterm3_bus\,
	pterm4 => \rom_cs_n_o~7_pterm4_bus\,
	pterm5 => \rom_cs_n_o~7_pterm5_bus\,
	pxor => \rom_cs_n_o~7_pxor_bus\,
	pclk => \rom_cs_n_o~7_pclk_bus\,
	papre => \rom_cs_n_o~7_papre_bus\,
	paclr => \rom_cs_n_o~7_paclr_bus\,
	pena => \rom_cs_n_o~7_pena_bus\,
	dataout => \rom_cs_n_o~7_dataout\);

-- Location: SEXP40
\rom_addr_o[16]~47sexpand0\ : max_sexp
PORT MAP (
	datain => \rom_addr_o[16]~47sexpand0_datain_bus\,
	dataout => \rom_addr_o[16]~47sexpand0_dataout\);

-- Location: SEXP44
\process_5~14sexp\ : max_sexp
PORT MAP (
	datain => \process_5~14sexp_datain_bus\,
	dataout => \process_5~14sexp_dataout\);

-- Location: SEXP41
\rom_addr_o[16]~47sexpand1\ : max_sexp
PORT MAP (
	datain => \rom_addr_o[16]~47sexpand1_datain_bus\,
	dataout => \rom_addr_o[16]~47sexpand1_dataout\);

-- Location: SEXP42
\rom_addr_o[17]~48sexpand1\ : max_sexp
PORT MAP (
	datain => \rom_addr_o[17]~48sexpand1_datain_bus\,
	dataout => \rom_addr_o[17]~48sexpand1_dataout\);

-- Location: LC33
\rom_addr_o[16]_632~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \rom_addr_o[16]_632~6_pterm0_bus\,
	pterm1 => \rom_addr_o[16]_632~6_pterm1_bus\,
	pterm2 => \rom_addr_o[16]_632~6_pterm2_bus\,
	pterm3 => \rom_addr_o[16]_632~6_pterm3_bus\,
	pterm4 => \rom_addr_o[16]_632~6_pterm4_bus\,
	pterm5 => \rom_addr_o[16]_632~6_pterm5_bus\,
	pxor => \rom_addr_o[16]_632~6_pxor_bus\,
	pclk => \rom_addr_o[16]_632~6_pclk_bus\,
	papre => \rom_addr_o[16]_632~6_papre_bus\,
	paclr => \rom_addr_o[16]_632~6_paclr_bus\,
	pena => \rom_addr_o[16]_632~6_pena_bus\,
	dataout => \rom_addr_o[16]_632~6_dataout\);

-- Location: SEXP70
\imap_bank0_s[1]~6sexpand0\ : max_sexp
PORT MAP (
	datain => \imap_bank0_s[1]~6sexpand0_datain_bus\,
	dataout => \imap_bank0_s[1]~6sexpand0_dataout\);

-- Location: LC74
\imap_bank0_s[0]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank0_s[0]~20_pterm0_bus\,
	pterm1 => \imap_bank0_s[0]~20_pterm1_bus\,
	pterm2 => \imap_bank0_s[0]~20_pterm2_bus\,
	pterm3 => \imap_bank0_s[0]~20_pterm3_bus\,
	pterm4 => \imap_bank0_s[0]~20_pterm4_bus\,
	pterm5 => \imap_bank0_s[0]~20_pterm5_bus\,
	pxor => \imap_bank0_s[0]~20_pxor_bus\,
	pclk => \imap_bank0_s[0]~20_pclk_bus\,
	papre => \imap_bank0_s[0]~20_papre_bus\,
	paclr => \imap_bank0_s[0]~20_paclr_bus\,
	pena => \imap_bank0_s[0]~20_pena_bus\,
	dataout => \imap_bank0_s[0]~20_dataout\);

-- Location: SEXP11
\slot3_exp|WideAnd0~5sexp\ : max_sexp
PORT MAP (
	datain => \slot3_exp|WideAnd0~5sexp_datain_bus\,
	dataout => \slot3_exp|WideAnd0~5sexp_dataout\);

-- Location: SEXP12
\slot3_exp|Mux1~10sexp1\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux1~10sexp1_datain_bus\,
	dataout => \slot3_exp|Mux1~10sexp1_dataout\);

-- Location: SEXP13
\slot3_exp|Mux1~10sexp2\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux1~10sexp2_datain_bus\,
	dataout => \slot3_exp|Mux1~10sexp2_dataout\);

-- Location: SEXP4
\slot3_exp|Mux1~13sexp1\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux1~13sexp1_datain_bus\,
	dataout => \slot3_exp|Mux1~13sexp1_dataout\);

-- Location: SEXP1
\slot3_exp|Mux1~13sexp2\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux1~13sexp2_datain_bus\,
	dataout => \slot3_exp|Mux1~13sexp2_dataout\);

-- Location: LC9
\process_5~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \process_5~16_pterm0_bus\,
	pterm1 => \process_5~16_pterm1_bus\,
	pterm2 => \process_5~16_pterm2_bus\,
	pterm3 => \process_5~16_pterm3_bus\,
	pterm4 => \process_5~16_pterm4_bus\,
	pterm5 => \process_5~16_pterm5_bus\,
	pxor => \process_5~16_pxor_bus\,
	pclk => \process_5~16_pclk_bus\,
	papre => \process_5~16_papre_bus\,
	paclr => \process_5~16_paclr_bus\,
	pena => \process_5~16_pena_bus\,
	dataout => \process_5~16_dataout\);

-- Location: SEXP5
\slot3_exp|Mux0~13sexpand0\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux0~13sexpand0_datain_bus\,
	dataout => \slot3_exp|Mux0~13sexpand0_dataout\);

-- Location: SEXP6
\slot3_exp|Mux0~13sexpand1\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux0~13sexpand1_datain_bus\,
	dataout => \slot3_exp|Mux0~13sexpand1_dataout\);

-- Location: SEXP9
\slot3_exp|Mux0~13sexpand2\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux0~13sexpand2_datain_bus\,
	dataout => \slot3_exp|Mux0~13sexpand2_dataout\);

-- Location: SEXP10
\slot3_exp|Mux0~13sexpand3\ : max_sexp
PORT MAP (
	datain => \slot3_exp|Mux0~13sexpand3_datain_bus\,
	dataout => \slot3_exp|Mux0~13sexpand3_dataout\);

-- Location: LC10
\rom_addr_o[14]~56\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \rom_addr_o[14]~56_pterm0_bus\,
	pterm1 => \rom_addr_o[14]~56_pterm1_bus\,
	pterm2 => \rom_addr_o[14]~56_pterm2_bus\,
	pterm3 => \rom_addr_o[14]~56_pterm3_bus\,
	pterm4 => \rom_addr_o[14]~56_pterm4_bus\,
	pterm5 => \rom_addr_o[14]~56_pterm5_bus\,
	pxor => \rom_addr_o[14]~56_pxor_bus\,
	pclk => \rom_addr_o[14]~56_pclk_bus\,
	papre => \rom_addr_o[14]~56_papre_bus\,
	paclr => \rom_addr_o[14]~56_paclr_bus\,
	pena => \rom_addr_o[14]~56_pena_bus\,
	dataout => \rom_addr_o[14]~56_dataout\);

-- Location: SEXP73
\imap_bank1_s[0]~6sexpand0\ : max_sexp
PORT MAP (
	datain => \imap_bank1_s[0]~6sexpand0_datain_bus\,
	dataout => \imap_bank1_s[0]~6sexpand0_dataout\);

-- Location: LC67
\imap_bank1_s[0]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank1_s[0]~20_pterm0_bus\,
	pterm1 => \imap_bank1_s[0]~20_pterm1_bus\,
	pterm2 => \imap_bank1_s[0]~20_pterm2_bus\,
	pterm3 => \imap_bank1_s[0]~20_pterm3_bus\,
	pterm4 => \imap_bank1_s[0]~20_pterm4_bus\,
	pterm5 => \imap_bank1_s[0]~20_pterm5_bus\,
	pxor => \imap_bank1_s[0]~20_pxor_bus\,
	pclk => \imap_bank1_s[0]~20_pclk_bus\,
	papre => \imap_bank1_s[0]~20_papre_bus\,
	paclr => \imap_bank1_s[0]~20_paclr_bus\,
	pena => \imap_bank1_s[0]~20_pena_bus\,
	dataout => \imap_bank1_s[0]~20_dataout\);

-- Location: LC11
\process_5~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \process_5~18_pterm0_bus\,
	pterm1 => \process_5~18_pterm1_bus\,
	pterm2 => \process_5~18_pterm2_bus\,
	pterm3 => \process_5~18_pterm3_bus\,
	pterm4 => \process_5~18_pterm4_bus\,
	pterm5 => \process_5~18_pterm5_bus\,
	pxor => \process_5~18_pxor_bus\,
	pclk => \process_5~18_pclk_bus\,
	papre => \process_5~18_papre_bus\,
	paclr => \process_5~18_paclr_bus\,
	pena => \process_5~18_pena_bus\,
	dataout => \process_5~18_dataout\);

-- Location: LC34
\rom_addr_o[14]~74\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \rom_addr_o[14]~74_pterm0_bus\,
	pterm1 => \rom_addr_o[14]~74_pterm1_bus\,
	pterm2 => \rom_addr_o[14]~74_pterm2_bus\,
	pterm3 => \rom_addr_o[14]~74_pterm3_bus\,
	pterm4 => \rom_addr_o[14]~74_pterm4_bus\,
	pterm5 => \rom_addr_o[14]~74_pterm5_bus\,
	pxor => \rom_addr_o[14]~74_pxor_bus\,
	pclk => \rom_addr_o[14]~74_pclk_bus\,
	papre => \rom_addr_o[14]~74_papre_bus\,
	paclr => \rom_addr_o[14]~74_paclr_bus\,
	pena => \rom_addr_o[14]~74_pena_bus\,
	pexpout => \rom_addr_o[14]~74_pexpout\);

-- Location: SEXP69
\imap_bank2_s[1]~7sexpand0\ : max_sexp
PORT MAP (
	datain => \imap_bank2_s[1]~7sexpand0_datain_bus\,
	dataout => \imap_bank2_s[1]~7sexpand0_dataout\);

-- Location: LC75
\imap_bank2_s[0]~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank2_s[0]~21_pterm0_bus\,
	pterm1 => \imap_bank2_s[0]~21_pterm1_bus\,
	pterm2 => \imap_bank2_s[0]~21_pterm2_bus\,
	pterm3 => \imap_bank2_s[0]~21_pterm3_bus\,
	pterm4 => \imap_bank2_s[0]~21_pterm4_bus\,
	pterm5 => \imap_bank2_s[0]~21_pterm5_bus\,
	pxor => \imap_bank2_s[0]~21_pxor_bus\,
	pclk => \imap_bank2_s[0]~21_pclk_bus\,
	papre => \imap_bank2_s[0]~21_papre_bus\,
	paclr => \imap_bank2_s[0]~21_paclr_bus\,
	pena => \imap_bank2_s[0]~21_pena_bus\,
	dataout => \imap_bank2_s[0]~21_dataout\);

-- Location: LC13
\process_5~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \process_5~20_pterm0_bus\,
	pterm1 => \process_5~20_pterm1_bus\,
	pterm2 => \process_5~20_pterm2_bus\,
	pterm3 => \process_5~20_pterm3_bus\,
	pterm4 => \process_5~20_pterm4_bus\,
	pterm5 => \process_5~20_pterm5_bus\,
	pxor => \process_5~20_pxor_bus\,
	pclk => \process_5~20_pclk_bus\,
	papre => \process_5~20_papre_bus\,
	paclr => \process_5~20_paclr_bus\,
	pena => \process_5~20_pena_bus\,
	dataout => \process_5~20_dataout\);

-- Location: SEXP71
\imap_bank3_s[0]~6sexpand0\ : max_sexp
PORT MAP (
	datain => \imap_bank3_s[0]~6sexpand0_datain_bus\,
	dataout => \imap_bank3_s[0]~6sexpand0_dataout\);

-- Location: LC70
\imap_bank3_s[0]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank3_s[0]~20_pterm0_bus\,
	pterm1 => \imap_bank3_s[0]~20_pterm1_bus\,
	pterm2 => \imap_bank3_s[0]~20_pterm2_bus\,
	pterm3 => \imap_bank3_s[0]~20_pterm3_bus\,
	pterm4 => \imap_bank3_s[0]~20_pterm4_bus\,
	pterm5 => \imap_bank3_s[0]~20_pterm5_bus\,
	pxor => \imap_bank3_s[0]~20_pxor_bus\,
	pclk => \imap_bank3_s[0]~20_pclk_bus\,
	papre => \imap_bank3_s[0]~20_papre_bus\,
	paclr => \imap_bank3_s[0]~20_paclr_bus\,
	pena => \imap_bank3_s[0]~20_pena_bus\,
	dataout => \imap_bank3_s[0]~20_dataout\);

-- Location: LC12
\process_5~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \process_5~22_pterm0_bus\,
	pterm1 => \process_5~22_pterm1_bus\,
	pterm2 => \process_5~22_pterm2_bus\,
	pterm3 => \process_5~22_pterm3_bus\,
	pterm4 => \process_5~22_pterm4_bus\,
	pterm5 => \process_5~22_pterm5_bus\,
	pxor => \process_5~22_pxor_bus\,
	pclk => \process_5~22_pclk_bus\,
	papre => \process_5~22_papre_bus\,
	paclr => \process_5~22_paclr_bus\,
	pena => \process_5~22_pena_bus\,
	dataout => \process_5~22_dataout\);

-- Location: SEXP34
\iascii_mapper_reg0[1]~4sexpand1\ : max_sexp
PORT MAP (
	datain => \iascii_mapper_reg0[1]~4sexpand1_datain_bus\,
	dataout => \iascii_mapper_reg0[1]~4sexpand1_dataout\);

-- Location: LC42
\iascii_mapper_reg0[0]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg0[0]~18_pterm0_bus\,
	pterm1 => \iascii_mapper_reg0[0]~18_pterm1_bus\,
	pterm2 => \iascii_mapper_reg0[0]~18_pterm2_bus\,
	pterm3 => \iascii_mapper_reg0[0]~18_pterm3_bus\,
	pterm4 => \iascii_mapper_reg0[0]~18_pterm4_bus\,
	pterm5 => \iascii_mapper_reg0[0]~18_pterm5_bus\,
	pxor => \iascii_mapper_reg0[0]~18_pxor_bus\,
	pclk => \iascii_mapper_reg0[0]~18_pclk_bus\,
	papre => \iascii_mapper_reg0[0]~18_papre_bus\,
	paclr => \iascii_mapper_reg0[0]~18_paclr_bus\,
	pena => \iascii_mapper_reg0[0]~18_pena_bus\,
	dataout => \iascii_mapper_reg0[0]~18_dataout\);

-- Location: SEXP37
\Equal4~3sexpand0\ : max_sexp
PORT MAP (
	datain => \Equal4~3sexpand0_datain_bus\,
	dataout => \Equal4~3sexpand0_dataout\);

-- Location: SEXP33
\iascii_mapper_reg1[2]~5sexpand1\ : max_sexp
PORT MAP (
	datain => \iascii_mapper_reg1[2]~5sexpand1_datain_bus\,
	dataout => \iascii_mapper_reg1[2]~5sexpand1_dataout\);

-- Location: LC44
\iascii_mapper_reg1[0]~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg1[0]~19_pterm0_bus\,
	pterm1 => \iascii_mapper_reg1[0]~19_pterm1_bus\,
	pterm2 => \iascii_mapper_reg1[0]~19_pterm2_bus\,
	pterm3 => \iascii_mapper_reg1[0]~19_pterm3_bus\,
	pterm4 => \iascii_mapper_reg1[0]~19_pterm4_bus\,
	pterm5 => \iascii_mapper_reg1[0]~19_pterm5_bus\,
	pxor => \iascii_mapper_reg1[0]~19_pxor_bus\,
	pclk => \iascii_mapper_reg1[0]~19_pclk_bus\,
	papre => \iascii_mapper_reg1[0]~19_papre_bus\,
	paclr => \iascii_mapper_reg1[0]~19_paclr_bus\,
	pena => \iascii_mapper_reg1[0]~19_pena_bus\,
	dataout => \iascii_mapper_reg1[0]~19_dataout\);

-- Location: SEXP38
\process_5~12sexpand0\ : max_sexp
PORT MAP (
	datain => \process_5~12sexpand0_datain_bus\,
	dataout => \process_5~12sexpand0_dataout\);

-- Location: LC35
\rom_addr_o[14]~64\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \rom_addr_o[14]~74_pexpout\,
	pterm0 => \rom_addr_o[14]~64_pterm0_bus\,
	pterm1 => \rom_addr_o[14]~64_pterm1_bus\,
	pterm2 => \rom_addr_o[14]~64_pterm2_bus\,
	pterm3 => \rom_addr_o[14]~64_pterm3_bus\,
	pterm4 => \rom_addr_o[14]~64_pterm4_bus\,
	pterm5 => \rom_addr_o[14]~64_pterm5_bus\,
	pxor => \rom_addr_o[14]~64_pxor_bus\,
	pclk => \rom_addr_o[14]~64_pclk_bus\,
	papre => \rom_addr_o[14]~64_papre_bus\,
	paclr => \rom_addr_o[14]~64_paclr_bus\,
	pena => \rom_addr_o[14]~64_pena_bus\,
	dataout => \rom_addr_o[14]~64_dataout\);

-- Location: LC69
\imap_bank1_s[1]~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank1_s[1]~24_pterm0_bus\,
	pterm1 => \imap_bank1_s[1]~24_pterm1_bus\,
	pterm2 => \imap_bank1_s[1]~24_pterm2_bus\,
	pterm3 => \imap_bank1_s[1]~24_pterm3_bus\,
	pterm4 => \imap_bank1_s[1]~24_pterm4_bus\,
	pterm5 => \imap_bank1_s[1]~24_pterm5_bus\,
	pxor => \imap_bank1_s[1]~24_pxor_bus\,
	pclk => \imap_bank1_s[1]~24_pclk_bus\,
	papre => \imap_bank1_s[1]~24_papre_bus\,
	paclr => \imap_bank1_s[1]~24_paclr_bus\,
	pena => \imap_bank1_s[1]~24_pena_bus\,
	dataout => \imap_bank1_s[1]~24_dataout\);

-- Location: LC2
\rom_addr_o[15]~77\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \rom_addr_o[15]~77_pterm0_bus\,
	pterm1 => \rom_addr_o[15]~77_pterm1_bus\,
	pterm2 => \rom_addr_o[15]~77_pterm2_bus\,
	pterm3 => \rom_addr_o[15]~77_pterm3_bus\,
	pterm4 => \rom_addr_o[15]~77_pterm4_bus\,
	pterm5 => \rom_addr_o[15]~77_pterm5_bus\,
	pxor => \rom_addr_o[15]~77_pxor_bus\,
	pclk => \rom_addr_o[15]~77_pclk_bus\,
	papre => \rom_addr_o[15]~77_papre_bus\,
	paclr => \rom_addr_o[15]~77_paclr_bus\,
	pena => \rom_addr_o[15]~77_pena_bus\,
	pexpout => \rom_addr_o[15]~77_pexpout\);

-- Location: LC77
\imap_bank2_s[1]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank2_s[1]~26_pterm0_bus\,
	pterm1 => \imap_bank2_s[1]~26_pterm1_bus\,
	pterm2 => \imap_bank2_s[1]~26_pterm2_bus\,
	pterm3 => \imap_bank2_s[1]~26_pterm3_bus\,
	pterm4 => \imap_bank2_s[1]~26_pterm4_bus\,
	pterm5 => \imap_bank2_s[1]~26_pterm5_bus\,
	pxor => \imap_bank2_s[1]~26_pxor_bus\,
	pclk => \imap_bank2_s[1]~26_pclk_bus\,
	papre => \imap_bank2_s[1]~26_papre_bus\,
	paclr => \imap_bank2_s[1]~26_paclr_bus\,
	pena => \imap_bank2_s[1]~26_pena_bus\,
	dataout => \imap_bank2_s[1]~26_dataout\);

-- Location: LC73
\imap_bank0_s[1]~25\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank0_s[1]~25_pterm0_bus\,
	pterm1 => \imap_bank0_s[1]~25_pterm1_bus\,
	pterm2 => \imap_bank0_s[1]~25_pterm2_bus\,
	pterm3 => \imap_bank0_s[1]~25_pterm3_bus\,
	pterm4 => \imap_bank0_s[1]~25_pterm4_bus\,
	pterm5 => \imap_bank0_s[1]~25_pterm5_bus\,
	pxor => \imap_bank0_s[1]~25_pxor_bus\,
	pclk => \imap_bank0_s[1]~25_pclk_bus\,
	papre => \imap_bank0_s[1]~25_papre_bus\,
	paclr => \imap_bank0_s[1]~25_paclr_bus\,
	pena => \imap_bank0_s[1]~25_pena_bus\,
	dataout => \imap_bank0_s[1]~25_dataout\);

-- Location: LC37
\iascii_mapper_reg0[1]~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg0[1]~22_pterm0_bus\,
	pterm1 => \iascii_mapper_reg0[1]~22_pterm1_bus\,
	pterm2 => \iascii_mapper_reg0[1]~22_pterm2_bus\,
	pterm3 => \iascii_mapper_reg0[1]~22_pterm3_bus\,
	pterm4 => \iascii_mapper_reg0[1]~22_pterm4_bus\,
	pterm5 => \iascii_mapper_reg0[1]~22_pterm5_bus\,
	pxor => \iascii_mapper_reg0[1]~22_pxor_bus\,
	pclk => \iascii_mapper_reg0[1]~22_pclk_bus\,
	papre => \iascii_mapper_reg0[1]~22_papre_bus\,
	paclr => \iascii_mapper_reg0[1]~22_paclr_bus\,
	pena => \iascii_mapper_reg0[1]~22_pena_bus\,
	dataout => \iascii_mapper_reg0[1]~22_dataout\);

-- Location: LC40
\iascii_mapper_reg1[1]~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \iascii_mapper_reg1[1]~23_pterm0_bus\,
	pterm1 => \iascii_mapper_reg1[1]~23_pterm1_bus\,
	pterm2 => \iascii_mapper_reg1[1]~23_pterm2_bus\,
	pterm3 => \iascii_mapper_reg1[1]~23_pterm3_bus\,
	pterm4 => \iascii_mapper_reg1[1]~23_pterm4_bus\,
	pterm5 => \iascii_mapper_reg1[1]~23_pterm5_bus\,
	pxor => \iascii_mapper_reg1[1]~23_pxor_bus\,
	pclk => \iascii_mapper_reg1[1]~23_pclk_bus\,
	papre => \iascii_mapper_reg1[1]~23_papre_bus\,
	paclr => \iascii_mapper_reg1[1]~23_paclr_bus\,
	pena => \iascii_mapper_reg1[1]~23_pena_bus\,
	dataout => \iascii_mapper_reg1[1]~23_dataout\);

-- Location: LC71
\imap_bank3_s[1]~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \imap_bank3_s[1]~24_pterm0_bus\,
	pterm1 => \imap_bank3_s[1]~24_pterm1_bus\,
	pterm2 => \imap_bank3_s[1]~24_pterm2_bus\,
	pterm3 => \imap_bank3_s[1]~24_pterm3_bus\,
	pterm4 => \imap_bank3_s[1]~24_pterm4_bus\,
	pterm5 => \imap_bank3_s[1]~24_pterm5_bus\,
	pxor => \imap_bank3_s[1]~24_pxor_bus\,
	pclk => \imap_bank3_s[1]~24_pclk_bus\,
	papre => \imap_bank3_s[1]~24_papre_bus\,
	paclr => \imap_bank3_s[1]~24_paclr_bus\,
	pena => \imap_bank3_s[1]~24_pena_bus\,
	dataout => \imap_bank3_s[1]~24_dataout\);

-- Location: LC3
\rom_addr_o[15]~72\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \rom_addr_o[15]~77_pexpout\,
	pterm0 => \rom_addr_o[15]~72_pterm0_bus\,
	pterm1 => \rom_addr_o[15]~72_pterm1_bus\,
	pterm2 => \rom_addr_o[15]~72_pterm2_bus\,
	pterm3 => \rom_addr_o[15]~72_pterm3_bus\,
	pterm4 => \rom_addr_o[15]~72_pterm4_bus\,
	pterm5 => \rom_addr_o[15]~72_pterm5_bus\,
	pxor => \rom_addr_o[15]~72_pxor_bus\,
	pclk => \rom_addr_o[15]~72_pclk_bus\,
	papre => \rom_addr_o[15]~72_papre_bus\,
	paclr => \rom_addr_o[15]~72_paclr_bus\,
	pena => \rom_addr_o[15]~72_pena_bus\,
	dataout => \rom_addr_o[15]~72_dataout\);

-- Location: PIN_99
\rom_addr_o[17]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~VCC~0~dataout\,
	oe => VCC,
	padio => ww_rom_addr_o(17));

-- Location: PIN_35
\psg_bdir_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \iio_wr~3_dataout\,
	oe => VCC,
	padio => ww_psg_bdir_o);

-- Location: PIN_32
\vdp_cswr_n_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \vdp_cswr_n_o~4_dataout\,
	oe => VCC,
	padio => ww_vdp_cswr_n_o);

-- Location: PIN_31
\vdp_csrd_n_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \vdp_csrd_n_o~4_dataout\,
	oe => VCC,
	padio => ww_vdp_csrd_n_o);

-- Location: PIN_30
\psg_bc1_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \psg_bc1_o~3_dataout\,
	oe => VCC,
	padio => ww_psg_bc1_o);

-- Location: PIN_29
\ppi_cs_n_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ippi_s~4_dataout\,
	oe => VCC,
	padio => ww_ppi_cs_n_o);

-- Location: PIN_37
\data_io[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[0]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(0));

-- Location: PIN_14
\data_io[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[1]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(1));

-- Location: PIN_36
\data_io[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[2]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(2));

-- Location: PIN_28
\data_io[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[3]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(3));

-- Location: PIN_27
\data_io[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[4]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(4));

-- Location: PIN_13
\data_io[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[5]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(5));

-- Location: PIN_12
\data_io[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[6]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(6));

-- Location: PIN_10
\data_io[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \data_io[7]$latch~6_dataout\,
	oe => VCC,
	padio => data_io(7));

-- Location: PIN_100
\ram_cs_n_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ram_cs_n_o~7_dataout\,
	oe => VCC,
	padio => ww_ram_cs_n_o);

-- Location: PIN_2
\rom_cs_n_o~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \rom_cs_n_o~7_dataout\,
	oe => VCC,
	padio => ww_rom_cs_n_o);

-- Location: PIN_25
\rom_addr_o[16]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr_o[16]_632~6_dataout\,
	oe => VCC,
	padio => ww_rom_addr_o(16));

-- Location: PIN_24
\rom_addr_o[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr_o[14]~64_dataout\,
	oe => VCC,
	padio => ww_rom_addr_o(14));

-- Location: PIN_1
\rom_addr_o[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr_o[15]~72_dataout\,
	oe => VCC,
	padio => ww_rom_addr_o(15));
END structure;


