----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 17:25:50
-- Design Name: 
-- Module Name: system - behavioral
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

entity system is
	port (
		clk: in std_logic;
		input: in std_logic_vector(7 downto 0);
		output: out std_logic_vector(7 downto 0)
	 );
end system;

architecture behavioral of system is
	component node_a is
		port ( 
			clk: in std_logic;
			send: in std_logic;
			data_in: in std_logic_vector(7 downto 0);
			tx: out std_logic
		);
	end component;
	
	component node_b is
		port ( 
			clk: in std_logic;
			rx: in std_logic;
			output: out std_logic_vector(7 downto 0);
			received: inout std_logic
		);
	end component;
	
	signal data: std_logic;
begin	
	a: node_a
		port map (
			clk => clk,
			send => '1',
			data_in => input,
			tx => data
		);
		
	b: node_b
		port map (
			clk => clk,
			rx => data,
			output => output,
			received => open
		);

end behavioral;
