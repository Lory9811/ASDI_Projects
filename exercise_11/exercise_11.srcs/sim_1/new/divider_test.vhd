----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2022 12:16:21
-- Design Name: 
-- Module Name: divider_test - behavioral
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
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider_test is
--  Port ( );
end divider_test;

architecture behavioral of divider_test is
	component divider is
		port ( 
			reset: in std_logic;
			clk: in std_logic;
			start: in std_logic;
			dividend: in std_logic_vector(3 downto 0);
			divisor: in std_logic_vector(3 downto 0);
			result: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal reset: std_logic;
	signal clk: std_logic;
	signal start: std_logic;
	signal dividend: std_logic_vector(3 downto 0);
	signal divisor: std_logic_vector(3 downto 0);
	signal result: std_logic_vector(7 downto 0);
begin

	uut: divider 
		port map (
			reset => reset,
			clk => clk,
			start => start,
			dividend => dividend,
			divisor => divisor,
			result => result
		);
		
	process
	begin
		reset <= '1';
		clk <= '0';
		start <= '0';
		dividend <= "0101";
		divisor <= "0010";
		wait for 10 ns;
		reset <= '0';
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		reset <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		start <= '1';
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		start <= '0';
		
		for i in 0 to 20 loop
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			clk <= '0';
		end loop;
		
		finish;
		
	end process;

end behavioral;
