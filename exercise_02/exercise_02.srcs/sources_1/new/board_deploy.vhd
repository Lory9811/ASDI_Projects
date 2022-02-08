----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 17:39:15
-- Design Name: 
-- Module Name: board_deploy - structural
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

entity board_deploy is
    port ( 
        SW: in std_logic_vector(9 downto 0);
        LED: out std_logic_vector(3 downto 0);
        DISP: out std_logic_vector(7 downto 0);
        AN: out std_logic_vector(7 downto 0)
    );
end board_deploy;

architecture structural of board_deploy is
    
    component arbiter is
        port(
            inputs: in std_logic_vector(9 downto 0);
            output: out std_logic_vector(9 downto 0)
        );
    end component;
    
    component bcd_encoder is
        port(
            inputs: in std_logic_vector(9 downto 0);
            output: out std_logic_vector(3 downto 0)
        );
    end component;
    
    component display_driver is
        port ( 
            input: in std_logic_vector(3 downto 0);
            segments: out std_logic_vector(7 downto 0)
        );
    end component;
    
    signal arbiter_output: std_logic_vector(9 downto 0);
    signal encoder_output: std_logic_vector(3 downto 0);
    
begin
    
    AN <= "11111110";
    LED <= encoder_output;
    
    arb: arbiter
        port map(
            inputs => SW,
            output => arbiter_output
        );
        
    dec: bcd_encoder
        port map(
            inputs => arbiter_output,
            output => encoder_output
        );
        
    drv: display_driver
        port map(
            input => encoder_output,
            segments => DISP
        );

end structural;
