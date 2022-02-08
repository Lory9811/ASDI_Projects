----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 16:49:11
-- Design Name: 
-- Module Name: test - behavioral
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

entity test is
--  Port ( );
end test;

architecture behavioral of test is

	component transmitter is
		port (
			reset: in std_logic;
			write: in std_logic;
			accepted: in std_logic;
			ready: out std_logic;
			data_out: out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component receiver is
	port (
		reset: in std_logic;
		ready: in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		accepted: out std_logic
	);
	end component;
	
	signal reset: std_logic;
	signal write: std_logic;
	signal accepted: std_logic;
	signal ready: std_logic;
	signal data: std_logic_vector(7 downto 0);
	
begin

	uut: transmitter
		port map (
			reset => reset,
			write => write,
			accepted => accepted,
			ready => ready,
			data_out => data
		);
		
	uut2: receiver 
		port 	map (
			reset => reset,
			ready => ready,
			data_in => data,
			accepted => accepted
		);

	process
	begin
		reset <= '1';
		write <= '0';
		
		wait for 10 ns;
		reset <= '0';
		wait for 10 ns;
		
		for i in 0 to 5 loop
			write <= '1';
			wait for 10 ns;
			write <= '0';
			wait for 10 ns;
		end loop;
		
		wait for 100 ns;
	
	end process;

end behavioral;
