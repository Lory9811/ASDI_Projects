----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 18:01:09
-- Design Name: 
-- Module Name: display_driver - behavioral
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

entity display_driver is
    port ( 
        input: in std_logic_vector(3 downto 0);
        segments: out std_logic_vector(7 downto 0)
    );
end display_driver;

architecture behavioral of display_driver is

begin

    process (input)
    begin
        case input is 
            when "0000" => segments <= not "11111100";
            when "0001" => segments <= not "01100000";
            when "0010" => segments <= not "11011010";
            when "0011" => segments <= not "11110010";
            when "0100" => segments <= not "01100110";
            when "0101" => segments <= not "10110110";
            when "0110" => segments <= not "10111110";
            when "0111" => segments <= not "11100000";
            when "1000" => segments <= not "11111110";
            when "1001" => segments <= not "11110110";
            when others => segments <= not "00000000";
        end case;
    end process;

end behavioral;
