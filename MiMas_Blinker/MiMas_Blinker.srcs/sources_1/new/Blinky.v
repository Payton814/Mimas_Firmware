`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2022 12:58:38 PM
// Design Name: 
// Module Name: Blinky
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


module Blinky(input clk,
output LED, output LED2
    );
    //wire Q;
    //wire Q2;
    reg blink = 0;
    reg light = 1;
    //reg led1 = 1'b0;
    
    
    counter #(.FREQ(100000000)) counter(.clk(clk), .Q(Q));
    //counter #(.FREQ(50000000)) counter2(.clk(clk), .Q(Q2));
    
    always @(negedge clk) begin
        if (Q) begin
            blink <= blink + 1;
        end
        //if (Q2) begin
       //     led1 <= led1 + 1;
       // end
    end
    
    assign LED = blink;
    assign LED2 = light;
    //assign LED[1] = led1;
    
endmodule
