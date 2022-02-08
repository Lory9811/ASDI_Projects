----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 17:13:28
-- Design Name: 
-- Module Name: mux_4to1 - structural
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

entity mux_4to1 is
	port (
		d0: in std_logic;
		d1: in std_logic;
		d2: in std_logic;
		d3: in std_logic;
		selection: in std_logic_vector(1 downto 0);
		output: out std_logic
	);
end mux_4to1;

architecture dataflow of mux_4to1 is

begin

	with selection select
		output <= d0 when "00",
			d1 when "01",
			d2 when "10",
			d3 when "11",
			'-' when others;

end dataflow;
