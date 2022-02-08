----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:18 01/11/2022 
-- Design Name: 
-- Module Name:    mux_16to1 - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: mux_4to1
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_16to1 is
	port(
		input: in std_logic_vector(15 downto 0);
		address: in std_logic_vector(3 downto 0);
		output: out std_logic
	);
end mux_16to1;

architecture behavioral of mux_16to1 is

	component mux_4to1 is
		port(
			input: in std_logic_vector(3 downto 0);
			address: in std_logic_vector(1 downto 0);
			output: out std_logic
		);
	end component;

	signal temp: std_logic_vector(3 downto 0);

begin

-- first stage of 4:1 muxes 
mux0_3: for i in 0 to 3 generate mux: mux_4to1
	port map(
		input(3 downto 0) => input(((i * 4) + 3) downto (i * 4)),
		address(1 downto 0) => address(1 downto 0),
		output => temp(i)
	);
end generate;

-- second stage
mux4: mux_4to1
	port map(
		input(3 downto 0) => temp(3 downto 0),
		address(1 downto 0) => address(3 downto 2),
		output => output
	);

end behavioral;

