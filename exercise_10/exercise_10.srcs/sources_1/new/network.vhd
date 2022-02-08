----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 17:59:00
-- Design Name: 
-- Module Name: network - structural
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
use WORK.NETWORK_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity network is
	port ( 
		inputs: in io_array_t;
		src_address: in std_logic_vector(1 downto 0);
		dest_address: in std_logic_vector(1 downto 0);
		outputs: out io_array_t
	);
end network;

architecture structural of network is

	component switch is
		port ( 
			data_0 : in STD_LOGIC_VECTOR (1 downto 0);
			data_1 : in STD_LOGIC_VECTOR (1 downto 0);
			in_address : in STD_LOGIC;
			out_address : in STD_LOGIC;
			output_0 : out STD_LOGIC_VECTOR (1 downto 0);
			output_1 : out STD_LOGIC_VECTOR (1 downto 0)
		);
	end component;
	
	type interconnect_column_t is array(0 to 3) of std_logic_vector(1 downto 0);
	signal interconnect_column: interconnect_column_t;
	
begin

	layer_0: for i in 0 to 1 generate sw: switch
		port map (
			data_0 => inputs(i * 2), 
			data_1 => inputs(i * 2 + 1), 
			in_address => src_address(0),
			out_address => dest_address(1),
			output_0 => interconnect_column(i * 2),
			output_1 => interconnect_column(i * 2 + 1)
		);
	end generate;
	
	layer_1: for i in 0 to 1 generate sw: switch
		port map (
			data_0 =>  interconnect_column(i * 2), 
			data_1 =>  interconnect_column(i * 2 + 1), 
			in_address => src_address(1),
			out_address => dest_address(0),
			output_0 => outputs(i * 2),
			output_1 => outputs(i * 2 + 1)
		);
	end generate;

end structural;
