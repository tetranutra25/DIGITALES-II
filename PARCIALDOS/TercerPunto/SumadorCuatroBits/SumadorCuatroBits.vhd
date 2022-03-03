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
-- CREATED		"Tue Feb 22 15:15:42 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SumadorCuatroBits IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		S :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		C4 :  OUT  STD_LOGIC
	);
END SumadorCuatroBits;

ARCHITECTURE bdf_type OF SumadorCuatroBits IS 

COMPONENT fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst : fulladder
PORT MAP(A => A3,
		 B => SYNTHESIZED_WIRE_0,
		 Cin => SYNTHESIZED_WIRE_1,
		 Sum => S3,
		 Cout => C4);


SYNTHESIZED_WIRE_0 <= S XOR B3;


b2v_inst3 : fulladder
PORT MAP(A => A2,
		 B => SYNTHESIZED_WIRE_2,
		 Cin => SYNTHESIZED_WIRE_3,
		 Sum => S2,
		 Cout => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_2 <= S XOR B2;


b2v_inst5 : fulladder
PORT MAP(A => A1,
		 B => SYNTHESIZED_WIRE_4,
		 Cin => SYNTHESIZED_WIRE_5,
		 Sum => S1,
		 Cout => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_4 <= S XOR B1;


b2v_inst7 : fulladder
PORT MAP(A => A0,
		 B => SYNTHESIZED_WIRE_6,
		 Cin => Cin,
		 Sum => S0,
		 Cout => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_6 <= S XOR B0;


END bdf_type;