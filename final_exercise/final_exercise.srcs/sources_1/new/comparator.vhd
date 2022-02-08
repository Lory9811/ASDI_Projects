----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: comparator - behavioral
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

entity comparator is
	port ( 
		x: in std_logic_vector(3 downto 0);
		y: in std_logic_vector(3 downto 0);
		eq: out std_logic
	);
end comparator;

architecture dataflow of comparator is

begin
	
	with x = y select
		eq <= '1' when true, '0' when others;

end dataflow;
