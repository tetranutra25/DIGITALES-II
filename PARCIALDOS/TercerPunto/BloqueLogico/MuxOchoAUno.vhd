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
-- CREATED		"Tue Feb 22 16:06:12 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MuxOchoAUno IS 
	PORT
	(
		A3 :  IN  STD_LOGIC;
		A4 :  IN  STD_LOGIC;
		A5 :  IN  STD_LOGIC;
		I0 :  IN  STD_LOGIC;
		I1 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I3 :  IN  STD_LOGIC;
		I4 :  IN  STD_LOGIC;
		I5 :  IN  STD_LOGIC;
		I6 :  IN  STD_LOGIC;
		I7 :  IN  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC
	);
END MuxOchoAUno;

ARCHITECTURE bdf_type OF MuxOchoAUno IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 



Y1 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_20 <= NOT(A3);



SYNTHESIZED_WIRE_22 <= NOT(A5);



SYNTHESIZED_WIRE_21 <= NOT(A4);



SYNTHESIZED_WIRE_0 <= I0 AND SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_2 <= I1 AND SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_21 AND A5;


SYNTHESIZED_WIRE_1 <= I2 AND SYNTHESIZED_WIRE_20 AND A4 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_3 <= I3 AND SYNTHESIZED_WIRE_20 AND A4 AND A5;


SYNTHESIZED_WIRE_5 <= I4 AND A3 AND SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_4 <= I5 AND A3 AND SYNTHESIZED_WIRE_21 AND A5;


SYNTHESIZED_WIRE_6 <= I6 AND A3 AND A4 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_7 <= I7 AND A3 AND A4 AND A5;


END bdf_type;