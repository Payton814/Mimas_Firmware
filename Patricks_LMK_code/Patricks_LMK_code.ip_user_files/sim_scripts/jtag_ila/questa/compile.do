vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_ila/hdl/verilog" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_ila/hdl/verilog" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/jtag_ila/sim/jtag_ila.v" \

vlog -work xil_defaultlib \
"glbl.v"

