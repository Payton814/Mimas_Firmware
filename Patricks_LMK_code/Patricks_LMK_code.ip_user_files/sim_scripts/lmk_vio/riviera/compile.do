vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_vio/hdl/verilog" "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_vio/hdl" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_vio/hdl/verilog" "+incdir+../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_vio/hdl" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/lmk_vio/sim/lmk_vio.v" \

vlog -work xil_defaultlib \
"glbl.v"

