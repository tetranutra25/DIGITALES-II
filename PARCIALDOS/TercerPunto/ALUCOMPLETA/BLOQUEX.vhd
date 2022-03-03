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
-- CREATED		"Tue Feb 22 14:33:29 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BLOQUEX IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		X0 :  OUT  STD_LOGIC;
		X1 :  OUT  STD_LOGIC;
		X2 :  OUT  STD_LOGIC;
		X3 :  OUT  STD_LOGIC
	);
END BLOQUEX;

ARCHITECTURE bdf_type OF BLOQUEX IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



X0 <= SYNTHESIZED_WIRE_4 XOR A0;


X1 <= SYNTHESIZED_WIRE_4 XOR A1;


X2 <= SYNTHESIZED_WIRE_4 XOR A2;


X3 <= SYNTHESIZED_WIRE_4 XOR A3;


SYNTHESIZED_WIRE_4 <= S0 OR S1;


END bdf_type;