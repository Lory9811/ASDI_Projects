----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.01.2022 17:18:45
-- Design Name: 
-- Module Name: display_controller - behavioral
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

entity display_controller is
	port (
		clock: in std_logic;
		seconds: in std_logic_vector(7 downto 0);
		minutes: in std_logic_vector(7 downto 0);
		hours: in std_logic_vector(7 downto 0);
		value: out std_logic_vector(3 downto 0);
		display: out std_logic_vector(5 downto 0)
	 );
end display_controller;

architecture behavioral of display_controller is

begin
	process (clock)
		variable current_display: integer range 0 to 5 := 0;
	begin
		if rising_edge(clock) then
			if current_display = 5 then
				current_display := 0;
			else 
				current_display := current_display + 1;
			end if;
			
			case current_display is -- display output multiplexer
				when 0 => 
					value <= seconds(3 downto 0);
					display <= not "000001";
				when 1 => 
					value <= seconds(7 downto 4);
					display <= not "000010";
					
				when 2 =>
				 	value <= minutes(3 downto 0);
				 	display <= not "000100";
				when 3 => 
					value <= minutes(7 downto 4);
					display <= not "001000";
				
				when 4 => 
					value <= hours(3 downto 0);
					display <= not "010000";
				when 5 => 
					value <= hours(7 downto 4);
					display <= not "100000";
			end case;
		end if;
		
	end process;
end behavioral;
