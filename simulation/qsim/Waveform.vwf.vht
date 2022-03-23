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
-- Generated on "01/04/2022 14:51:59"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL rx : STD_LOGIC;
SIGNAL tx : STD_LOGIC;
COMPONENT uart
	PORT (
	clk : IN STD_LOGIC;
	rx : IN STD_LOGIC;
	tx : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : uart
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	rx => rx,
	tx => tx
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rx
t_prcs_rx: PROCESS
BEGIN
LOOP
	rx <= '0';
	WAIT FOR 100000 ps;
	rx <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_rx;
END uart_arch;
