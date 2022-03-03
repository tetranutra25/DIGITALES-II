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
-- CREATED		"Tue Feb 22 16:26:54 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALUCORREGIDA IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		C4 :  OUT  STD_LOGIC;
		EXIT0 :  OUT  STD_LOGIC;
		EXIT1 :  OUT  STD_LOGIC;
		EXIT2 :  OUT  STD_LOGIC;
		EXIT3 :  OUT  STD_LOGIC
	);
END ALUCORREGIDA;

ARCHITECTURE bdf_type OF ALUCORREGIDA IS 

COMPONENT bloquex
	PORT(A0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 X0 : OUT STD_LOGIC;
		 X1 : OUT STD_LOGIC;
		 X2 : OUT STD_LOGIC;
		 X3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT bloquey
	PORT(S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 Y0 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC;
		 Y2 : OUT STD_LOGIC;
		 Y3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT bloquez
	PORT(S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 Z3 : OUT STD_LOGIC;
		 Z2 : OUT STD_LOGIC;
		 Z1 : OUT STD_LOGIC;
		 Z0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sumadorcuatrobits
	PORT(A0 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC;
		 C4 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_8 <= '0';
SYNTHESIZED_WIRE_9 <= '1';
SYNTHESIZED_WIRE_18 <= '0';



b2v_inst : bloquex
PORT MAP(A0 => A0,
		 A1 => A1,
		 A2 => A2,
		 A3 => A3,
		 S1 => S1,
		 S0 => S0,
		 X0 => SYNTHESIZED_WIRE_0,
		 X1 => SYNTHESIZED_WIRE_2,
		 X2 => SYNTHESIZED_WIRE_4,
		 X3 => SYNTHESIZED_WIRE_6);


b2v_inst2 : bloquey
PORT MAP(S1 => S1,
		 S0 => S0,
		 B0 => B0,
		 B1 => B1,
		 B2 => B2,
		 B3 => B3,
		 Y0 => SYNTHESIZED_WIRE_1,
		 Y1 => SYNTHESIZED_WIRE_3,
		 Y2 => SYNTHESIZED_WIRE_5,
		 Y3 => SYNTHESIZED_WIRE_7);


b2v_inst3 : bloquez
PORT MAP(S1 => S1,
		 S0 => S0,
		 Z3 => SYNTHESIZED_WIRE_17,
		 Z2 => SYNTHESIZED_WIRE_15,
		 Z1 => SYNTHESIZED_WIRE_13,
		 Z0 => SYNTHESIZED_WIRE_11);


b2v_inst4 : sumadorcuatrobits
PORT MAP(A0 => SYNTHESIZED_WIRE_0,
		 B0 => SYNTHESIZED_WIRE_1,
		 A1 => SYNTHESIZED_WIRE_2,
		 B1 => SYNTHESIZED_WIRE_3,
		 A2 => SYNTHESIZED_WIRE_4,
		 B2 => SYNTHESIZED_WIRE_5,
		 A3 => SYNTHESIZED_WIRE_6,
		 B3 => SYNTHESIZED_WIRE_7,
		 S => SYNTHESIZED_WIRE_8,
		 Cin => SYNTHESIZED_WIRE_9,
		 S0 => SYNTHESIZED_WIRE_10,
		 S1 => SYNTHESIZED_WIRE_12,
		 S2 => SYNTHESIZED_WIRE_14,
		 S3 => SYNTHESIZED_WIRE_16,
		 C4 => SYNTHESIZED_WIRE_19);



b2v_inst5 : sumadorcuatrobits
PORT MAP(A0 => SYNTHESIZED_WIRE_10,
		 B0 => SYNTHESIZED_WIRE_11,
		 A1 => SYNTHESIZED_WIRE_12,
		 B1 => SYNTHESIZED_WIRE_13,
		 A2 => SYNTHESIZED_WIRE_14,
		 B2 => SYNTHESIZED_WIRE_15,
		 A3 => SYNTHESIZED_WIRE_16,
		 B3 => SYNTHESIZED_WIRE_17,
		 S => SYNTHESIZED_WIRE_18,
		 Cin => SYNTHESIZED_WIRE_19,
		 S0 => EXIT0,
		 S1 => EXIT1,
		 S2 => EXIT2,
		 S3 => EXIT3,
		 C4 => C4);




END bdf_type;