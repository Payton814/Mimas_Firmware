`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 01:13:57 PM
// Design Name: 
// Module Name: blinky_TB
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


module blinky_TB;

reg clk = 0;
//Talk_to Talk_to(.clk(clk), .clk2data(clk2data), .dataline(dataline), .LE(LE), .SYNC(SYNC));
Blinky Blinky(.clk(clk), .LED(LED));
counter #(.FREQ(1000)) counter(.clk(clk), .Q(Q));


always begin
    #5 clk = ~clk;
    //if (Q) begin
        //clk10MHz = ~clk10MHz;
    //end
end
initial begin
    clk <= 0;
end
endmodule
