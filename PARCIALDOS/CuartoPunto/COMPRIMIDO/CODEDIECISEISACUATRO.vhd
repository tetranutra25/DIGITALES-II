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
-- CREATED		"Fri Feb 18 15:14:51 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY CODEDIECISEISACUATRO IS 
	PORT
	(
		D0 :  IN  STD_LOGIC;
		D1 :  IN  STD_LOGIC;
		D2 :  IN  STD_LOGIC;
		D3 :  IN  STD_LOGIC;
		D4 :  IN  STD_LOGIC;
		D5 :  IN  STD_LOGIC;
		D6 :  IN  STD_LOGIC;
		D7 :  IN  STD_LOGIC;
		D8 :  IN  STD_LOGIC;
		D9 :  IN  STD_LOGIC;
		D10 :  IN  STD_LOGIC;
		D11 :  IN  STD_LOGIC;
		D12 :  IN  STD_LOGIC;
		D13 :  IN  STD_LOGIC;
		D14 :  IN  STD_LOGIC;
		D15 :  IN  STD_LOGIC;
		A :  OUT  STD_LOGIC;
		B :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		D :  OUT  STD_LOGIC
	);
END CODEDIECISEISACUATRO;

ARCHITECTURE bdf_type OF CODEDIECISEISACUATRO IS 



BEGIN 



D <= D1 OR D5 OR D3 OR D7 OR D11 OR D9 OR D13 OR D15;


C <= D2 OR D6 OR D3 OR D7 OR D11 OR D10 OR D14 OR D15;


B <= D4 OR D6 OR D5 OR D7 OR D13 OR D12 OR D14 OR D15;


A <= D8 OR D10 OR D9 OR D11 OR D13 OR D12 OR D14 OR D15;


END bdf_type;