----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 12:36:49
-- Design Name: 
-- Module Name: system_test - behavioral
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
use STD.ENV.FINISH;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity system_test is
--  Port ( );
end system_test;

architecture behavioral of system_test is
	component system is
		port (
			reset: in std_logic;
			clk: in std_logic
		);
	end component;
	
	signal reset: std_logic;
	signal clk: std_logic;
begin
	
	uut: system port map (
		reset => reset,
		clk => clk
	);
	
	process begin
		reset <= '0';
		clk <= '0';
		wait for 10 ns;
		reset <= '1';
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		reset <= '0';
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		for i in 0 to 200 loop
			clk <= not clk;
			wait for 10 ns;
		end loop;
		finish;
	end process;

end behavioral;
