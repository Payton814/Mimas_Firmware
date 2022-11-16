vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/hdl/verilog" "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/hdl" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_vio/sim/jtag_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

