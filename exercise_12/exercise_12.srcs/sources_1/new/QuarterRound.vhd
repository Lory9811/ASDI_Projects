----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2022 18:17:49
-- Design Name: 
-- Module Name: QuarterRound - behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.chacha_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity QuarterRound is
	port (
		input: in state_row_t;
		output: out state_row_t
	);
end QuarterRound;

architecture structural of QuarterRound is
	type layers_t is array(0 to 1) of state_row_t;
	signal layers: layers_t;
begin
	layers(0)(0) <= std_logic_vector(unsigned(input(0)) + unsigned(input(1)));
	layers(0)(3) <= std_logic_vector(unsigned(layers(0)(0) xor input(3)) rol 16);
	layers(0)(2) <= std_logic_vector(unsigned(input(2)) + unsigned(layers(0)(3)));
	layers(0)(1) <= std_logic_vector(unsigned(layers(0)(2) xor input(1)) rol 12);
	
	layers(1)(0) <= std_logic_vector(unsigned(layers(0)(0)) + unsigned(layers(0)(1)));
	layers(1)(3) <= std_logic_vector(unsigned(layers(1)(0) xor layers(0)(3)) rol 8);
	layers(1)(2) <= std_logic_vector(unsigned(layers(0)(2)) + unsigned(layers(1)(3)));
	layers(1)(1) <= std_logic_vector(unsigned(layers(1)(2) xor layers(0)(1)) rol 7);
	
	output <= layers(1);
end structural;
