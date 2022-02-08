----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 11:50:31
-- Design Name: 
-- Module Name: system - structural
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

entity system is
	port (
		inputs: in io_array_t;
		selection: in std_logic_vector(3 downto 0);
		destination: in std_logic_vector(1 downto 0);
		outputs: out io_array_t
	);
end system;

architecture structural of system is
	component network is
		port ( 
			inputs: in io_array_t;
			src_address: in std_logic_vector(1 downto 0);
			dest_address: in std_logic_vector(1 downto 0);
			outputs: out io_array_t
		);
	end component;

	component control_unit is
		port (
			selection: in std_logic_vector(3 downto 0);
			inputs: in io_array_t;
			outputs: out io_array_t
		 );
	end component;
	
	signal filtered_inputs: io_array_t;
	signal src_address: std_logic_vector(1 downto 0);
begin

	net: network
		port map (
			inputs => filtered_inputs,
			src_address => src_address,
			dest_address => destination,
			outputs => outputs
		);
		
	cu: control_unit
		port map (
			selection => selection,
			inputs => inputs,
			outputs => outputs
		);
	
	with selection select
		src_address <= "00" when "0001",
			"01" when "0010",
			"10" when "0100",
			"11" when "1000",
			"00" when others;
	
	process (selection)
	begin
		for i in 0 to 3 loop
			src_address <= "00";
		end loop; 
		
		if selection(0) = '1' then
			src_address <= "00";
		elsif selection(1) = '1' then
			src_address <= "01";
		elsif selection(2) = '1' then
			src_address <= "10";
		elsif selection(3) = '1' then
			src_address <= "11";
		end if;
	end process;


end structural;
