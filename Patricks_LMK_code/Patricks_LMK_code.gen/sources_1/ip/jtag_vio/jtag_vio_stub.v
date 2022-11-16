// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov 14 10:00:45 2022
// Host        : DESKTOP-0RQFACS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               q:/Mimas_Firmware/Patricks_LMK_code/Patricks_LMK_code.gen/sources_1/ip/jtag_vio/jtag_vio_stub.v
// Design      : jtag_vio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.2" *)
module jtag_vio(clk, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[0:0],probe_out1[0:0]" */;
  input clk;
  output [0:0]probe_out0;
  output [0:0]probe_out1;
endmodule
