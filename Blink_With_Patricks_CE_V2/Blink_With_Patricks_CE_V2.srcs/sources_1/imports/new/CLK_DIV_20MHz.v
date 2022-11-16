`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 02:35:59 PM
// Design Name: 
// Module Name: CLK_DIV_20MHz
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


module ClockDiv(input clk,
    output reg clk20);
    localparam P = 0;
    localparam N = 1;
    reg [2:0] Q2 = 0;
    reg [2:0] Q1 = 0;
    reg reset = 1;
    //reg clk20 = 1;
    reg state = P;
    //counter #(.FREQ(3)) counter1(.clk(clk), .Q(Q1));
    
    always @(posedge clk) begin
        if (reset == 1) begin
            reset <= 0;
            clk20 <= 1;
        end else begin
        case (state)
        P: begin
            Q1 <= Q1 + 1;
            if (Q1 == 2) begin
                clk20 <= clk20 + 1;
                state <= N;
                Q1 <= 0;
            end
        end
        N: begin
            Q2 <= Q2 + 1;
            if (Q2 == 1) begin
                clk20 <= clk20 + 1;
                state <= P;
                Q2 <= 0;
            end
        end
        default: state <= P;
        endcase
        end
    end
    
    //assign clk20MHz = clk20;
    
endmodule
