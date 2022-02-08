----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 11:20:03
-- Design Name: 
-- Module Name: transmitter - behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transmitter is
	port (
		reset: in std_logic;
		write: in std_logic;
		accepted: in std_logic;
		ready: out std_logic;
		data_out: out std_logic_vector(7 downto 0)
	 );
end transmitter;

architecture behavioral of transmitter is

	component counter is
		generic (
			bits: integer
		);
		port (
			reset: in std_logic;
			clock: in std_logic;
			enable: in std_logic;
			output: out std_logic_vector(bits - 1  downto 0)
		 );
	end component;
	
	type rom_t is array(0 to 3) of std_logic_vector(7 downto 0);
	
	constant rom: rom_t := (
		0 => "11101100",
		1 => "10101010",
		2 => "01010101",
		3 => "00110011"
	);
	
	signal address: std_logic_vector(0 to 3);
	
begin

	address_counter: counter
		generic map (
			bits => 4
		)
		port map (
			reset => reset,
			clock => accepted,
			enable => '1',
			output => address
		);
	
	process (write, accepted, reset)
	begin
		if reset = '1' then
			ready <= '0';
		elsif write'event and write = '1' then
			ready <= '1' after 1 ns;
			data_out <= rom(to_integer(unsigned(address)));
		elsif accepted'event and accepted = '1' then
			ready <= '0' after 1 ns;
		end if;
	end process;

end behavioral;
