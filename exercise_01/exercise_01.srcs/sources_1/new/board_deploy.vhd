----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 17:05:25
-- Design Name: 
-- Module Name: board_deploy - structural
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity board_deploy is
	port ( 
		SW: in std_logic_vector(5 downto 0);
		LED: out std_logic_vector(3 downto 0)
	);
end board_deploy;

architecture structural of board_deploy is

	component interconnect_16to4 is
		port(
			inputs: in std_logic_vector(15 downto 0);
			input_address: in std_logic_vector(3 downto 0);
			output_address: in std_logic_vector(1 downto 0);
			outputs: out std_logic_vector(3 downto 0)
		);
	end component;
	
begin

	interconnect: interconnect_16to4
		port map(
			inputs => "1000000000001101",
			input_address => SW(3 downto 0),
			output_address => SW(5 downto 4),
			outputs => LED
		);

end structural;
