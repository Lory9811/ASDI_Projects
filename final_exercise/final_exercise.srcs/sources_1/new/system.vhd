----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2022 10:33:28
-- Design Name: 
-- Module Name: system - structural
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

----------------------------------------------------------------------------------
-- Traccia: 
--
-- Si consideri un sistema A che contiene 2 memorie ROM di N locazioni da 4 bit ciascuna, MEM1 e MEM2. 
-- Progettare ed implementare in VHDL una architettura in grado di trasmettere dal sistema A ad un sistema B 
-- gli elementi MEM1(i) solo se MEM1(i)=MEM2(i) (elementi uguali in posizione omologa) mediante handshaking 
-- con modalit? parallela (parallelismo 4 bit).
-- Al termine dell'invio, A invia un opportuno carattere di terminazione $FF (che si suppone non sia presente nelle due ROM) a B. 
-- B memorizzer? i dati ricevuti e, dopo aver ricevuto il carattere terminatore da A, li trasmetter? a C, 
-- mediante handshaking, inviando a sua volta a C il carattere terminatore $FF per segnalare la fine della trasmissione. 
-- L' unit? A deve integrare un contatore e B e C devono integrare un comparatore.
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

entity system is
	port (
		reset: in std_logic;
		clk: in std_logic
	);
end system;

architecture structural of system is
	component system_a is
		port (
			reset: in std_logic;
			clk: in std_logic;
			ack: in std_logic;
			data_out: out std_logic_vector(3 downto 0);
			ready: out std_logic
		);
	end component;
	
	component system_b is
		port ( 
			reset: in std_logic;
			clk: in std_logic;
			ready_in: in std_logic;
			data_in: in std_logic_vector(3 downto 0);
			ack_in: in std_logic;
			ack_out: out std_logic;
			data_out: out std_logic_vector(3 downto 0);
			ready_out: out std_logic
		);
	end component;
	
	component system_c is
		port ( 
			reset: in std_logic;
			clk: in std_logic;
			ready_in: in std_logic;
			data_in: in std_logic_vector(3 downto 0);
			ack: out std_logic
		);
	end component;
	
	signal ack_a: std_logic;
	signal data_a: std_logic_vector(3 downto 0);
	signal ready_a: std_logic;
	
	signal ack_b: std_logic;
	signal data_b: std_logic_vector(3 downto 0);
	signal ready_b: std_logic;
begin
	
	a: system_a port map (
		reset => reset,
		clk => clk,
		ack => ack_a,
		data_out => data_a,
		ready => ready_a
	);
	
	b: system_b port map (
		reset => reset,
		clk => clk,
		ready_in => ready_a,
		data_in => data_a,
		ack_in => ack_b,
		ack_out => ack_a,
		data_out => data_b,
		ready_out => ready_b
	);
	
	c: system_c port map (
		reset => reset,
		clk => clk,
		ready_in => ready_b,
		data_in => data_b,
		ack => ack_b
	);

end structural;
