----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: counter - behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
	generic (
		bits: integer
	);
	port (
		reset: in std_logic;
		clk: in std_logic;
		enable: in std_logic;
		count: out std_logic_vector(bits - 1 downto 0)
	);
end counter;

architecture behavioral of counter is
	signal value: unsigned(bits - 1 downto 0);
begin

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then 
				value <= (others => '0');
			elsif enable = '1' then 
				value <= value + 1;
			end if;
		end if;
		
		if falling_edge(clk) then
			count <= std_logic_vector(value);
		end if;
	end process;

end behavioral;
