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
-- CREATED		"Fri Feb 18 16:04:25 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MuxCuadruple IS 
	PORT
	(
		S :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		Y0 :  OUT  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC;
		Y2 :  OUT  STD_LOGIC;
		Y3 :  OUT  STD_LOGIC
	);
END MuxCuadruple;

ARCHITECTURE bdf_type OF MuxCuadruple IS 

SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_7 <= A1 AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_6 <= B1 AND S;


Y0 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_5 <= A3 AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_4 <= B3 AND S;


Y3 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


Y1 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_10 <= A2 AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_9 <= B2 AND S;


SYNTHESIZED_WIRE_12 <= NOT(S);



Y2 <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_2 <= A0 AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_1 <= B0 AND S;


END bdf_type;