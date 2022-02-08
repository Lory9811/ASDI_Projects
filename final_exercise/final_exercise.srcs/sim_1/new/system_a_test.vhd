----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 11:34:27
-- Design Name: 
-- Module Name: system_a_test - behavioral
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

entity system_a_test is
--  Port ( );
end system_a_test;

architecture behavioral of system_a_test is
	component system_a is
		port (
			reset: in std_logic;
			clk: in std_logic;
			ack: in std_logic;
			data_out: out std_logic_vector(3 downto 0);
			ready: out std_logic
		);
	end component;
	
	signal reset: std_logic;
	signal clk: std_logic;
	signal ack: std_logic;
	signal data_out: std_logic_vector(3 downto 0);
	signal ready: std_logic;
begin
	uut: system_a port map (
		reset => reset,
		clk => clk,
		ack => ack,
		data_out => data_out,
		ready => ready
	);

	process begin
		reset <= '1';
		clk <= '0';
		ack <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		reset <= '0';
		wait for 10 ns;
		for i in 0 to 30 loop
			if ready = '1' then
				ack <= '1';
			else
				ack <= '0';
			end if;
			clk <= not clk;
			wait for 10 ns;
		end loop;
	end process;	

end behavioral;
