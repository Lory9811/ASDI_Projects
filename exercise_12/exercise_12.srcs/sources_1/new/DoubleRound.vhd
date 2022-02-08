----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2022 11:10:23
-- Design Name: 
-- Module Name: DoubleRound - behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.CHACHA_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DoubleRound is
	port (
		state_in: in state_t;
		state_out: out state_t
	);
end DoubleRound;

architecture behavioral of DoubleRound is
	component QuarterRound is
		port (
			input: in state_row_t;
			output: out state_row_t
		);
	end component;

	signal first_output: state_t;
	signal output_state: state_t; 
begin	
	first_round: for i in 0 to 3 generate
		qr: QuarterRound
			port map (
				input(0) => state_in(0)(i),
				input(1) => state_in(1)(i),
				input(2) => state_in(2)(i),
				input(3) => state_in(3)(i),
				output(0) => first_output(0)(i),
				output(1) => first_output(1)(i),
				output(2) => first_output(2)(i),
				output(3) => first_output(3)(i)
			);
	end generate;
	
	second_round: for i in 0 to 3 generate
		qr: QuarterRound
			port map (
				input(0) => first_output(0)((0 + i) mod 4),
				input(1) => first_output(1)((1 + i) mod 4),
				input(2) => first_output(2)((2 + i) mod 4),
				input(3) => first_output(3)((3 + i) mod 4),
				output(0) => state_out(0)((0 + i) mod 4),
				output(1) => state_out(1)((1 + i) mod 4),
				output(2) => state_out(2)((2 + i) mod 4),
				output(3) => state_out(3)((3 + i) mod 4)
			);
	end generate;

end behavioral;
