----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 17:25:49
-- Design Name: 
-- Module Name: arbiter - behavioral
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

entity arbiter is
    port(
        inputs: in std_logic_vector(9 downto 0);
        output: out std_logic_vector(9 downto 0)
    );
end arbiter;

architecture behavioral of arbiter is

begin
    
    process (inputs)
    begin
        if inputs(9) = '1' then output <= "1000000000";
            elsif inputs(8) = '1' then output <= "0100000000";
            elsif inputs(7) = '1' then output <= "0010000000";
            elsif inputs(6) = '1' then output <= "0001000000";
            elsif inputs(5) = '1' then output <= "0000100000";
            elsif inputs(4) = '1' then output <= "0000010000";
            elsif inputs(3) = '1' then output <= "0000001000";
            elsif inputs(2) = '1' then output <= "0000000100";
            elsif inputs(1) = '1' then output <= "0000000010";
            elsif inputs(0) = '1' then output <= "0000000001";
            else output <= "----------";
        end if;
    end process;
    
end behavioral;
