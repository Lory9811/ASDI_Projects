----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 11:20:03
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
	generic (
		bits: integer := 8
	);
	port (
		reset: in std_logic;
		clock: in std_logic;
		enable: in std_logic;
		output: out std_logic_vector(bits - 1  downto 0)
	 );
end counter;

architecture behavioral of counter is
	signal count: std_logic_vector(bits - 1 downto 0);
begin
	
	process(clock, enable, reset, count)
	begin
		output <= count;
		if reset = '1' then
			count <= (bits - 1 downto 0 => '0');
		elsif falling_edge(clock) then
			if enable = '1' then
				count <=  count + ((bits - 1 downto 1 => '0') & "1");
			end if;
		end if;
	end process;

end behavioral;
