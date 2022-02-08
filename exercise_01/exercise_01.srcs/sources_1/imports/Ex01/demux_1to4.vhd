----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:25 01/12/2022 
-- Design Name: 
-- Module Name:    demux_1to4 - behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux_1to4 is
	port(
		input: in std_logic;
		address: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end demux_1to4;

architecture behavioral of demux_1to4 is
begin
	--output(to_integer(unsigned(address))) <= input;
	
	process(input, address)
	begin
		output <= "0000";
		case address is
			when "00" => output(0) <= input;
			when "01" => output(1) <= input;
			when "10" => output(2) <= input;
			when "11" => output(3) <= input;
			when others => null;
		end case;
	end process;
	
end behavioral;

