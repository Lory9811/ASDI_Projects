----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 17:25:50
-- Design Name: 
-- Module Name: node_b - behavioral
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

entity node_b is
	port ( 
		clk: in std_logic;
		rx: in std_logic;
		output: out std_logic_vector(7 downto 0);
		received: inout std_logic
	);
end node_b;

architecture behavioral of node_b is
	component Rs232RefComp is
		Port ( 
			TXD 	: out std_logic  	:= '1';
			RXD 	: in  std_logic;					
			CLK 	: in  std_logic;								--Master Clock
			DBIN 	: in  std_logic_vector (7 downto 0);	--Data Bus in
			DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out
			RDA	: inout std_logic;						--Read Data Available(? alto quando il dato ? disponibile nel registro rdReg)
			TBE	: inout std_logic 	:= '1';			--Transfer Bus Empty(se ? 0 significa che il bus ? occupato per una trasmissione)
			RD		: in  std_logic;					--Read Strobe(se ? 0 significa "leggi")
			WR		: in  std_logic;					--Write Strobe(se ? 1 significa "scrivi")
			PE		: out std_logic;					--Parity Error Flag
			FE		: out std_logic;					--Frame Error Flag
			OE		: out std_logic;					--Overwrite Error Flag
			RST		: in  std_logic	:= '0');	--Master Reset
	end component;
begin
	
	uart: Rs232RefComp
		port map (
			TXD => open,
			RXD => rx,
			CLK => clk,
			DBIN => (others => '0'),
			DBOUT => output,
			RDA => received,
			TBE => open,
			RD => '0',
			WR => '0',
			PE => open,
			FE => open,
			OE => open,
			RST => '0'
		);

end behavioral;
