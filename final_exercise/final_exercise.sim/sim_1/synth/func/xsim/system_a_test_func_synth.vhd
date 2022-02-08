-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Feb  8 11:41:29 2022
-- Host        : Squonk running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               F:/Xilinx/Projects/final_exercise/final_exercise.sim/sim_1/synth/func/xsim/system_a_test_func_synth.vhd
-- Design      : system_a
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    transmit_enable_reg : out STD_LOGIC;
    \count_reg[3]_0\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    enable : in STD_LOGIC;
    stop : in STD_LOGIC;
    ack_IBUF : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal address : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \value[0]_i_1_n_0\ : STD_LOGIC;
  signal \value[1]_i_1_n_0\ : STD_LOGIC;
  signal \value[2]_i_1_n_0\ : STD_LOGIC;
  signal \value[3]_i_1_n_0\ : STD_LOGIC;
  signal value_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stop_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of transmit_enable_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \value[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \value[2]_i_1\ : label is "soft_lutpair1";
begin
  Q(0) <= \^q\(0);
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => value_reg(0),
      Q => address(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => value_reg(1),
      Q => address(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => value_reg(2),
      Q => address(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => value_reg(3),
      Q => \^q\(0),
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => address(0),
      I1 => address(2),
      I2 => address(1),
      I3 => \^q\(0),
      O => D(0)
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41EE"
    )
        port map (
      I0 => \^q\(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(0),
      O => D(1)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA2"
    )
        port map (
      I0 => address(2),
      I1 => address(1),
      I2 => address(0),
      I3 => \^q\(0),
      O => D(2)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => stop,
      I1 => \data_out[3]_i_2_n_0\,
      I2 => enable,
      I3 => reset_IBUF,
      O => E(0)
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1350"
    )
        port map (
      I0 => \^q\(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(0),
      O => \data_out[3]_i_2_n_0\
    );
stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => \^q\(0),
      I1 => address(2),
      I2 => address(0),
      I3 => address(1),
      I4 => stop,
      O => \count_reg[3]_0\
    );
transmit_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC2E"
    )
        port map (
      I0 => ack_IBUF,
      I1 => enable,
      I2 => \data_out[3]_i_2_n_0\,
      I3 => stop,
      O => transmit_enable_reg
    );
\value[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => enable,
      I1 => value_reg(0),
      O => \value[0]_i_1_n_0\
    );
\value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => value_reg(1),
      I1 => enable,
      I2 => value_reg(0),
      O => \value[1]_i_1_n_0\
    );
\value[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => value_reg(2),
      I1 => enable,
      I2 => value_reg(0),
      I3 => value_reg(1),
      O => \value[2]_i_1_n_0\
    );
\value[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => value_reg(3),
      I1 => value_reg(2),
      I2 => enable,
      I3 => value_reg(0),
      I4 => value_reg(1),
      I5 => reset_IBUF,
      O => \value[3]_i_1_n_0\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \value[0]_i_1_n_0\,
      Q => value_reg(0),
      R => reset_IBUF
    );
\value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \value[1]_i_1_n_0\,
      Q => value_reg(1),
      R => reset_IBUF
    );
\value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \value[2]_i_1_n_0\,
      Q => value_reg(2),
      R => reset_IBUF
    );
\value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \value[3]_i_1_n_0\,
      Q => value_reg(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_a is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    ack : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_a : entity is true;
end system_a;

architecture STRUCTURE of system_a is
  signal ack_IBUF : STD_LOGIC;
  signal address : STD_LOGIC_VECTOR ( 3 to 3 );
  signal address_counter_n_0 : STD_LOGIC;
  signal address_counter_n_5 : STD_LOGIC;
  signal address_counter_n_6 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data_out_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal enable : STD_LOGIC;
  signal \mem1[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ready4_out : STD_LOGIC;
  signal ready_OBUF : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal stop : STD_LOGIC;
begin
ack_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ack,
      O => ack_IBUF
    );
address_counter: entity work.counter
     port map (
      D(2 downto 0) => \mem1[0]\(2 downto 0),
      E(0) => address_counter_n_0,
      Q(0) => address(3),
      ack_IBUF => ack_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \count_reg[3]_0\ => address_counter_n_6,
      enable => enable,
      reset_IBUF => reset_IBUF,
      stop => stop,
      transmit_enable_reg => address_counter_n_5
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\data_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(0),
      O => data_out(0)
    );
\data_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(1),
      O => data_out(1)
    );
\data_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(2),
      O => data_out(2)
    );
\data_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(3),
      O => data_out(3)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => address_counter_n_0,
      D => \mem1[0]\(0),
      Q => data_out_OBUF(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => address_counter_n_0,
      D => \mem1[0]\(1),
      Q => data_out_OBUF(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => address_counter_n_0,
      D => \mem1[0]\(2),
      Q => data_out_OBUF(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => address_counter_n_0,
      D => address(3),
      Q => data_out_OBUF(3),
      R => '0'
    );
ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ready_OBUF,
      O => ready
    );
ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => stop,
      I1 => ack_IBUF,
      I2 => enable,
      I3 => reset_IBUF,
      O => ready4_out
    );
ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ready4_out,
      D => '0',
      Q => ready_OBUF,
      S => address_counter_n_0
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
stop_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => address_counter_n_6,
      Q => stop,
      R => reset_IBUF
    );
transmit_enable_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => address_counter_n_5,
      Q => enable,
      S => reset_IBUF
    );
end STRUCTURE;
