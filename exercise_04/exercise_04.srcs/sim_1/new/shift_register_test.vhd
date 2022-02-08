----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 13:11:39
-- Design Name: 
-- Module Name: shift_register_test - behavioral
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

entity shift_register_test is
--  Port ( );
end shift_register_test;

architecture behavioral of shift_register_test is

	component shift_register is
		port (
			CLK: in std_logic;
			LOAD: in std_logic;
			SHIFT_EN: in std_logic;
			X: in std_logic_vector(7 downto 0);
			Y: in std_logic;
			Z: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal CLK: std_logic;
	signal LOAD: std_logic;
	signal SHIFT_EN: std_logic;
	signal X: std_logic_vector(7 downto 0);
	signal Y: std_logic;
	signal Z: std_logic_vector(7 downto 0);
	
begin

	uut: shift_register
		port map(
			CLK => CLK,
			LOAD => LOAD,
			SHIFT_EN => SHIFT_EN,
			X => X,
			Y => Y,
			Z => Z
		);
	
	process
	begin
		X <= "00000001";
		LOAD <= '1';
		SHIFT_EN <= '0';
		Y <= '0';
		
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		LOAD <= '0';
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		SHIFT_EN <= '1';
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		Y <= '1';
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
	end process;

end behavioral;
