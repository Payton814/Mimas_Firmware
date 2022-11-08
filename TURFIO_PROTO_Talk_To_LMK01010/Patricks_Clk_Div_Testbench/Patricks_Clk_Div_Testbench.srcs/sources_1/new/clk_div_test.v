`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 10:40:43 AM
// Design Name: 
// Module Name: clk_div_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// This code attempts to use patricks clk divider to create a ce line that goes high at a 20MHz rate
// Then uses this ce line to blink an LED
module clk_div_test(input clk, output [2:0] LED
);
parameter FREQ1 = 20000000;
`include "clogb2.vh"
localparam NBITS = clogb2(FREQ1 - 1);
reg [NBITS - 1:0] count = {NBITS{1'b0}};
reg blink = 0;
reg blink2 = 1'b0;
wire ce;
reg clk2 = 1;

clk_div_ce #(.CLK_DIVIDE(4)) clk_div_ce(.clk(clk), .ce(ce20MHz));
//clk_div_ce #(.CLK_DIVIDE(3)) clk_div_ce(.clk(clk), .ce(ce));
//clk_div_ce #(.CLK_DIVIDE(1)) clk_div_ce3(.clk(clk), .ce(ce2));
counter #(.FREQ(100000000)) counter(.clk(clk), .Q(Q));

ila_0 ila_0(.clk(clk), .probe0(ce20MHz), .probe1(clk2));

always @(negedge clk) begin
    clk2 <= clk2 + 1;
   // if (ce20MHz) begin
     //   if (count == FREQ1 - 1) begin
       //     count <= {NBITS{1'b0}};
         //   blink <= blink + 1;
        //end else begin
          //  count <= count + 1;
        //end
    //end
    
    //if (ce) begin
    //    blink <= 1;
   // end
    
    if (Q) begin
        blink2 <= blink2 + 1;
    end
end



//assign LED[0] = ~ce;
//assign LED[1] = ce;
assign LED[2] = blink2;

endmodule
