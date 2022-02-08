----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2022 19:19:34
-- Design Name: 
-- Module Name: ChaCha - behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ChaCha is
	port ( 
		clock: in std_logic;
		reset: in std_logic;
		load_data: in std_logic;
		output_data: in std_logic;
		counter_inc: in std_logic;
		data_in: in std_logic_vector(31 downto 0);
		data_out: out std_logic_vector(31 downto 0)
	);
end ChaCha;

architecture behavioral of ChaCha is
	component ChaChaBlock is
		port (
			input: in state_t;
			output: out state_t
		);
	end component;
	
	type ram_t is array(0 to 15) of std_logic_vector(31 downto 0);
	signal input_ram: ram_t;
	signal output_ram: ram_t;
begin
	chacha_block: ChaChaBlock
		port map (		
			input(0)(0) => x"61707865",
			input(0)(1) => x"3320646e",
			input(0)(2) => x"79622d32", 
			input(0)(3) => x"6b206574",
			
			input(1)(0) => input_ram(4),
			input(1)(1) => input_ram(5),
			input(1)(2) => input_ram(6),
			input(1)(3) => input_ram(7),
			
			input(2)(0) => input_ram(8),
			input(2)(1) => input_ram(9),
			input(2)(2) => input_ram(10),
			input(2)(3) => input_ram(11),
			
			input(3)(0) => input_ram(12),
			input(3)(1) => input_ram(13),
			input(3)(2) => input_ram(14),
			input(3)(3) => input_ram(15),
			
			output(0)(0) => output_ram(0),
			output(0)(1) => output_ram(1),
			output(0)(2) => output_ram(2),
			output(0)(3) => output_ram(3),
			
			output(1)(0) => output_ram(4),
			output(1)(1) => output_ram(5),
			output(1)(2) => output_ram(6),
			output(1)(3) => output_ram(7),
			
			output(2)(0) => output_ram(8),
			output(2)(1) => output_ram(9),
			output(2)(2) => output_ram(10),
			output(2)(3) => output_ram(11),
			
			output(3)(0) => output_ram(12),
			output(3)(1) => output_ram(13),
			output(3)(2) => output_ram(14),
			output(3)(3) => output_ram(15)
		);

--       61707865  3320646e  79622d32  6b206574
	input_ram(0 to 3) <= (x"61707865", x"3320646e", x"79622d32", x"6b206574");

	process (clock)
		variable address: integer;
	begin
		if rising_edge(clock) then
			if reset = '1' then
				address := 0;
			elsif load_data = '1' then
				if address <= 12 then
					input_ram(address + 3) <= data_in;
				end if;
			elsif counter_inc = '1' then
				input_ram(12) <= std_logic_vector(unsigned(input_ram(12)) + 1);
			elsif output_data = '1' then
				if address <= 15 then
					data_out <= output_ram(address);
				end if;
			end if;
		end if;
		
		if falling_edge(clock) then
			if load_data = '1' or output_data = '1' then
				address := address + 1;
			else
				address := 0;
			end if;
		end if;
	end process;	

end behavioral;
