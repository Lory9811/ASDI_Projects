----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:48 01/11/2022 
-- Design Name: 
-- Module Name:    mux_4to1 - dataflow 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity mux_4to1 is 
	port(
		input: in std_logic_vector(3 downto 0);
		address: in std_logic_vector(1 downto 0);
		output: out std_logic
	);
end mux_4to1;

architecture behavioral of mux_4to1 is
begin
	output <= input(0) when address = "00" else
			input(1) when address = "01" else
			input(2) when address = "10" else
			input(3) when address = "11" else
			'-';
end behavioral;
