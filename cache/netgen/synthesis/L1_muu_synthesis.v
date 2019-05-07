////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: L1_muu_synthesis.v
// /___/   /\     Timestamp: Mon Apr  8 13:49:10 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim L1_muu.ngc L1_muu_synthesis.v 
// Device	: xc6slx45-3-fgg484
// Input file	: L1_muu.ngc
// Output file	: /media/olesja/DATA/Cash/Cash_proj/netgen/synthesis/L1_muu_synthesis.v
// # of Modules	: 1
// Design Name	: L1_muu
// Xilinx        : /media/olesja/DATA/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module L1_muu (
  hit, rd, wr, clk, clr, l2ack, lfu, ch, twr, dwr, ack, l2rd, l2wr
);
  input hit;
  input rd;
  input wr;
  input clk;
  input clr;
  input l2ack;
  output lfu;
  output ch;
  output twr;
  output dwr;
  output ack;
  output l2rd;
  output l2wr;
  wire hit_IBUF_0;
  wire rd_IBUF_1;
  wire wr_IBUF_2;
  wire clk_BUFGP_3;
  wire clr_IBUF_4;
  wire l2ack_IBUF_5;
  wire out_ch;
  wire out_l2rd;
  wire state_FSM_FFd1_8;
  wire lfu_OBUF_9;
  wire twr_OBUF_10;
  wire dwr_OBUF_11;
  wire ack_OBUF_12;
  wire l2rd_OBUF_13;
  wire l2wr_OBUF_14;
  wire out_lfu;
  wire out_dwr;
  wire out_ack;
  wire \state_FSM_FFd2-In_18 ;
  wire \state_FSM_FFd1-In ;
  wire state_FSM_FFd3_20;
  wire state_FSM_FFd2_21;
  wire N2;
  wire state_FSM_FFd3_rstpot_36;
  wire N4;
  wire N5;
  FDR   lfu_1 (
    .C(clk_BUFGP_3),
    .D(out_lfu),
    .R(clr_IBUF_4),
    .Q(lfu_OBUF_9)
  );
  FDR   dwr_2 (
    .C(clk_BUFGP_3),
    .D(out_dwr),
    .R(clr_IBUF_4),
    .Q(dwr_OBUF_11)
  );
  FDR   ack_3 (
    .C(clk_BUFGP_3),
    .D(out_ack),
    .R(clr_IBUF_4),
    .Q(ack_OBUF_12)
  );
  FDR   ch_4 (
    .C(clk_BUFGP_3),
    .D(out_ch),
    .R(clr_IBUF_4),
    .Q(twr_OBUF_10)
  );
  FDR   l2wr_5 (
    .C(clk_BUFGP_3),
    .D(state_FSM_FFd1_8),
    .R(clr_IBUF_4),
    .Q(l2wr_OBUF_14)
  );
  FDR   l2rd_6 (
    .C(clk_BUFGP_3),
    .D(out_l2rd),
    .R(clr_IBUF_4),
    .Q(l2rd_OBUF_13)
  );
  FDR #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .C(clk_BUFGP_3),
    .D(\state_FSM_FFd1-In ),
    .R(clr_IBUF_4),
    .Q(state_FSM_FFd1_8)
  );
  FDR #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .C(clk_BUFGP_3),
    .D(\state_FSM_FFd2-In_18 ),
    .R(clr_IBUF_4),
    .Q(state_FSM_FFd2_21)
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  out_ack1 (
    .I0(l2ack_IBUF_5),
    .I1(state_FSM_FFd1_8),
    .I2(state_FSM_FFd3_20),
    .I3(state_FSM_FFd2_21),
    .O(out_ack)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  state_out_l2rd1 (
    .I0(state_FSM_FFd3_20),
    .I1(state_FSM_FFd2_21),
    .O(out_l2rd)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  state_out_ch1 (
    .I0(state_FSM_FFd3_20),
    .I1(state_FSM_FFd2_21),
    .O(out_ch)
  );
  LUT4 #(
    .INIT ( 16'hF444 ))
  \state_FSM_FFd1-In1  (
    .I0(l2ack_IBUF_5),
    .I1(state_FSM_FFd1_8),
    .I2(state_FSM_FFd3_20),
    .I3(state_FSM_FFd2_21),
    .O(\state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h000000000000000E ))
  out_lfu1 (
    .I0(wr_IBUF_2),
    .I1(rd_IBUF_1),
    .I2(hit_IBUF_0),
    .I3(state_FSM_FFd1_8),
    .I4(state_FSM_FFd3_20),
    .I5(state_FSM_FFd2_21),
    .O(out_lfu)
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  out_dwr1 (
    .I0(l2ack_IBUF_5),
    .I1(state_FSM_FFd2_21),
    .I2(state_FSM_FFd3_20),
    .O(out_dwr)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \state_FSM_FFd2-In_SW0  (
    .I0(wr_IBUF_2),
    .I1(rd_IBUF_1),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h00000000C0C000A0 ))
  \state_FSM_FFd2-In  (
    .I0(hit_IBUF_0),
    .I1(l2ack_IBUF_5),
    .I2(N2),
    .I3(state_FSM_FFd1_8),
    .I4(state_FSM_FFd3_20),
    .I5(state_FSM_FFd2_21),
    .O(\state_FSM_FFd2-In_18 )
  );
  IBUF   hit_IBUF (
    .I(hit),
    .O(hit_IBUF_0)
  );
  IBUF   rd_IBUF (
    .I(rd),
    .O(rd_IBUF_1)
  );
  IBUF   wr_IBUF (
    .I(wr),
    .O(wr_IBUF_2)
  );
  IBUF   clr_IBUF (
    .I(clr),
    .O(clr_IBUF_4)
  );
  IBUF   l2ack_IBUF (
    .I(l2ack),
    .O(l2ack_IBUF_5)
  );
  OBUF   lfu_OBUF (
    .I(lfu_OBUF_9),
    .O(lfu)
  );
  OBUF   ch_OBUF (
    .I(twr_OBUF_10),
    .O(ch)
  );
  OBUF   twr_OBUF (
    .I(twr_OBUF_10),
    .O(twr)
  );
  OBUF   dwr_OBUF (
    .I(dwr_OBUF_11),
    .O(dwr)
  );
  OBUF   ack_OBUF (
    .I(ack_OBUF_12),
    .O(ack)
  );
  OBUF   l2rd_OBUF (
    .I(l2rd_OBUF_13),
    .O(l2rd)
  );
  OBUF   l2wr_OBUF (
    .I(l2wr_OBUF_14),
    .O(l2wr)
  );
  FD #(
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .C(clk_BUFGP_3),
    .D(state_FSM_FFd3_rstpot_36),
    .Q(state_FSM_FFd3_20)
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \state_FSM_FFd3-In11_SW0  (
    .I0(wr_IBUF_2),
    .I1(rd_IBUF_1),
    .I2(hit_IBUF_0),
    .O(N4)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state_FSM_FFd3-In11_SW1  (
    .I0(rd_IBUF_1),
    .I1(l2ack_IBUF_5),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0000000003030005 ))
  state_FSM_FFd3_rstpot (
    .I0(N4),
    .I1(N5),
    .I2(clr_IBUF_4),
    .I3(state_FSM_FFd1_8),
    .I4(state_FSM_FFd3_20),
    .I5(state_FSM_FFd2_21),
    .O(state_FSM_FFd3_rstpot_36)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

