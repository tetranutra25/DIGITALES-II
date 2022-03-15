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
-- CREATED		"Tue Mar 15 10:51:23 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RelojSegundero IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		A1 :  OUT  STD_LOGIC;
		A2 :  OUT  STD_LOGIC;
		A3 :  OUT  STD_LOGIC;
		A4 :  OUT  STD_LOGIC;
		A5 :  OUT  STD_LOGIC;
		A6 :  OUT  STD_LOGIC
	);
END RelojSegundero;

ARCHITECTURE bdf_type OF RelojSegundero IS 

COMPONENT moddieciseistruncadodiez
	PORT(CLK : IN STD_LOGIC;
		 Q0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC;
		 Q3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT modochotruncadoseis
	PORT(CLK : IN STD_LOGIC;
		 Q0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 
A1 <= SYNTHESIZED_WIRE_1;
A3 <= SYNTHESIZED_WIRE_0;



b2v_inst : moddieciseistruncadodiez
PORT MAP(CLK => CLK,
		 Q0 => A0,
		 Q1 => SYNTHESIZED_WIRE_1,
		 Q2 => A2,
		 Q3 => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1;


b2v_inst2 : modochotruncadoseis
PORT MAP(CLK => SYNTHESIZED_WIRE_2,
		 Q0 => A4,
		 Q1 => A5,
		 Q2 => A6);


END bdf_type;