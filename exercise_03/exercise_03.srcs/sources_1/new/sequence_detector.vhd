----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 19:18:37
-- Design Name: 
-- Module Name: sequence_detector - behavioral
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

entity sequence_detector is
    port (
        reset: in std_logic;
        i: in std_logic;
        A: in std_logic;
        M: in std_logic;
        Y: out std_logic
     );
end sequence_detector;

architecture behavioral of sequence_detector is

    type state is (s0, s1, s2, s3, fail1, fail2, fail3);
    
    signal current_state, next_state: state;
    
begin

    process(A, reset) 
    begin
        if falling_edge(A) then
            current_state <= next_state;
            if reset = '1' then 
                current_state <= s0;
            end if;
        end if;
    end process;
    
    process(i, M, current_state)
    begin
        Y <= '0';
        case current_state is
            when s0 => 
                if i = '1' then -- "1" first 1 is found
                    next_state <= s1;
                else
                    if M = '0' then
                        next_state <= fail1;
                    else
                    	next_state <= s0;
                   	end if;
                end if;
            when s1 =>
            	if i = '1' then -- first 1 is found again
            		if M = '0' then
            			next_state <= fail2;
            		else
            			next_state <= s1;
            		end if;
            	else -- first 0 is found
            		next_state <= s2;
            	end if;
            when s2 =>
            	if i = '1' then -- first 1 is found again
            		if M = '0' then
						next_state <= fail3;
					else
						next_state <= s1;
					end if;
				else -- second 0 is found
					next_state <= s3;
				end if;
            when s3 =>
				if i = '1' then -- last 1 is found, sequence complete
					if M = '0' then
						next_state <= s0;
					else
						next_state <= s1;
					end if;
					Y <= '1';
				else
					next_state <= s0;
				end if;
			when fail1 => next_state <= fail2;
			when fail2 => next_state <= fail3;
			when fail3 => next_state <= s0;			 
        end case;
    end process;

end behavioral;
