----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:57 01/12/2022 
-- Design Name: 
-- Module Name:    interconnect_16to4 - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity interconnect_16to4 is
	port(
		inputs: in std_logic_vector(15 downto 0);
		input_address: in std_logic_vector(3 downto 0);
		output_address: in std_logic_vector(1 downto 0);
		outputs: out std_logic_vector(3 downto 0) := "0000"
	);
end interconnect_16to4;

architecture structural of interconnect_16to4 is

	component mux_16to1 is
		port(
			input: in std_logic_vector(15 downto 0);
			address: in std_logic_vector(3 downto 0);
			output: out std_logic
		);
	end component;
	
	component demux_1to4 is 
		port(
			input: in std_logic;
			address: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal temp: std_logic;
	
begin
	
	mux: mux_16to1
		port map(
			input => inputs,
			address => input_address,
			output => temp
		);
		
	demux: demux_1to4
		port map(
			input => temp,
			address => output_address,
			output => outputs
		);

end structural;

