----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 20:13:58
-- Design Name: 
-- Module Name: sequence_detector_test - behavioral
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

entity sequence_detector_test is
--  Port ( );
end sequence_detector_test;

architecture behavioral of sequence_detector_test is

    component sequence_detector is
        port (
            reset: in std_logic;
            i: in std_logic;
            A: in std_logic;
            M: in std_logic;
            Y: out std_logic
         );
    end component;
    
    signal reset: std_logic;
    signal input: std_logic;
    signal enable: std_logic;
    signal mode: std_logic;
    
    signal output: std_logic;
    
    constant test_input: std_logic_vector := 		"001010010010";
    constant expected_0: std_logic_vector := 	"000000010000";
    constant expected_1: std_logic_vector := 	"000000010010";
    
begin
    
    uut: sequence_detector
        port map (
            reset => reset,
            i => input,
            A => enable,
            M => mode,
            Y => output
        );
    
    stim_proc: process
    begin
        input <= '0';
        enable <= '0';
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 10 ns;
        
        mode <= '0';
        for i in 0 to 11 loop
        	input <= test_input(i);
        	enable <= '1';
        	wait for 10 ns;
        	assert output <= expected_0(i) report "Error in mode 0" severity failure;
        	enable <= '0';
        	wait for 10 ns;
        end loop;
        
        input <= '0';
        enable <= '0';
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 10 ns;
        
        mode <= '1';
        for i in 0 to 11 loop
        	input <= test_input(i);
        	enable <= '1';
        	wait for 10 ns;
        	assert output <= expected_1(i) report "Error in mode 1" severity failure;
        	enable <= '0';
        	wait for 10 ns;
        end loop;
        
    end process;
    

end behavioral;
