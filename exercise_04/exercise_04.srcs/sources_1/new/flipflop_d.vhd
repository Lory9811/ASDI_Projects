----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 16:33:36
-- Design Name: 
-- Module Name: flipflop_d - behavioral
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

entity flipflop_d is
	port ( 
		D: in std_logic;
		CLK: in std_logic;
		Q: out std_logic
	);
end flipflop_d;

architecture behavioral of flipflop_d is
begin
	process(CLK)
	begin
	
		if rising_edge(CLK) then
			Q <= D;
		end if;
	
	end process;
end behavioral;
