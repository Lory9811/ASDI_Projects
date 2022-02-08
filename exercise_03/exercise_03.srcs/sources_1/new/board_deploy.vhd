----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 11:36:31
-- Design Name: 
-- Module Name: board_deploy - behavioral
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

entity board_deploy is
	port (
		CLK: in std_logic;
		reset: in std_logic;
		SW: in std_logic_vector(0 to 1);
		BTN: in std_logic_vector(0 to 1);
		
		LED: out std_logic_vector(0 to 1)
	 );
end board_deploy;

architecture behavioral of board_deploy is

	component sequence_detector is
		port (
			reset: in std_logic;
			i: in std_logic;
			A: in std_logic;
			M: in std_logic;
			Y: out std_logic
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
	
	signal input: std_logic := '0';
	signal mode: std_logic := '0';
	signal slow_clock: std_logic;
	
begin
	
	divider: clock_divider
		port map (
			clock_in => CLK,
			enable => '1',
			reset => reset,
			clock_out => slow_clock
		);
	
	LED(1) <= not slow_clock;
	
	detector: sequence_detector
		port map (
			reset => reset,
			i => input,
			A => slow_clock,
			M => mode,
			Y => LED(0)
		);
		
	process (slow_clock, SW, BTN)
	begin
		if rising_edge(slow_clock) then
			if BTN(0) = '1' then
				input <= SW(0);
			end if;
			
			if BTN(1) = '1' then
				mode <= SW(1);
			end if;
		end if;
	end process;

end behavioral;
