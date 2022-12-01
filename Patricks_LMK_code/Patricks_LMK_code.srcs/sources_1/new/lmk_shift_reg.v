`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2022 12:27:20 PM
// Design Name: 
// Module Name: lmk_shift_reg
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


module lmk_shift_reg( input clk,
        //input rst,
        //input load,
        //input [31:0] din,
        //output busy,
        input LMKclk_N,
        input LMKclk_P,
        
        //output lmkdata_mon,
        //output lmkclk_mon,
        //output lmkle_mon,
        
        output LMKDATA,
        output LMKCLK,
        output LMKLE,
        output [1:0] LED

    );
    
    // At reset, we automatically load this into the LMK so that it restores our input
    // clock in case software blows some crap up or something.
    parameter [31:0] RESET_DEFAULT = 32'h80000000;
    localparam led_freq = 20000000;
    reg [25:0] led_count = 0;
    reg [25:0] led_count2 = 0;
    wire ce20MHz;
    reg led = 0;
    reg go = 0;
    wire [31:0] din;
    reg lmkled = 0;
    clk_div_ce #(.CLK_DIVIDE(4)) clk_div_ce(.clk(clk),.ce(ce20MHz));
    reg load2 = 0;

    
    // nominally run off initclk, which is 40 MHz.
    // just divide it by 2 for fun
    reg ce = 0;
    always @(posedge clk) ce <= ~ce;
    
    reg [31:0] din_reg = RESET_DEFAULT;
    reg [4:0] bit_count = {5{1'b0}};
    
    (* IOB = "TRUE" *)
    reg lmk_clk = 0;
    (* KEEP = "TRUE" *)
    reg lmk_clk_dbg = 0;
    
    (* IOB = "TRUE" *)
    reg lmk_data = 0;
    (* KEEP = "TRUE" *)
    reg lmk_data_dbg = 0;
    
    (* IOB = "TRUE" *)
    reg lmk_le = 0;
    (* KEEP = "TRUE" *)
    reg lmk_le_dbg = 0;
        
    localparam FSM_BITS = 3;
    localparam [FSM_BITS-1:0] IDLE = 0;
    localparam [FSM_BITS-1:0] CLK_LOW = 1;
    localparam [FSM_BITS-1:0] CLK_HIGH = 2;
    localparam [FSM_BITS-1:0] LATCH_LOW = 3;
    localparam [FSM_BITS-1:0] LATCH_HIGH = 4;
    localparam [FSM_BITS-1:0] RESET = 5;
    reg [FSM_BITS-1:0] state = IDLE;
    
    lmk_vio vio(.clk(clk), .probe_in0(busy), .probe_out0(rst), .probe_out1(din),
         .probe_out2(load));
         
    lmk_ila ila(.clk(clk), .probe0(lmk_data_dbg), .probe1(lmk_clk_dbg), .probe2(lmk_le_dbg),
     .probe3(LMKclk_P));
    
    always @(posedge clk) begin
    
    if (LMKclk_N) begin
       if (led_count2 == led_freq - 1) begin
            led_count2 <= 0;
            lmkled <= lmkled + 1;
        end else begin
            led_count2 <= led_count2 + 1;
        end
    end
    
    if (ce20MHz) begin
        if (led_count == led_freq - 1) begin
            led_count <= 0;
            led <= led + 1;
        end else begin
            led_count <= led_count + 1;
        end
    end
        
    
        if (rst) state <= RESET;
        else begin 
            case (state)
                IDLE: if (load2 != load) state <= CLK_LOW;
                CLK_LOW: if (ce20MHz) state <= CLK_HIGH;
                CLK_HIGH: if (ce20MHz) begin
                    if (bit_count == 31) state <= LATCH_LOW;
                    else state <= CLK_LOW;
                end
                LATCH_LOW: if (ce20MHz) state <= LATCH_HIGH;
                LATCH_HIGH: if (ce20MHz) begin
                             load2 <= load;
                             state <= IDLE;
                             end
                RESET: state <= CLK_LOW;
            endcase
        end
        
        if (state == IDLE || state == RESET) bit_count <= {5{1'b0}};
        else if (state == CLK_HIGH && ce20MHz) bit_count <= bit_count + 1;
        
        if (rst) din_reg <= RESET_DEFAULT;
        else if (state == IDLE && load) din_reg <= din;
        else if (state == CLK_HIGH && ce20MHz) din_reg <= { din_reg[30:0], 1'b0 };        
        
        lmk_data <= din_reg[31];
        lmk_data_dbg <= din_reg[31];
        lmk_clk <= (state == CLK_HIGH);
        lmk_clk_dbg <= (state == CLK_HIGH);        
        lmk_le <= (state == LATCH_HIGH);   
        lmk_le_dbg <= (state == LATCH_HIGH);     
    end
    
    assign busy = (state != IDLE);

    //assign lmkdata_mon = lmk_data_dbg;
    //assign lmkclk_mon = lmk_clk_dbg;
    //assign lmkle_mon = lmk_le_dbg;
    
    assign LMKDATA = lmk_data;
    assign LMKCLK = lmk_clk;
    assign LMKLE = lmk_le;
    assign LED[0] = led;
    assign LED[1] = lmkled;
endmodule
