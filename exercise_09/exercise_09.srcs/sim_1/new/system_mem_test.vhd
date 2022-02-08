----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 18:55:48
-- Design Name: 
-- Module Name: system_mem_test - behavioral
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

entity system_mem_test is
--  Port ( );
end system_mem_test;

architecture behavioral of system_mem_test is
	component node_a_mem is
		port ( 
			clk: in std_logic;
			send: in std_logic;
			tx: out std_logic
		);
	end component;
	
	component node_b_mem is
		port (
			clk: in std_logic;
			rx: in std_logic
		);
	end component;
	
	signal clk: std_logic;
	signal send: std_logic;
	signal data: std_logic;
	
begin
	a: node_a_mem
		port map (
			clk => clk,
			send => send,
			tx => data
		);
		
	b: node_b_mem
		port map (
			clk => clk,
			rx => data
		);

	process
	begin
		clk <= '0';
		wait for 10 ns;
		for i in 0 to 5 loop
			send <= '1';
			clk <= '1';
			wait for 10 ns;
			clk <= '0';
			wait for 10 ns;
			send <= '0';
			
			for j in 0 to 30 loop
				clk <= '1';
				wait for 10 ns;
				clk <= '0';
				wait for 10 ns;
			end loop;
		end loop;
	end process;

end behavioral;
