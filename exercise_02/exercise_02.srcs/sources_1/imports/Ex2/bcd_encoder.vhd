----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:34 01/12/2022 
-- Design Name: 
-- Module Name:    bcd_encoder - behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_encoder is
	port(
		inputs: in std_logic_vector(9 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end bcd_encoder;

architecture behavioral of bcd_encoder is
	
begin

    process(inputs)
    begin	   
		case inputs is
			when "0000000001" => output <= "0000";
			when "0000000010" => output <= "0001";
			when "0000000100" => output <= "0010";
			when "0000001000" => output <= "0011";
			when "0000010000" => output <= "0100";
			when "0000100000" => output <= "0101";
			when "0001000000" => output <= "0110";
			when "0010000000" => output <= "0111";
			when "0100000000" => output <= "1000";
			when "1000000000" => output <= "1001";
			when others => output <= "0000";
		end case;
	end process;
end behavioral;

