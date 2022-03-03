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
-- CREATED		"Fri Jan 28 15:16:17 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY FullAdder IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC
	);
END FullAdder;

ARCHITECTURE bdf_type OF FullAdder IS 

COMPONENT semisumadores
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Suma : OUT STD_LOGIC;
		 Acarreo : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : semisumadores
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => Cin,
		 Suma => Sum,
		 Acarreo => SYNTHESIZED_WIRE_2);


b2v_inst1 : semisumadores
PORT MAP(A => A,
		 B => B,
		 Suma => SYNTHESIZED_WIRE_0,
		 Acarreo => SYNTHESIZED_WIRE_1);


Cout <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


END bdf_type;