----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2022 16:25:54
-- Design Name: 
-- Module Name: control_unit - behavioral
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

entity control_unit is
	port (
		clock: in std_logic;
		reset: in std_logic;
		stopwatch_set: in std_logic;
		stopwatch_reset: in std_logic;
		up: in std_logic;
		stop: in std_logic;
		memory: in std_logic;
		seconds_in: in std_logic_vector(7 downto 0);
		minutes_in: in std_logic_vector(7 downto 0);
		hours_in: in std_logic_vector(7 downto 0);
		clocks: out std_logic_vector(0 to 5);
		resets: out std_logic_vector(0 to 5);
		load: out std_logic;
		seconds_out: out std_logic_vector(7 downto 0);
		minutes_out: out std_logic_vector(7 downto 0);
		hours_out: out std_logic_vector(7 downto 0);
		seconds_load_value_out: out std_logic_vector(7 downto 0);
		minutes_load_value_out: out std_logic_vector(7 downto 0);
		hours_load_value_out: out std_logic_vector(7 downto 0)
	 );
end control_unit;

architecture behavioral of control_unit is
	component clock_divider is
		generic (
			divider: integer := 100000000
		);
		port (
			clock_in: in std_logic;
			enable: in std_logic;
			reset: in std_logic;
			clock_out: out std_logic
		 );
	end component;
	
	type state_t is (counting, setting_seconds, setting_minutes, setting_hours, displaying_memory);
	signal current_state, next_state: state_t;
	
	signal seconds_load_value: unsigned(7 downto 0);
	signal minutes_load_value: unsigned(7 downto 0);
	signal hours_load_value: unsigned(7 downto 0);
	
	signal sampling_clock: std_logic;
	signal sampled_up: std_logic_vector(1 downto 0);
	signal sampled_set: std_logic_vector(1 downto 0);
	signal sampled_stop: std_logic_vector(1 downto 0);
	signal sampled_mem: std_logic_vector(1 downto 0);
	
	type ram_t is array(0 to 3) of std_logic_vector(23 downto 0);
	signal snaps: ram_t;
	signal current_read_address: unsigned(1 downto 0);
	signal current_write_address: unsigned(1 downto 0);
	
