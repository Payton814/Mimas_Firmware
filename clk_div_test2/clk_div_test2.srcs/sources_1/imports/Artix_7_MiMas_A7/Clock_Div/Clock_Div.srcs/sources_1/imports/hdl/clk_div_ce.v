`timescale 1ns/1ps

// Generate a free-running periodic clock enable using
// an SRLC32E (+ its DFF and another LUT).
// This guy works by constantly inverting the output
// of the shift register, which guarantees that even if
// the clock stops/starts randomly that the oscillator
// this forms will recover. (There's an old Xilinx note
// suggesting just using an SRL with one bit set in its
// INIT, feeding the Q back to the D input. This works
// but it's fragile if the clock's not perfect - if the
// one-hot set bit gets misregistered at some point
// the oscillator will just stop.)
//
// CLK_DIVIDE specifies the clock ratio minus 1.
// EXTRA_DIV2 means the final output is (clk_frequency/CLK_DIVIDE/2).
// EXTRA_DIV2 just switches between looking for any edge (q ^ q_rereg)
// and only a rising edge (q && !q_rereg).
//
// CLK_DIVIDE=0 and EXTRA_DIV2 is stupid, it's just constantly
// 1 after a bit of startup.

//SRLC32E: 32-Bit Shift Register Look-Up Table (LUT)
//          UltraScale
// Xilinx HDL Language Template, version 2021.1

   // SRLC32E: 32-bit variable length cascadable shift register LUT  (Mapped to a SliceM LUT6)
//          with clock enable
//          7 Series
// Xilinx HDL Language Template, version 2022.1

//SRLC32E #(
//   .INIT(32'h00000000) // Initial Value of Shift Register
//) SRLC32E_inst (
//   .Q(Q),     // SRL data output
//   .Q31(Q31), // SRL cascade output pin
//   .A(A),     // 5-bit shift depth select input
//   .CE(CE),   // Clock enable input
//   .CLK(CLK), // Clock input
//   .D(D)      // SRL data input
//);


// End of SRLC32E_inst instantiation


`define DLYFF #1
module clk_div_ce #(parameter [4:0] CLK_DIVIDE=1.5,
		    parameter EXTRA_DIV2="FALSE")
                   ( input clk,
		     output ce );
		     

   reg 			    q_rereg = 0;
   wire 		    q;
   wire 		    d_in = !q;   
   SRLC32E #(.INIT(32'h0))  u_srl(.D(d_in),.Q(q),.A(CLK_DIVIDE),.CLK(clk));
   always @(posedge clk) q_rereg <= `DLYFF q;

   assign ce = (EXTRA_DIV2 == "TRUE") ? (q && !q_rereg) : q ^ q_rereg;
   
   
   
   
   // SRLC32E: 32-bit variable length cascadable shift register LUT  (Mapped to a SliceM LUT6)
//          with clock enable
//          7 Series
// Xilinx HDL Language Template, version 2022.1

//SRLC32E #(
//   .INIT(32'h00000000) // Initial Value of Shift Register
//) SRLC32E_inst (
//   .Q(Q),     // SRL data output
//   .Q31(Q31), // SRL cascade output pin
//   .A(A),     // 5-bit shift depth select input
//   .CE(CE),   // Clock enable input
//   .CLK(CLK), // Clock input
//   .D(D)      // SRL data input
//);

// End of SRLC32E_inst instantiation
   
   
endmodule // clk_div_ce
`undef DLYFF