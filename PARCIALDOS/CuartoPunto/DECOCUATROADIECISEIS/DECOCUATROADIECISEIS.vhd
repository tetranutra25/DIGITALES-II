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
-- CREATED		"Fri Feb 18 15:28:48 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DECOCUATROADIECISEIS IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		D0 :  OUT  STD_LOGIC;
		D1 :  OUT  STD_LOGIC;
		D2 :  OUT  STD_LOGIC;
		D3 :  OUT  STD_LOGIC;
		D4 :  OUT  STD_LOGIC;
		D5 :  OUT  STD_LOGIC;
		D6 :  OUT  STD_LOGIC;
		D7 :  OUT  STD_LOGIC;
		D8 :  OUT  STD_LOGIC;
		D9 :  OUT  STD_LOGIC;
		D10 :  OUT  STD_LOGIC;
		D11 :  OUT  STD_LOGIC;
		D12 :  OUT  STD_LOGIC;
		D13 :  OUT  STD_LOGIC;
		D14 :  OUT  STD_LOGIC;
		D15 :  OUT  STD_LOGIC
	);
END DECOCUATROADIECISEIS;

ARCHITECTURE bdf_type OF DECOCUATROADIECISEIS IS 

SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;


BEGIN 



D0 <= SYNTHESIZED_WIRE_32 AND SYNTHESIZED_WIRE_33 AND SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_35;


D2 <= SYNTHESIZED_WIRE_32 AND SYNTHESIZED_WIRE_33 AND C AND SYNTHESIZED_WIRE_35;


D3 <= SYNTHESIZED_WIRE_32 AND SYNTHESIZED_WIRE_33 AND C AND D;


D4 <= SYNTHESIZED_WIRE_32 AND B AND SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_35;


D5 <= SYNTHESIZED_WIRE_32 AND B AND SYNTHESIZED_WIRE_34 AND D;


D6 <= SYNTHESIZED_WIRE_32 AND B AND C AND SYNTHESIZED_WIRE_35;


D7 <= SYNTHESIZED_WIRE_32 AND B AND C AND D;


D8 <= A AND SYNTHESIZED_WIRE_33 AND SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_35;


D9 <= A AND SYNTHESIZED_WIRE_33 AND SYNTHESIZED_WIRE_34 AND D;


D10 <= A AND SYNTHESIZED_WIRE_33 AND C AND SYNTHESIZED_WIRE_35;


D11 <= A AND SYNTHESIZED_WIRE_33 AND C AND D;


D12 <= A AND B AND SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_35;


D13 <= A AND B AND SYNTHESIZED_WIRE_34 AND D;


D14 <= A AND B AND C AND SYNTHESIZED_WIRE_35;


D15 <= A AND B AND C AND D;


SYNTHESIZED_WIRE_32 <= NOT(A);



SYNTHESIZED_WIRE_33 <= NOT(B);



SYNTHESIZED_WIRE_34 <= NOT(C);



SYNTHESIZED_WIRE_35 <= NOT(D);



D1 <= SYNTHESIZED_WIRE_32 AND SYNTHESIZED_WIRE_33 AND SYNTHESIZED_WIRE_34 AND D;


END bdf_type;