begin
	seconds_clk_divider: clock_divider
		--generic map (
		--	divider => 100000
		--)
		port map (
			clock_in => clock,
			enable => '1',
			reset => '0',
			clock_out => clocks(0)
		);
		
	sample_clk_divider: clock_divider
		generic map (
			divider => 10000
		)
		port map (
			clock_in => clock,
			enable => '1',
			reset => '0',
			clock_out => sampling_clock
		);
		
	seconds_load_value_out <= std_logic_vector(seconds_load_value);
	minutes_load_value_out <= std_logic_vector(minutes_load_value);
	hours_load_value_out <= std_logic_vector(hours_load_value);
		
	resets(0) <= reset;
	resets(1) <= '1' when seconds_in(7 downto 4) = "0110" or reset = '1' else '0';
	resets(2) <= reset;
	resets(3) <= '1' when minutes_in(7 downto 4) = "0110" or reset = '1' else '0';
	resets(4) <= '1' when hours_in = "00100100" or reset = '1' else '0';
	resets(5) <= '1' when hours_in = "00100100" or reset = '1' else '0';
		
	clocks(1) <= '1' when seconds_in(3 downto 0) = "1001" else '0';
	clocks(2) <= '1' when seconds_in(7 downto 4) = "0110" else '0';
	clocks(3) <= '1' when minutes_in(3 downto 0) = "1001" else '0';
	clocks(4) <= '1' when minutes_in(7 downto 4) = "0110" else '0';
	clocks(5) <= '1' when hours_in(3 downto 0) = "1001" else '0';

	load <= stopwatch_reset;
	
	process(sampling_clock, reset)
	begin
		if falling_edge(sampling_clock) then
			sampled_up <= sampled_up(0) & up;
			sampled_set <= sampled_set(0) & stopwatch_set;
			sampled_stop <= sampled_stop(0) & stop;
			sampled_mem <= sampled_mem(0) & memory;
		end if;
		
		if reset = '1' then
			sampled_up <= "00";
			sampled_set <= "00";
			sampled_stop <= "00";
			sampled_mem <= "00";
		end if;
	end process;
	
	process (clock, reset)
	begin
		if reset = '1' then 
			current_state <= counting;
		elsif falling_edge(clock) then
			current_state <= next_state;
		end if;
	end process;
	
	process (clock, current_state)
	begin
		if current_state = counting then
			seconds_out <= seconds_in;
			minutes_out <= minutes_in;
			hours_out <= hours_in;
		elsif current_state = setting_seconds or
			current_state = setting_minutes or
			current_state = setting_hours then
			seconds_out <= std_logic_vector(seconds_load_value);
			minutes_out <= std_logic_vector(minutes_load_value);
			hours_out <= std_logic_vector(hours_load_value);
		elsif current_state = displaying_memory then
			seconds_out <= snaps(to_integer(current_read_address))(7 downto 0);
			minutes_out <= snaps(to_integer(current_read_address))(15 downto 8);
			hours_out <= snaps(to_integer(current_read_address))(23 downto 16);
		end if;
	end process;
	
	process (sampling_clock, reset)
	begin
		if reset = '1' then
			next_state <= counting;
		end if;
		
		if rising_edge(sampling_clock) then
			if sampled_set = "01" then
				if current_state = counting then 
					next_state <= setting_seconds;
				elsif current_state = setting_seconds then
					next_state <= setting_minutes;
				elsif current_state = setting_minutes then
					next_state <= setting_hours;
				elsif current_state = setting_hours then
					next_state <= counting;
				end if;
			end if;
			
			if sampled_mem = "01" then
				if current_state = counting then
					next_state <= displaying_memory;
				elsif current_state = displaying_memory then
					next_state <= counting;
				end if;
			end if;
		end if;
	end process;
	
	process (sampling_clock, reset)
	begin
		if reset = '1' then
			seconds_load_value <= (others => '0');
			minutes_load_value <= (others => '0');
			hours_load_value <= (others => '0');
			current_read_address <= (others => '0');
			current_write_address <= (others => '0');
		end if;
		
		if rising_edge(sampling_clock) then
			if sampled_up = "01" then
				if current_state = setting_seconds then
					if seconds_load_value(3 downto 0) + 1 = 10 then
						seconds_load_value(3 downto 0) <= (others => '0');
						if seconds_load_value(7 downto 4) + 1 = 6 then
							seconds_load_value(7 downto 4) <= (others => '0');
						else 
							seconds_load_value(7 downto 4) <= seconds_load_value(7 downto 4) + 1;
						end if;
					else 
						seconds_load_value(3 downto 0) <= seconds_load_value(3 downto 0) + 1;
					end if;
				elsif current_state = setting_minutes then
					if minutes_load_value(3 downto 0) + 1 = 10 then
						minutes_load_value(3 downto 0) <= (others => '0');
						if minutes_load_value(7 downto 4) + 1 = 6 then
							minutes_load_value(7 downto 4) <= (others => '0');
						else 
							minutes_load_value(7 downto 4) <= minutes_load_value(7 downto 4) + 1;
						end if;
					else 
						minutes_load_value(3 downto 0) <= minutes_load_value(3 downto 0) + 1;
					end if;
				elsif current_state = setting_hours then
					if hours_load_value(3 downto 0) + 1 = 10 then
						hours_load_value(3 downto 0) <= (others => '0');
						hours_load_value(7 downto 4) <= hours_load_value(7 downto 4) + 1;
					elsif hours_load_value(7 downto 4) = 2 and hours_load_value(3 downto 0) + 1 = 5 then
						hours_load_value<= (others => '0');
					else
						hours_load_value(3 downto 0) <= hours_load_value(3 downto 0) + 1;
					end if;
				elsif current_state = displaying_memory then
					if current_read_address = 4 then
						current_read_address <= (others => '0');
					else
						current_read_address <= current_read_address + 1;
					end if;
				end if;
			end if;
			
			if sampled_stop = "01" then
				if current_write_address = 4 then
					current_write_address <= (others => '0');
				else
					current_write_address <= current_write_address + 1;
				end if;
				snaps(to_integer(current_write_address))(7 downto 0) <= seconds_in;
				snaps(to_integer(current_write_address))(15 downto 8) <= minutes_in;
				snaps(to_integer(current_write_address))(23 downto 16) <= hours_in;
			end if;
		end if;
	end process;

end behavioral;
