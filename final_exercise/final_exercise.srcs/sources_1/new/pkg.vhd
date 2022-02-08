library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.ceil;
use IEEE.math_real.log2;

package pkg is

	constant N: integer := 10;
	constant BITS: integer := integer(ceil(log2(real(N))));

	type memory_t is array(0 to N - 1) of std_logic_vector(3 downto 0);
	
	component counter is
		generic (
			bits: integer
		);
		port (
			reset: in std_logic;
			clk: in std_logic;
			enable: in std_logic;
			count: out std_logic_vector(bits - 1 downto 0)
		);
	end component;
	
	component comparator is
		port ( 
			x: in std_logic_vector(3 downto 0);
			y: in std_logic_vector(3 downto 0);
			eq: out std_logic
		);
	end component;


end package;