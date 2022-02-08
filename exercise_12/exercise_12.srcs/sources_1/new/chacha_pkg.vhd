library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package chacha_pkg is 
	type state_row_t is array (0 to 3) of std_logic_vector(31 downto 0);
	type state_t is array(0 to 3) of state_row_t;
end package;
