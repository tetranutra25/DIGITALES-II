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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Tue Feb 22 14:48:57 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BLOQUEZ IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		Z3 :  OUT  STD_LOGIC;
		Z2 :  OUT  STD_LOGIC;
		Z1 :  OUT  STD_LOGIC;
		Z0 :  OUT  STD_LOGIC
	);
END BLOQUEZ;

ARCHITECTURE bdf_type OF BLOQUEZ IS 

SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 



Z3 <= SYNTHESIZED_WIRE_12 XOR SYNTHESIZED_WIRE_1;


Z2 <= SYNTHESIZED_WIRE_12 XOR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_13);



SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_14 OR S1;


Z1 <= SYNTHESIZED_WIRE_12 XOR SYNTHESIZED_WIRE_13;


Z0 <= SYNTHESIZED_WIRE_12 XOR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_10 AND S0;


SYNTHESIZED_WIRE_3 <= S1 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_13 <= S0 OR S1;


SYNTHESIZED_WIRE_14 <= NOT(S0);



SYNTHESIZED_WIRE_10 <= NOT(S1);



END bdf_type;