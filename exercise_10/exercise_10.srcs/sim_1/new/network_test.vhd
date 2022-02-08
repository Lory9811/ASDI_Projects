----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 19:01:47
-- Design Name: 
-- Module Name: network_test - behavioral
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
use WORK.NETWORK_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity network_test is
--  Port ( );
end network_test;

architecture behavioral of network_test is

	component network is
		port ( 
			inputs: in io_array_t;
			src_address: in std_logic_vector(1 downto 0);
			dest_address: in std_logic_vector(1 downto 0);
			outputs: out io_array_t
		);
	end component;
	
	signal inputs: io_array_t;
	signal src_address: std_logic_vector(1 downto 0);
	signal dest_address: std_logic_vector(1 downto 0);
	signal outputs: io_array_t;
	
begin

	uut: network
		port map (
			inputs => inputs,
			src_address => src_address,
			dest_address => dest_address,
			outputs => outputs
		);
		
	process
	begin
		for i in 0 to 3 loop
			inputs(i) <= "00";
		end loop;
		src_address <= "00";
		wait for 10 ns;
		
		inputs(0) <= "01";
		inputs(1) <= "11";
		src_address <= "00";
		dest_address <= "01";
		wait for 10 ns;
		dest_address <= "00";
		wait for 10 ns;
		src_address <= "01";
		wait for 10 ns;
		
	end process;

end behavioral;
