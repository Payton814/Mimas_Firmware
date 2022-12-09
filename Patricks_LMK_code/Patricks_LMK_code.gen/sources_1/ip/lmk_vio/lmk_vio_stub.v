// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Wed Dec  7 10:33:11 2022
// Host        : DESKTOP-0RQFACS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               q:/Mimas_Firmware/Patricks_LMK_code/Patricks_LMK_code.gen/sources_1/ip/lmk_vio/lmk_vio_stub.v
// Design      : lmk_vio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.2.2" *)
module lmk_vio(clk, probe_in0, probe_out0, probe_out1, 
  probe_out2, probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0],probe_out0[0:0],probe_out1[31:0],probe_out2[0:0],probe_out3[0:0]" */;
  input clk;
  input [0:0]probe_in0;
  output [0:0]probe_out0;
  output [31:0]probe_out1;
  output [0:0]probe_out2;
  output [0:0]probe_out3;
endmodule
