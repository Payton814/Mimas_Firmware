// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Nov  4 16:41:43 2022
// Host        : DESKTOP-0RQFACS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub m:/LMK_010101/LMK_010101.gen/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.2" *)
module vio_0(clk, probe_in0, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0],probe_out0[31:0],probe_out1[0:0]" */;
  input clk;
  input [0:0]probe_in0;
  output [31:0]probe_out0;
  output [0:0]probe_out1;
endmodule
