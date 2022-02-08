--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:02:17 01/11/2022
-- Design Name:   
-- Module Name:   F:/Xilinx/Projects/Ex01/mux_16to1_test.vhd
-- Project Name:  Ex01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_16to1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee, std;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE std.textio.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux_16to1_test IS
END mux_16to1_test;
 
ARCHITECTURE behavior OF mux_16to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_16to1
    PORT(
         input : IN  std_logic_vector(15 downto 0);
         address : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(15 downto 0) := (others => '0');
   signal address : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic := "0000";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_16to1 PORT MAP (
          input => input,
          address => address,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10 ns;
		input <= "1000000000001101";
		
		for i in 0 to 15 loop
			address <= conv_std_logic_vector(i, 4);
			wait for 10 ns;
			assert output = input(i)
				report "Incorrect result for address " & 
					integer'image(conv_integer(unsigned(address)))
				severity failure;
		end loop;
   end process;

END;
