----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.01.2022 12:06:59
-- Design Name: 
-- Module Name: bcd_counter - behavioral
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

entity bcd_counter is
	port (
		clock: in std_logic;
		enable: in std_logic;
		reset: in std_logic;
		load: in std_logic;
		load_value: in std_logic_vector(3 downto 0);
		value: out std_logic_vector(3 downto 0)
	 );
end bcd_counter;

architecture behavioral of bcd_counter is
	signal count: unsigned(3 downto 0);
begin
	value <= std_logic_vector(count);
	
	process (clock, reset, load)
	begin
		if reset = '1' then
			count <= (others => '0');
		elsif load = '1' then
			count <= unsigned(load_value);
		elsif falling_edge(clock) then
			if enable = '1' then
				if count = 9 then
					count <= (others => '0');
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;

end behavioral;
