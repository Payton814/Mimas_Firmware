`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 07:55:46 PM
// Design Name: 
// Module Name: Blink_Maybe
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


module Blink_Maybe(input clk, output [2:0] LED);

parameter FREQ1 = 20000000;
`include "clogb2.vh"
localparam NBITS = clogb2(FREQ1 - 1);
reg [NBITS - 1:0] count = {NBITS{1'b0}};
(* KEEP = "TRUE" *) reg blink = 0;
reg blink2 = 1'b0;
(* KEEP = "TRUE" *) wire ce20MHz;
reg clk2 = 0;

clk_div_ce #(.CLK_DIVIDE(4)) clk_div_ce(.clk(clk),.ce(ce20MHz));
//counter #(.FREQ(20000000)) counter(.clk(ce20MHz), .Q(Q));

ClockDiv ClockDiv(.clk(clk), .clk20(clk20MHz));

ila_0 ila_0(.clk(clk), .probe0(ce20MHz), .probe1(clk2), .probe2(count), .probe3(clk20MHz));

always @(posedge clk) begin
    clk2 <= clk2 + 1;
    
//    if (ce20MHz) begin
//        if (count == FREQ1 - 1) begin
//            count <= {NBITS{1'b0}};
//            //LED[0] <= LED[0] + 1;
//            blink <= blink + 1;
//        end else begin
//            count = count + 1;
//        end
//    end
    
    if (clk20MHz) begin
        if (count == FREQ1 - 1) begin
            count <= {NBITS{1'b0}};
            //LED[0] <= LED[0] + 1;
            blink <= blink + 1;
        end else begin
            count = count + 1;
        end
    end

end
assign LED[0] = blink;

endmodule
