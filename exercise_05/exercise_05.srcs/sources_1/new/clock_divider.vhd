----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.01.2022 17:03:12
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

entity clock_divider is
	generic (
		divider: integer := 100000000
	);
	port (
		clock_in: in std_logic;
		enable: in std_logic;
		reset: in std_logic;
		clock_out: out std_logic
	 );
end clock_divider;

architecture behavioral of clock_divider is
	signal count: unsigned(31 downto 0);
	signal clock: std_logic;
begin
	process (clock_in, enable, reset)
	begin
		if reset = '1' then
			count <= (others => '0');
		end if;
	
		if rising_edge(clock_in) then
			if enable = '1' and reset = '0' then
				clock_out <= clock;
			
				if count = divider / 2 then
					count <= (others => '0');
					clock <= not clock;
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
end behavioral;
