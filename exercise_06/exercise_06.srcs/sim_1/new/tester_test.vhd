----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 19:38:10
-- Design Name: 
-- Module Name: tester_test - behavioral
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

entity tester_test is
--  Port ( );
end tester_test;

architecture behavioral of tester_test is
	component tester is
		port (
			read: in std_logic;
			reset: in std_logic;
			result: in std_logic_vector(2 downto 0);
			test: out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal read: std_logic;
	signal reset: std_logic;
	signal result: std_logic_vector(2 downto 0);
	signal test: std_logic_vector(3 downto 0);
	
begin
	uut: tester
		port map (
			read => read,
			reset => reset,
			result => result,
			test => test
		);
		
	process
	begin
		read <= '0';
		reset <= '1';
		result <= "000";
		
		wait for 10 ns;
		reset <= '0';
		wait for 10 ns;
		
		for i in 0 to 10 loop
			read <= '1';
			wait for 10 ns;
			read <= '0';
			wait for 10 ns;
		end loop;
	end process;

end behavioral;
