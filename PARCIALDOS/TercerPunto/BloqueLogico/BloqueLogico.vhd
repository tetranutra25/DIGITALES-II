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
-- CREATED		"Mon Feb 28 10:40:57 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BloqueLogico IS 
	PORT
	(
		S0 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		L0 :  OUT  STD_LOGIC;
		L1 :  OUT  STD_LOGIC;
		L2 :  OUT  STD_LOGIC;
		L3 :  OUT  STD_LOGIC
	);
END BloqueLogico;

ARCHITECTURE bdf_type OF BloqueLogico IS 

COMPONENT muxochoauno
	PORT(A3 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 A5 : IN STD_LOGIC;
		 I0 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I3 : IN STD_LOGIC;
		 I4 : IN STD_LOGIC;
		 I5 : IN STD_LOGIC;
		 I6 : IN STD_LOGIC;
		 I7 : IN STD_LOGIC;
		 Y1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_25 <= '1';
SYNTHESIZED_WIRE_5 <= '0';
SYNTHESIZED_WIRE_27 <= '1';
SYNTHESIZED_WIRE_11 <= '0';
SYNTHESIZED_WIRE_29 <= '1';
SYNTHESIZED_WIRE_17 <= '0';
SYNTHESIZED_WIRE_31 <= '1';
SYNTHESIZED_WIRE_23 <= '0';





b2v_inst12 : muxochoauno
PORT MAP(A3 => S1,
		 A4 => S0,
		 A5 => A2,
		 I0 => SYNTHESIZED_WIRE_24,
		 I1 => B2,
		 I2 => SYNTHESIZED_WIRE_25,
		 I3 => B2,
		 I4 => SYNTHESIZED_WIRE_25,
		 I5 => SYNTHESIZED_WIRE_24,
		 I6 => SYNTHESIZED_WIRE_24,
		 I7 => SYNTHESIZED_WIRE_5,
		 Y1 => L2);


SYNTHESIZED_WIRE_24 <= NOT(B2);





b2v_inst16 : muxochoauno
PORT MAP(A3 => S1,
		 A4 => S0,
		 A5 => A3,
		 I0 => SYNTHESIZED_WIRE_26,
		 I1 => B3,
		 I2 => SYNTHESIZED_WIRE_27,
		 I3 => B3,
		 I4 => SYNTHESIZED_WIRE_27,
		 I5 => SYNTHESIZED_WIRE_26,
		 I6 => SYNTHESIZED_WIRE_26,
		 I7 => SYNTHESIZED_WIRE_11,
		 Y1 => L3);


SYNTHESIZED_WIRE_26 <= NOT(B3);





b2v_inst4 : muxochoauno
PORT MAP(A3 => S1,
		 A4 => S0,
		 A5 => A0,
		 I0 => SYNTHESIZED_WIRE_28,
		 I1 => B0,
		 I2 => SYNTHESIZED_WIRE_29,
		 I3 => B0,
		 I4 => SYNTHESIZED_WIRE_29,
		 I5 => SYNTHESIZED_WIRE_28,
		 I6 => SYNTHESIZED_WIRE_28,
		 I7 => SYNTHESIZED_WIRE_17,
		 Y1 => L0);


SYNTHESIZED_WIRE_28 <= NOT(B0);





b2v_inst8 : muxochoauno
PORT MAP(A3 => S1,
		 A4 => S0,
		 A5 => A1,
		 I0 => SYNTHESIZED_WIRE_30,
		 I1 => B1,
		 I2 => SYNTHESIZED_WIRE_31,
		 I3 => B1,
		 I4 => SYNTHESIZED_WIRE_31,
		 I5 => SYNTHESIZED_WIRE_30,
		 I6 => SYNTHESIZED_WIRE_30,
		 I7 => SYNTHESIZED_WIRE_23,
		 Y1 => L1);


SYNTHESIZED_WIRE_30 <= NOT(B1);



END bdf_type;