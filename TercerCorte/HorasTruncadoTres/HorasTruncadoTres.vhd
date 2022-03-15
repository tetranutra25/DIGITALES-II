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
-- CREATED		"Tue Mar 08 17:21:34 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY HorasTruncadoTres IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		pin_name1 :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC
	);
END HorasTruncadoTres;

ARCHITECTURE bdf_type OF HorasTruncadoTres IS 

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	JKFF_inst1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
Q0 <= SYNTHESIZED_WIRE_10;
Q1 <= JKFF_inst1;
SYNTHESIZED_WIRE_11 <= '1';



SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_10 AND JKFF_inst1);


PROCESS(SYNTHESIZED_WIRE_4,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_11)
VARIABLE synthesized_var_for_JKFF_inst1 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	synthesized_var_for_JKFF_inst1 := '0';
ELSIF (SYNTHESIZED_WIRE_11 = '0') THEN
	synthesized_var_for_JKFF_inst1 := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_4)) THEN
	synthesized_var_for_JKFF_inst1 := (NOT(synthesized_var_for_JKFF_inst1) AND SYNTHESIZED_WIRE_11) OR (synthesized_var_for_JKFF_inst1 AND (NOT(SYNTHESIZED_WIRE_11)));
END IF;
	JKFF_inst1 <= synthesized_var_for_JKFF_inst1;
END PROCESS;


SYNTHESIZED_WIRE_12 <= pin_name1 AND SYNTHESIZED_WIRE_5;



PROCESS(CLK,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_11)
VARIABLE synthesized_var_for_SYNTHESIZED_WIRE_10 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	synthesized_var_for_SYNTHESIZED_WIRE_10 := '0';
ELSIF (SYNTHESIZED_WIRE_11 = '0') THEN
	synthesized_var_for_SYNTHESIZED_WIRE_10 := '1';
ELSIF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_SYNTHESIZED_WIRE_10 := (NOT(synthesized_var_for_SYNTHESIZED_WIRE_10) AND SYNTHESIZED_WIRE_11) OR (synthesized_var_for_SYNTHESIZED_WIRE_10 AND (NOT(SYNTHESIZED_WIRE_11)));
END IF;
	SYNTHESIZED_WIRE_10 <= synthesized_var_for_SYNTHESIZED_WIRE_10;
END PROCESS;


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_10);



END bdf_type;