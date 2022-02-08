----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 12:50:26
-- Design Name: 
-- Module Name: shift_register - behavioral
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

entity shift_register is
	port (
		CLK: in std_logic;
		LOAD: in std_logic;
		SHIFT_EN: in std_logic;
		X: in std_logic_vector(7 downto 0);
		Y: in std_logic;
		Z: out std_logic_vector(7 downto 0)
	);
end shift_register;

architecture behavioral of shift_register is
	signal value: std_logic_vector(7 downto 0);
begin
	Z <= value;
	process(CLK, value, LOAD, X, Y, SHIFT_EN)
	begin
		if rising_edge(CLK) then
			if LOAD = '1' then
				value <= X;
			end if;
			
			if SHIFT_EN = '1' then
				if Y = '0' then	-- left shift by one
					value(7 downto 1) <= value(6 downto 0);
					value(0) <= '0';
				else					-- left shift by two
					value(7 downto 2) <= value(5 downto 0);
					value(1 downto 0) <= "00";
				end if;
			end if;
		end if;
	end process;

end behavioral;
