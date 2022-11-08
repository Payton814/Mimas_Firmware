`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 07:23:30 AM
// Design Name: 
// Module Name: TB
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


module TB;
reg clk;

clk_div_ce #(.CLK_DIVIDE(4)) clk_div_ce(.clk(clk), .ce(ce20MHz));

always begin
#5 clk = ~clk;
end

initial begin
    clk <= 0;
end
endmodule
