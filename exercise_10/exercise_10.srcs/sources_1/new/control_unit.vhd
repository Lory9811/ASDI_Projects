----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 11:02:17
-- Design Name: 
-- Module Name: control_unit - behavioral
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

entity control_unit is
	port (
		selection: in std_logic_vector(3 downto 0);
		inputs: in io_array_t;
		outputs: out io_array_t
	 );
end control_unit;

architecture behavioral of control_unit is
begin

	process (selection, inputs)
	begin
		for i in 0 to 3 loop
			outputs(i) <= "00";
		end loop; 
		
		if selection(0) = '1' then
			outputs(0) <= inputs(0);
		elsif selection(1) = '1' then
			outputs(1) <= inputs(1);
		elsif selection(2) = '1' then
			outputs(2) <= inputs(2);
		elsif selection(3) = '1' then
			outputs(3) <= inputs(3);
		end if;
	end process;

end behavioral;
