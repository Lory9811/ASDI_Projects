--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:20:55 01/12/2022
-- Design Name:   
-- Module Name:   F:/Xilinx/Projects/Ex2/bcd_encoder_test.vhd
-- Project Name:  Ex2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_encoder
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY bcd_encoder_test IS
END bcd_encoder_test;
 
ARCHITECTURE behavior OF bcd_encoder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_encoder
    PORT(
         inputs : IN  std_logic_vector(9 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputs : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_encoder PORT MAP (
          inputs => inputs,
          output => output
        );
		  
   -- Stimulus process
   stim_proc: process
   begin	
      wait for 10 ns;
		inputs <= "0000000000";
		
		for i in 0 to 10 loop
			inputs <= conv_std_logic_vector(2 ** i, 10);
			wait for 10 ns;
			assert output <= conv_std_logic_vector(i, 4)
				report "Incorrect result for test " & integer'image(i) 
				severity failure;
		end loop;
		
   end process;

END;
