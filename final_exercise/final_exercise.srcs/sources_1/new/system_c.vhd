----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: system_c - behavioral
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

entity system_c is
	port ( 
		reset: in std_logic;
		clk: in std_logic;
		ready_in: in std_logic;
		data_in: in std_logic_vector(3 downto 0);
		ack: out std_logic
	);
end system_c;

architecture behavioral of system_c is
	type state_t is (init, wait_ready, send_ack, stop);

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
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state <= init;
			end if;
			
			case state is
				when init =>
					count := 0;
					state <= wait_ready;
				when wait_ready => 
					ack <= '0';
					if ready_in = '1' then
						if stop_detected = '1' then
							state <= stop;
						else
							ram(count) <= data_in;
							ack <= '1';
							state <= send_ack;
						end if;
					else
						state <= wait_ready;
					end if;
				when send_ack =>
					count := count + 1;
					state <= wait_ready;
				when stop => state <= stop; 
			end case;
		end if;
	end process;
end behavioral;
