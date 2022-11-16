vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv "+incdir+../../../ipstatic" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../ipstatic" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/sys_clk_generator/sys_clk_generator_clk_wiz.v" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/sys_clk_generator/sys_clk_generator.v" \

vlog -work xil_defaultlib \
"glbl.v"

