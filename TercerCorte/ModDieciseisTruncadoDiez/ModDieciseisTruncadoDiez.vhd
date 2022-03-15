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
-- CREATED		"Mon Mar 07 15:16:18 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ModDieciseisTruncadoDiez IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC
	);
END ModDieciseisTruncadoDiez;

ARCHITECTURE bdf_type OF ModDieciseisTruncadoDiez IS 

SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	JKFF_inst3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	JKFF_inst52 :  STD_LOGIC;
SIGNAL	JKFF_inst2 :  STD_LOGIC;


BEGIN 
Q0 <= JKFF_inst52;
Q1 <= SYNTHESIZED_WIRE_19;
Q2 <= JKFF_inst2;
Q3 <= JKFF_inst3;
SYNTHESIZED_WIRE_20 <= '1';



SYNTHESIZED_WIRE_21 <= NOT(SYNTHESIZED_WIRE_19 AND JKFF_inst3);


PROCESS(SYNTHESIZED_WIRE_4,SYNTHESIZED_WIRE_21,SYNTHESIZED_WIRE_20)
VARIABLE synthesized_var_for_SYNTHESIZED_WIRE_19 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_21 = '0') THEN
	synthesized_var_for_SYNTHESIZED_WIRE_19 := '0';
ELSIF (SYNTHESIZED_WIRE_20 = '0') THEN
	synthesized_var_for_SYNTHESIZED_WIRE_19 := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_4)) THEN
	synthesized_var_for_SYNTHESIZED_WIRE_19 := (NOT(synthesized_var_for_SYNTHESIZED_WIRE_19) AND SYNTHESIZED_WIRE_20) OR (synthesized_var_for_SYNTHESIZED_WIRE_19 AND (NOT(SYNTHESIZED_WIRE_20)));
END IF;
	SYNTHESIZED_WIRE_19 <= synthesized_var_for_SYNTHESIZED_WIRE_19;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_9,SYNTHESIZED_WIRE_21,SYNTHESIZED_WIRE_20)
VARIABLE synthesized_var_for_JKFF_inst2 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_21 = '0') THEN
	synthesized_var_for_JKFF_inst2 := '0';
ELSIF (SYNTHESIZED_WIRE_20 = '0') THEN
	synthesized_var_for_JKFF_inst2 := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_9)) THEN
	synthesized_var_for_JKFF_inst2 := (NOT(synthesized_var_for_JKFF_inst2) AND SYNTHESIZED_WIRE_20) OR (synthesized_var_for_JKFF_inst2 AND (NOT(SYNTHESIZED_WIRE_20)));
END IF;
	JKFF_inst2 <= synthesized_var_for_JKFF_inst2;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_21,SYNTHESIZED_WIRE_20)
VARIABLE synthesized_var_for_JKFF_inst3 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_21 = '0') THEN
	synthesized_var_for_JKFF_inst3 := '0';
ELSIF (SYNTHESIZED_WIRE_20 = '0') THEN
	synthesized_var_for_JKFF_inst3 := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_14)) THEN
	synthesized_var_for_JKFF_inst3 := (NOT(synthesized_var_for_JKFF_inst3) AND SYNTHESIZED_WIRE_20) OR (synthesized_var_for_JKFF_inst3 AND (NOT(SYNTHESIZED_WIRE_20)));
END IF;
	JKFF_inst3 <= synthesized_var_for_JKFF_inst3;
END PROCESS;



PROCESS(CLK,SYNTHESIZED_WIRE_21,SYNTHESIZED_WIRE_20)
VARIABLE synthesized_var_for_JKFF_inst52 : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_21 = '0') THEN
	synthesized_var_for_JKFF_inst52 := '0';
ELSIF (SYNTHESIZED_WIRE_20 = '0') THEN
	synthesized_var_for_JKFF_inst52 := '1';
ELSIF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_JKFF_inst52 := (NOT(synthesized_var_for_JKFF_inst52) AND SYNTHESIZED_WIRE_20) OR (synthesized_var_for_JKFF_inst52 AND (NOT(SYNTHESIZED_WIRE_20)));
END IF;
	JKFF_inst52 <= synthesized_var_for_JKFF_inst52;
END PROCESS;


SYNTHESIZED_WIRE_4 <= NOT(JKFF_inst52);



SYNTHESIZED_WIRE_14 <= NOT(JKFF_inst2);



SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_19);



END bdf_type;