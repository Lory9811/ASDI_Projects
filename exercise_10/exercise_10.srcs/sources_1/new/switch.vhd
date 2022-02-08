----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2022 17:53:38
-- Design Name: 
-- Module Name: switch - behavioral
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

entity switch is
    port ( 
		data_0 : in STD_LOGIC_VECTOR (1 downto 0);
		data_1 : in STD_LOGIC_VECTOR (1 downto 0);
		in_address : in STD_LOGIC;
		out_address : in STD_LOGIC;
		output_0 : out STD_LOGIC_VECTOR (1 downto 0);
		output_1 : out STD_LOGIC_VECTOR (1 downto 0)
	);
end switch;

architecture dataflow of switch is
	signal tmp: std_logic_vector(1 downto 0);
	signal tmp_address: std_logic_vector(1 downto 0);
begin
	
	tmp_address(0) <= out_address;
	tmp_address(1) <= out_address;
	
	with in_address select
	tmp <= data_0 when '0',
				data_1 when '1',
				"00" when others;
	
	output_0 <= tmp and not tmp_address;
	output_1 <= tmp and tmp_address;
	
end dataflow;
