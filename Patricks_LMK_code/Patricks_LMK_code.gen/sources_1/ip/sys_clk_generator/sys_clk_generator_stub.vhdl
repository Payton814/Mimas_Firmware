-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Nov 14 10:02:01 2022
-- Host        : DESKTOP-0RQFACS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               q:/Mimas_Firmware/Patricks_LMK_code/Patricks_LMK_code.gen/sources_1/ip/sys_clk_generator/sys_clk_generator_stub.vhdl
-- Design      : sys_clk_generator
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sys_clk_generator is
  Port ( 
    sys_clk : out STD_LOGIC;
    ser_clk : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end sys_clk_generator;

architecture stub of sys_clk_generator is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,ser_clk,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
