`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 12:34:32 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    output Q
    );
    parameter FREQ = 100000000;
    `include "clogb2.vh"
    localparam C_BITS = clogb2(FREQ - 1);
    reg [C_BITS - 1: 0] count = {C_BITS{1'b0}};
    
    always @ (posedge clk) begin
        if (count == FREQ - 1) begin
            count = {C_BITS{1'b0}};
        end else begin
            count = count + 1;
        end
    end
    
    assign Q = (count == FREQ - 1) && (clk);
    
    
endmodule
