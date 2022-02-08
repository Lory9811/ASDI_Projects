----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 19:11:38
-- Design Name: 
-- Module Name: tester - behavioral
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tester is
	port (
		read: in std_logic;
		reset: in std_logic;
		result: in std_logic_vector(2 downto 0);
		test: out std_logic_vector(3 downto 0)
	);
end tester;

architecture behavioral of tester is

	type rom_t is array(0 to 7) of std_logic_vector(3 downto 0);
	type ram_t is array(0 to 7) of std_logic_vector(2 downto 0);
	
	constant rom: rom_t := (
		0 => "0000",
		1 => "0101",
		2 => "1010",
		3 => "1100",
		4 => "0011",
		5 => "0110",
		6 => "1001",
		7 => "1111"
	);
	
	signal ram: ram_t;
	
begin

	process (read, reset)
		variable current_test: integer range 0 to 7 := 0;
	begin
		if read = '1' then
			if current_test = 7 then
				current_test := 0;
			else 
				current_test := current_test + 1;
			end if;
			
			test <= rom(current_test);
		end if;
		
		if reset = '1' then
			current_test := 0;
			for i in 0 to 7 loop
				ram(i) <= "000";
			end loop;
		end if;
	end process;

end behavioral;
