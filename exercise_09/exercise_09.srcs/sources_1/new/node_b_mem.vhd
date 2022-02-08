----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 18:42:01
-- Design Name: 
-- Module Name: node_b_mem - behavioral
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

entity node_b_mem is
	port (
		clk: in std_logic;
		rx: in std_logic
	);
end node_b_mem;

architecture behavioral of node_b_mem is
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
	
	component node_b is
		port ( 
			clk: in std_logic;
			rx: in std_logic;
			output: out std_logic_vector(7 downto 0);
			received: inout std_logic
		);
	end component;
	
	type ram_t is array(0 to 3) of std_logic_vector(7 downto 0);	
	signal ram: ram_t;
	
	signal data: std_logic_vector(7 downto 0);
	
	signal received: std_logic;
begin	
	b: node_b
		port map (
			clk => clk,
			rx => rx,
			output => data,
			received => received
		);
		
	process (received, data)
		variable address: integer := 0;
	begin
		if received'event and received = '1' then
			received <= '0';
			ram(address) <= data;
			address := address + 1;
		end if;
	end process;

end behavioral;
