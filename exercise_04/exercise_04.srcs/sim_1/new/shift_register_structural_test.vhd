----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 18:17:09
-- Design Name: 
-- Module Name: shift_register_structural_test - behavioral
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

entity shift_register_structural_test is
--  Port ( );
end shift_register_structural_test;

architecture behavioral of shift_register_structural_test is
	component shift_register_structural is
		port (
			CLK: in std_logic;
			selection: in std_logic_vector(1 downto 0);
			X: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal CLK: std_logic;
	signal selection: std_logic_vector(1 downto 0);
	signal X: std_logic_vector(7 downto 0);
	signal Z: std_logic_vector(7 downto 0);
begin

	uut: shift_register_structural
		port map (
			CLK => CLK,
			selection => selection,
			X => X,
			Z => Z
		);
		
	process
	begin
		X <= "00000001";
		selection <= "01";
		
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		selection <= "00";
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		selection <= "10";
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
		selection <= "11";
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
		
	end process;

end behavioral;
