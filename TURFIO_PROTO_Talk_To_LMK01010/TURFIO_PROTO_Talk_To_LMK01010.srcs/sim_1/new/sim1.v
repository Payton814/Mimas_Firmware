`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2022 01:32:18 PM
// Design Name: 
// Module Name: sim1
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


module clock_div_TB;
reg clk;
Talk_to Talk_to(.clk(clk), .clk2data(clk2data), .dataline(dataline), .LE(LE), .SYNC(SYNC));



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
