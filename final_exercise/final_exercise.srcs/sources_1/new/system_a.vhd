----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: system_a - behavioral
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
use WORK.PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity system_a is
	port (
		reset: in std_logic;
		clk: in std_logic;
		ack: in std_logic;
		data_out: out std_logic_vector(3 downto 0);
		ready: out std_logic
	);
end system_a;

architecture behavioral of system_a is
	type state_t is (init, transmit, wait_ack, wait_0, stop);

	constant mem1: memory_t := (
		x"0",
		x"2",
		x"3",
		x"1",
		x"4",
		x"5",
		x"2",
		x"7",
		x"E",
		x"C"
	);
	constant mem2: memory_t := (
		x"1",
		x"2",
		x"4",
		x"2",
		x"4",
		x"5",
		x"2",
		x"8",
		x"D",
		x"C"
	);
	
	signal address: std_logic_vector(BITS - 1 downto 0);
	signal transmit_enable: std_logic;
	
	signal state: state_t;
begin

	address_counter: counter
		generic map (
			bits => BITS
		)
		port map (
			reset => reset,
			clk => clk,
			enable => transmit_enable,
			count => address
		);
		
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state <= init;
			end if;
			
			case state is
				when init => 
					state <= transmit;
				when transmit => 
					if address = std_logic_vector(to_unsigned(N, bits)) then
						data_out <= x"F";
						ready <= '1';
						state <= stop;
					else			
						transmit_enable <= '1';
						ready <= '0';
						if mem1(to_integer(unsigned(address))) = mem2(to_integer(unsigned(address))) then
							data_out <= mem1(to_integer(unsigned(address)));
							ready <= '1';
							state <= wait_ack;
						else 
							state <= wait_0;
						end if;
					end if;
				when wait_ack => 
					transmit_enable <= '0';
					if ack = '1' then
						state <= wait_0;
						ready <= '0';
					else
						state <= wait_ack;
					end if;
				when wait_0 => 
					transmit_enable <= '0';
					if ack = '0' then
						state <= transmit;
					else
						state <= wait_0;
					end if;
				when stop => 
					state <= stop;
			end case;
		end if;
	end process;

end behavioral;
