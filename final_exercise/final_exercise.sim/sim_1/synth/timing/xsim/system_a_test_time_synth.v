// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Feb  8 11:42:46 2022
// Host        : Squonk running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/Xilinx/Projects/final_exercise/final_exercise.sim/sim_1/synth/timing/xsim/system_a_test_time_synth.v
// Design      : system_a
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module counter
   (E,
    Q,
    D,
    transmit_enable_reg,
    \count_reg[3]_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    enable,
    stop,
    ack_IBUF);
  output [0:0]E;
  output [0:0]Q;
  output [2:0]D;
  output transmit_enable_reg;
  output \count_reg[3]_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input enable;
  input stop;
  input ack_IBUF;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_IBUF;
  wire [2:0]address;
  wire clk_IBUF_BUFG;
  wire \count_reg[3]_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire enable;
  wire reset_IBUF;
  wire stop;
  wire transmit_enable_reg;
  wire \value[0]_i_1_n_0 ;
  wire \value[1]_i_1_n_0 ;
  wire \value[2]_i_1_n_0 ;
  wire \value[3]_i_1_n_0 ;
  wire [3:0]value_reg;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(value_reg[0]),
        .Q(address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(value_reg[1]),
        .Q(address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(value_reg[2]),
        .Q(address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(value_reg[3]),
        .Q(Q),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[0]_i_1 
       (.I0(address[0]),
        .I1(address[2]),
        .I2(address[1]),
        .I3(Q),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h41EE)) 
    \data_out[1]_i_1 
       (.I0(Q),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFA2)) 
    \data_out[2]_i_1 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(Q),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \data_out[3]_i_1 
       (.I0(stop),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(enable),
        .I3(reset_IBUF),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1350)) 
    \data_out[3]_i_2 
       (.I0(Q),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[0]),
        .O(\data_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    stop_i_1
       (.I0(Q),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(stop),
        .O(\count_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCC2E)) 
    transmit_enable_i_1
       (.I0(ack_IBUF),
        .I1(enable),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(stop),
        .O(transmit_enable_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \value[0]_i_1 
       (.I0(enable),
        .I1(value_reg[0]),
        .O(\value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \value[1]_i_1 
       (.I0(value_reg[1]),
        .I1(enable),
        .I2(value_reg[0]),
        .O(\value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \value[2]_i_1 
       (.I0(value_reg[2]),
        .I1(enable),
        .I2(value_reg[0]),
        .I3(value_reg[1]),
        .O(\value[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \value[3]_i_1 
       (.I0(value_reg[3]),
        .I1(value_reg[2]),
        .I2(enable),
        .I3(value_reg[0]),
        .I4(value_reg[1]),
        .I5(reset_IBUF),
        .O(\value[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\value[0]_i_1_n_0 ),
        .Q(value_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\value[1]_i_1_n_0 ),
        .Q(value_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\value[2]_i_1_n_0 ),
        .Q(value_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\value[3]_i_1_n_0 ),
        .Q(value_reg[3]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module system_a
   (reset,
    clk,
    ack,
    data_out,
    ready);
  input reset;
  input clk;
  input ack;
  output [3:0]data_out;
  output ready;

  wire ack;
  wire ack_IBUF;
  wire [3:3]address;
  wire address_counter_n_0;
  wire address_counter_n_5;
  wire address_counter_n_6;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]data_out;
  wire [3:0]data_out_OBUF;
  wire enable;
  wire [2:0]\mem1[0] ;
  wire ready;
  wire ready4_out;
  wire ready_OBUF;
  wire reset;
  wire reset_IBUF;
  wire stop;

initial begin
 $sdf_annotate("system_a_test_time_synth.sdf",,,,"tool_control");
end
  IBUF ack_IBUF_inst
       (.I(ack),
        .O(ack_IBUF));
  counter address_counter
       (.D(\mem1[0] ),
        .E(address_counter_n_0),
        .Q(address),
        .ack_IBUF(ack_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[3]_0 (address_counter_n_6),
        .enable(enable),
        .reset_IBUF(reset_IBUF),
        .stop(stop),
        .transmit_enable_reg(address_counter_n_5));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(address_counter_n_0),
        .D(\mem1[0] [0]),
        .Q(data_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(address_counter_n_0),
        .D(\mem1[0] [1]),
        .Q(data_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(address_counter_n_0),
        .D(\mem1[0] [2]),
        .Q(data_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(address_counter_n_0),
        .D(address),
        .Q(data_out_OBUF[3]),
        .R(1'b0));
  OBUF ready_OBUF_inst
       (.I(ready_OBUF),
        .O(ready));
  LUT4 #(
    .INIT(16'h0004)) 
    ready_i_1
       (.I0(stop),
        .I1(ack_IBUF),
        .I2(enable),
        .I3(reset_IBUF),
        .O(ready4_out));
  FDSE #(
    .INIT(1'b1)) 
    ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(ready4_out),
        .D(1'b0),
        .Q(ready_OBUF),
        .S(address_counter_n_0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(address_counter_n_6),
        .Q(stop),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    transmit_enable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(address_counter_n_5),
        .Q(enable),
        .S(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
