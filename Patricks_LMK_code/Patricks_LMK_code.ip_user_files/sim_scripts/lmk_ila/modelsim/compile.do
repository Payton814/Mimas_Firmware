vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_ila/hdl/verilog" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_ila/hdl/verilog" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_ila/sim/lmk_ila.v" \

vlog -work xil_defaultlib \
"glbl.v"

