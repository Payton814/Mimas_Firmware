onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+sys_clk_generator -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sys_clk_generator xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sys_clk_generator.udo}

run -all

endsim

quit -force
