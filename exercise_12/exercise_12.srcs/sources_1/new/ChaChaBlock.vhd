----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2022 18:01:52
-- Design Name: 
-- Module Name: ChaChaBlock - behavioral
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

entity ChaChaBlock is
	port (
		input: in state_t;
		output: out state_t
	);
end ChaChaBlock;

architecture behavioral of ChaChaBlock is
	component DoubleRound is
		port (
			state_in: in state_t;
			state_out: out state_t
		);
	end component;
	
	type rounds_t is array (0 to 9) of state_t;
	signal round_inputs: rounds_t;
	
	signal result: state_t;
begin
	round_inputs(0) <= input;
	
	rounds: for i in 0 to 8 generate
		round: DoubleRound
			port map (
				state_in => round_inputs(i),
				state_out => round_inputs(i + 1)
			);
	end generate;
	
	final_round: DoubleRound
		port map (
			state_in => round_inputs(9),
			state_out => result
		);
		
	final_sum: for i in 0 to 3 generate
		inner: for j in 0 to 3 generate
			output(i)(j) <= result(i)(j) + input(i)(j);
		end generate;
	end generate;

end behavioral;
