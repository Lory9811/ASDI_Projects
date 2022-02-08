----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 11:20:03
-- Design Name: 
-- Module Name: receiver - behavioral
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

entity receiver is
	port (
		reset: in std_logic;
		ready: in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		accepted: out std_logic
	);
end receiver;

architecture behavioral of receiver is

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
	type ram_t is array(0 to 3) of std_logic_vector(7 downto 0);
	
	constant rom: rom_t := (
		0 => "00000001",
		1 => "00100010",
		2 => "01010101",
		3 => "00010001"
	);
	
	signal ram: ram_t;
	signal address: std_logic_vector(0 to 3);

begin
	
	address_counter: counter
		generic map (
			bits => 4
		)
		port map (
			reset => reset,
			clock => ready,
			enable => '1',
			output => address
		);
	
	process (ready, data_in, reset)
	begin
		if reset = '1' then
			accepted <= '0';
		elsif ready'event then
			if ready = '1' then
				ram(to_integer(unsigned(address))) <= 
					std_logic_vector(unsigned(data_in) + unsigned(rom(to_integer(unsigned(address)))));
				accepted <= '1' after 1 ns;
			else
				accepted <= '0' after 1 ns;
			end if;
		end if;
	end process;

end behavioral;
