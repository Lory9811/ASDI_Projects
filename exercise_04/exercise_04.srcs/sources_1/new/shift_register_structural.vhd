----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2022 16:22:18
-- Design Name: 
-- Module Name: shift_register_structural - structural
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

entity shift_register_structural is
	port (
		CLK: in std_logic;
		selection: in std_logic_vector(1 downto 0);
		X: in std_logic_vector(7 downto 0);
		Z: out std_logic_vector(7 downto 0)
	);
end shift_register_structural;

architecture structural of shift_register_structural is

	component flipflop_d is
		port (
			D: in std_logic;
			CLK: in std_logic;
			Q: out std_logic
		);
	end component;
	
	component mux_4to1 is
		port (
			d0: in std_logic;
			d1: in std_logic;
			d2: in std_logic;
			d3: in std_logic;
			selection: in std_logic_vector(1 downto 0);
			output: out std_logic
		);
	end component;
	
	signal inputs: std_logic_vector(7 downto 0);
	signal outputs: std_logic_vector(9 downto 0);
	
begin

	outputs(1 downto 0) <= "00";
	Z <= outputs(9 downto 2);
	
	ffs: for i in 0 to 7 generate ff: flipflop_d
		port map (
			D => inputs(i),
			CLK => CLK,
			Q => outputs(i + 2)
		);
	end generate;
	
	ctl_muxs: for i in 0 to 7 generate mux: mux_4to1
		port map (
			d0 => outputs(i + 2),
			d1 => X(i),
			d2 => outputs(i + 1),
			d3 => outputs(i),
			selection => selection,
			output => inputs(i)
		);
	end generate;

end structural;
