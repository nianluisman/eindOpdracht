-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/04/2022 13:44:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          uart
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uart_vhd_vec_tst IS
END uart_vhd_vec_tst;
ARCHITECTURE uart_arch OF uart_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL txd : STD_LOGIC;
COMPONENT uart
	PORT (
	clock : IN STD_LOGIC;
	txd : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : uart
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	txd => txd
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 96000 ps;
	FOR i IN 1 TO 4
	LOOP
		clock <= '0';
		WAIT FOR 96000 ps;
		clock <= '1';
		WAIT FOR 96000 ps;
	END LOOP;
	clock <= '0';
	WAIT FOR 96000 ps;
	clock <= '1';
WAIT;
END PROCESS t_prcs_clock;
END uart_arch;
