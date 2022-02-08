----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2022 16:21:46
-- Design Name: 
-- Module Name: stopwatch - structural
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stopwatch is
	port (
		clock: in std_logic;
		system_reset: in std_logic;
		set: in std_logic;
		reset: in std_logic;
		up: in std_logic;
		stop: in std_logic;
		memory: in std_logic;
		digit_out: out std_logic_vector(7 downto 0);
		digit_enable: out std_logic_vector(7 downto 0)
	);
end stopwatch;

architecture structural of stopwatch is
	component bcd_counter is
		port (
			clock: in std_logic;
			enable: in std_logic;
			reset: in std_logic;
			load: in std_logic;
			load_value: in std_logic_vector(3 downto 0);
			value: out std_logic_vector(3 downto 0)
		 );
	end component;
	
	component control_unit is
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
	end component;
	
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
	
	component display_controller is
		port (
			clock: in std_logic;
			seconds: in std_logic_vector(7 downto 0);
			minutes: in std_logic_vector(7 downto 0);
			hours: in std_logic_vector(7 downto 0);
			value: out std_logic_vector(3 downto 0);
			display: out std_logic_vector(5 downto 0)
		 );
	end component;
	
	component display_driver is
		port ( 
			input: in std_logic_vector(3 downto 0);
			segments: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal display_clock: std_logic;
	
	signal seconds: std_logic_vector(7 downto 0);
	signal hours: std_logic_vector(7 downto 0);
	signal minutes: std_logic_vector(7 downto 0);
	
	signal clocks: std_logic_vector(0 to 5);
	signal resets: std_logic_vector(0 to 5);
	signal load: std_logic;
	
	signal seconds_out: std_logic_vector(7 downto 0);
	signal hours_out: std_logic_vector(7 downto 0);
	signal minutes_out: std_logic_vector(7 downto 0);
	
	signal digit_out_value: std_logic_vector(3 downto 0);
	
	signal seconds_load_value: std_logic_vector(7 downto 0);
	signal minutes_load_value: std_logic_vector(7 downto 0);
	signal hours_load_value: std_logic_vector(7 downto 0);
begin
	digit_enable(7 downto 6) <= "11"; 

	display_clk_divider: clock_divider
		generic map (
			divider => 100000
		)
		port map (
			clock_in => clock,
			enable => '1',
			reset => '0',
			clock_out => display_clock
		);

	cu: control_unit
		port map (
			clock => clock,
			reset => system_reset,
			stopwatch_set => set,
			stopwatch_reset => reset,
			up => up,
			stop => stop,
			memory => memory,
			seconds_in => seconds,
			minutes_in => minutes,
			hours_in => hours,
			clocks => clocks,
			resets => resets,
			load => load,
			seconds_out => seconds_out,
			minutes_out => minutes_out,
			hours_out => hours_out,
			seconds_load_value_out => seconds_load_value,
			minutes_load_value_out => minutes_load_value,
			hours_load_value_out => hours_load_value
		);
	
	seconds_counters: for i in 0 to 1 generate counter: bcd_counter 
		port map (
			clock => clocks(i),
			enable => '1',
			reset => resets(i),
			load => load,
			load_value => seconds_load_value(i * 4 + 3 downto i * 4),
			value => seconds(i * 4 + 3 downto i * 4)
		);
	end generate;
	
	minutes_counters: for i in 0 to 1 generate counter: bcd_counter 
		port map (
			clock => clocks(i + 2),
			enable => '1',
			reset => resets(i + 2),
			load => load,
			load_value => minutes_load_value(i * 4 + 3 downto i * 4),
			value => minutes(i * 4 + 3 downto i * 4)
		);
	end generate;
	
	hours_counters: for i in 0 to 1 generate counter: bcd_counter 
		port map (
			clock => clocks(i + 4),
			enable => '1',
			reset => resets(i + 4),
			load => load,
			load_value => hours_load_value(i * 4 + 3 downto i * 4),
			value => hours(i * 4 + 3 downto i * 4)
		);
	end generate;
	
	disp_ctl: display_controller
		port map (
			clock => display_clock,
			seconds => seconds_out,
			minutes => minutes_out,
			hours => hours_out,
			value => digit_out_value,
			display => digit_enable(5 downto 0)
		);
		
	driver: display_driver
		port map (
			input => digit_out_value,
			segments => digit_out
		);

end structural;
