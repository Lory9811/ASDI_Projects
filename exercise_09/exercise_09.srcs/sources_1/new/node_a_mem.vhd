----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 17:25:50
-- Design Name: 
-- Module Name: node_a - behavioral
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

entity node_a_mem is
	port ( 
		clk: in std_logic;
		send: in std_logic;
		tx: out std_logic
	);
end node_a_mem;

architecture behavioral of node_a_mem is
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
	
	component node_a is
		port ( 
			clk: in std_logic;
			send: in std_logic;
			data_in: in std_logic_vector(7 downto 0);
			tx: out std_logic
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
	signal data: std_logic_vector(7 downto 0);
	
begin
	address_counter: counter
		generic map (
			bits => 4
		)
		port map (
			reset => '0',
			clock => send,
			enable => '1',
			output => address
		);
		
	a: node_a
		port map (
			clk => clk,
			send => send,
			data_in => data,
			tx => tx
		);
		
	process (send)
	begin
		if send'event and send = '1' then
			data <= rom(to_integer(unsigned(address)));
		end if;
	end process;

end behavioral;
