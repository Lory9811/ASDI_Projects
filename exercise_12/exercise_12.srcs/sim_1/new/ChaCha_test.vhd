----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.02.2022 10:38:34
-- Design Name: 
-- Module Name: ChaCha_test - behavioral
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

entity ChaCha_test is
--  Port ( );
end ChaCha_test;

architecture behavioral of ChaCha_test is
	component ChaCha is
		port ( 
			clock: in std_logic;
			reset: in std_logic;
			load_data: in std_logic;
			output_data: in std_logic;
			counter_inc: in std_logic;
			data_in: in std_logic_vector(31 downto 0);
			data_out: out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal clock: std_logic;
	signal reset: std_logic;
	signal load_data: std_logic;
	signal output_data: std_logic;
	signal counter_inc: std_logic;
	signal data_in: std_logic_vector(31 downto 0);
	signal data_out: std_logic_vector(31 downto 0);
begin
	uut: ChaCha
		port map (
			clock => clock,
			reset => reset,
			load_data => load_data,
			output_data => output_data,
			counter_inc => counter_inc,
			data_in => data_in,
			data_out => data_out
		);

	process begin
		clock <= '0';
		reset <= '1';
		load_data <= '0';
		output_data <= '0';
		counter_inc <= '0';
		data_in <= x"00000000";
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		clock <= '0';
		reset <= '0';
		load_data <= '1';
		data_in <= x"03020100";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"07060504";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"0b0a0908";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"0f0e0d0c";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"13121110";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"17161514";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"1b1a1918";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"1f1e1d1c";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"00000001";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"00000000";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"4a000000";
		wait for 10 ns;
		clock <= '1';
		
		
		wait for 10 ns;
		clock <= '0';
		data_in <= x"00000000";
		wait for 10 ns;
		clock <= '1';
		
		wait for 10 ns;
		clock <= '0';
		load_data <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		
		output_data <= '1';
		for i in 0 to 15 loop
			clock <= '0';
			wait for 10 ns;
			clock <= '1';
			wait for 10 ns;
		end loop;
		output_data <= '0';
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		
		counter_inc <= '1';
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		counter_inc <= '0';
		
		output_data <= '1';
		for i in 0 to 15 loop
			clock <= '0';
			wait for 10 ns;
			clock <= '1';
			wait for 10 ns;
		end loop;
		output_data <= '0';
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		
		wait for 100 ns;
	end process;

end behavioral;
