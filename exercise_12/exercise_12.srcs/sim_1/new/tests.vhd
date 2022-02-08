----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2022 16:30:01
-- Design Name: 
-- Module Name: tests - behavioral
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
use WORK.CHACHA_PKG.ALL;
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tests is
--  Port ( );
end tests;

architecture behavioral of tests is
	component QuarterRound is
		port (
			input: in state_row_t;
			output: out state_row_t
		);
	end component;
	
	component DoubleRound is
		port (
			state_in: in state_t;
			state_out: out state_t
		);
	end component;
	
	component ChaChaBlock is
		port (
			input: in state_t;
			output: out state_t
		);
	end component;
	
	signal qr_input: state_row_t;
	signal qr_output: state_row_t;
	
	signal dr_state_in: state_t;
	signal dr_state_out: state_t;
	
	signal cb_input: state_t;
	signal cb_output: state_t;
begin
	qr_uut: QuarterRound
		port map (
			input => qr_input,
			output => qr_output
		);
		
	process begin
		qr_input(0) <= x"CCCCCCCC";
		qr_input(1) <= x"AAAAAAAA";
		qr_input(2) <= x"F0F0F0F0";
		qr_input(3) <= x"0F0F0F0F";
		wait for 10 ns;
		--finish;
	end process;
	
	dr_uut: DoubleRound
		port map (
			state_in => dr_state_in,
			state_out => dr_state_out
		);
	
	process begin
		for i in 0 to 3 loop
			for j in 0 to 3 loop
				dr_state_in(i)(j) <= x"FFFFFFFF";
			end loop;
		end loop;
		wait for 10 ns;
		--finish;
	end process;
	
	cb_uut: ChaChaBlock
		port map (
			input => cb_input,
			output => cb_output
		);
		
	process begin
--		Test vector from rfc-7539:
--       61707865  3320646e  79622d32  6b206574
--       03020100  07060504  0b0a0908  0f0e0d0c
--       13121110  17161514  1b1a1918  1f1e1d1c
--       00000001  09000000  4a000000  00000000
--		After 20 rounds:
--       837778ab  e238d763  a67ae21e  5950bb2f
--       c4f2d0c7  fc62bb2f  8fa018fc  3f5ec7b7
--       335271c2  f29489f3  eabda8fc  82e46ebd
--       d19c12b4  b04e16de  9e83d0cb  4e3c50a2
--		After final sum:
--       e4e7f110  15593bd1  1fdd0f50  c47120a3
--       c7f4d1c7  0368c033  9aaa2204  4e6cd4c3
--       466482d2  09aa9f07  05d7c214  a2028bd9
--       d19c12b5  b94e16de  e883d0cb  4e3c50a2

		cb_input(0)(0) <= x"61707865";
		cb_input(0)(1) <= x"3320646e";
		cb_input(0)(2) <= x"79622d32";
		cb_input(0)(3) <= x"6b206574";
		
		cb_input(1)(0) <= x"03020100";
		cb_input(1)(1) <= x"07060504";
		cb_input(1)(2) <= x"0b0a0908";
		cb_input(1)(3) <= x"0f0e0d0c";
		
		cb_input(2)(0) <= x"13121110";
		cb_input(2)(1) <= x"17161514";
		cb_input(2)(2) <= x"1b1a1918";
		cb_input(2)(3) <= x"1f1e1d1c";
		
		cb_input(3)(0) <= x"00000001";
		cb_input(3)(1) <= x"09000000";
		cb_input(3)(2) <= x"4a000000";
		cb_input(3)(3) <= x"00000000";
		
		wait for 10 ns;
		--finish;
	end process;

end behavioral;
