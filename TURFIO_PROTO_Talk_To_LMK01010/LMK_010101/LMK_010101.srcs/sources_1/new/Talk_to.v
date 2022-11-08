`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 02:53:17 PM
// Design Name: 
// Module Name: Talk_to
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


module Talk_to(input clk, input LMKclk_N, input LMKclk_P, output clk2data, output reg dataline, output LE, output[1:0] LED,
 output SYNC);

// The datawidth is 32, but we have two additional states for Idle, LE, and Finish
parameter dataW = 32;
parameter Nstates = 33;
reg LEline = 1;
reg busy = 0;
reg [dataW - 1:0] R0_initial = {1'b1, {(dataW - 1){1'b0}}};
reg [dataW-1:0] R0 = {dataW{1'b0}};
// In the line below, the 13 bits that are 0 are supposed to be 0 at all times. the 15 bits in the middle are how to program the clock
// The last 4 bits are the address bits
wire [dataW-1: 0] R1;
//reg [dataW-1: 0] R1 = {{13{1'b0}}, {15'b10000000000001}, {4'b0001}};


// The next block is simply defining the states of our state machine
localparam [Nstates:0] Bit0 = 0;
localparam [Nstates:0] Bit1 = 1;
localparam [Nstates:0] Bit2 = 2;
localparam [Nstates:0] Bit3 = 3;
localparam [Nstates:0] Bit4 = 4;
localparam [Nstates:0] Bit5 = 5;
localparam [Nstates:0] Bit6 = 6;
localparam [Nstates:0] Bit7 = 7;
localparam [Nstates:0] Bit8 = 8;
localparam [Nstates:0] Bit9 = 9;
localparam [Nstates:0] Bit10 = 10;
localparam [Nstates:0] Bit11 = 11;
localparam [Nstates:0] Bit12 = 12;
localparam [Nstates:0] Bit13 = 13;
localparam [Nstates:0] Bit14 = 14;
localparam [Nstates:0] Bit15 = 15;
localparam [Nstates:0] Bit16 = 16;
localparam [Nstates:0] Bit17 = 17;
localparam [Nstates:0] Bit18 = 18;
localparam [Nstates:0] Bit19 = 19;
localparam [Nstates:0] Bit20 = 20;
localparam [Nstates:0] Bit21 = 21;
localparam [Nstates:0] Bit22 = 22;
localparam [Nstates:0] Bit23 = 23;
localparam [Nstates:0] Bit24 = 24;
localparam [Nstates:0] Bit25 = 25;
localparam [Nstates:0] Bit26 = 26;
localparam [Nstates:0] Bit27 = 27;
localparam [Nstates:0] Bit28 = 28;
localparam [Nstates:0] Bit29 = 29;
localparam [Nstates:0] Bit30 = 30;
localparam [Nstates:0] Bit31 = 31;
localparam [Nstates:0] BitLE = 32;
localparam [Nstates:0] Idle = 33;

wire clk20MHz;
reg blink = 0;
//reg go = 0;
reg go_adjust_s = 0;
reg [Nstates:0] state = Idle;
reg blink2 = 0;
reg reset = 0;
reg sync;
reg [2:0] latch = 0;


ClockDiv ClockDiv(.clk(clk), .clk20(clk20MHz));

clk_div_ce #(.CLK_DIVIDE(4)) clk_div_ce(.clk(clk), .ce(ce20MHz));

counter #(.FREQ(20000000)) counter(.clk(clk), .Q(Q));
counter #(.FREQ(125000000)) counter2(.clk(LMKclk_P), .Q(Q2));

reg go = 0;

ila_0 debugger(.clk(clk),
.probe0(dataline),
.probe1(LE),
.probe2(clk20MHz),
.probe3(LMKclk_P),
.probe4(go_adjust),
.probe5(reset),
.probe6(clk2data),
.probe7(ce20MHz)
);

vio_0 data_upload(
.clk(clk20MHz),
.probe_in0(busy),
.probe_out0(R1),
.probe_out1(go_adjust)
);


always @(negedge clk) begin

if (Q) begin
    blink <= blink + 1;
end

if (ce20MHz) begin
    
    if (go_adjust != go_adjust_s) begin
        go_adjust_s <= go_adjust;
        go <= 1;
    end
    
    
    case (state)
        Idle: begin
            busy <= 1'b0;
            dataline <= 0;
            LEline <= 0;
            sync <= 1'b1;
            if (reset == 0) begin
                state <= Bit0;
                sync <= 1'b0;
            end
            if (go) begin
                state <= Bit0;
                sync <= 1'b0;
            end
            end
        Bit0: begin
            busy <= 1'b1;
            if (reset == 0) begin
                dataline <= R0_initial[dataW-1];
            end else begin
                dataline <= R1[dataW-1];
            end
            LEline <= 0;
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
                reset = 1'b1;
                state <= Idle;
            end else begin
                go <= 0;
                state <= Idle;
            end
            LEline = LEline + 1;
            end
    
    default: state <= Idle;
    endcase

end

end

assign LE = LEline;
assign clk2data = (state == Idle ? 1'b0: clk20MHz);
assign LED[0] = blink;
assign LED[1] = blink2;
assign SYNC = sync;


endmodule
