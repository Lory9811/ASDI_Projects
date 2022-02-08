----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: system_b - behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity system_b is
	port ( 
		reset: in std_logic;
		clk: in std_logic;
		ready_in: in std_logic;
		data_in: in std_logic_vector(3 downto 0);
		ack_in: in std_logic;
		ack_out: out std_logic;
		data_out: out std_logic_vector(3 downto 0);
		ready_out: out std_logic
	);
end system_b;

architecture behavioral of system_b is
	type state_t is (init, wait_ready, send_ack, transmit, wait_ack, wait_0, stop);

	signal ram: memory_t;
	signal stop_detected: std_logic;
	
	signal state: state_t;
begin

	comp: comparator
		port map (
			x => data_in,
			y => x"F",
			eq => stop_detected
		);
		
	process (clk)
		variable count: integer;
		variable address: integer;
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state <= init;
			end if;
			
			case state is
				when init =>
					count := 0;
					address := 0;
					state <= wait_ready;
					ack_out <= '0';
					ready_out <= '0';
				when wait_ready =>
					ack_out <= '0';
					if ready_in = '1' then
						if stop_detected = '1' then
							state <= transmit;
						else
							ram(count) <= data_in;
							ack_out <= '1';
							state <= send_ack;
						end if;
					else
						state <= wait_ready;
					end if;
				when send_ack => 
					count := count + 1;
					state <= wait_ready;
				when transmit => 
					ready_out <= '0';
					if address = count then
						data_out <= x"F";
						ready_out <= '1';
						state <= stop;	
					else
						data_out <= ram(address);
						ready_out <= '1';
						state <= wait_ack;
					end if;
				when wait_ack =>
					if ack_in = '1' then
						ready_out <= '0';
						state <= wait_0;
						address := address + 1;
					else
						state <= wait_ack;
					end if;
				when wait_0 => 
					if ack_in = '0' then
						state <= transmit;
					else
						state <= wait_0;
					end if;
				when stop => state <= stop;
			end case;
		end if;
	end process;
end behavioral;
