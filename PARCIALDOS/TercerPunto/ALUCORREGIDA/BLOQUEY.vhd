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
-- CREATED		"Tue Feb 22 14:29:24 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BLOQUEY IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		Y0 :  OUT  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC;
		Y2 :  OUT  STD_LOGIC;
		Y3 :  OUT  STD_LOGIC
	);
END BLOQUEY;

ARCHITECTURE bdf_type OF BLOQUEY IS 

COMPONENT muxcuadruple
	PORT(S : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 Y0 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC;
		 Y2 : OUT STD_LOGIC;
		 Y3 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_1 <= '1';
SYNTHESIZED_WIRE_3 <= '0';
SYNTHESIZED_WIRE_4 <= '0';



b2v_inst : muxcuadruple
PORT MAP(S => SYNTHESIZED_WIRE_0,
		 B0 => SYNTHESIZED_WIRE_1,
		 A1 => B1,
		 B1 => SYNTHESIZED_WIRE_14,
		 A2 => B2,
		 B2 => SYNTHESIZED_WIRE_3,
		 A3 => B3,
		 B3 => SYNTHESIZED_WIRE_4,
		 A0 => B0,
		 Y0 => SYNTHESIZED_WIRE_6,
		 Y1 => SYNTHESIZED_WIRE_8,
		 Y2 => SYNTHESIZED_WIRE_10,
		 Y3 => SYNTHESIZED_WIRE_12);


Y0 <= SYNTHESIZED_WIRE_15 XOR SYNTHESIZED_WIRE_6;



Y1 <= SYNTHESIZED_WIRE_15 XOR SYNTHESIZED_WIRE_8;


Y2 <= SYNTHESIZED_WIRE_15 XOR SYNTHESIZED_WIRE_10;


Y3 <= SYNTHESIZED_WIRE_15 XOR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_15 <= S0 OR SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_14 <= NOT(S1);



SYNTHESIZED_WIRE_0 <= NOT(S0);





END bdf_type;