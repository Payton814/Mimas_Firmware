`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 01:04:29 PM
// Design Name: 
// Module Name: GPIO_checker
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


module GPIO_checker(input clk, 
output reg [33:0] P5

    );
    //parameter [5:0] RESET = 6'h0;
    reg load = 0;
    wire [5:0] GPIO_in;
    vio_0 vio(.clk(clk), .probe_out0(GPIO_in), .probe_out1(reload));
    
    always @(posedge clk) begin
    
    if (load != reload) begin
       P5[33:0] = 0;
       P5[GPIO_in] = 1;
       load = load + 1;
    end
    end
endmodule
