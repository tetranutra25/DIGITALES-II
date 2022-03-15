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
-- CREATED		"Tue Mar 15 10:48:44 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DivisorFrecuencia IS 
	PORT
	(
		CLk :  IN  STD_LOGIC;
		CLK1Hz :  OUT  STD_LOGIC
	);
END DivisorFrecuencia;

ARCHITECTURE bdf_type OF DivisorFrecuencia IS 

COMPONENT moddieciseistruncadodiez
	PORT(CLK : IN STD_LOGIC;
		 Q0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC;
		 Q3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT modochotruncadocinco
	PORT(CLK : IN STD_LOGIC;
		 Q0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC
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



b2v_inst : moddieciseistruncadodiez
PORT MAP(CLK => CLk,
		 Q3 => SYNTHESIZED_WIRE_0);


b2v_inst1 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_0,
		 Q3 => SYNTHESIZED_WIRE_2);


b2v_inst2 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_1,
		 Q3 => SYNTHESIZED_WIRE_3);


b2v_inst3 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_2,
		 Q3 => SYNTHESIZED_WIRE_4);


b2v_inst4 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_3,
		 Q3 => SYNTHESIZED_WIRE_6);


b2v_inst5 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_4,
		 Q3 => SYNTHESIZED_WIRE_1);


b2v_inst54 : modochotruncadocinco
PORT MAP(CLK => SYNTHESIZED_WIRE_5,
		 Q2 => CLK1Hz);


b2v_inst6 : moddieciseistruncadodiez
PORT MAP(CLK => SYNTHESIZED_WIRE_6,
		 Q3 => SYNTHESIZED_WIRE_5);


END bdf_type;