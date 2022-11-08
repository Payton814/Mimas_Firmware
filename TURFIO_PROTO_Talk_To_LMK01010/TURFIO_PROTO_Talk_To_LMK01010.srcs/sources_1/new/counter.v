`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2022 12:50:13 PM
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
/////////////////////////////////////////////////////////////////////////////////

module Talk_to(input clk, output clk2data, output reg dataline, output LE, output LED,
 output SYNC);
wire clk20MHz;
reg blink = 0;
parameter dataW = 32;
reg LEline = 1;
reg [dataW - 1:0] R0_initial = {1'b1, {(dataW - 1){1'b0}}};
reg [dataW-1:0] R0 = {dataW{1'b0}};
// In the line below, the 13 bits that are 0 are supposed to be 0 at all times. the 15 bits in the middle are how to program the clock
// The last 4 bits are the address bits
reg [dataW-1: 0] R1 = {{13{1'b0}}, {15'b10000000000001}, {4'b0001}};
localparam [dataW:0] Bit0 = 0;
localparam [dataW:0] Bit1 = 1;
localparam [dataW:0] Bit2 = 2;
localparam [dataW:0] Bit3 = 3;
localparam [dataW:0] Bit4 = 4;
localparam [dataW:0] Bit5 = 5;
localparam [dataW:0] Bit6 = 6;
localparam [dataW:0] Bit7 = 7;
localparam [dataW:0] Bit8 = 8;
localparam [dataW:0] Bit9 = 9;
localparam [dataW:0] Bit10 = 10;
localparam [dataW:0] Bit11 = 11;
localparam [dataW:0] Bit12 = 12;
localparam [dataW:0] Bit13 = 13;
localparam [dataW:0] Bit14 = 14;
localparam [dataW:0] Bit15 = 15;
localparam [dataW:0] Bit16 = 16;
localparam [dataW:0] Bit17 = 17;
localparam [dataW:0] Bit18 = 18;
localparam [dataW:0] Bit19 = 19;
localparam [dataW:0] Bit20 = 20;
localparam [dataW:0] Bit21 = 21;
localparam [dataW:0] Bit22 = 22;
localparam [dataW:0] Bit23 = 23;
localparam [dataW:0] Bit24 = 24;
localparam [dataW:0] Bit25 = 25;
localparam [dataW:0] Bit26 = 26;
localparam [dataW:0] Bit27 = 27;
localparam [dataW:0] Bit28 = 28;
localparam [dataW:0] Bit29 = 29;
localparam [dataW:0] Bit30 = 30;
localparam [dataW:0] Bit31 = 31;
localparam [dataW:0] BitLE = 32;
ClockDiv ClockDiv(.clk(clk), .clk20(clk20MHz));
counter #(.FREQ(20000000)) counter(.clk(clk20MHz), .Q(Q));

reg [dataW:0] state = Bit0;
reg reset = 0;
reg [2:0] latch = 0;


ila_0 debugger(.clk(clk),
.probe0(dataline),
.probe1(LE),
.probe2(clk20MHz)
);


always @(negedge clk20MHz) begin

if (Q) begin
        blink <= blink + 1;
end


case (state)
    Bit0: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-1];
        end else begin
            dataline <= R1[dataW-1];
        end
        LEline <= LEline + 1;
        state <= Bit1;
        end
    Bit1: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-2];
        end else begin
            dataline <= R1[dataW-2];
        end
        state <= Bit2;
        end
    Bit2: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-3];
        end else begin
            dataline <= R1[dataW-3];
        end
        state <= Bit3;
        end
    Bit3: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-4];
        end else begin
            dataline <= R1[dataW-4];
        end
        state <= Bit4;
        end
    Bit4: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-5];
        end else begin
            dataline <= R1[dataW-5];
        end
        state <= Bit5;
        end
    Bit5: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-6];
        end else begin
            dataline <= R1[dataW-6];
        end
        state <= Bit6;
        end
    Bit6: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-7];
        end else begin
            dataline <= R1[dataW-7];
        end
        state <= Bit7;
        end
    Bit7: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-8];
        end else begin
            dataline <= R1[dataW-8];
        end
        state <= Bit8;
        end
    Bit8: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-9];
        end else begin
            dataline <= R1[dataW-9];
        end
        state <= Bit9;
        end
    Bit9: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-10];
        end else begin
            dataline <= R1[dataW-10];
        end
        state <= Bit10;
        end
    Bit10: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-11];
        end else begin
            dataline <= R1[dataW-11];
        end
        state <= Bit11;
        end
    Bit11: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-12];
        end else begin
            dataline <= R1[dataW-12];
        end
        state <= Bit12;
        end
    Bit12: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-13];
        end else begin
            dataline <= R1[dataW-13];
        end
        state <= Bit13;
        end
    Bit13: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-14];
        end else begin
            dataline <= R1[dataW-14];
        end
        state <= Bit14;
        end
    Bit14: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-15];
        end else begin
            dataline <= R1[dataW-15];
        end
        state <= Bit15;
        end
    Bit15: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-16];
        end else begin
            dataline <= R1[dataW-16];
        end
        state <= Bit16;
        end
    Bit16: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-17];
        end else begin
            dataline <= R1[dataW-17];
        end
        state <= Bit17;
        end
    Bit17: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-18];
        end else begin
            dataline <= R1[dataW-18];
        end
        state <= Bit18;
        end
    Bit18: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-19];
        end else begin
            dataline <= R1[dataW-19];
        end
        state <= Bit19;
        end
    Bit19: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-20];
        end else begin
            dataline <= R1[dataW-20];
        end
        state <= Bit20;
        end
    Bit20: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-21];
        end else begin
            dataline <= R1[dataW-21];
        end
        state <= Bit21;
        end
    Bit21: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-22];
        end else begin
            dataline <= R1[dataW-22];
        end
        state <= Bit22;
        end
    Bit22: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-23];
        end else begin
            dataline <= R1[dataW-23];
        end
        state <= Bit23;
        end
    Bit23: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-24];
        end else begin
            dataline <= R1[dataW-24];
        end
        state <= Bit24;
        end
    Bit24: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-25];
        end else begin
            dataline <= R1[dataW-25];
        end
        state <= Bit25;
        end
    Bit25: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-26];
        end else begin
            dataline <= R1[dataW-26];
        end
        state <= Bit26;
        end
    Bit26: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-27];
        end else begin
            dataline <= R1[dataW-27];
        end
        state <= Bit27;
        end
    Bit27: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-28];
        end else begin
            dataline <= R1[dataW-28];
        end
        state <= Bit28;
        end
    Bit28: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-29];
        end else begin
            dataline <= R1[dataW-29];
        end
        state <= Bit29;
        end
    Bit29: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-30];
        end else begin
            dataline <= R1[dataW-30];
        end
        state <= Bit30;
        end
    Bit30: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-31];
        end else begin
            dataline <= R1[dataW-31];
        end
        state <= Bit31;
        end
    Bit31: begin
        if (reset == 0) begin
            dataline <= R0_initial[dataW-32];
        end else begin
            dataline <= R1[dataW-32];
        end
        state <= BitLE;
        end
    BitLE: begin
        if (reset == 0) begin
            reset = reset + 1;
        end
        LEline = LEline + 1;
        state <= Bit0;
        end

default: state <= Bit0;
endcase


end

assign LE = LEline;
assign clk2data = clk20MHz;
assign LED = blink;
assign SYNC = 1'b1;


endmodule




/*module blink(input clk, output reg LED);
wire clk20MHz;
reg reset = 1;
reg fake_led;
//reg led = 0;

ClockDiv ClockDiv(.clk(clk), .clk20(clk20MHz));
counter #(.FREQ(20000000)) counter(.clk(clk20MHz), .Q(Q), .Val(Val));
counter #(.FREQ(10)) counter2(.clk(clk20MHz), .Q(Q2));

ila_0 debugger(.clk(clk),
.probe0(clk20MHz),
.probe1(Q2)
);
always @(posedge clk20MHz) begin
    if (reset == 1) begin
        reset <= 0;
        LED <= 0;
        fake_led <= 0;
    end else begin
    if (Q) begin
        LED <= LED + 1;
        fake_led <= fake_led + 1;
    end
    end
end

//assign LED[0] = led;
endmodule*/



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

module counter(input clk,
    output Q,
    output Val
    );
    parameter FREQ = 100000000;
    `include "clogb2.vh";
    localparam C_BITS = clogb2(FREQ - 1);
    reg [C_BITS - 1:0] count = {C_BITS{1'b0}};
    
    always @ (posedge clk) begin
        if (count == FREQ - 1) begin
            count = {C_BITS{1'b0}};
        end else begin
            count = count + 1;
        end
    end    
    assign Q = (count == FREQ - 1) && (clk);
    assign Val = count;
endmodule


/*`define DLYFF #1
module clk_div_ce #(parameter [27:0] CLK_DIVIDE=1,
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

SRLC32E #(
   .INIT(32'h00000000) // Initial Value of Shift Register
) SRLC32E_inst (
   .Q(Q),     // SRL data output
   .Q31(Q31), // SRL cascade output pin
   .A(A),     // 5-bit shift depth select input
   .CE(CE),   // Clock enable input
   .CLK(CLK), // Clock input
   .D(D)      // SRL data input
);

// End of SRLC32E_inst instantiation
   
   
endmodule // clk_div_ce
`undef DLYFF*/