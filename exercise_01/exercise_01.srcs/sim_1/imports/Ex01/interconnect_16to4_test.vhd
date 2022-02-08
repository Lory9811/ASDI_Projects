--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:48:37 01/12/2022
-- Design Name:   
-- Module Name:   F:/Xilinx/Projects/Ex01/interconnect_16to4_test.vhd
-- Project Name:  Ex01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: interconnect_16to4
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
USE std.textio.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY interconnect_16to4_test IS
END interconnect_16to4_test;
 
ARCHITECTURE behavior OF interconnect_16to4_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT interconnect_16to4
    PORT(
         inputs : IN  std_logic_vector(15 downto 0);
         input_address : IN  std_logic_vector(3 downto 0);
         output_address : IN  std_logic_vector(1 downto 0);
         outputs : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputs : std_logic_vector(15 downto 0) := (others => '0');
   signal input_address : std_logic_vector(3 downto 0) := (others => '0');
   signal output_address : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outputs : std_logic_vector(3 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: interconnect_16to4 PORT MAP (
          inputs => inputs,
          input_address => input_address,
          output_address => output_address,
          outputs => outputs
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10 ns;
		
		inputs <= "0000000000000000";
		
		for i in 0 to 3 loop
			output_address <= conv_std_logic_vector(i, 2);
			
			for j in 0 to 15 loop
				input_address <= conv_std_logic_vector(j, 4);
				inputs <= conv_std_logic_vector(2 ** j, 16);
				wait for 10 ns;
				assert outputs <= conv_std_logic_vector(2 ** i, 4)
				report "Incorrect result"
				severity failure;
			end loop;
		end loop;
   end process;

END;
