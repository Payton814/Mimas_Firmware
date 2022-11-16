vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/hdl/verilog" "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/hdl" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/sim/jtag_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

