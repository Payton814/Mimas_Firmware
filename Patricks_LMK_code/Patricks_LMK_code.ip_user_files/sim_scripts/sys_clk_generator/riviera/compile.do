vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Users/Payton/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/sys_clk_generator/sys_clk_generator_clk_wiz.v" \
"../../../../Patricks_LMK_code.gen/sources_1/ip/sys_clk_generator/sys_clk_generator.v" \

vlog -work xil_defaultlib \
"glbl.v"

