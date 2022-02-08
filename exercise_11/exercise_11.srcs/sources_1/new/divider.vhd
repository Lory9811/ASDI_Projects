----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2022 11:04:15
-- Design Name: 
-- Module Name: divider - behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
	port ( 
		reset: in std_logic;
		clk: in std_logic;
		start: in std_logic;
		dividend: in std_logic_vector(3 downto 0);
		divisor: in std_logic_vector(3 downto 0);
		result: out std_logic_vector(7 downto 0)
	);
end divider;

architecture behavioral of divider is
	signal AQ: std_logic_vector(7 downto 0);		-- concatenation of A and Q registers (A: 7..4, Q: 3..0)
	signal M: std_logic_vector(3 downto 0);
	type state_t is (idle, load, lshift, test_s, sub, sum, set_q, test_count);
	signal current_state, next_state: state_t;
begin
	result <= AQ;
	process (clk, reset)
	begin
		if reset = '1' then
			current_state <= idle;
		elsif rising_edge(clk) then
			current_state <= next_state;
		end if;
	end process;
	
	process (current_state, start)
		constant bits: integer := 4;
		variable count: integer;
	begin
		case current_state is
			when idle => 
				if start = '1' then
					next_state <= load;
				end if;
			when load => 
				count := bits - 1;
				AQ <= "0000" & dividend;
				M <= divisor;
				next_state <= lshift;
			when lshift =>
				AQ(7 downto 1) <= AQ(6 downto 0);
				next_state <= test_s;
			when test_s =>
				if AQ(7) = '0' then
					next_state <= sub;
				else 
					next_state <= sum;
				end if;
			when sub => 
				AQ(7 downto 4) <= AQ(7 downto 4) - M;
				next_state <= set_q;
			when sum => 
				AQ(7 downto 4) <= AQ(7 downto 4) + M;
				next_state <= set_q;
			when set_q => 
				AQ(0) <= not AQ(7);
				next_state <= test_count;
			when test_count =>
				if count = 0 then
					next_state <= idle;
					if AQ(7) = '1' then
						AQ(7 downto 4) <= AQ(7 downto 4) + M;
					end if;
				else 
					count := count - 1;
					next_state <= lshift;
				end if;
		end case;
	end process;
end behavioral;
